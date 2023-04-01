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

// SystemVerilog created from bb_relu4_B2_stall_region
// Created for function/kernel relu4
// SystemVerilog created on Sat Apr  1 13:10:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module relu4_bb_B2_stall_region (
    input wire [63:0] in_memdep_relu4_avm_readdata,
    input wire [0:0] in_memdep_relu4_avm_writeack,
    input wire [0:0] in_memdep_relu4_avm_waitrequest,
    input wire [0:0] in_memdep_relu4_avm_readdatavalid,
    output wire [63:0] out_unnamed_relu45_relu4_avm_address,
    output wire [0:0] out_unnamed_relu45_relu4_avm_enable,
    output wire [0:0] out_unnamed_relu45_relu4_avm_read,
    output wire [0:0] out_unnamed_relu45_relu4_avm_write,
    output wire [63:0] out_unnamed_relu45_relu4_avm_writedata,
    output wire [7:0] out_unnamed_relu45_relu4_avm_byteenable,
    output wire [0:0] out_unnamed_relu45_relu4_avm_burstcount,
    output wire [0:0] out_masked,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_memdep_relu4_avm_address,
    output wire [0:0] out_memdep_relu4_avm_enable,
    output wire [0:0] out_memdep_relu4_avm_read,
    output wire [0:0] out_memdep_relu4_avm_write,
    output wire [63:0] out_memdep_relu4_avm_writedata,
    output wire [7:0] out_memdep_relu4_avm_byteenable,
    output wire [0:0] out_memdep_relu4_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire [63:0] in_unnamed_relu45_relu4_avm_readdata,
    input wire [0:0] in_unnamed_relu45_relu4_avm_writeack,
    input wire [0:0] in_unnamed_relu45_relu4_avm_waitrequest,
    input wire [0:0] in_unnamed_relu45_relu4_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_relu43_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_relu43_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [7:0] bgTrunc_i_fpga_indvars_iv_next_relu415_sel_x_b;
    wire [31:0] bgTrunc_i_inc_relu412_sel_x_b;
    wire [63:0] i_arrayidx5_relu40_dupName_0_trunc_sel_x_b;
    wire [1:0] i_arrayidx5_relu40_c_i2_01_x_q;
    wire [63:0] i_arrayidx_relu40_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_relu48_sel_x_b;
    wire [0:0] i_last_initeration_relu418_sel_x_b;
    wire [31:0] i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_out_c0_exit9_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_out_o_valid;
    wire [0:0] relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] relu4_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] relu4_B2_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] c_i32_038_q;
    wire [31:0] c_i32_141_q;
    wire [3:0] c_i4_736_q;
    wire [7:0] c_i8_143_q;
    wire [7:0] c_i8_8239_q;
    wire [3:0] i_cleanups_shl_relu49_vt_join_q;
    wire [2:0] i_cleanups_shl_relu49_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_relu416_q;
    wire [8:0] i_fpga_indvars_iv_next_relu415_a;
    wire [8:0] i_fpga_indvars_iv_next_relu415_b;
    logic [8:0] i_fpga_indvars_iv_next_relu415_o;
    wire [8:0] i_fpga_indvars_iv_next_relu415_q;
    wire [32:0] i_inc_relu412_a;
    wire [32:0] i_inc_relu412_b;
    logic [32:0] i_inc_relu412_o;
    wire [32:0] i_inc_relu412_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_relu433_out_lsu_memdep_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_relu433_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_relu433_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_relu433_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_relu45_relu426_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_relu45_relu426_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_relu45_relu426_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu43_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu43_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu43_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu43_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu43_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu43_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu43_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu43_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_out_feedback_stall_out_8;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_feedback_stall_out_7;
    wire [0:0] i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_feedback_stall_out_10;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop9_relu44_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_relu44_out_feedback_stall_out_9;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_relu44_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_relu44_out_valid_out;
    wire [7:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_out_feedback_stall_out_6;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_relu425_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_relu425_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_relu425_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_relu425_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_relu435_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_relu435_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_relu435_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_relu435_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_relu423_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_relu423_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_relu423_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_relu423_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_07_push7_relu421_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i32_i_07_push7_relu421_out_feedback_valid_out_7;
    wire [0:0] i_llvm_fpga_push_i32_i_07_push7_relu421_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_07_push7_relu421_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push10_relu434_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_relu434_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_relu434_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_relu434_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push9_relu417_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_relu417_out_feedback_valid_out_9;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_relu417_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_relu417_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_out_valid_out;
    wire [0:0] i_masked_relu428_qi;
    reg [0:0] i_masked_relu428_q;
    wire [0:0] i_next_cleanups_relu432_s;
    reg [3:0] i_next_cleanups_relu432_q;
    wire [3:0] i_next_initerations_relu410_vt_join_q;
    wire [2:0] i_next_initerations_relu410_vt_select_2_b;
    wire [0:0] i_notcmp_relu422_q;
    wire [0:0] i_or_relu427_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid146_i_cleanups_shl_relu40_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid146_i_cleanups_shl_relu40_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid147_i_cleanups_shl_relu40_shift_x_q;
    wire [0:0] leftShiftStage0_uid149_i_cleanups_shl_relu40_shift_x_s;
    reg [3:0] leftShiftStage0_uid149_i_cleanups_shl_relu40_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid153_i_next_initerations_relu40_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid155_i_next_initerations_relu40_shift_x_q;
    wire [0:0] rightShiftStage0_uid157_i_next_initerations_relu40_shift_x_s;
    reg [3:0] rightShiftStage0_uid157_i_next_initerations_relu40_shift_x_q;
    wire [0:0] i_exitcond_relu413_cmp_nsign_q;
    wire [52:0] i_arrayidx5_relu40_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx5_relu40_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx5_relu40_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx5_relu40_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx5_relu40_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx5_relu40_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx5_relu40_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx5_relu40_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx5_relu40_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx5_relu40_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx5_relu40_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx_relu40_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx_relu40_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx_relu40_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx_relu40_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx_relu40_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx_relu40_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx_relu40_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx_relu40_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx_relu40_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx_relu40_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx_relu40_add_x_BitJoin_for_q_q;
    wire [12:0] i_arrayidx5_relu40_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [17:0] i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel0_2_b;
    wire [51:0] i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [11:0] i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [12:0] i_arrayidx_relu40_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx_relu40_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [51:0] i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [51:0] i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    reg [11:0] redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [11:0] redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [51:0] redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_q;
    reg [51:0] redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_q;
    wire [0:0] redist4_i_masked_relu428_q_33_fifo_valid_in;
    wire redist4_i_masked_relu428_q_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_i_masked_relu428_q_33_fifo_stall_in;
    wire redist4_i_masked_relu428_q_33_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist4_i_masked_relu428_q_33_fifo_data_in;
    wire [0:0] redist4_i_masked_relu428_q_33_fifo_valid_out;
    wire redist4_i_masked_relu428_q_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_i_masked_relu428_q_33_fifo_stall_out;
    wire redist4_i_masked_relu428_q_33_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist4_i_masked_relu428_q_33_fifo_data_out;
    wire [0:0] redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_valid_in;
    wire redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_stall_in;
    wire redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_stall_in_bitsignaltemp;
    wire [3:0] redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_data_in;
    wire [0:0] redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_valid_out;
    wire redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_stall_out;
    wire redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_stall_out_bitsignaltemp;
    wire [3:0] redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_data_out;
    wire [0:0] redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_valid_in;
    wire redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_stall_in;
    wire redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_data_in;
    wire [0:0] redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_valid_out;
    wire redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_stall_out;
    wire redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_data_out;
    wire [0:0] redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_valid_in;
    wire redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_stall_in;
    wire redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_data_in;
    wire [0:0] redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_valid_out;
    wire redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_stall_out;
    wire redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_data_out;
    wire [0:0] redist8_i_first_cleanup_xor_relu416_q_36_fifo_valid_in;
    wire redist8_i_first_cleanup_xor_relu416_q_36_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist8_i_first_cleanup_xor_relu416_q_36_fifo_stall_in;
    wire redist8_i_first_cleanup_xor_relu416_q_36_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist8_i_first_cleanup_xor_relu416_q_36_fifo_data_in;
    wire [0:0] redist8_i_first_cleanup_xor_relu416_q_36_fifo_valid_out;
    wire redist8_i_first_cleanup_xor_relu416_q_36_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist8_i_first_cleanup_xor_relu416_q_36_fifo_stall_out;
    wire redist8_i_first_cleanup_xor_relu416_q_36_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist8_i_first_cleanup_xor_relu416_q_36_fifo_data_out;
    reg [0:0] redist9_i_first_cleanup_xor_relu416_q_38_0_q;
    reg [0:0] redist9_i_first_cleanup_xor_relu416_q_38_1_q;
    wire [0:0] redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_in;
    wire redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_in;
    wire redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_data_in;
    wire [0:0] redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_out;
    wire redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_out;
    wire redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_data_out;
    reg [0:0] redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_q;
    reg [0:0] redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_q;
    wire [0:0] redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_in;
    wire redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_in;
    wire redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_data_in;
    wire [0:0] redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_out;
    wire redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_out;
    wire redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_data_out;
    wire [0:0] redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_valid_in;
    wire redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_stall_in;
    wire redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_data_in;
    wire [0:0] redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_valid_out;
    wire redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_stall_out;
    wire redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_data_out;
    wire [0:0] redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_valid_in;
    wire redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_stall_in;
    wire redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_data_in;
    wire [0:0] redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_valid_out;
    wire redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_stall_out;
    wire redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_data_out;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_b;
    wire [0:0] bubble_join_relu4_B2_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_relu4_B2_merge_reg_aunroll_x_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_relu433_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_relu433_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_relu45_relu426_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_relu45_relu426_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_relu43_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_relu43_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_07_pop7_relu45_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_07_pop7_relu45_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_initerations_pop9_relu44_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_relu44_b;
    wire [7:0] bubble_join_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_q;
    wire [7:0] bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_redist4_i_masked_relu428_q_33_fifo_q;
    wire [0:0] bubble_select_redist4_i_masked_relu428_q_33_fifo_b;
    wire [3:0] bubble_join_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_q;
    wire [3:0] bubble_select_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_b;
    wire [31:0] bubble_join_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_q;
    wire [31:0] bubble_select_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_b;
    wire [0:0] bubble_join_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_q;
    wire [0:0] bubble_select_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_b;
    wire [0:0] bubble_join_redist8_i_first_cleanup_xor_relu416_q_36_fifo_q;
    wire [0:0] bubble_select_redist8_i_first_cleanup_xor_relu416_q_36_fifo_b;
    wire [0:0] bubble_join_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_q;
    wire [0:0] bubble_select_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_b;
    wire [0:0] bubble_join_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_q;
    wire [0:0] bubble_select_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_b;
    wire [0:0] bubble_join_redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_q;
    wire [0:0] bubble_select_redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_b;
    wire [0:0] bubble_join_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_q;
    wire [0:0] bubble_select_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_b;
    wire [0:0] SE_bgTrunc_i_inc_relu412_sel_x_wireValid;
    wire [0:0] SE_bgTrunc_i_inc_relu412_sel_x_and0;
    wire [0:0] SE_bgTrunc_i_inc_relu412_sel_x_backStall;
    wire [0:0] SE_bgTrunc_i_inc_relu412_sel_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_and1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_and2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_V0;
    wire [0:0] SE_out_relu4_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_relu4_B2_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_relu4_B2_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_relu4_B2_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_relu4_B2_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_relu4_B2_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_relu4_B2_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_relu4_B2_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_relu4_B2_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_relu4_B2_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_relu4_B2_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_relu4_B2_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_relu4_B2_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_relu4_B2_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_relu4_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_relu4_B2_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_relu4_B2_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_relu4_B2_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu433_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu433_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu433_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu433_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_relu433_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu433_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu433_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_relu433_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu433_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu433_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu433_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu433_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu433_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_relu45_relu426_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_relu45_relu426_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_relu45_relu426_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu43_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_and2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_V4;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_relu425_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_relu425_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_relu435_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_relu435_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_relu423_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_relu423_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_07_push7_relu421_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_07_push7_relu421_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push10_relu434_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push10_relu434_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push9_relu417_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push9_relu417_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_backStall;
    reg [0:0] SE_i_masked_relu428_R_v_0;
    wire [0:0] SE_i_masked_relu428_v_s_0;
    wire [0:0] SE_i_masked_relu428_s_tv_0;
    wire [0:0] SE_i_masked_relu428_backEN;
    wire [0:0] SE_i_masked_relu428_backStall;
    wire [0:0] SE_i_masked_relu428_V0;
    wire [0:0] SE_i_next_initerations_relu410_vt_select_2_wireValid;
    wire [0:0] SE_i_next_initerations_relu410_vt_select_2_wireStall;
    wire [0:0] SE_i_next_initerations_relu410_vt_select_2_StallValid;
    wire [0:0] SE_i_next_initerations_relu410_vt_select_2_toReg0;
    reg [0:0] SE_i_next_initerations_relu410_vt_select_2_fromReg0;
    wire [0:0] SE_i_next_initerations_relu410_vt_select_2_consumed0;
    wire [0:0] SE_i_next_initerations_relu410_vt_select_2_toReg1;
    reg [0:0] SE_i_next_initerations_relu410_vt_select_2_fromReg1;
    wire [0:0] SE_i_next_initerations_relu410_vt_select_2_consumed1;
    wire [0:0] SE_i_next_initerations_relu410_vt_select_2_or0;
    wire [0:0] SE_i_next_initerations_relu410_vt_select_2_backStall;
    wire [0:0] SE_i_next_initerations_relu410_vt_select_2_V0;
    wire [0:0] SE_i_next_initerations_relu410_vt_select_2_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_i_arrayidx5_relu40_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx5_relu40_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx5_relu40_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx_relu40_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx_relu40_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx_relu40_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx_relu40_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx_relu40_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx_relu40_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx_relu40_add_x_p1_of_2_and0;
    wire [0:0] SE_i_arrayidx_relu40_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx_relu40_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx_relu40_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx_relu40_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx_relu40_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx_relu40_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx_relu40_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx_relu40_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx_relu40_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx_relu40_add_x_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel0_2_V0;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel0_2_V1;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel1_0_V0;
    wire [0:0] SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel1_0_V1;
    wire [0:0] SE_i_arrayidx_relu40_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_arrayidx_relu40_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_arrayidx_relu40_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_arrayidx_relu40_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    reg [0:0] SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_V0;
    wire [0:0] SE_out_redist4_i_masked_relu428_q_33_fifo_wireValid;
    wire [0:0] SE_out_redist4_i_masked_relu428_q_33_fifo_and0;
    wire [0:0] SE_out_redist4_i_masked_relu428_q_33_fifo_and1;
    wire [0:0] SE_out_redist4_i_masked_relu428_q_33_fifo_and2;
    wire [0:0] SE_out_redist4_i_masked_relu428_q_33_fifo_and3;
    wire [0:0] SE_out_redist4_i_masked_relu428_q_33_fifo_backStall;
    wire [0:0] SE_out_redist4_i_masked_relu428_q_33_fifo_V0;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_wireValid;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_backStall;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_V0;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_wireValid;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_wireStall;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_StallValid;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_toReg0;
    reg [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_fromReg0;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_consumed0;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_toReg1;
    reg [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_fromReg1;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_consumed1;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_or0;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_backStall;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_V0;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_V1;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_wireValid;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_wireStall;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_StallValid;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_toReg0;
    reg [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_fromReg0;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_consumed0;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_toReg1;
    reg [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_fromReg1;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_consumed1;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_or0;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_backStall;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_V0;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_V1;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_wireValid;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_wireStall;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_StallValid;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_toReg0;
    reg [0:0] SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_fromReg0;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_consumed0;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_toReg1;
    reg [0:0] SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_fromReg1;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_consumed1;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_or0;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_backStall;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_V0;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_V1;
    reg [0:0] SE_redist9_i_first_cleanup_xor_relu416_q_38_0_R_v_0;
    wire [0:0] SE_redist9_i_first_cleanup_xor_relu416_q_38_0_v_s_0;
    wire [0:0] SE_redist9_i_first_cleanup_xor_relu416_q_38_0_s_tv_0;
    wire [0:0] SE_redist9_i_first_cleanup_xor_relu416_q_38_0_backEN;
    wire [0:0] SE_redist9_i_first_cleanup_xor_relu416_q_38_0_backStall;
    wire [0:0] SE_redist9_i_first_cleanup_xor_relu416_q_38_0_V0;
    reg [0:0] SE_redist9_i_first_cleanup_xor_relu416_q_38_1_R_v_0;
    wire [0:0] SE_redist9_i_first_cleanup_xor_relu416_q_38_1_v_s_0;
    wire [0:0] SE_redist9_i_first_cleanup_xor_relu416_q_38_1_s_tv_0;
    wire [0:0] SE_redist9_i_first_cleanup_xor_relu416_q_38_1_backEN;
    wire [0:0] SE_redist9_i_first_cleanup_xor_relu416_q_38_1_backStall;
    wire [0:0] SE_redist9_i_first_cleanup_xor_relu416_q_38_1_V0;
    wire [0:0] SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_wireValid;
    wire [0:0] SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_wireStall;
    wire [0:0] SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_StallValid;
    wire [0:0] SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_toReg0;
    reg [0:0] SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_fromReg0;
    wire [0:0] SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_consumed0;
    wire [0:0] SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_toReg1;
    reg [0:0] SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_fromReg1;
    wire [0:0] SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_consumed1;
    wire [0:0] SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_or0;
    wire [0:0] SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_backStall;
    wire [0:0] SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_V0;
    wire [0:0] SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_V1;
    reg [0:0] SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_R_v_0;
    wire [0:0] SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_v_s_0;
    wire [0:0] SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_s_tv_0;
    wire [0:0] SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backEN;
    wire [0:0] SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backStall;
    wire [0:0] SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_V0;
    reg [0:0] SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_0;
    reg [0:0] SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_1;
    reg [0:0] SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_2;
    wire [0:0] SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_v_s_0;
    wire [0:0] SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_0;
    wire [0:0] SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_1;
    wire [0:0] SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_2;
    wire [0:0] SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backEN;
    wire [0:0] SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_or0;
    wire [0:0] SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_or1;
    wire [0:0] SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backStall;
    wire [0:0] SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V0;
    wire [0:0] SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V1;
    wire [0:0] SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V2;
    wire [0:0] SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireValid;
    wire [0:0] SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireStall;
    wire [0:0] SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_StallValid;
    wire [0:0] SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_toReg0;
    reg [0:0] SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg0;
    wire [0:0] SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_consumed0;
    wire [0:0] SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_toReg1;
    reg [0:0] SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg1;
    wire [0:0] SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_consumed1;
    wire [0:0] SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_toReg2;
    reg [0:0] SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg2;
    wire [0:0] SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_consumed2;
    wire [0:0] SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_or0;
    wire [0:0] SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_or1;
    wire [0:0] SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_backStall;
    wire [0:0] SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_V0;
    wire [0:0] SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_V1;
    wire [0:0] SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_V2;
    wire [0:0] SE_out_redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_wireValid;
    wire [0:0] SE_out_redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_backStall;
    wire [0:0] SE_out_redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_V0;
    wire [0:0] SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_wireValid;
    wire [0:0] SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_wireStall;
    wire [0:0] SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_StallValid;
    wire [0:0] SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_toReg0;
    reg [0:0] SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_fromReg0;
    wire [0:0] SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_consumed0;
    wire [0:0] SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_toReg1;
    reg [0:0] SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_fromReg1;
    wire [0:0] SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_consumed1;
    wire [0:0] SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_or0;
    wire [0:0] SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_backStall;
    wire [0:0] SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_V0;
    wire [0:0] SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_V1;
    wire [0:0] SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_wireValid;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_backStall;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_V0;
    wire [0:0] bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_i_valid;
    reg [0:0] SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_valid;
    reg [0:0] SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_data0;
    wire [0:0] SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backStall;
    wire [0:0] SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_V;
    wire [0:0] SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_D0;
    wire [0:0] SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_i_valid;
    reg [0:0] SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_valid;
    reg [0:0] SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_data0;
    wire [0:0] SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backStall;
    wire [0:0] SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V;
    wire [0:0] SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_D0;
    wire [0:0] SR_SE_i_masked_relu428_i_valid;
    reg [0:0] SR_SE_i_masked_relu428_r_valid;
    wire [0:0] SR_SE_i_masked_relu428_and0;
    reg [0:0] SR_SE_i_masked_relu428_r_data0;
    reg [0:0] SR_SE_i_masked_relu428_r_data1;
    wire [0:0] SR_SE_i_masked_relu428_backStall;
    wire [0:0] SR_SE_i_masked_relu428_V;
    wire [0:0] SR_SE_i_masked_relu428_D0;
    wire [0:0] SR_SE_i_masked_relu428_D1;
    wire [0:0] SR_SE_i_arrayidx_relu40_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx_relu40_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx_relu40_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx_relu40_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx_relu40_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx_relu40_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx_relu40_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx_relu40_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_i_valid;
    reg [0:0] SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_r_valid;
    reg [0:0] SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_r_data0;
    wire [0:0] SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_backStall;
    wire [0:0] SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_V;
    wire [0:0] SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_D0;
    wire [0:0] SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_i_valid;
    reg [0:0] SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_r_valid;
    reg [0:0] SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_r_data0;
    wire [0:0] SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_backStall;
    wire [0:0] SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_V;
    wire [0:0] SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_D0;
    wire [0:0] SR_SE_i_next_initerations_relu410_vt_select_2_i_valid;
    reg [0:0] SR_SE_i_next_initerations_relu410_vt_select_2_r_valid;
    wire [0:0] SR_SE_i_next_initerations_relu410_vt_select_2_and0;
    reg [0:0] SR_SE_i_next_initerations_relu410_vt_select_2_r_data0;
    reg [0:0] SR_SE_i_next_initerations_relu410_vt_select_2_r_data1;
    reg [0:0] SR_SE_i_next_initerations_relu410_vt_select_2_r_data2;
    reg [3:0] SR_SE_i_next_initerations_relu410_vt_select_2_r_data3;
    wire [0:0] SR_SE_i_next_initerations_relu410_vt_select_2_backStall;
    wire [0:0] SR_SE_i_next_initerations_relu410_vt_select_2_V;
    wire [0:0] SR_SE_i_next_initerations_relu410_vt_select_2_D0;
    wire [0:0] SR_SE_i_next_initerations_relu410_vt_select_2_D1;
    wire [0:0] SR_SE_i_next_initerations_relu410_vt_select_2_D2;
    wire [3:0] SR_SE_i_next_initerations_relu410_vt_select_2_D3;
    wire [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_i_valid;
    reg [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_r_valid;
    wire [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_and0;
    reg [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_r_data0;
    reg [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_r_data1;
    wire [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_backStall;
    wire [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_V;
    wire [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_D0;
    wire [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_D1;
    wire [0:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_i_valid;
    reg [0:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_r_valid;
    wire [0:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_and0;
    wire [0:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_and1;
    wire [0:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_and2;
    reg [3:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_r_data0;
    reg [0:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_r_data1;
    wire [0:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_backStall;
    wire [0:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_V;
    wire [3:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_D0;
    wire [0:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_D1;


    // bubble_join_redist8_i_first_cleanup_xor_relu416_q_36_fifo(BITJOIN,295)
    assign bubble_join_redist8_i_first_cleanup_xor_relu416_q_36_fifo_q = redist8_i_first_cleanup_xor_relu416_q_36_fifo_data_out;

    // bubble_select_redist8_i_first_cleanup_xor_relu416_q_36_fifo(BITSELECT,296)
    assign bubble_select_redist8_i_first_cleanup_xor_relu416_q_36_fifo_b = $unsigned(bubble_join_redist8_i_first_cleanup_xor_relu416_q_36_fifo_q[0:0]);

    // redist9_i_first_cleanup_xor_relu416_q_38_0(REG,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_first_cleanup_xor_relu416_q_38_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist9_i_first_cleanup_xor_relu416_q_38_0_backEN == 1'b1)
        begin
            redist9_i_first_cleanup_xor_relu416_q_38_0_q <= $unsigned(SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_D0);
        end
    end

    // bubble_join_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x(BITJOIN,237)
    assign bubble_join_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_q = i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_out_c0_exit9_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x(BITSELECT,238)
    assign bubble_select_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_q[31:0]);

    // rightShiftStage0Idx1Rng1_uid153_i_next_initerations_relu40_shift_x(BITSELECT,152)@104
    assign rightShiftStage0Idx1Rng1_uid153_i_next_initerations_relu40_shift_x_b = bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_relu44_b[3:1];

    // rightShiftStage0Idx1_uid155_i_next_initerations_relu40_shift_x(BITJOIN,154)@104
    assign rightShiftStage0Idx1_uid155_i_next_initerations_relu40_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid153_i_next_initerations_relu40_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i4_initerations_pop9_relu44(BITJOIN,271)
    assign bubble_join_i_llvm_fpga_pop_i4_initerations_pop9_relu44_q = i_llvm_fpga_pop_i4_initerations_pop9_relu44_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_relu44(BITSELECT,272)
    assign bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_relu44_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_initerations_pop9_relu44_q[3:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // rightShiftStage0_uid157_i_next_initerations_relu40_shift_x(MUX,156)@104
    assign rightShiftStage0_uid157_i_next_initerations_relu40_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid157_i_next_initerations_relu40_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_relu44_b or rightShiftStage0Idx1_uid155_i_next_initerations_relu40_shift_x_q)
    begin
        unique case (rightShiftStage0_uid157_i_next_initerations_relu40_shift_x_s)
            1'b0 : rightShiftStage0_uid157_i_next_initerations_relu40_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_relu44_b;
            1'b1 : rightShiftStage0_uid157_i_next_initerations_relu40_shift_x_q = rightShiftStage0Idx1_uid155_i_next_initerations_relu40_shift_x_q;
            default : rightShiftStage0_uid157_i_next_initerations_relu40_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_relu410_vt_select_2(BITSELECT,83)@104
    assign i_next_initerations_relu410_vt_select_2_b = rightShiftStage0_uid157_i_next_initerations_relu40_shift_x_q[2:0];

    // i_next_initerations_relu410_vt_join(BITJOIN,82)@104
    assign i_next_initerations_relu410_vt_join_q = {GND_q, i_next_initerations_relu410_vt_select_2_b};

    // i_last_initeration_relu418_sel_x(BITSELECT,28)@104
    assign i_last_initeration_relu418_sel_x_b = i_next_initerations_relu410_vt_join_q[0:0];

    // SE_i_next_initerations_relu410_vt_select_2(STALLENABLE,361)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_relu410_vt_select_2_fromReg0 <= '0;
            SE_i_next_initerations_relu410_vt_select_2_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_relu410_vt_select_2_fromReg0 <= SE_i_next_initerations_relu410_vt_select_2_toReg0;
            // Successor 1
            SE_i_next_initerations_relu410_vt_select_2_fromReg1 <= SE_i_next_initerations_relu410_vt_select_2_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_relu410_vt_select_2_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_relu425_out_stall_out) & SE_i_next_initerations_relu410_vt_select_2_wireValid) | SE_i_next_initerations_relu410_vt_select_2_fromReg0;
    assign SE_i_next_initerations_relu410_vt_select_2_consumed1 = (~ (i_llvm_fpga_push_i4_initerations_push9_relu417_out_stall_out) & SE_i_next_initerations_relu410_vt_select_2_wireValid) | SE_i_next_initerations_relu410_vt_select_2_fromReg1;
    // Consuming
    assign SE_i_next_initerations_relu410_vt_select_2_StallValid = SE_i_next_initerations_relu410_vt_select_2_backStall & SE_i_next_initerations_relu410_vt_select_2_wireValid;
    assign SE_i_next_initerations_relu410_vt_select_2_toReg0 = SE_i_next_initerations_relu410_vt_select_2_StallValid & SE_i_next_initerations_relu410_vt_select_2_consumed0;
    assign SE_i_next_initerations_relu410_vt_select_2_toReg1 = SE_i_next_initerations_relu410_vt_select_2_StallValid & SE_i_next_initerations_relu410_vt_select_2_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_relu410_vt_select_2_or0 = SE_i_next_initerations_relu410_vt_select_2_consumed0;
    assign SE_i_next_initerations_relu410_vt_select_2_wireStall = ~ (SE_i_next_initerations_relu410_vt_select_2_consumed1 & SE_i_next_initerations_relu410_vt_select_2_or0);
    assign SE_i_next_initerations_relu410_vt_select_2_backStall = SE_i_next_initerations_relu410_vt_select_2_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_relu410_vt_select_2_V0 = SE_i_next_initerations_relu410_vt_select_2_wireValid & ~ (SE_i_next_initerations_relu410_vt_select_2_fromReg0);
    assign SE_i_next_initerations_relu410_vt_select_2_V1 = SE_i_next_initerations_relu410_vt_select_2_wireValid & ~ (SE_i_next_initerations_relu410_vt_select_2_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_relu410_vt_select_2_wireValid = SR_SE_i_next_initerations_relu410_vt_select_2_V;

    // SR_SE_i_next_initerations_relu410_vt_select_2(STALLREG,530)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_next_initerations_relu410_vt_select_2_r_valid <= 1'b0;
            SR_SE_i_next_initerations_relu410_vt_select_2_r_data0 <= 1'bx;
            SR_SE_i_next_initerations_relu410_vt_select_2_r_data1 <= 1'bx;
            SR_SE_i_next_initerations_relu410_vt_select_2_r_data2 <= 1'bx;
            SR_SE_i_next_initerations_relu410_vt_select_2_r_data3 <= 4'bxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_next_initerations_relu410_vt_select_2_r_valid <= SE_i_next_initerations_relu410_vt_select_2_backStall & (SR_SE_i_next_initerations_relu410_vt_select_2_r_valid | SR_SE_i_next_initerations_relu410_vt_select_2_i_valid);

            if (SR_SE_i_next_initerations_relu410_vt_select_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_next_initerations_relu410_vt_select_2_r_data0 <= i_last_initeration_relu418_sel_x_b;
                SR_SE_i_next_initerations_relu410_vt_select_2_r_data1 <= $unsigned(bubble_select_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_b);
                SR_SE_i_next_initerations_relu410_vt_select_2_r_data2 <= $unsigned(bubble_select_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_b);
                SR_SE_i_next_initerations_relu410_vt_select_2_r_data3 <= i_next_initerations_relu410_vt_join_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_next_initerations_relu410_vt_select_2_and0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_V1;
    assign SR_SE_i_next_initerations_relu410_vt_select_2_i_valid = SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_V0 & SR_SE_i_next_initerations_relu410_vt_select_2_and0;
    // Stall signal propagation
    assign SR_SE_i_next_initerations_relu410_vt_select_2_backStall = SR_SE_i_next_initerations_relu410_vt_select_2_r_valid | ~ (SR_SE_i_next_initerations_relu410_vt_select_2_i_valid);

    // Valid
    assign SR_SE_i_next_initerations_relu410_vt_select_2_V = SR_SE_i_next_initerations_relu410_vt_select_2_r_valid == 1'b1 ? SR_SE_i_next_initerations_relu410_vt_select_2_r_valid : SR_SE_i_next_initerations_relu410_vt_select_2_i_valid;

    // Data0
    assign SR_SE_i_next_initerations_relu410_vt_select_2_D0 = SR_SE_i_next_initerations_relu410_vt_select_2_r_valid == 1'b1 ? SR_SE_i_next_initerations_relu410_vt_select_2_r_data0 : i_last_initeration_relu418_sel_x_b;
    // Data1
    assign SR_SE_i_next_initerations_relu410_vt_select_2_D1 = SR_SE_i_next_initerations_relu410_vt_select_2_r_valid == 1'b1 ? SR_SE_i_next_initerations_relu410_vt_select_2_r_data1 : bubble_select_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_b;
    // Data2
    assign SR_SE_i_next_initerations_relu410_vt_select_2_D2 = SR_SE_i_next_initerations_relu410_vt_select_2_r_valid == 1'b1 ? SR_SE_i_next_initerations_relu410_vt_select_2_r_data2 : bubble_select_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_b;
    // Data3
    assign SR_SE_i_next_initerations_relu410_vt_select_2_D3 = SR_SE_i_next_initerations_relu410_vt_select_2_r_valid == 1'b1 ? SR_SE_i_next_initerations_relu410_vt_select_2_r_data3 : i_next_initerations_relu410_vt_join_q;

    // SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44(STALLENABLE,341)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_consumed0 = (~ (SE_out_redist4_i_masked_relu428_q_33_fifo_backStall) & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_consumed1 = (~ (SR_SE_i_next_initerations_relu410_vt_select_2_backStall) & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_StallValid = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_backStall & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_toReg0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_toReg1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_or0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_consumed1 & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_or0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_backStall = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_V0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_V1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_wireValid = i_llvm_fpga_pop_i4_initerations_pop9_relu44_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_push_i4_initerations_push9_relu417(STALLENABLE,355)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_initerations_push9_relu417_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_initerations_push9_relu417_wireValid = i_llvm_fpga_push_i4_initerations_push9_relu417_out_valid_out;

    // i_llvm_fpga_push_i4_initerations_push9_relu417(BLACKBOX,77)@104
    // in in_stall_in@20000000
    // out out_data_out@105
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    // out out_stall_out@20000000
    // out out_valid_out@105
    relu4_i_llvm_fpga_push_i4_initerations_push9_0 thei_llvm_fpga_push_i4_initerations_push9_relu417 (
        .in_data_in(SR_SE_i_next_initerations_relu410_vt_select_2_D3),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i4_initerations_pop9_relu44_out_feedback_stall_out_9),
        .in_keep_going(SR_SE_i_next_initerations_relu410_vt_select_2_D2),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_initerations_push9_relu417_backStall),
        .in_valid_in(SE_i_next_initerations_relu410_vt_select_2_V1),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i4_initerations_push9_relu417_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i4_initerations_push9_relu417_out_feedback_valid_out_9),
        .out_stall_out(i_llvm_fpga_push_i4_initerations_push9_relu417_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_initerations_push9_relu417_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo(BITJOIN,304)
    assign bubble_join_redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_q = redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_data_out;

    // bubble_select_redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo(BITSELECT,305)
    assign bubble_select_redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_b = $unsigned(bubble_join_redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_q[0:0]);

    // c_i4_736(CONSTANT,42)
    assign c_i4_736_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_initerations_pop9_relu44(BLACKBOX,70)@103
    // in in_stall_in@20000000
    // out out_data_out@104
    // out out_feedback_stall_out_9@20000000
    // out out_stall_out@20000000
    // out out_valid_out@104
    relu4_i_llvm_fpga_pop_i4_initerations_pop9_0 thei_llvm_fpga_pop_i4_initerations_pop9_relu44 (
        .in_data_in(c_i4_736_q),
        .in_dir(bubble_select_redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_b),
        .in_feedback_in_9(i_llvm_fpga_push_i4_initerations_push9_relu417_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i4_initerations_push9_relu417_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_backStall),
        .in_valid_in(SE_out_redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop9_relu44_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i4_initerations_pop9_relu44_out_feedback_stall_out_9),
        .out_stall_out(i_llvm_fpga_pop_i4_initerations_pop9_relu44_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_initerations_pop9_relu44_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo(STALLENABLE,411)
    // Valid signal propagation
    assign SE_out_redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_V0 = SE_out_redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_backStall = i_llvm_fpga_pop_i4_initerations_pop9_relu44_out_stall_out | ~ (SE_out_redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_wireValid = redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_valid_out;

    // redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo(STALLFIFO,234)
    assign redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_valid_in = SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_V2;
    assign redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_stall_in = SE_out_redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_backStall;
    assign redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_data_in = bubble_select_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_b;
    assign redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_valid_in_bitsignaltemp = redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_valid_in[0];
    assign redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_stall_in_bitsignaltemp = redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_stall_in[0];
    assign redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_valid_out[0] = redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_valid_out_bitsignaltemp;
    assign redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_stall_out[0] = redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo (
        .valid_in(redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_valid_in_bitsignaltemp),
        .stall_in(redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_b),
        .valid_out(redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_valid_out_bitsignaltemp),
        .stall_out(redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_stall_out_bitsignaltemp),
        .data_out(redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo(BITJOIN,307)
    assign bubble_join_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_q = redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_data_out;

    // bubble_select_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo(BITSELECT,308)
    assign bubble_select_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_b = $unsigned(bubble_join_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47(BITJOIN,275)
    assign bubble_join_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_q = i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47(BITSELECT,276)
    assign bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_b = $unsigned(bubble_join_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_q[7:0]);

    // i_exitcond_relu413_cmp_nsign(LOGICAL,159)@71
    assign i_exitcond_relu413_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_b[7:7]));

    // i_notcmp_relu422(LOGICAL,84)@71
    assign i_notcmp_relu422_q = i_exitcond_relu413_cmp_nsign_q ^ VCC_q;

    // SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo(STALLENABLE,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_fromReg0 <= '0;
            SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_fromReg0 <= SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_toReg0;
            // Successor 1
            SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_fromReg1 <= SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_consumed0 = (~ (SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_backStall) & SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_wireValid) | SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_fromReg0;
    assign SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_consumed1 = (~ (SR_SE_i_masked_relu428_backStall) & SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_wireValid) | SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_fromReg1;
    // Consuming
    assign SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_StallValid = SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_backStall & SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_wireValid;
    assign SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_toReg0 = SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_StallValid & SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_consumed0;
    assign SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_toReg1 = SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_StallValid & SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_or0 = SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_consumed0;
    assign SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_wireStall = ~ (SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_consumed1 & SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_or0);
    assign SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_backStall = SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_V0 = SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_wireValid & ~ (SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_fromReg0);
    assign SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_V1 = SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_wireValid & ~ (SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_wireValid = redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_valid_out;

    // i_masked_relu428(LOGICAL,79)@71 + 1
    assign i_masked_relu428_qi = SR_SE_i_masked_relu428_D0 & SR_SE_i_masked_relu428_D1;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_relu428_delay ( .xin(i_masked_relu428_qi), .xout(i_masked_relu428_q), .ena(SE_i_masked_relu428_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist4_i_masked_relu428_q_33_fifo(STALLFIFO,223)
    assign redist4_i_masked_relu428_q_33_fifo_valid_in = SE_i_masked_relu428_V0;
    assign redist4_i_masked_relu428_q_33_fifo_stall_in = SE_out_redist4_i_masked_relu428_q_33_fifo_backStall;
    assign redist4_i_masked_relu428_q_33_fifo_data_in = i_masked_relu428_q;
    assign redist4_i_masked_relu428_q_33_fifo_valid_in_bitsignaltemp = redist4_i_masked_relu428_q_33_fifo_valid_in[0];
    assign redist4_i_masked_relu428_q_33_fifo_stall_in_bitsignaltemp = redist4_i_masked_relu428_q_33_fifo_stall_in[0];
    assign redist4_i_masked_relu428_q_33_fifo_valid_out[0] = redist4_i_masked_relu428_q_33_fifo_valid_out_bitsignaltemp;
    assign redist4_i_masked_relu428_q_33_fifo_stall_out[0] = redist4_i_masked_relu428_q_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist4_i_masked_relu428_q_33_fifo (
        .valid_in(redist4_i_masked_relu428_q_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_i_masked_relu428_q_33_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_relu428_q),
        .valid_out(redist4_i_masked_relu428_q_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_i_masked_relu428_q_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_i_masked_relu428_q_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_masked_relu428(STALLENABLE,358)
    // Valid signal propagation
    assign SE_i_masked_relu428_V0 = SE_i_masked_relu428_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_relu428_s_tv_0 = redist4_i_masked_relu428_q_33_fifo_stall_out & SE_i_masked_relu428_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_relu428_backEN = ~ (SE_i_masked_relu428_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_relu428_v_s_0 = SE_i_masked_relu428_backEN & SR_SE_i_masked_relu428_V;
    // Backward Stall generation
    assign SE_i_masked_relu428_backStall = ~ (SE_i_masked_relu428_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_relu428_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_relu428_backEN == 1'b0)
            begin
                SE_i_masked_relu428_R_v_0 <= SE_i_masked_relu428_R_v_0 & SE_i_masked_relu428_s_tv_0;
            end
            else
            begin
                SE_i_masked_relu428_R_v_0 <= SE_i_masked_relu428_v_s_0;
            end

        end
    end

    // SR_SE_i_masked_relu428(STALLREG,522)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_masked_relu428_r_valid <= 1'b0;
            SR_SE_i_masked_relu428_r_data0 <= 1'bx;
            SR_SE_i_masked_relu428_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_masked_relu428_r_valid <= SE_i_masked_relu428_backStall & (SR_SE_i_masked_relu428_r_valid | SR_SE_i_masked_relu428_i_valid);

            if (SR_SE_i_masked_relu428_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_masked_relu428_r_data0 <= i_notcmp_relu422_q;
                SR_SE_i_masked_relu428_r_data1 <= $unsigned(bubble_select_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_masked_relu428_and0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_V3;
    assign SR_SE_i_masked_relu428_i_valid = SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_V1 & SR_SE_i_masked_relu428_and0;
    // Stall signal propagation
    assign SR_SE_i_masked_relu428_backStall = SR_SE_i_masked_relu428_r_valid | ~ (SR_SE_i_masked_relu428_i_valid);

    // Valid
    assign SR_SE_i_masked_relu428_V = SR_SE_i_masked_relu428_r_valid == 1'b1 ? SR_SE_i_masked_relu428_r_valid : SR_SE_i_masked_relu428_i_valid;

    // Data0
    assign SR_SE_i_masked_relu428_D0 = SR_SE_i_masked_relu428_r_valid == 1'b1 ? SR_SE_i_masked_relu428_r_data0 : i_notcmp_relu422_q;
    // Data1
    assign SR_SE_i_masked_relu428_D1 = SR_SE_i_masked_relu428_r_valid == 1'b1 ? SR_SE_i_masked_relu428_r_data1 : bubble_select_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_b;

    // SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424(STALLENABLE,356)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_V0 = SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_backStall = i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_and0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_V2;
    assign SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_V3 & SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_and0;

    // SE_in_i_llvm_fpga_push_i1_notexitcond_relu423(STALLENABLE,348)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_backStall = i_llvm_fpga_push_i1_notexitcond_relu423_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_wireValid = SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_V;

    // SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423(STALLREG,532)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_r_valid <= SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_backStall & (SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_r_valid | SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_r_data0 <= $unsigned(i_exitcond_relu413_cmp_nsign_q);
                SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_r_data1 <= $unsigned(bubble_select_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_and0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_V1;
    assign SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_i_valid = SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_V0 & SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_backStall = SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_V = SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_r_valid : SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_D0 = SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_r_data0 : i_exitcond_relu413_cmp_nsign_q;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_D1 = SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_r_data1 : bubble_select_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_b;

    // bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg(STALLFIFO,519)
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_V0;
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_stall_in = SE_out_redist4_i_masked_relu428_q_33_fifo_backStall;
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47(STALLENABLE,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg0 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg1 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg2 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg3 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg4 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_backStall) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_consumed2 = (~ (SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_backStall) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_consumed3 = (~ (SR_SE_i_masked_relu428_backStall) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_consumed4 = (~ (SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_backStall) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_StallValid = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_backStall & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_wireValid;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_toReg0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_consumed0;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_toReg1 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_consumed1;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_toReg2 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_consumed2;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_toReg3 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_consumed3;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_toReg4 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_or0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_consumed0;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_or1 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_consumed1 & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_or0;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_or2 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_consumed2 & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_or1;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_or3 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_consumed3 & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_or2;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_wireStall = ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_consumed4 & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_or3);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_backStall = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_V0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_V1 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_V2 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_V3 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_V4 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_wireValid = i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_out_valid_out;

    // SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424(STALLENABLE,357)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_wireValid = i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_out_valid_out;

    // c_i8_143(CONSTANT,43)
    assign c_i8_143_q = $unsigned(8'b11111111);

    // i_fpga_indvars_iv_next_relu415(ADD,55)@71
    assign i_fpga_indvars_iv_next_relu415_a = {1'b0, bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_b};
    assign i_fpga_indvars_iv_next_relu415_b = {1'b0, c_i8_143_q};
    assign i_fpga_indvars_iv_next_relu415_o = $unsigned(i_fpga_indvars_iv_next_relu415_a) + $unsigned(i_fpga_indvars_iv_next_relu415_b);
    assign i_fpga_indvars_iv_next_relu415_q = i_fpga_indvars_iv_next_relu415_o[8:0];

    // bgTrunc_i_fpga_indvars_iv_next_relu415_sel_x(BITSELECT,2)@71
    assign bgTrunc_i_fpga_indvars_iv_next_relu415_sel_x_b = i_fpga_indvars_iv_next_relu415_q[7:0];

    // i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424(BLACKBOX,78)@71
    // in in_stall_in@20000000
    // out out_data_out@72
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    // out out_stall_out@20000000
    // out out_valid_out@72
    relu4_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_0 thei_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_relu415_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_out_feedback_stall_out_6),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_relu43_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_V0),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_out_feedback_valid_out_6),
        .out_stall_out(i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_8239(CONSTANT,44)
    assign c_i8_8239_q = $unsigned(8'b01010010);

    // i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47(BLACKBOX,71)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_stall_out_6@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    relu4_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_0 thei_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47 (
        .in_data_in(c_i8_8239_q),
        .in_dir(bubble_select_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_b),
        .in_feedback_in_6(i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_backStall),
        .in_valid_in(SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_out_feedback_stall_out_6),
        .out_stall_out(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,364)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = relu4_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,279)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,280)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // relu4_B2_merge_reg_aunroll_x(BLACKBOX,34)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    relu4_B2_merge_reg therelu4_B2_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_relu4_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_stall_out(relu4_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(relu4_B2_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_relu4_B2_merge_reg_aunroll_x(BITJOIN,240)
    assign bubble_join_relu4_B2_merge_reg_aunroll_x_q = relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_relu4_B2_merge_reg_aunroll_x(BITSELECT,241)
    assign bubble_select_relu4_B2_merge_reg_aunroll_x_b = $unsigned(bubble_join_relu4_B2_merge_reg_aunroll_x_q[0:0]);

    // i_arrayidx5_relu40_add_x_p1_of_2(ADD,166)@71 + 1
    assign i_arrayidx5_relu40_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_D0};
    assign i_arrayidx5_relu40_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx5_relu40_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx5_relu40_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx5_relu40_add_x_p1_of_2_o <= $unsigned(i_arrayidx5_relu40_add_x_p1_of_2_a) + $unsigned(i_arrayidx5_relu40_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx5_relu40_add_x_p1_of_2_c[0] = i_arrayidx5_relu40_add_x_p1_of_2_o[52];
    assign i_arrayidx5_relu40_add_x_p1_of_2_q = i_arrayidx5_relu40_add_x_p1_of_2_o[51:0];

    // c_i32_038(CONSTANT,39)
    assign c_i32_038_q = $unsigned(32'b00000000000000000000000000000000);

    // i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel1_0(BITSELECT,187)
    assign i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel1_0_b = c_i32_038_q[29:18];

    // i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,189)@72
    assign i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel1_0_b};

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41(BITJOIN,248)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_q = i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41(BITSELECT,249)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_q[63:0]);

    // i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,203)@71
    assign i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_b[51:0]);
    assign i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_b[63:52]);

    // redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(12'b000000000000);
        end
        else if (SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx5_relu40_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,182)@72
    assign i_arrayidx5_relu40_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel0_2(BITSELECT,185)
    assign i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel0_2_b = c_i32_038_q[17:0];

    // SE_bgTrunc_i_inc_relu412_sel_x(STALLENABLE,310)
    // Valid signal propagation
    assign SE_bgTrunc_i_inc_relu412_sel_x_V0 = SE_bgTrunc_i_inc_relu412_sel_x_wireValid;
    // Backward Stall generation
    assign SE_bgTrunc_i_inc_relu412_sel_x_backStall = i_llvm_fpga_push_i32_i_07_push7_relu421_out_stall_out | ~ (SE_bgTrunc_i_inc_relu412_sel_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_bgTrunc_i_inc_relu412_sel_x_and0 = SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_V1;
    assign SE_bgTrunc_i_inc_relu412_sel_x_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_V1 & SE_bgTrunc_i_inc_relu412_sel_x_and0;

    // SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel0_2(STALLENABLE,380)
    // Valid signal propagation
    assign SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel0_2_V0 = 1'b1;
    assign SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel0_2_V1 = 1'b1;

    // SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,381)
    // Valid signal propagation
    assign SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_backStall | ~ (SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel0_2_V0;
    assign SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_V0 & SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo(STALLENABLE,397)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_fromReg0 <= '0;
            SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_fromReg0 <= SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_toReg0;
            // Successor 1
            SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_fromReg1 <= SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_consumed0 = (~ (SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_b_backStall) & SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_wireValid) | SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_fromReg0;
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_consumed1 = (~ (SE_bgTrunc_i_inc_relu412_sel_x_backStall) & SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_wireValid) | SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_fromReg1;
    // Consuming
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_StallValid = SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_backStall & SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_wireValid;
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_toReg0 = SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_StallValid & SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_consumed0;
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_toReg1 = SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_StallValid & SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_or0 = SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_consumed0;
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_wireStall = ~ (SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_consumed1 & SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_or0);
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_backStall = SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_V0 = SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_wireValid & ~ (SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_fromReg0);
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_V1 = SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_wireValid & ~ (SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_wireValid = redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_valid_out;

    // redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo(STALLFIFO,225)
    assign redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_V1;
    assign redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_stall_in = SE_out_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_backStall;
    assign redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_data_in = bubble_select_i_llvm_fpga_pop_i32_i_07_pop7_relu45_b;
    assign redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_valid_in_bitsignaltemp = redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_valid_in[0];
    assign redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_stall_in_bitsignaltemp = redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_stall_in[0];
    assign redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_valid_out[0] = redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_valid_out_bitsignaltemp;
    assign redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_stall_out[0] = redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(39),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo (
        .valid_in(redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_valid_in_bitsignaltemp),
        .stall_in(redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i32_i_07_pop7_relu45_b),
        .valid_out(redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_valid_out_bitsignaltemp),
        .stall_out(redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_stall_out_bitsignaltemp),
        .data_out(redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_arrayidx_relu40_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,385)
    // Valid signal propagation
    assign SE_i_arrayidx_relu40_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_arrayidx_relu40_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx_relu40_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SE_i_arrayidx_relu40_add_x_p1_of_2_backStall | ~ (SE_i_arrayidx_relu40_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx_relu40_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel0_2_V1;
    assign SE_i_arrayidx_relu40_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_V0 & SE_i_arrayidx_relu40_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45(STALLENABLE,337)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_consumed0 = (~ (SE_i_arrayidx_relu40_add_x_BitSelect_for_b_BitJoin_for_b_backStall) & SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_consumed1 = (~ (redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_StallValid = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_backStall & SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_toReg0 = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_StallValid & SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_toReg1 = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_StallValid & SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_or0 = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_consumed1 & SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_or0);
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_backStall = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_V0 = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_V1 = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_wireValid = i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_i_07_push7_relu421(STALLENABLE,351)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_07_push7_relu421_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_07_push7_relu421_wireValid = i_llvm_fpga_push_i32_i_07_push7_relu421_out_valid_out;

    // c_i32_141(CONSTANT,40)
    assign c_i32_141_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo(BITJOIN,289)
    assign bubble_join_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_q = redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_data_out;

    // bubble_select_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo(BITSELECT,290)
    assign bubble_select_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_b = $unsigned(bubble_join_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_q[31:0]);

    // i_inc_relu412(ADD,60)@71
    assign i_inc_relu412_a = {1'b0, bubble_select_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_b};
    assign i_inc_relu412_b = {1'b0, c_i32_141_q};
    assign i_inc_relu412_o = $unsigned(i_inc_relu412_a) + $unsigned(i_inc_relu412_b);
    assign i_inc_relu412_q = i_inc_relu412_o[32:0];

    // bgTrunc_i_inc_relu412_sel_x(BITSELECT,3)@71
    assign bgTrunc_i_inc_relu412_sel_x_b = i_inc_relu412_q[31:0];

    // i_llvm_fpga_push_i32_i_07_push7_relu421(BLACKBOX,75)@71
    // in in_stall_in@20000000
    // out out_data_out@72
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    // out out_stall_out@20000000
    // out out_valid_out@72
    relu4_i_llvm_fpga_push_i32_i_07_push7_0 thei_llvm_fpga_push_i32_i_07_push7_relu421 (
        .in_data_in(bgTrunc_i_inc_relu412_sel_x_b),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_feedback_stall_out_7),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_relu43_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_07_push7_relu421_backStall),
        .in_valid_in(SE_bgTrunc_i_inc_relu412_sel_x_V0),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i32_i_07_push7_relu421_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i32_i_07_push7_relu421_out_feedback_valid_out_7),
        .out_stall_out(i_llvm_fpga_push_i32_i_07_push7_relu421_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_07_push7_relu421_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_07_pop7_relu45(BLACKBOX,68)@32
    // in in_stall_in@20000000
    // out out_data_out@33
    // out out_feedback_stall_out_7@20000000
    // out out_stall_out@20000000
    // out out_valid_out@33
    relu4_i_llvm_fpga_pop_i32_i_07_pop7_0 thei_llvm_fpga_pop_i32_i_07_pop7_relu45 (
        .in_data_in(c_i32_038_q),
        .in_dir(bubble_select_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_b),
        .in_feedback_in_7(i_llvm_fpga_push_i32_i_07_push7_relu421_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i32_i_07_push7_relu421_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_07_pop7_relu45_backStall),
        .in_valid_in(SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_feedback_stall_out_7),
        .out_stall_out(i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i32_i_07_pop7_relu45(BITJOIN,265)
    assign bubble_join_i_llvm_fpga_pop_i32_i_07_pop7_relu45_q = i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_07_pop7_relu45(BITSELECT,266)
    assign bubble_select_i_llvm_fpga_pop_i32_i_07_pop7_relu45_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_07_pop7_relu45_q[31:0]);

    // i_arrayidx5_relu40_c_i2_01_x(CONSTANT,13)
    assign i_arrayidx5_relu40_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx_relu40_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,198)@33
    assign i_arrayidx_relu40_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel0_2_b, bubble_select_i_llvm_fpga_pop_i32_i_07_pop7_relu45_b, i_arrayidx5_relu40_c_i2_01_x_q};

    // SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_1(STALLENABLE,423)
    // Valid signal propagation
    assign SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_out_stall_out | ~ (SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_1_wireValid = bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40(STALLENABLE,325)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_consumed0 = (~ (SE_i_arrayidx_relu40_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_consumed1 = (~ (SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_wireValid = i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_out_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40(BLACKBOX,62)@32
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0@33
    // out out_stall_out@20000000
    // out out_valid_out@33
    relu4_i_llvm_fpga_ffwd_dest_p1024f32_in081_0 thei_llvm_fpga_ffwd_dest_p1024f32_in081_relu40 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_backStall),
        .in_valid_in(SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40(BITJOIN,245)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_q = i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40(BITSELECT,246)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_q[63:0]);

    // i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,202)@33
    assign i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_b[51:0]);
    assign i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_b[63:52]);

    // i_arrayidx_relu40_add_x_p1_of_2(ADD,175)@33 + 1
    assign i_arrayidx_relu40_add_x_p1_of_2_a = {1'b0, i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_arrayidx_relu40_add_x_p1_of_2_b = {1'b0, i_arrayidx_relu40_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx_relu40_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx_relu40_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx_relu40_add_x_p1_of_2_o <= $unsigned(i_arrayidx_relu40_add_x_p1_of_2_a) + $unsigned(i_arrayidx_relu40_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx_relu40_add_x_p1_of_2_c[0] = i_arrayidx_relu40_add_x_p1_of_2_o[52];
    assign i_arrayidx_relu40_add_x_p1_of_2_q = i_arrayidx_relu40_add_x_p1_of_2_o[51:0];

    // redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(12'b000000000000);
        end
        else if (SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx_relu40_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,194)@34
    assign i_arrayidx_relu40_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,389)
    // Valid signal propagation
    assign SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_arrayidx_relu40_add_x_p2_of_2_backStall & SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_V1;
    // Backward Stall generation
    assign SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0(STALLREG,524)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_r_valid <= SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx_relu40_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx_relu40_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_V = SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx_relu40_add_x_p1_of_2_q;

    // SE_i_arrayidx_relu40_add_x_p1_of_2(STALLENABLE,376)
    // Valid signal propagation
    assign SE_i_arrayidx_relu40_add_x_p1_of_2_V0 = SE_i_arrayidx_relu40_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx_relu40_add_x_p1_of_2_V1 = SE_i_arrayidx_relu40_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx_relu40_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx_relu40_add_x_p2_of_2_backStall & SE_i_arrayidx_relu40_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx_relu40_add_x_p1_of_2_s_tv_1 = SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx_relu40_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx_relu40_add_x_p1_of_2_or0 = SE_i_arrayidx_relu40_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx_relu40_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx_relu40_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx_relu40_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx_relu40_add_x_p1_of_2_and0 = SE_i_arrayidx_relu40_add_x_BitSelect_for_b_BitJoin_for_b_V0 & SE_i_arrayidx_relu40_add_x_p1_of_2_backEN;
    assign SE_i_arrayidx_relu40_add_x_p1_of_2_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in081_relu40_V0 & SE_i_arrayidx_relu40_add_x_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_arrayidx_relu40_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx_relu40_add_x_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx_relu40_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx_relu40_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx_relu40_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx_relu40_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx_relu40_add_x_p1_of_2_R_v_0 & SE_i_arrayidx_relu40_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx_relu40_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx_relu40_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx_relu40_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx_relu40_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx_relu40_add_x_p1_of_2_R_v_1 & SE_i_arrayidx_relu40_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx_relu40_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx_relu40_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx_relu40_add_x_p2_of_2(STALLREG,523)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_valid <= SE_i_arrayidx_relu40_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx_relu40_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx_relu40_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx_relu40_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx_relu40_add_x_p2_of_2_and0 = SE_i_arrayidx_relu40_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx_relu40_add_x_p2_of_2_and1 = SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel1_0_V1 & SR_SE_i_arrayidx_relu40_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx_relu40_add_x_p2_of_2_i_valid = SE_redist1_i_arrayidx_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_arrayidx_relu40_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx_relu40_add_x_p2_of_2_backStall = SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx_relu40_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx_relu40_add_x_p2_of_2_V = SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx_relu40_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx_relu40_add_x_p2_of_2_D0 = SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_data0 : i_arrayidx_relu40_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx_relu40_add_x_p2_of_2_D1 = SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_data1 : i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx_relu40_add_x_p2_of_2_D2 = SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx_relu40_add_x_p2_of_2_r_data2 : i_arrayidx_relu40_add_x_p1_of_2_c;

    // SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel1_0(STALLENABLE,382)
    // Valid signal propagation
    assign SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel1_0_V0 = 1'b1;
    assign SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel1_0_V1 = 1'b1;

    // SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0(STALLREG,527)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_r_valid <= SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx5_relu40_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx5_relu40_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_V = SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx5_relu40_add_x_p1_of_2_q;

    // SE_i_arrayidx5_relu40_add_x_p1_of_2(STALLENABLE,373)
    // Valid signal propagation
    assign SE_i_arrayidx5_relu40_add_x_p1_of_2_V0 = SE_i_arrayidx5_relu40_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx5_relu40_add_x_p1_of_2_V1 = SE_i_arrayidx5_relu40_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx5_relu40_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_backStall & SE_i_arrayidx5_relu40_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx5_relu40_add_x_p1_of_2_s_tv_1 = SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx5_relu40_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx5_relu40_add_x_p1_of_2_or0 = SE_i_arrayidx5_relu40_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx5_relu40_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx5_relu40_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx5_relu40_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx5_relu40_add_x_p1_of_2_v_s_0 = SE_i_arrayidx5_relu40_add_x_p1_of_2_backEN & SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx5_relu40_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx5_relu40_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx5_relu40_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx5_relu40_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx5_relu40_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx5_relu40_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx5_relu40_add_x_p1_of_2_R_v_0 & SE_i_arrayidx5_relu40_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx5_relu40_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx5_relu40_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx5_relu40_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx5_relu40_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx5_relu40_add_x_p1_of_2_R_v_1 & SE_i_arrayidx5_relu40_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx5_relu40_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx5_relu40_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx5_relu40_add_x_p2_of_2(STALLREG,526)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_valid <= SE_i_arrayidx5_relu40_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx5_relu40_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx5_relu40_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_and0 = SE_i_arrayidx5_relu40_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_and1 = SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_i_valid = SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel1_0_V0 & SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_backStall = SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_V = SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_D0 = SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_data0 : i_arrayidx5_relu40_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_D1 = SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_data1 : i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_D2 = SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_r_data2 : i_arrayidx5_relu40_add_x_p1_of_2_c;

    // SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,388)
    // Valid signal propagation
    assign SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_backStall & SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_V1;
    // Backward Stall generation
    assign SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,186)@71
    assign i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx5_relu40_add_x_BitSelect_for_b_tessel0_2_b, bubble_select_redist6_i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_data_out_38_fifo_b, i_arrayidx5_relu40_c_i2_01_x_q};

    // SR_SE_i_arrayidx5_relu40_add_x_p1_of_2(STALLREG,525)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_r_valid <= SE_i_arrayidx5_relu40_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_and0 = SE_i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    assign SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_V0 & SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_backStall = SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_V = SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_D0 = SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_r_data0 : i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_D1 = SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_r_data1 : i_arrayidx5_relu40_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41(STALLENABLE,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_consumed0 = (~ (SR_SE_i_arrayidx5_relu40_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_consumed1 = (~ (SE_redist0_i_arrayidx5_relu40_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_wireValid = i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_out_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41(BLACKBOX,63)@70
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@71
    // out out_stall_out@20000000
    // out out_valid_out@71
    relu4_i_llvm_fpga_ffwd_dest_p1024f32_out092_0 thei_llvm_fpga_ffwd_dest_p1024f32_out092_relu41 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_backStall),
        .in_valid_in(SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_2(STALLENABLE,425)
    // Valid signal propagation
    assign SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_p1024f32_out092_relu41_out_stall_out | ~ (SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_2_wireValid = bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_valid_out;

    // bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg(STALLFIFO,517)
    assign bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_valid_in = SE_out_relu4_B2_merge_reg_aunroll_x_V1;
    assign bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(70),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_relu4_B2_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg(STALLFIFO,516)
    assign bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_valid_in = SE_out_relu4_B2_merge_reg_aunroll_x_V0;
    assign bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_relu4_B2_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_relu4_B2_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_relu4_B2_merge_reg_aunroll_x(STALLENABLE,318)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_relu4_B2_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_relu4_B2_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_relu4_B2_merge_reg_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_relu4_B2_merge_reg_aunroll_x_fromReg0 <= SE_out_relu4_B2_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_relu4_B2_merge_reg_aunroll_x_fromReg1 <= SE_out_relu4_B2_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_relu4_B2_merge_reg_aunroll_x_fromReg2 <= SE_out_relu4_B2_merge_reg_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_relu4_B2_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_relu4_B2_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_relu4_B2_merge_reg_aunroll_x_wireValid) | SE_out_relu4_B2_merge_reg_aunroll_x_fromReg0;
    assign SE_out_relu4_B2_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_relu4_B2_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_relu4_B2_merge_reg_aunroll_x_wireValid) | SE_out_relu4_B2_merge_reg_aunroll_x_fromReg1;
    assign SE_out_relu4_B2_merge_reg_aunroll_x_consumed2 = (~ (redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_out) & SE_out_relu4_B2_merge_reg_aunroll_x_wireValid) | SE_out_relu4_B2_merge_reg_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_relu4_B2_merge_reg_aunroll_x_StallValid = SE_out_relu4_B2_merge_reg_aunroll_x_backStall & SE_out_relu4_B2_merge_reg_aunroll_x_wireValid;
    assign SE_out_relu4_B2_merge_reg_aunroll_x_toReg0 = SE_out_relu4_B2_merge_reg_aunroll_x_StallValid & SE_out_relu4_B2_merge_reg_aunroll_x_consumed0;
    assign SE_out_relu4_B2_merge_reg_aunroll_x_toReg1 = SE_out_relu4_B2_merge_reg_aunroll_x_StallValid & SE_out_relu4_B2_merge_reg_aunroll_x_consumed1;
    assign SE_out_relu4_B2_merge_reg_aunroll_x_toReg2 = SE_out_relu4_B2_merge_reg_aunroll_x_StallValid & SE_out_relu4_B2_merge_reg_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_relu4_B2_merge_reg_aunroll_x_or0 = SE_out_relu4_B2_merge_reg_aunroll_x_consumed0;
    assign SE_out_relu4_B2_merge_reg_aunroll_x_or1 = SE_out_relu4_B2_merge_reg_aunroll_x_consumed1 & SE_out_relu4_B2_merge_reg_aunroll_x_or0;
    assign SE_out_relu4_B2_merge_reg_aunroll_x_wireStall = ~ (SE_out_relu4_B2_merge_reg_aunroll_x_consumed2 & SE_out_relu4_B2_merge_reg_aunroll_x_or1);
    assign SE_out_relu4_B2_merge_reg_aunroll_x_backStall = SE_out_relu4_B2_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_relu4_B2_merge_reg_aunroll_x_V0 = SE_out_relu4_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_relu4_B2_merge_reg_aunroll_x_fromReg0);
    assign SE_out_relu4_B2_merge_reg_aunroll_x_V1 = SE_out_relu4_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_relu4_B2_merge_reg_aunroll_x_fromReg1);
    assign SE_out_relu4_B2_merge_reg_aunroll_x_V2 = SE_out_relu4_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_relu4_B2_merge_reg_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_relu4_B2_merge_reg_aunroll_x_wireValid = relu4_B2_merge_reg_aunroll_x_out_valid_out;

    // redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo(STALLFIFO,230)
    assign redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_in = SE_out_relu4_B2_merge_reg_aunroll_x_V2;
    assign redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_in = SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_backStall;
    assign redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_data_in = bubble_select_relu4_B2_merge_reg_aunroll_x_b;
    assign redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_in_bitsignaltemp = redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_in[0];
    assign redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_in_bitsignaltemp = redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_in[0];
    assign redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_out[0] = redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_out_bitsignaltemp;
    assign redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_out[0] = redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo (
        .valid_in(redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_relu4_B2_merge_reg_aunroll_x_b),
        .valid_out(redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo(BITJOIN,298)
    assign bubble_join_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_q = redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_data_out;

    // bubble_select_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo(BITSELECT,299)
    assign bubble_select_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_b = $unsigned(bubble_join_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_q[0:0]);

    // SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo(STALLENABLE,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_fromReg0 <= '0;
            SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_fromReg0 <= SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_toReg0;
            // Successor 1
            SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_fromReg1 <= SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_consumed0 = (~ (SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backStall) & SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_wireValid) | SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_fromReg0;
    assign SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_consumed1 = (~ (i_llvm_fpga_pop_i32_i_07_pop7_relu45_out_stall_out) & SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_wireValid) | SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_fromReg1;
    // Consuming
    assign SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_StallValid = SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_backStall & SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_wireValid;
    assign SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_toReg0 = SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_StallValid & SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_consumed0;
    assign SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_toReg1 = SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_StallValid & SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_or0 = SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_consumed0;
    assign SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_wireStall = ~ (SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_consumed1 & SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_or0);
    assign SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_backStall = SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_V0 = SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_wireValid & ~ (SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_fromReg0);
    assign SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_V1 = SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_wireValid & ~ (SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_wireValid = redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_out;

    // SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0(STALLREG,520)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_valid <= 1'b0;
            SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_valid <= SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backStall & (SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_valid | SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_i_valid);

            if (SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_data0 <= $unsigned(bubble_select_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_i_valid = SE_out_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backStall = SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_valid | ~ (SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_i_valid);

    // Valid
    assign SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_V = SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_valid == 1'b1 ? SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_valid : SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_i_valid;

    assign SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_D0 = SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_valid == 1'b1 ? SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_data0 : bubble_select_redist10_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_b;

    // redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0(REG,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backEN == 1'b1)
        begin
            redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_q <= $unsigned(SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_D0);
        end
    end

    // SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0(STALLENABLE,406)
    // Valid signal propagation
    assign SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_V0 = SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_R_v_0;
    // Stall signal propagation
    assign SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_s_tv_0 = SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backStall & SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_R_v_0;
    // Backward Enable generation
    assign SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backEN = ~ (SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_v_s_0 = SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backEN & SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_V;
    // Backward Stall generation
    assign SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backStall = ~ (SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backEN == 1'b0)
            begin
                SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_R_v_0 <= SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_R_v_0 & SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_s_tv_0;
            end
            else
            begin
                SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_R_v_0 <= SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_v_s_0;
            end

        end
    end

    // SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1(STALLREG,521)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_valid <= 1'b0;
            SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_valid <= SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backStall & (SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_valid | SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_i_valid);

            if (SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_data0 <= $unsigned(redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_i_valid = SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_V0;
    // Stall signal propagation
    assign SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backStall = SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_valid | ~ (SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_i_valid);

    // Valid
    assign SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V = SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_valid == 1'b1 ? SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_valid : SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_i_valid;

    assign SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_D0 = SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_valid == 1'b1 ? SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_data0 : redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_q;

    // redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1(REG,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backEN == 1'b1)
        begin
            redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_q <= $unsigned(SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_D0);
        end
    end

    // SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1(STALLENABLE,407)
    // Valid signal propagation
    assign SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V0 = SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_0;
    assign SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V1 = SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_1;
    assign SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V2 = SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_2;
    // Stall signal propagation
    assign SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_out_stall_out & SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_0;
    assign SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_1 = i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_stall_out & SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_1;
    assign SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_2 = redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_out & SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_2;
    // Backward Enable generation
    assign SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_or0 = SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_0;
    assign SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_or1 = SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_1 | SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_or0;
    assign SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backEN = ~ (SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_2 | SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_v_s_0 = SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backEN & SR_SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V;
    // Backward Stall generation
    assign SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backStall = ~ (SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_0 <= 1'b0;
            SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_1 <= 1'b0;
            SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backEN == 1'b0)
            begin
                SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_0 <= SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_0 & SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_0;
            end
            else
            begin
                SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_0 <= SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_v_s_0;
            end

            if (SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backEN == 1'b0)
            begin
                SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_1 <= SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_1 & SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_1;
            end
            else
            begin
                SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_1 <= SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_v_s_0;
            end

            if (SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backEN == 1'b0)
            begin
                SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_2 <= SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_2 & SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_2;
            end
            else
            begin
                SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_2 <= SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_v_s_0;
            end

        end
    end

    // redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo(STALLFIFO,233)
    assign redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_in = SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V2;
    assign redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_in = SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_backStall;
    assign redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_data_in = redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_q;
    assign redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_in_bitsignaltemp = redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_in[0];
    assign redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_in_bitsignaltemp = redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_in[0];
    assign redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_out[0] = redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_out_bitsignaltemp;
    assign redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_out[0] = redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(37),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo (
        .valid_in(redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_in_bitsignaltemp),
        .stall_in(redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_in_bitsignaltemp),
        .data_in(redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_q),
        .valid_out(redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_out_bitsignaltemp),
        .stall_out(redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_out_bitsignaltemp),
        .data_out(redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo(STALLENABLE,409)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg0 <= '0;
            SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg1 <= '0;
            SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg0 <= SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_toReg0;
            // Successor 1
            SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg1 <= SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_toReg1;
            // Successor 2
            SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg2 <= SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_consumed0 = (~ (i_llvm_fpga_pipeline_keep_going_relu43_out_stall_out) & SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireValid) | SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg0;
    assign SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_consumed1 = (~ (i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_out_stall_out) & SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireValid) | SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg1;
    assign SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_consumed2 = (~ (redist13_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_102_fifo_stall_out) & SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireValid) | SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg2;
    // Consuming
    assign SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_StallValid = SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_backStall & SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireValid;
    assign SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_toReg0 = SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_StallValid & SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_consumed0;
    assign SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_toReg1 = SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_StallValid & SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_consumed1;
    assign SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_toReg2 = SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_StallValid & SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_or0 = SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_consumed0;
    assign SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_or1 = SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_consumed1 & SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_or0;
    assign SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireStall = ~ (SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_consumed2 & SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_or1);
    assign SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_backStall = SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_V0 = SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireValid & ~ (SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg0);
    assign SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_V1 = SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireValid & ~ (SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg1);
    assign SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_V2 = SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireValid & ~ (SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireValid = redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_relu423(STALLENABLE,349)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_relu423_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_relu423_wireValid = i_llvm_fpga_push_i1_notexitcond_relu423_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_relu423(BLACKBOX,74)@71
    // in in_stall_in@20000000
    // out out_data_out@72
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@72
    relu4_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_relu423 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_D0),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_relu43_out_not_exitcond_stall_out),
        .in_first_cleanup(SR_SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_relu423_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_relu423_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_relu423_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_relu423_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_relu423_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_relu423_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_relu425(STALLENABLE,345)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_relu425_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_relu425_wireValid = i_llvm_fpga_push_i1_lastiniteration_relu425_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration_relu425(BLACKBOX,72)@104
    // in in_stall_in@20000000
    // out out_data_out@105
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@105
    relu4_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_relu425 (
        .in_data_in(SR_SE_i_next_initerations_relu410_vt_select_2_D0),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_relu43_out_initeration_stall_out),
        .in_keep_going(SR_SE_i_next_initerations_relu410_vt_select_2_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_relu425_backStall),
        .in_valid_in(SE_i_next_initerations_relu410_vt_select_2_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_relu425_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_relu425_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_relu425_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_relu425_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo(BITJOIN,301)
    assign bubble_join_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_q = redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_data_out;

    // bubble_select_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo(BITSELECT,302)
    assign bubble_select_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_b = $unsigned(bubble_join_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_q[0:0]);

    // i_llvm_fpga_pipeline_keep_going_relu43(BLACKBOX,66)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    relu4_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_relu43 (
        .in_data_in(bubble_select_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_b),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_relu425_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_relu425_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_relu423_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_relu423_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_relu43_backStall),
        .in_valid_in(SE_out_redist12_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_V0),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_relu43_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_relu43_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_relu43_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_relu43_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_relu43_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_relu43_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_relu43_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_relu43_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pipeline_keep_going_relu43(BITJOIN,258)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_relu43_q = i_llvm_fpga_pipeline_keep_going_relu43_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_relu43(BITSELECT,259)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_relu43_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_relu43_q[0:0]);

    // bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg(STALLFIFO,518)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_stall_in = SE_out_redist4_i_masked_relu428_q_33_fifo_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pipeline_keep_going_relu43(STALLENABLE,333)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_relu43_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_relu43_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_relu43_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_relu43_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going_relu43_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_relu43_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_consumed1 = (~ (SE_bgTrunc_i_inc_relu412_sel_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_relu43_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_consumed2 = (~ (SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_relu43_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_consumed3 = (~ (SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_relu424_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_relu43_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_consumed4 = (~ (redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_relu43_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_relu43_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_relu43_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_relu43_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_relu43_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_relu43_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_relu43_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_relu43_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_relu43_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_or3 = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_relu43_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu43_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going_relu43_or3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_V4 = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu43_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu43_wireValid = i_llvm_fpga_pipeline_keep_going_relu43_out_valid_out;

    // redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo(STALLFIFO,226)
    assign redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_V4;
    assign redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_stall_in = SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_backStall;
    assign redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_data_in = bubble_select_i_llvm_fpga_pipeline_keep_going_relu43_b;
    assign redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_valid_in_bitsignaltemp = redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_valid_in[0];
    assign redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_stall_in_bitsignaltemp = redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_stall_in[0];
    assign redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_valid_out[0] = redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_valid_out_bitsignaltemp;
    assign redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_stall_out[0] = redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo (
        .valid_in(redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pipeline_keep_going_relu43_b),
        .valid_out(redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo(BITJOIN,292)
    assign bubble_join_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_q = redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_data_out;

    // bubble_select_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo(BITSELECT,293)
    assign bubble_select_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_b = $unsigned(bubble_join_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_memdep_relu433(BITJOIN,251)
    assign bubble_join_i_llvm_fpga_mem_memdep_relu433_q = i_llvm_fpga_mem_memdep_relu433_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_relu433(BITSELECT,252)
    assign bubble_select_i_llvm_fpga_mem_memdep_relu433_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_relu433_q[0:0]);

    // SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo(STALLENABLE,399)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_fromReg0 <= '0;
            SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_fromReg0 <= SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_toReg0;
            // Successor 1
            SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_fromReg1 <= SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_consumed0 = (~ (SR_SE_i_next_initerations_relu410_vt_select_2_backStall) & SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_wireValid) | SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_fromReg0;
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_consumed1 = (~ (SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_backStall) & SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_wireValid) | SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_fromReg1;
    // Consuming
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_StallValid = SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_backStall & SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_wireValid;
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_toReg0 = SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_StallValid & SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_consumed0;
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_toReg1 = SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_StallValid & SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_or0 = SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_consumed0;
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_wireStall = ~ (SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_consumed1 & SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_or0);
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_backStall = SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_V0 = SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_wireValid & ~ (SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_fromReg0);
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_V1 = SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_wireValid & ~ (SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_wireValid = redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_valid_out;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_relu435(STALLENABLE,347)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_relu435_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_relu435_wireValid = i_llvm_fpga_push_i1_memdep_phi_push8_relu435_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi_push8_relu435(BLACKBOX,73)@104
    // in in_stall_in@20000000
    // out out_data_out@105
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@105
    relu4_i_llvm_fpga_push_i1_memdep_phi_push8_0 thei_llvm_fpga_push_i1_memdep_phi_push8_relu435 (
        .in_data_in(SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_D0),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_out_feedback_stall_out_8),
        .in_keep_going(SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_relu435_backStall),
        .in_valid_in(SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_V0),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_memdep_phi_push8_relu435_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_memdep_phi_push8_relu435_out_feedback_valid_out_8),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push8_relu435_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push8_relu435_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_bubble_select_i_llvm_fpga_mem_memdep_relu433(STALLENABLE,437)
    // Valid signal propagation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_V0 = SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_backStall = i_llvm_fpga_push_i1_memdep_phi_push8_relu435_out_stall_out | ~ (SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_wireValid = SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_V;

    // SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433(STALLREG,531)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_r_valid <= 1'b0;
            SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_r_data0 <= 1'bx;
            SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_r_valid <= SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_backStall & (SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_r_valid | SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_i_valid);

            if (SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_mem_memdep_relu433_b);
                SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_r_data1 <= $unsigned(bubble_select_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_and0 = SE_out_i_llvm_fpga_mem_memdep_relu433_V1;
    assign SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_i_valid = SE_out_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_V1 & SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_and0;
    // Stall signal propagation
    assign SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_backStall = SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_r_valid | ~ (SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_i_valid);

    // Valid
    assign SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_V = SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_r_valid == 1'b1 ? SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_r_valid : SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_i_valid;

    // Data0
    assign SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_D0 = SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_r_valid == 1'b1 ? SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_r_data0 : bubble_select_i_llvm_fpga_mem_memdep_relu433_b;
    // Data1
    assign SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_D1 = SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_r_valid == 1'b1 ? SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_r_data1 : bubble_select_redist7_i_llvm_fpga_pipeline_keep_going_relu43_out_data_out_33_fifo_b;

    // SE_out_redist4_i_masked_relu428_q_33_fifo(STALLENABLE,393)
    // Valid signal propagation
    assign SE_out_redist4_i_masked_relu428_q_33_fifo_V0 = SE_out_redist4_i_masked_relu428_q_33_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist4_i_masked_relu428_q_33_fifo_backStall = in_stall_in | ~ (SE_out_redist4_i_masked_relu428_q_33_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist4_i_masked_relu428_q_33_fifo_and0 = redist4_i_masked_relu428_q_33_fifo_valid_out;
    assign SE_out_redist4_i_masked_relu428_q_33_fifo_and1 = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_1_reg_valid_out & SE_out_redist4_i_masked_relu428_q_33_fifo_and0;
    assign SE_out_redist4_i_masked_relu428_q_33_fifo_and2 = bubble_out_i_llvm_fpga_pipeline_keep_going_relu43_1_reg_valid_out & SE_out_redist4_i_masked_relu428_q_33_fifo_and1;
    assign SE_out_redist4_i_masked_relu428_q_33_fifo_and3 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_relu44_V0 & SE_out_redist4_i_masked_relu428_q_33_fifo_and2;
    assign SE_out_redist4_i_masked_relu428_q_33_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_relu433_V0 & SE_out_redist4_i_masked_relu428_q_33_fifo_and3;

    // SE_out_i_llvm_fpga_mem_memdep_relu433(STALLENABLE,329)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_relu433_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_relu433_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_relu433_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_relu433_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_relu433_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_relu433_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_relu433_consumed0 = (~ (SE_out_redist4_i_masked_relu428_q_33_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_relu433_wireValid) | SE_out_i_llvm_fpga_mem_memdep_relu433_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_relu433_consumed1 = (~ (SR_SE_bubble_select_i_llvm_fpga_mem_memdep_relu433_backStall) & SE_out_i_llvm_fpga_mem_memdep_relu433_wireValid) | SE_out_i_llvm_fpga_mem_memdep_relu433_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_relu433_StallValid = SE_out_i_llvm_fpga_mem_memdep_relu433_backStall & SE_out_i_llvm_fpga_mem_memdep_relu433_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_relu433_toReg0 = SE_out_i_llvm_fpga_mem_memdep_relu433_StallValid & SE_out_i_llvm_fpga_mem_memdep_relu433_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_relu433_toReg1 = SE_out_i_llvm_fpga_mem_memdep_relu433_StallValid & SE_out_i_llvm_fpga_mem_memdep_relu433_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_relu433_or0 = SE_out_i_llvm_fpga_mem_memdep_relu433_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_relu433_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_relu433_consumed1 & SE_out_i_llvm_fpga_mem_memdep_relu433_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_relu433_backStall = SE_out_i_llvm_fpga_mem_memdep_relu433_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_relu433_V0 = SE_out_i_llvm_fpga_mem_memdep_relu433_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_relu433_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_relu433_V1 = SE_out_i_llvm_fpga_mem_memdep_relu433_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_relu433_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_relu433_wireValid = i_llvm_fpga_mem_memdep_relu433_out_o_valid;

    // redist9_i_first_cleanup_xor_relu416_q_38_1(REG,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_first_cleanup_xor_relu416_q_38_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist9_i_first_cleanup_xor_relu416_q_38_1_backEN == 1'b1)
        begin
            redist9_i_first_cleanup_xor_relu416_q_38_1_q <= $unsigned(SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_D0);
        end
    end

    // i_arrayidx5_relu40_add_x_p2_of_2(ADD,167)@72 + 1
    assign i_arrayidx5_relu40_add_x_p2_of_2_cin = SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_D2;
    assign i_arrayidx5_relu40_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx5_relu40_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_D1}, i_arrayidx5_relu40_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx5_relu40_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx5_relu40_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx5_relu40_add_x_p2_of_2_o <= $unsigned(i_arrayidx5_relu40_add_x_p2_of_2_a) + $unsigned(i_arrayidx5_relu40_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx5_relu40_add_x_p2_of_2_q = i_arrayidx5_relu40_add_x_p2_of_2_o[13:1];

    // redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0(REG,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx5_relu40_add_x_BitJoin_for_q(BITJOIN,168)@73
    assign i_arrayidx5_relu40_add_x_BitJoin_for_q_q = {i_arrayidx5_relu40_add_x_p2_of_2_q, redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx5_relu40_dupName_0_trunc_sel_x(BITSELECT,10)@73
    assign i_arrayidx5_relu40_dupName_0_trunc_sel_x_b = i_arrayidx5_relu40_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_memdep_relu433(BLACKBOX,64)@73
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_relu4_avm_address@20000000
    // out out_memdep_relu4_avm_burstcount@20000000
    // out out_memdep_relu4_avm_byteenable@20000000
    // out out_memdep_relu4_avm_enable@20000000
    // out out_memdep_relu4_avm_read@20000000
    // out out_memdep_relu4_avm_write@20000000
    // out out_memdep_relu4_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@104
    // out out_o_writeack@104
    relu4_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_relu433 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx5_relu40_dupName_0_trunc_sel_x_b),
        .in_i_predicate(redist9_i_first_cleanup_xor_relu416_q_38_1_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_relu433_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_b),
        .in_memdep_relu4_avm_readdata(in_memdep_relu4_avm_readdata),
        .in_memdep_relu4_avm_readdatavalid(in_memdep_relu4_avm_readdatavalid),
        .in_memdep_relu4_avm_waitrequest(in_memdep_relu4_avm_waitrequest),
        .in_memdep_relu4_avm_writeack(in_memdep_relu4_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_relu433_out_lsu_memdep_o_active),
        .out_memdep_relu4_avm_address(i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_address),
        .out_memdep_relu4_avm_burstcount(i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_burstcount),
        .out_memdep_relu4_avm_byteenable(i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_byteenable),
        .out_memdep_relu4_avm_enable(i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_enable),
        .out_memdep_relu4_avm_read(i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_read),
        .out_memdep_relu4_avm_write(i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_write),
        .out_memdep_relu4_avm_writedata(i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_relu433_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_relu433_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_relu433_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0(STALLENABLE,391)
    // Valid signal propagation
    assign SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_V0 = SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_s_tv_0 = SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_backStall & SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_arrayidx5_relu40_add_x_p2_of_2(STALLENABLE,374)
    // Valid signal propagation
    assign SE_i_arrayidx5_relu40_add_x_p2_of_2_V0 = SE_i_arrayidx5_relu40_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx5_relu40_add_x_p2_of_2_s_tv_0 = SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_backStall & SE_i_arrayidx5_relu40_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx5_relu40_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx5_relu40_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx5_relu40_add_x_p2_of_2_v_s_0 = SE_i_arrayidx5_relu40_add_x_p2_of_2_backEN & SR_SE_i_arrayidx5_relu40_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx5_relu40_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx5_relu40_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx5_relu40_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx5_relu40_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx5_relu40_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx5_relu40_add_x_p2_of_2_R_v_0 & SE_i_arrayidx5_relu40_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx5_relu40_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx5_relu40_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_mem_unnamed_relu45_relu426(BITJOIN,255)
    assign bubble_join_i_llvm_fpga_mem_unnamed_relu45_relu426_q = i_llvm_fpga_mem_unnamed_relu45_relu426_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_relu45_relu426(BITSELECT,256)
    assign bubble_select_i_llvm_fpga_mem_unnamed_relu45_relu426_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_relu45_relu426_q[31:0]);

    // i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x(BLACKBOX,33)@67
    // in in_i_stall@20000000
    // out out_c0_exit9_0_tpl@73
    // out out_c0_exit9_1_tpl@73
    // out out_o_stall@20000000
    // out out_o_valid@73
    relu4_i_sfc_s_c0_in_for_body_s_c0_enter72_relu430 thei_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x (
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_i_llvm_fpga_mem_unnamed_relu45_relu426_b),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_relu45_relu426_V0),
        .out_c0_exit9_0_tpl(),
        .out_c0_exit9_1_tpl(i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_out_c0_exit9_1_tpl),
        .out_o_stall(i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x(STALLENABLE,316)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_backStall = i_llvm_fpga_mem_memdep_relu433_out_o_stall | ~ (SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_and0 = i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_and1 = SE_i_arrayidx5_relu40_add_x_p2_of_2_V0 & SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_and0;
    assign SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_and2 = SE_redist3_i_arrayidx5_relu40_add_x_p1_of_2_q_1_0_V0 & SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_and1;
    assign SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_wireValid = SE_redist9_i_first_cleanup_xor_relu416_q_38_1_V0 & SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_and2;

    // SE_redist9_i_first_cleanup_xor_relu416_q_38_1(STALLENABLE,403)
    // Valid signal propagation
    assign SE_redist9_i_first_cleanup_xor_relu416_q_38_1_V0 = SE_redist9_i_first_cleanup_xor_relu416_q_38_1_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_first_cleanup_xor_relu416_q_38_1_s_tv_0 = SE_out_i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_backStall & SE_redist9_i_first_cleanup_xor_relu416_q_38_1_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_first_cleanup_xor_relu416_q_38_1_backEN = ~ (SE_redist9_i_first_cleanup_xor_relu416_q_38_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_first_cleanup_xor_relu416_q_38_1_v_s_0 = SE_redist9_i_first_cleanup_xor_relu416_q_38_1_backEN & SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_V;
    // Backward Stall generation
    assign SE_redist9_i_first_cleanup_xor_relu416_q_38_1_backStall = ~ (SE_redist9_i_first_cleanup_xor_relu416_q_38_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_first_cleanup_xor_relu416_q_38_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_first_cleanup_xor_relu416_q_38_1_backEN == 1'b0)
            begin
                SE_redist9_i_first_cleanup_xor_relu416_q_38_1_R_v_0 <= SE_redist9_i_first_cleanup_xor_relu416_q_38_1_R_v_0 & SE_redist9_i_first_cleanup_xor_relu416_q_38_1_s_tv_0;
            end
            else
            begin
                SE_redist9_i_first_cleanup_xor_relu416_q_38_1_R_v_0 <= SE_redist9_i_first_cleanup_xor_relu416_q_38_1_v_s_0;
            end

        end
    end

    // SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1(STALLREG,529)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_r_valid <= 1'b0;
            SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_r_valid <= SE_redist9_i_first_cleanup_xor_relu416_q_38_1_backStall & (SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_r_valid | SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_i_valid);

            if (SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_r_data0 <= $unsigned(redist9_i_first_cleanup_xor_relu416_q_38_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_i_valid = SE_redist9_i_first_cleanup_xor_relu416_q_38_0_V0;
    // Stall signal propagation
    assign SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_backStall = SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_r_valid | ~ (SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_i_valid);

    // Valid
    assign SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_V = SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_r_valid == 1'b1 ? SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_r_valid : SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_i_valid;

    assign SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_D0 = SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_r_valid == 1'b1 ? SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_r_data0 : redist9_i_first_cleanup_xor_relu416_q_38_0_q;

    // SE_redist9_i_first_cleanup_xor_relu416_q_38_0(STALLENABLE,402)
    // Valid signal propagation
    assign SE_redist9_i_first_cleanup_xor_relu416_q_38_0_V0 = SE_redist9_i_first_cleanup_xor_relu416_q_38_0_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_first_cleanup_xor_relu416_q_38_0_s_tv_0 = SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_1_backStall & SE_redist9_i_first_cleanup_xor_relu416_q_38_0_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_first_cleanup_xor_relu416_q_38_0_backEN = ~ (SE_redist9_i_first_cleanup_xor_relu416_q_38_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_first_cleanup_xor_relu416_q_38_0_v_s_0 = SE_redist9_i_first_cleanup_xor_relu416_q_38_0_backEN & SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_V;
    // Backward Stall generation
    assign SE_redist9_i_first_cleanup_xor_relu416_q_38_0_backStall = ~ (SE_redist9_i_first_cleanup_xor_relu416_q_38_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_first_cleanup_xor_relu416_q_38_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_first_cleanup_xor_relu416_q_38_0_backEN == 1'b0)
            begin
                SE_redist9_i_first_cleanup_xor_relu416_q_38_0_R_v_0 <= SE_redist9_i_first_cleanup_xor_relu416_q_38_0_R_v_0 & SE_redist9_i_first_cleanup_xor_relu416_q_38_0_s_tv_0;
            end
            else
            begin
                SE_redist9_i_first_cleanup_xor_relu416_q_38_0_R_v_0 <= SE_redist9_i_first_cleanup_xor_relu416_q_38_0_v_s_0;
            end

        end
    end

    // SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0(STALLREG,528)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_r_valid <= 1'b0;
            SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_r_valid <= SE_redist9_i_first_cleanup_xor_relu416_q_38_0_backStall & (SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_r_valid | SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_i_valid);

            if (SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_r_data0 <= $unsigned(bubble_select_redist8_i_first_cleanup_xor_relu416_q_36_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_i_valid = SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_V1;
    // Stall signal propagation
    assign SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_backStall = SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_r_valid | ~ (SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_i_valid);

    // Valid
    assign SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_V = SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_r_valid == 1'b1 ? SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_r_valid : SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_i_valid;

    assign SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_D0 = SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_r_valid == 1'b1 ? SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_r_data0 : bubble_select_redist8_i_first_cleanup_xor_relu416_q_36_fifo_b;

    // leftShiftStage0Idx1Rng1_uid146_i_cleanups_shl_relu40_shift_x(BITSELECT,145)@71
    assign leftShiftStage0Idx1Rng1_uid146_i_cleanups_shl_relu40_shift_x_in = bubble_select_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_b[2:0];
    assign leftShiftStage0Idx1Rng1_uid146_i_cleanups_shl_relu40_shift_x_b = leftShiftStage0Idx1Rng1_uid146_i_cleanups_shl_relu40_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid147_i_cleanups_shl_relu40_shift_x(BITJOIN,146)@71
    assign leftShiftStage0Idx1_uid147_i_cleanups_shl_relu40_shift_x_q = {leftShiftStage0Idx1Rng1_uid146_i_cleanups_shl_relu40_shift_x_b, GND_q};

    // leftShiftStage0_uid149_i_cleanups_shl_relu40_shift_x(MUX,148)@71
    assign leftShiftStage0_uid149_i_cleanups_shl_relu40_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid149_i_cleanups_shl_relu40_shift_x_s or bubble_select_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_b or leftShiftStage0Idx1_uid147_i_cleanups_shl_relu40_shift_x_q)
    begin
        unique case (leftShiftStage0_uid149_i_cleanups_shl_relu40_shift_x_s)
            1'b0 : leftShiftStage0_uid149_i_cleanups_shl_relu40_shift_x_q = bubble_select_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_b;
            1'b1 : leftShiftStage0_uid149_i_cleanups_shl_relu40_shift_x_q = leftShiftStage0Idx1_uid147_i_cleanups_shl_relu40_shift_x_q;
            default : leftShiftStage0_uid149_i_cleanups_shl_relu40_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_relu49_vt_select_3(BITSELECT,51)@71
    assign i_cleanups_shl_relu49_vt_select_3_b = leftShiftStage0_uid149_i_cleanups_shl_relu40_shift_x_q[3:1];

    // i_cleanups_shl_relu49_vt_join(BITJOIN,50)@71
    assign i_cleanups_shl_relu49_vt_join_q = {i_cleanups_shl_relu49_vt_select_3_b, GND_q};

    // bubble_join_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo(BITJOIN,286)
    assign bubble_join_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_q = redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_data_out;

    // bubble_select_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo(BITSELECT,287)
    assign bubble_select_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_b = $unsigned(bubble_join_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_q[3:0]);

    // i_or_relu427(LOGICAL,85)@71
    assign i_or_relu427_q = i_notcmp_relu422_q | bubble_select_redist8_i_first_cleanup_xor_relu416_q_36_fifo_b;

    // i_next_cleanups_relu432(MUX,80)@71
    assign i_next_cleanups_relu432_s = i_or_relu427_q;
    always @(i_next_cleanups_relu432_s or bubble_select_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_b or i_cleanups_shl_relu49_vt_join_q)
    begin
        unique case (i_next_cleanups_relu432_s)
            1'b0 : i_next_cleanups_relu432_q = bubble_select_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_b;
            1'b1 : i_next_cleanups_relu432_q = i_cleanups_shl_relu49_vt_join_q;
            default : i_next_cleanups_relu432_q = 4'b0;
        endcase
    end

    // SE_out_i_llvm_fpga_push_i4_cleanups_push10_relu434(STALLENABLE,353)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push10_relu434_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push10_relu434_wireValid = i_llvm_fpga_push_i4_cleanups_push10_relu434_out_valid_out;

    // i_llvm_fpga_push_i4_cleanups_push10_relu434(BLACKBOX,76)@71
    // in in_stall_in@20000000
    // out out_data_out@72
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    // out out_stall_out@20000000
    // out out_valid_out@72
    relu4_i_llvm_fpga_push_i4_cleanups_push10_0 thei_llvm_fpga_push_i4_cleanups_push10_relu434 (
        .in_data_in(SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_D0),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_feedback_stall_out_10),
        .in_keep_going(SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_cleanups_push10_relu434_backStall),
        .in_valid_in(SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_V0),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i4_cleanups_push10_relu434_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i4_cleanups_push10_relu434_out_feedback_valid_out_10),
        .out_stall_out(i_llvm_fpga_push_i4_cleanups_push10_relu434_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_cleanups_push10_relu434_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo(STALLENABLE,395)
    // Valid signal propagation
    assign SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_V0 = SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_backStall = i_llvm_fpga_push_i4_cleanups_push10_relu434_out_stall_out | ~ (SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_wireValid = SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_V;

    // SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo(STALLREG,533)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_r_valid <= 1'b0;
            SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_r_data0 <= 4'bxxxx;
            SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_r_valid <= SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_backStall & (SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_r_valid | SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_i_valid);

            if (SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_r_data0 <= i_next_cleanups_relu432_q;
                SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_relu43_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_and0 = redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_valid_out;
    assign SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_and1 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_relu47_V4 & SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_and0;
    assign SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_and2 = SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_V0 & SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_and1;
    assign SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_relu43_V2 & SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_and2;
    // Stall signal propagation
    assign SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_backStall = SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_r_valid | ~ (SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_i_valid);

    // Valid
    assign SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_V = SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_r_valid == 1'b1 ? SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_r_valid : SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_i_valid;

    // Data0
    assign SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_D0 = SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_r_valid == 1'b1 ? SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_r_data0 : i_next_cleanups_relu432_q;
    // Data1
    assign SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_D1 = SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_r_valid == 1'b1 ? SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_r_data1 : bubble_select_i_llvm_fpga_pipeline_keep_going_relu43_b;

    // SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo(STALLENABLE,401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_fromReg0 <= '0;
            SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_fromReg0 <= SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_toReg0;
            // Successor 1
            SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_fromReg1 <= SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_consumed0 = (~ (SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_backStall) & SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_wireValid) | SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_fromReg0;
    assign SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_consumed1 = (~ (SR_SE_redist9_i_first_cleanup_xor_relu416_q_38_0_backStall) & SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_wireValid) | SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_fromReg1;
    // Consuming
    assign SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_StallValid = SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_backStall & SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_wireValid;
    assign SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_toReg0 = SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_StallValid & SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_consumed0;
    assign SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_toReg1 = SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_StallValid & SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_or0 = SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_consumed0;
    assign SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_wireStall = ~ (SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_consumed1 & SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_or0);
    assign SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_backStall = SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_V0 = SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_wireValid & ~ (SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_fromReg0);
    assign SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_V1 = SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_wireValid & ~ (SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_wireValid = redist8_i_first_cleanup_xor_relu416_q_36_fifo_valid_out;

    // redist8_i_first_cleanup_xor_relu416_q_36_fifo(STALLFIFO,227)
    assign redist8_i_first_cleanup_xor_relu416_q_36_fifo_valid_in = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_V3;
    assign redist8_i_first_cleanup_xor_relu416_q_36_fifo_stall_in = SE_out_redist8_i_first_cleanup_xor_relu416_q_36_fifo_backStall;
    assign redist8_i_first_cleanup_xor_relu416_q_36_fifo_data_in = i_first_cleanup_xor_relu416_q;
    assign redist8_i_first_cleanup_xor_relu416_q_36_fifo_valid_in_bitsignaltemp = redist8_i_first_cleanup_xor_relu416_q_36_fifo_valid_in[0];
    assign redist8_i_first_cleanup_xor_relu416_q_36_fifo_stall_in_bitsignaltemp = redist8_i_first_cleanup_xor_relu416_q_36_fifo_stall_in[0];
    assign redist8_i_first_cleanup_xor_relu416_q_36_fifo_valid_out[0] = redist8_i_first_cleanup_xor_relu416_q_36_fifo_valid_out_bitsignaltemp;
    assign redist8_i_first_cleanup_xor_relu416_q_36_fifo_stall_out[0] = redist8_i_first_cleanup_xor_relu416_q_36_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(37),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist8_i_first_cleanup_xor_relu416_q_36_fifo (
        .valid_in(redist8_i_first_cleanup_xor_relu416_q_36_fifo_valid_in_bitsignaltemp),
        .stall_in(redist8_i_first_cleanup_xor_relu416_q_36_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_xor_relu416_q),
        .valid_out(redist8_i_first_cleanup_xor_relu416_q_36_fifo_valid_out_bitsignaltemp),
        .stall_out(redist8_i_first_cleanup_xor_relu416_q_36_fifo_stall_out_bitsignaltemp),
        .data_out(redist8_i_first_cleanup_xor_relu416_q_36_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i4_cleanups_pop10_relu42(BITJOIN,268)
    assign bubble_join_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_q = i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_relu42(BITSELECT,269)
    assign bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_q[3:0]);

    // i_first_cleanup_relu48_sel_x(BITSELECT,26)@35
    assign i_first_cleanup_relu48_sel_x_b = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_b[0:0];

    // redist14_i_first_cleanup_relu48_sel_x_b_36_fifo(STALLFIFO,235)
    assign redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_valid_in = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_V2;
    assign redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_stall_in = SE_out_redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_backStall;
    assign redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_data_in = i_first_cleanup_relu48_sel_x_b;
    assign redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_valid_in_bitsignaltemp = redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_valid_in[0];
    assign redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_stall_in_bitsignaltemp = redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_stall_in[0];
    assign redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_valid_out[0] = redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_valid_out_bitsignaltemp;
    assign redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_stall_out[0] = redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(37),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist14_i_first_cleanup_relu48_sel_x_b_36_fifo (
        .valid_in(redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_valid_in_bitsignaltemp),
        .stall_in(redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_relu48_sel_x_b),
        .valid_out(redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_valid_out_bitsignaltemp),
        .stall_out(redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_stall_out_bitsignaltemp),
        .data_out(redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo(STALLFIFO,224)
    assign redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_valid_in = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_V0;
    assign redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_stall_in = SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_backStall;
    assign redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_data_in = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_b;
    assign redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_valid_in_bitsignaltemp = redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_valid_in[0];
    assign redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_stall_in_bitsignaltemp = redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_stall_in[0];
    assign redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_valid_out[0] = redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_valid_out_bitsignaltemp;
    assign redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_stall_out[0] = redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(37),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(4),
        .IMPL("ram")
    ) theredist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo (
        .valid_in(redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_valid_in_bitsignaltemp),
        .stall_in(redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_b),
        .valid_out(redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_valid_out_bitsignaltemp),
        .stall_out(redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_stall_out_bitsignaltemp),
        .data_out(redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_cleanups_pop10_relu42(BLACKBOX,69)@34
    // in in_stall_in@20000000
    // out out_data_out@35
    // out out_feedback_stall_out_10@20000000
    // out out_stall_out@20000000
    // out out_valid_out@35
    relu4_i_llvm_fpga_pop_i4_cleanups_pop10_0 thei_llvm_fpga_pop_i4_cleanups_pop10_relu42 (
        .in_data_in(c_i4_736_q),
        .in_dir(redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_q),
        .in_feedback_in_10(i_llvm_fpga_push_i4_cleanups_push10_relu434_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i4_cleanups_push10_relu434_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_backStall),
        .in_valid_in(SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V1),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_feedback_stall_out_10),
        .out_stall_out(i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42(STALLENABLE,339)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_fromReg2 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_fromReg3 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_consumed0 = (~ (redist5_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_data_out_36_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_consumed1 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_consumed2 = (~ (redist14_i_first_cleanup_relu48_sel_x_b_36_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_consumed3 = (~ (redist8_i_first_cleanup_xor_relu416_q_36_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_StallValid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_backStall & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_toReg0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_toReg1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_consumed1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_toReg2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_consumed2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_toReg3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_or0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_or1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_consumed1 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_or0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_or2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_consumed2 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_or1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_consumed3 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_or2);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_backStall = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_V0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_V1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_V2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_V3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_wireValid = i_llvm_fpga_pop_i4_cleanups_pop10_relu42_out_valid_out;

    // SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0(STALLENABLE,390)
    // Valid signal propagation
    assign SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_V0 = SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_backStall & SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_arrayidx_relu40_add_x_p2_of_2(STALLENABLE,377)
    // Valid signal propagation
    assign SE_i_arrayidx_relu40_add_x_p2_of_2_V0 = SE_i_arrayidx_relu40_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx_relu40_add_x_p2_of_2_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_backStall & SE_i_arrayidx_relu40_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx_relu40_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx_relu40_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx_relu40_add_x_p2_of_2_v_s_0 = SE_i_arrayidx_relu40_add_x_p2_of_2_backEN & SR_SE_i_arrayidx_relu40_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx_relu40_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx_relu40_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx_relu40_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx_relu40_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx_relu40_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx_relu40_add_x_p2_of_2_R_v_0 & SE_i_arrayidx_relu40_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx_relu40_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx_relu40_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46(BLACKBOX,67)@34
    // in in_stall_in@20000000
    // out out_data_out@35
    // out out_feedback_stall_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@35
    relu4_i_llvm_fpga_pop_i1_memdep_phi_pop8_0 thei_llvm_fpga_pop_i1_memdep_phi_pop8_relu46 (
        .in_data_in(GND_q),
        .in_dir(redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_q),
        .in_feedback_in_8(i_llvm_fpga_push_i1_memdep_phi_push8_relu435_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i1_memdep_phi_push8_relu435_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_backStall),
        .in_valid_in(SE_redist11_relu4_B2_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_out_feedback_stall_out_8),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46(STALLENABLE,335)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_backStall = i_llvm_fpga_mem_unnamed_relu45_relu426_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_and1 = SE_i_arrayidx_relu40_add_x_p2_of_2_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_and0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_and2 = SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_and1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_wireValid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_relu42_V1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_and2;

    // SE_out_i_llvm_fpga_mem_unnamed_relu45_relu426(STALLENABLE,331)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_relu45_relu426_V0 = SE_out_i_llvm_fpga_mem_unnamed_relu45_relu426_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_relu45_relu426_backStall = i_sfc_s_c0_in_for_body_relu4s_c0_enter72_relu430_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_relu45_relu426_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_relu45_relu426_wireValid = i_llvm_fpga_mem_unnamed_relu45_relu426_out_o_valid;

    // i_first_cleanup_xor_relu416(LOGICAL,54)@35
    assign i_first_cleanup_xor_relu416_q = i_first_cleanup_relu48_sel_x_b ^ VCC_q;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46(BITJOIN,262)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_q = i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46(BITSELECT,263)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_q[0:0]);

    // i_arrayidx_relu40_add_x_p2_of_2(ADD,176)@34 + 1
    assign i_arrayidx_relu40_add_x_p2_of_2_cin = SR_SE_i_arrayidx_relu40_add_x_p2_of_2_D2;
    assign i_arrayidx_relu40_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx_relu40_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx_relu40_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx_relu40_add_x_p2_of_2_D1}, i_arrayidx_relu40_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx_relu40_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx_relu40_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx_relu40_add_x_p2_of_2_o <= $unsigned(i_arrayidx_relu40_add_x_p2_of_2_a) + $unsigned(i_arrayidx_relu40_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx_relu40_add_x_p2_of_2_q = i_arrayidx_relu40_add_x_p2_of_2_o[13:1];

    // redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0(REG,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx_relu40_add_x_BitJoin_for_q(BITJOIN,177)@35
    assign i_arrayidx_relu40_add_x_BitJoin_for_q_q = {i_arrayidx_relu40_add_x_p2_of_2_q, redist2_i_arrayidx_relu40_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx_relu40_dupName_0_trunc_sel_x(BITSELECT,16)@35
    assign i_arrayidx_relu40_dupName_0_trunc_sel_x_b = i_arrayidx_relu40_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_unnamed_relu45_relu426(BLACKBOX,65)@35
    // in in_i_stall@20000000
    // out out_o_readdata@67
    // out out_o_stall@20000000
    // out out_o_valid@67
    // out out_unnamed_relu45_relu4_avm_address@20000000
    // out out_unnamed_relu45_relu4_avm_burstcount@20000000
    // out out_unnamed_relu45_relu4_avm_byteenable@20000000
    // out out_unnamed_relu45_relu4_avm_enable@20000000
    // out out_unnamed_relu45_relu4_avm_read@20000000
    // out out_unnamed_relu45_relu4_avm_write@20000000
    // out out_unnamed_relu45_relu4_avm_writedata@20000000
    relu4_i_llvm_fpga_mem_unnamed_5_relu40 thei_llvm_fpga_mem_unnamed_relu45_relu426 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx_relu40_dupName_0_trunc_sel_x_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_b),
        .in_i_predicate(i_first_cleanup_xor_relu416_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_relu45_relu426_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_relu46_V0),
        .in_unnamed_relu45_relu4_avm_readdata(in_unnamed_relu45_relu4_avm_readdata),
        .in_unnamed_relu45_relu4_avm_readdatavalid(in_unnamed_relu45_relu4_avm_readdatavalid),
        .in_unnamed_relu45_relu4_avm_waitrequest(in_unnamed_relu45_relu4_avm_waitrequest),
        .in_unnamed_relu45_relu4_avm_writeack(in_unnamed_relu45_relu4_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_relu45_relu426_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_relu45_relu426_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_relu45_relu426_out_o_valid),
        .out_unnamed_relu45_relu4_avm_address(i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_address),
        .out_unnamed_relu45_relu4_avm_burstcount(i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_burstcount),
        .out_unnamed_relu45_relu4_avm_byteenable(i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_byteenable),
        .out_unnamed_relu45_relu4_avm_enable(i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_enable),
        .out_unnamed_relu45_relu4_avm_read(i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_read),
        .out_unnamed_relu45_relu4_avm_write(i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_write),
        .out_unnamed_relu45_relu4_avm_writedata(i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,6)
    assign out_unnamed_relu45_relu4_avm_address = i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_address;
    assign out_unnamed_relu45_relu4_avm_enable = i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_enable;
    assign out_unnamed_relu45_relu4_avm_read = i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_read;
    assign out_unnamed_relu45_relu4_avm_write = i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_write;
    assign out_unnamed_relu45_relu4_avm_writedata = i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_writedata;
    assign out_unnamed_relu45_relu4_avm_byteenable = i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_byteenable;
    assign out_unnamed_relu45_relu4_avm_burstcount = i_llvm_fpga_mem_unnamed_relu45_relu426_out_unnamed_relu45_relu4_avm_burstcount;

    // bubble_join_redist4_i_masked_relu428_q_33_fifo(BITJOIN,283)
    assign bubble_join_redist4_i_masked_relu428_q_33_fifo_q = redist4_i_masked_relu428_q_33_fifo_data_out;

    // bubble_select_redist4_i_masked_relu428_q_33_fifo(BITSELECT,284)
    assign bubble_select_redist4_i_masked_relu428_q_33_fifo_b = $unsigned(bubble_join_redist4_i_masked_relu428_q_33_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,7)@104
    assign out_masked = bubble_select_redist4_i_masked_relu428_q_33_fifo_b;
    assign out_valid_out = SE_out_redist4_i_masked_relu428_q_33_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,8)
    assign out_memdep_relu4_avm_address = i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_address;
    assign out_memdep_relu4_avm_enable = i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_enable;
    assign out_memdep_relu4_avm_read = i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_read;
    assign out_memdep_relu4_avm_write = i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_write;
    assign out_memdep_relu4_avm_writedata = i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_writedata;
    assign out_memdep_relu4_avm_byteenable = i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_byteenable;
    assign out_memdep_relu4_avm_burstcount = i_llvm_fpga_mem_memdep_relu433_out_memdep_relu4_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,9)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_relu433_out_lsu_memdep_o_active;

    // ext_sig_sync_out(GPOUT,48)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_relu43_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_relu43_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_relu43_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_relu43_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,126)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_relu43_out_pipeline_valid_out;

    // sync_out(GPOUT,133)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
