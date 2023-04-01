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

// SystemVerilog created from bb_softmax_B4_stall_region
// Created for function/kernel softmax
// SystemVerilog created on Sat Apr  1 13:10:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module softmax_bb_B4_stall_region (
    input wire [63:0] in_memdep_softmax_avm_readdata,
    input wire [0:0] in_memdep_softmax_avm_writeack,
    input wire [0:0] in_memdep_softmax_avm_waitrequest,
    input wire [0:0] in_memdep_softmax_avm_readdatavalid,
    output wire [63:0] out_unnamed_softmax7_softmax_avm_address,
    output wire [0:0] out_unnamed_softmax7_softmax_avm_enable,
    output wire [0:0] out_unnamed_softmax7_softmax_avm_read,
    output wire [0:0] out_unnamed_softmax7_softmax_avm_write,
    output wire [63:0] out_unnamed_softmax7_softmax_avm_writedata,
    output wire [7:0] out_unnamed_softmax7_softmax_avm_byteenable,
    output wire [0:0] out_unnamed_softmax7_softmax_avm_burstcount,
    output wire [0:0] out_masked,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_memdep_softmax_avm_address,
    output wire [0:0] out_memdep_softmax_avm_enable,
    output wire [0:0] out_memdep_softmax_avm_read,
    output wire [0:0] out_memdep_softmax_avm_write,
    output wire [63:0] out_memdep_softmax_avm_writedata,
    output wire [7:0] out_memdep_softmax_avm_byteenable,
    output wire [0:0] out_memdep_softmax_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire [63:0] in_unnamed_softmax7_softmax_avm_readdata,
    input wire [0:0] in_unnamed_softmax7_softmax_avm_writeack,
    input wire [0:0] in_unnamed_softmax7_softmax_avm_waitrequest,
    input wire [0:0] in_unnamed_softmax7_softmax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_softmax3_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_softmax3_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next2_softmax15_sel_x_b;
    wire [31:0] bgTrunc_i_inc11_softmax12_sel_x_b;
    wire [63:0] i_arrayidx5_softmax0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_arrayidx5_softmax0_c_i2_01_x_q;
    wire [63:0] i_arrayidx9_softmax0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_softmax8_sel_x_b;
    wire [0:0] i_last_initeration_softmax18_sel_x_b;
    wire [31:0] i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_out_c0_exit37_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_out_c0_exit37_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_out_o_valid;
    wire [0:0] softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] softmax_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] softmax_B4_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] c_i32_038_q;
    wire [31:0] c_i32_141_q;
    wire [3:0] c_i4_736_q;
    wire [4:0] c_i5_143_q;
    wire [4:0] c_i5_839_q;
    wire [3:0] i_cleanups_shl_softmax9_vt_join_q;
    wire [2:0] i_cleanups_shl_softmax9_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_softmax16_q;
    wire [5:0] i_fpga_indvars_iv_next2_softmax15_a;
    wire [5:0] i_fpga_indvars_iv_next2_softmax15_b;
    logic [5:0] i_fpga_indvars_iv_next2_softmax15_o;
    wire [5:0] i_fpga_indvars_iv_next2_softmax15_q;
    wire [32:0] i_inc11_softmax12_a;
    wire [32:0] i_inc11_softmax12_b;
    logic [32:0] i_inc11_softmax12_o;
    wire [32:0] i_inc11_softmax12_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_softmax33_out_lsu_memdep_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_softmax33_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_softmax33_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_softmax33_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_softmax3_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_softmax3_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_softmax3_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_softmax3_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_softmax3_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_softmax3_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_softmax3_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop16_softmax4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop16_softmax4_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop16_softmax4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop16_softmax4_out_valid_out;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_softmax25_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_softmax25_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_softmax25_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_softmax25_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push15_softmax35_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push15_softmax35_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push15_softmax35_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push15_softmax35_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_softmax23_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_softmax23_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_softmax23_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_softmax23_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_123_push14_softmax21_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i32_i_123_push14_softmax21_out_feedback_valid_out_14;
    wire [0:0] i_llvm_fpga_push_i32_i_123_push14_softmax21_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_123_push14_softmax21_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push17_softmax34_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push17_softmax34_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push17_softmax34_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push17_softmax34_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push16_softmax17_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push16_softmax17_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push16_softmax17_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push16_softmax17_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_out_feedback_valid_out_13;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_out_valid_out;
    wire [0:0] i_masked_softmax28_qi;
    reg [0:0] i_masked_softmax28_q;
    wire [0:0] i_next_cleanups_softmax32_s;
    reg [3:0] i_next_cleanups_softmax32_q;
    wire [3:0] i_next_initerations_softmax10_vt_join_q;
    wire [2:0] i_next_initerations_softmax10_vt_select_2_b;
    wire [0:0] i_notcmp_softmax22_q;
    wire [0:0] i_or_softmax27_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl_softmax0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl_softmax0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid148_i_cleanups_shl_softmax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid150_i_cleanups_shl_softmax0_shift_x_s;
    reg [3:0] leftShiftStage0_uid150_i_cleanups_shl_softmax0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid154_i_next_initerations_softmax0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid156_i_next_initerations_softmax0_shift_x_q;
    wire [0:0] rightShiftStage0_uid158_i_next_initerations_softmax0_shift_x_s;
    reg [3:0] rightShiftStage0_uid158_i_next_initerations_softmax0_shift_x_q;
    wire [0:0] i_exitcond3_softmax13_cmp_nsign_q;
    wire [52:0] i_arrayidx5_softmax0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx5_softmax0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx5_softmax0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx5_softmax0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx5_softmax0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx5_softmax0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx5_softmax0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx5_softmax0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx5_softmax0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx5_softmax0_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx5_softmax0_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx9_softmax0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx9_softmax0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx9_softmax0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx9_softmax0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx9_softmax0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx9_softmax0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx9_softmax0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx9_softmax0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx9_softmax0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx9_softmax0_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx9_softmax0_add_x_BitJoin_for_q_q;
    wire [12:0] i_arrayidx5_softmax0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [17:0] i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [51:0] i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [11:0] i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [12:0] i_arrayidx9_softmax0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx9_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [51:0] i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [51:0] i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    reg [11:0] redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [11:0] redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [51:0] redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_q;
    reg [51:0] redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_q;
    wire [0:0] redist4_i_masked_softmax28_q_71_fifo_valid_in;
    wire redist4_i_masked_softmax28_q_71_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_i_masked_softmax28_q_71_fifo_stall_in;
    wire redist4_i_masked_softmax28_q_71_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist4_i_masked_softmax28_q_71_fifo_data_in;
    wire [0:0] redist4_i_masked_softmax28_q_71_fifo_valid_out;
    wire redist4_i_masked_softmax28_q_71_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_i_masked_softmax28_q_71_fifo_stall_out;
    wire redist4_i_masked_softmax28_q_71_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist4_i_masked_softmax28_q_71_fifo_data_out;
    wire [0:0] redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_valid_in;
    wire redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_stall_in;
    wire redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_stall_in_bitsignaltemp;
    wire [3:0] redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_data_in;
    wire [0:0] redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_valid_out;
    wire redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_stall_out;
    wire redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_stall_out_bitsignaltemp;
    wire [3:0] redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_data_out;
    wire [0:0] redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_valid_in;
    wire redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_stall_in;
    wire redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_data_in;
    wire [0:0] redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_valid_out;
    wire redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_stall_out;
    wire redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_data_out;
    wire [0:0] redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_valid_in;
    wire redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_stall_in;
    wire redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_data_in;
    wire [0:0] redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_valid_out;
    wire redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_stall_out;
    wire redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_data_out;
    wire [0:0] redist8_i_first_cleanup_xor_softmax16_q_30_fifo_valid_in;
    wire redist8_i_first_cleanup_xor_softmax16_q_30_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist8_i_first_cleanup_xor_softmax16_q_30_fifo_stall_in;
    wire redist8_i_first_cleanup_xor_softmax16_q_30_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist8_i_first_cleanup_xor_softmax16_q_30_fifo_data_in;
    wire [0:0] redist8_i_first_cleanup_xor_softmax16_q_30_fifo_valid_out;
    wire redist8_i_first_cleanup_xor_softmax16_q_30_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist8_i_first_cleanup_xor_softmax16_q_30_fifo_stall_out;
    wire redist8_i_first_cleanup_xor_softmax16_q_30_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist8_i_first_cleanup_xor_softmax16_q_30_fifo_data_out;
    wire [0:0] redist9_i_first_cleanup_xor_softmax16_q_70_fifo_valid_in;
    wire redist9_i_first_cleanup_xor_softmax16_q_70_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist9_i_first_cleanup_xor_softmax16_q_70_fifo_stall_in;
    wire redist9_i_first_cleanup_xor_softmax16_q_70_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist9_i_first_cleanup_xor_softmax16_q_70_fifo_data_in;
    wire [0:0] redist9_i_first_cleanup_xor_softmax16_q_70_fifo_valid_out;
    wire redist9_i_first_cleanup_xor_softmax16_q_70_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist9_i_first_cleanup_xor_softmax16_q_70_fifo_stall_out;
    wire redist9_i_first_cleanup_xor_softmax16_q_70_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist9_i_first_cleanup_xor_softmax16_q_70_fifo_data_out;
    wire [0:0] redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_in;
    wire redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_in;
    wire redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_data_in;
    wire [0:0] redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_out;
    wire redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_out;
    wire redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_data_out;
    reg [0:0] redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q;
    reg [0:0] redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q;
    wire [0:0] redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_in;
    wire redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_in;
    wire redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_data_in;
    wire [0:0] redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_out;
    wire redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_out;
    wire redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_data_out;
    wire [0:0] redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_valid_in;
    wire redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_stall_in;
    wire redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_data_in;
    wire [0:0] redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_valid_out;
    wire redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_stall_out;
    wire redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_data_out;
    wire [0:0] redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_valid_in;
    wire redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_stall_in;
    wire redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_data_in;
    wire [0:0] redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_valid_out;
    wire redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_stall_out;
    wire redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_data_out;
    wire [95:0] bubble_join_i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_c;
    wire [0:0] bubble_join_softmax_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_softmax_B4_merge_reg_aunroll_x_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_softmax33_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_softmax33_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_softmax7_softmax26_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_softmax7_softmax26_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_softmax3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_softmax3_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_b;
    wire [4:0] bubble_join_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_q;
    wire [4:0] bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_redist4_i_masked_softmax28_q_71_fifo_q;
    wire [0:0] bubble_select_redist4_i_masked_softmax28_q_71_fifo_b;
    wire [3:0] bubble_join_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_q;
    wire [3:0] bubble_select_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_b;
    wire [31:0] bubble_join_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_q;
    wire [31:0] bubble_select_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_b;
    wire [0:0] bubble_join_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_q;
    wire [0:0] bubble_select_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_b;
    wire [0:0] bubble_join_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_q;
    wire [0:0] bubble_select_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_b;
    wire [0:0] bubble_join_redist9_i_first_cleanup_xor_softmax16_q_70_fifo_q;
    wire [0:0] bubble_select_redist9_i_first_cleanup_xor_softmax16_q_70_fifo_b;
    wire [0:0] bubble_join_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_q;
    wire [0:0] bubble_select_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_b;
    wire [0:0] bubble_join_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_q;
    wire [0:0] bubble_select_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_b;
    wire [0:0] bubble_join_redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_q;
    wire [0:0] bubble_select_redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_b;
    wire [0:0] bubble_join_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_q;
    wire [0:0] bubble_select_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_b;
    wire [0:0] SE_bgTrunc_i_inc11_softmax12_sel_x_wireValid;
    wire [0:0] SE_bgTrunc_i_inc11_softmax12_sel_x_and0;
    wire [0:0] SE_bgTrunc_i_inc11_softmax12_sel_x_backStall;
    wire [0:0] SE_bgTrunc_i_inc11_softmax12_sel_x_V0;
    wire [0:0] SE_out_softmax_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_softmax_B4_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_softmax_B4_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_softmax_B4_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_softmax_B4_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_softmax_B4_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_softmax_B4_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_softmax_B4_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_softmax_B4_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_softmax_B4_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_softmax_B4_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_softmax_B4_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_softmax_B4_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_softmax_B4_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_softmax_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_softmax_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_softmax_B4_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_softmax_B4_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_softmax33_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_softmax33_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_softmax33_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_softmax33_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_softmax33_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_softmax33_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_softmax33_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_softmax33_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_softmax33_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_softmax33_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_softmax33_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_softmax33_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_softmax33_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_softmax7_softmax26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_softmax7_softmax26_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_softmax7_softmax26_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_softmax7_softmax26_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_softmax7_softmax26_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_and2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_V4;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_softmax25_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_softmax25_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push15_softmax35_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push15_softmax35_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_softmax23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_softmax23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_123_push14_softmax21_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_123_push14_softmax21_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push17_softmax34_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push17_softmax34_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push16_softmax17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push16_softmax17_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_backStall;
    reg [0:0] SE_i_masked_softmax28_R_v_0;
    wire [0:0] SE_i_masked_softmax28_v_s_0;
    wire [0:0] SE_i_masked_softmax28_s_tv_0;
    wire [0:0] SE_i_masked_softmax28_backEN;
    wire [0:0] SE_i_masked_softmax28_backStall;
    wire [0:0] SE_i_masked_softmax28_V0;
    wire [0:0] SE_i_next_initerations_softmax10_vt_select_2_wireValid;
    wire [0:0] SE_i_next_initerations_softmax10_vt_select_2_wireStall;
    wire [0:0] SE_i_next_initerations_softmax10_vt_select_2_StallValid;
    wire [0:0] SE_i_next_initerations_softmax10_vt_select_2_toReg0;
    reg [0:0] SE_i_next_initerations_softmax10_vt_select_2_fromReg0;
    wire [0:0] SE_i_next_initerations_softmax10_vt_select_2_consumed0;
    wire [0:0] SE_i_next_initerations_softmax10_vt_select_2_toReg1;
    reg [0:0] SE_i_next_initerations_softmax10_vt_select_2_fromReg1;
    wire [0:0] SE_i_next_initerations_softmax10_vt_select_2_consumed1;
    wire [0:0] SE_i_next_initerations_softmax10_vt_select_2_or0;
    wire [0:0] SE_i_next_initerations_softmax10_vt_select_2_backStall;
    wire [0:0] SE_i_next_initerations_softmax10_vt_select_2_V0;
    wire [0:0] SE_i_next_initerations_softmax10_vt_select_2_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_i_arrayidx5_softmax0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx5_softmax0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_p1_of_2_and0;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx5_softmax0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx9_softmax0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx9_softmax0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx9_softmax0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx9_softmax0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx9_softmax0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx9_softmax0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx9_softmax0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx9_softmax0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx9_softmax0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx9_softmax0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx9_softmax0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx9_softmax0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx9_softmax0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx9_softmax0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx9_softmax0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx9_softmax0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel0_2_V0;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel0_2_V1;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel1_0_V0;
    wire [0:0] SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel1_0_V1;
    wire [0:0] SE_i_arrayidx9_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_arrayidx9_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_arrayidx9_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_arrayidx9_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    reg [0:0] SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_V0;
    wire [0:0] SE_out_redist4_i_masked_softmax28_q_71_fifo_wireValid;
    wire [0:0] SE_out_redist4_i_masked_softmax28_q_71_fifo_and0;
    wire [0:0] SE_out_redist4_i_masked_softmax28_q_71_fifo_and1;
    wire [0:0] SE_out_redist4_i_masked_softmax28_q_71_fifo_and2;
    wire [0:0] SE_out_redist4_i_masked_softmax28_q_71_fifo_and3;
    wire [0:0] SE_out_redist4_i_masked_softmax28_q_71_fifo_backStall;
    wire [0:0] SE_out_redist4_i_masked_softmax28_q_71_fifo_V0;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_wireValid;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_backStall;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_V0;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_wireValid;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_wireStall;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_StallValid;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_toReg0;
    reg [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_fromReg0;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_consumed0;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_toReg1;
    reg [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_fromReg1;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_consumed1;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_or0;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_backStall;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_V0;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_V1;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_wireValid;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_wireStall;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_StallValid;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_toReg0;
    reg [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_fromReg0;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_consumed0;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_toReg1;
    reg [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_fromReg1;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_consumed1;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_or0;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_backStall;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_V0;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_V1;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_wireValid;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_wireStall;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_StallValid;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_toReg0;
    reg [0:0] SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_fromReg0;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_consumed0;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_toReg1;
    reg [0:0] SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_fromReg1;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_consumed1;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_or0;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_backStall;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_V0;
    wire [0:0] SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_V1;
    wire [0:0] SE_out_redist9_i_first_cleanup_xor_softmax16_q_70_fifo_wireValid;
    wire [0:0] SE_out_redist9_i_first_cleanup_xor_softmax16_q_70_fifo_and0;
    wire [0:0] SE_out_redist9_i_first_cleanup_xor_softmax16_q_70_fifo_backStall;
    wire [0:0] SE_out_redist9_i_first_cleanup_xor_softmax16_q_70_fifo_V0;
    wire [0:0] SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireValid;
    wire [0:0] SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireStall;
    wire [0:0] SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_StallValid;
    wire [0:0] SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_toReg0;
    reg [0:0] SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg0;
    wire [0:0] SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_consumed0;
    wire [0:0] SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_toReg1;
    reg [0:0] SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg1;
    wire [0:0] SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_consumed1;
    wire [0:0] SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_or0;
    wire [0:0] SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_backStall;
    wire [0:0] SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_V0;
    wire [0:0] SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_V1;
    reg [0:0] SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0;
    wire [0:0] SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_v_s_0;
    wire [0:0] SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_0;
    wire [0:0] SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN;
    wire [0:0] SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall;
    wire [0:0] SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V0;
    reg [0:0] SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0;
    reg [0:0] SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1;
    reg [0:0] SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2;
    wire [0:0] SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_v_s_0;
    wire [0:0] SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_0;
    wire [0:0] SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_1;
    wire [0:0] SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_2;
    wire [0:0] SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN;
    wire [0:0] SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or0;
    wire [0:0] SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or1;
    wire [0:0] SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall;
    wire [0:0] SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V0;
    wire [0:0] SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V1;
    wire [0:0] SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V2;
    wire [0:0] SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireValid;
    wire [0:0] SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireStall;
    wire [0:0] SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_StallValid;
    wire [0:0] SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_toReg0;
    reg [0:0] SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg0;
    wire [0:0] SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_consumed0;
    wire [0:0] SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_toReg1;
    reg [0:0] SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg1;
    wire [0:0] SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_consumed1;
    wire [0:0] SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_toReg2;
    reg [0:0] SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg2;
    wire [0:0] SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_consumed2;
    wire [0:0] SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_or0;
    wire [0:0] SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_or1;
    wire [0:0] SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_backStall;
    wire [0:0] SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_V0;
    wire [0:0] SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_V1;
    wire [0:0] SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_V2;
    wire [0:0] SE_out_redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_wireValid;
    wire [0:0] SE_out_redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_backStall;
    wire [0:0] SE_out_redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_V0;
    wire [0:0] SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_wireValid;
    wire [0:0] SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_wireStall;
    wire [0:0] SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_StallValid;
    wire [0:0] SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_toReg0;
    reg [0:0] SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_fromReg0;
    wire [0:0] SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_consumed0;
    wire [0:0] SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_toReg1;
    reg [0:0] SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_fromReg1;
    wire [0:0] SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_consumed1;
    wire [0:0] SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_or0;
    wire [0:0] SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_backStall;
    wire [0:0] SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_V0;
    wire [0:0] SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_V1;
    wire [0:0] SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_wireValid;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_backStall;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_V0;
    wire [0:0] bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_i_valid;
    reg [0:0] SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid;
    reg [0:0] SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_data0;
    wire [0:0] SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall;
    wire [0:0] SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V;
    wire [0:0] SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_D0;
    wire [0:0] SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_i_valid;
    reg [0:0] SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid;
    reg [0:0] SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_data0;
    wire [0:0] SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall;
    wire [0:0] SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V;
    wire [0:0] SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_D0;
    wire [0:0] SR_SE_i_masked_softmax28_i_valid;
    reg [0:0] SR_SE_i_masked_softmax28_r_valid;
    wire [0:0] SR_SE_i_masked_softmax28_and0;
    reg [0:0] SR_SE_i_masked_softmax28_r_data0;
    reg [0:0] SR_SE_i_masked_softmax28_r_data1;
    wire [0:0] SR_SE_i_masked_softmax28_backStall;
    wire [0:0] SR_SE_i_masked_softmax28_V;
    wire [0:0] SR_SE_i_masked_softmax28_D0;
    wire [0:0] SR_SE_i_masked_softmax28_D1;
    wire [0:0] SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_i_next_initerations_softmax10_vt_select_2_i_valid;
    reg [0:0] SR_SE_i_next_initerations_softmax10_vt_select_2_r_valid;
    wire [0:0] SR_SE_i_next_initerations_softmax10_vt_select_2_and0;
    reg [0:0] SR_SE_i_next_initerations_softmax10_vt_select_2_r_data0;
    reg [0:0] SR_SE_i_next_initerations_softmax10_vt_select_2_r_data1;
    reg [0:0] SR_SE_i_next_initerations_softmax10_vt_select_2_r_data2;
    reg [3:0] SR_SE_i_next_initerations_softmax10_vt_select_2_r_data3;
    wire [0:0] SR_SE_i_next_initerations_softmax10_vt_select_2_backStall;
    wire [0:0] SR_SE_i_next_initerations_softmax10_vt_select_2_V;
    wire [0:0] SR_SE_i_next_initerations_softmax10_vt_select_2_D0;
    wire [0:0] SR_SE_i_next_initerations_softmax10_vt_select_2_D1;
    wire [0:0] SR_SE_i_next_initerations_softmax10_vt_select_2_D2;
    wire [3:0] SR_SE_i_next_initerations_softmax10_vt_select_2_D3;
    wire [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_i_valid;
    reg [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_r_valid;
    wire [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_and0;
    reg [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_r_data0;
    reg [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_r_data1;
    wire [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_backStall;
    wire [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_V;
    wire [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_D0;
    wire [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_D1;
    wire [0:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_i_valid;
    reg [0:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_r_valid;
    wire [0:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_and0;
    wire [0:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_and1;
    wire [0:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_and2;
    reg [3:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_r_data0;
    reg [0:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_r_data1;
    wire [0:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_backStall;
    wire [0:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_V;
    wire [3:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_D0;
    wire [0:0] SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_D1;


    // bubble_join_redist8_i_first_cleanup_xor_softmax16_q_30_fifo(BITJOIN,295)
    assign bubble_join_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_q = redist8_i_first_cleanup_xor_softmax16_q_30_fifo_data_out;

    // bubble_select_redist8_i_first_cleanup_xor_softmax16_q_30_fifo(BITSELECT,296)
    assign bubble_select_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_b = $unsigned(bubble_join_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_q[0:0]);

    // rightShiftStage0Idx1Rng1_uid154_i_next_initerations_softmax0_shift_x(BITSELECT,153)@174
    assign rightShiftStage0Idx1Rng1_uid154_i_next_initerations_softmax0_shift_x_b = bubble_select_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_b[3:1];

    // rightShiftStage0Idx1_uid156_i_next_initerations_softmax0_shift_x(BITJOIN,155)@174
    assign rightShiftStage0Idx1_uid156_i_next_initerations_softmax0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid154_i_next_initerations_softmax0_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i4_initerations_pop16_softmax4(BITJOIN,271)
    assign bubble_join_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_q = i_llvm_fpga_pop_i4_initerations_pop16_softmax4_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_initerations_pop16_softmax4(BITSELECT,272)
    assign bubble_select_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_q[3:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // rightShiftStage0_uid158_i_next_initerations_softmax0_shift_x(MUX,157)@174
    assign rightShiftStage0_uid158_i_next_initerations_softmax0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid158_i_next_initerations_softmax0_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_b or rightShiftStage0Idx1_uid156_i_next_initerations_softmax0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid158_i_next_initerations_softmax0_shift_x_s)
            1'b0 : rightShiftStage0_uid158_i_next_initerations_softmax0_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_b;
            1'b1 : rightShiftStage0_uid158_i_next_initerations_softmax0_shift_x_q = rightShiftStage0Idx1_uid156_i_next_initerations_softmax0_shift_x_q;
            default : rightShiftStage0_uid158_i_next_initerations_softmax0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_softmax10_vt_select_2(BITSELECT,83)@174
    assign i_next_initerations_softmax10_vt_select_2_b = rightShiftStage0_uid158_i_next_initerations_softmax0_shift_x_q[2:0];

    // i_next_initerations_softmax10_vt_join(BITJOIN,82)@174
    assign i_next_initerations_softmax10_vt_join_q = {GND_q, i_next_initerations_softmax10_vt_select_2_b};

    // i_last_initeration_softmax18_sel_x(BITSELECT,28)@174
    assign i_last_initeration_softmax18_sel_x_b = i_next_initerations_softmax10_vt_join_q[0:0];

    // SE_i_next_initerations_softmax10_vt_select_2(STALLENABLE,364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_softmax10_vt_select_2_fromReg0 <= '0;
            SE_i_next_initerations_softmax10_vt_select_2_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_softmax10_vt_select_2_fromReg0 <= SE_i_next_initerations_softmax10_vt_select_2_toReg0;
            // Successor 1
            SE_i_next_initerations_softmax10_vt_select_2_fromReg1 <= SE_i_next_initerations_softmax10_vt_select_2_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_softmax10_vt_select_2_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_softmax25_out_stall_out) & SE_i_next_initerations_softmax10_vt_select_2_wireValid) | SE_i_next_initerations_softmax10_vt_select_2_fromReg0;
    assign SE_i_next_initerations_softmax10_vt_select_2_consumed1 = (~ (i_llvm_fpga_push_i4_initerations_push16_softmax17_out_stall_out) & SE_i_next_initerations_softmax10_vt_select_2_wireValid) | SE_i_next_initerations_softmax10_vt_select_2_fromReg1;
    // Consuming
    assign SE_i_next_initerations_softmax10_vt_select_2_StallValid = SE_i_next_initerations_softmax10_vt_select_2_backStall & SE_i_next_initerations_softmax10_vt_select_2_wireValid;
    assign SE_i_next_initerations_softmax10_vt_select_2_toReg0 = SE_i_next_initerations_softmax10_vt_select_2_StallValid & SE_i_next_initerations_softmax10_vt_select_2_consumed0;
    assign SE_i_next_initerations_softmax10_vt_select_2_toReg1 = SE_i_next_initerations_softmax10_vt_select_2_StallValid & SE_i_next_initerations_softmax10_vt_select_2_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_softmax10_vt_select_2_or0 = SE_i_next_initerations_softmax10_vt_select_2_consumed0;
    assign SE_i_next_initerations_softmax10_vt_select_2_wireStall = ~ (SE_i_next_initerations_softmax10_vt_select_2_consumed1 & SE_i_next_initerations_softmax10_vt_select_2_or0);
    assign SE_i_next_initerations_softmax10_vt_select_2_backStall = SE_i_next_initerations_softmax10_vt_select_2_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_softmax10_vt_select_2_V0 = SE_i_next_initerations_softmax10_vt_select_2_wireValid & ~ (SE_i_next_initerations_softmax10_vt_select_2_fromReg0);
    assign SE_i_next_initerations_softmax10_vt_select_2_V1 = SE_i_next_initerations_softmax10_vt_select_2_wireValid & ~ (SE_i_next_initerations_softmax10_vt_select_2_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_softmax10_vt_select_2_wireValid = SR_SE_i_next_initerations_softmax10_vt_select_2_V;

    // SR_SE_i_next_initerations_softmax10_vt_select_2(STALLREG,535)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_next_initerations_softmax10_vt_select_2_r_valid <= 1'b0;
            SR_SE_i_next_initerations_softmax10_vt_select_2_r_data0 <= 1'bx;
            SR_SE_i_next_initerations_softmax10_vt_select_2_r_data1 <= 1'bx;
            SR_SE_i_next_initerations_softmax10_vt_select_2_r_data2 <= 1'bx;
            SR_SE_i_next_initerations_softmax10_vt_select_2_r_data3 <= 4'bxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_next_initerations_softmax10_vt_select_2_r_valid <= SE_i_next_initerations_softmax10_vt_select_2_backStall & (SR_SE_i_next_initerations_softmax10_vt_select_2_r_valid | SR_SE_i_next_initerations_softmax10_vt_select_2_i_valid);

            if (SR_SE_i_next_initerations_softmax10_vt_select_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_next_initerations_softmax10_vt_select_2_r_data0 <= i_last_initeration_softmax18_sel_x_b;
                SR_SE_i_next_initerations_softmax10_vt_select_2_r_data1 <= $unsigned(bubble_select_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_b);
                SR_SE_i_next_initerations_softmax10_vt_select_2_r_data2 <= $unsigned(bubble_select_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_b);
                SR_SE_i_next_initerations_softmax10_vt_select_2_r_data3 <= i_next_initerations_softmax10_vt_join_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_next_initerations_softmax10_vt_select_2_and0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_V1;
    assign SR_SE_i_next_initerations_softmax10_vt_select_2_i_valid = SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_V0 & SR_SE_i_next_initerations_softmax10_vt_select_2_and0;
    // Stall signal propagation
    assign SR_SE_i_next_initerations_softmax10_vt_select_2_backStall = SR_SE_i_next_initerations_softmax10_vt_select_2_r_valid | ~ (SR_SE_i_next_initerations_softmax10_vt_select_2_i_valid);

    // Valid
    assign SR_SE_i_next_initerations_softmax10_vt_select_2_V = SR_SE_i_next_initerations_softmax10_vt_select_2_r_valid == 1'b1 ? SR_SE_i_next_initerations_softmax10_vt_select_2_r_valid : SR_SE_i_next_initerations_softmax10_vt_select_2_i_valid;

    // Data0
    assign SR_SE_i_next_initerations_softmax10_vt_select_2_D0 = SR_SE_i_next_initerations_softmax10_vt_select_2_r_valid == 1'b1 ? SR_SE_i_next_initerations_softmax10_vt_select_2_r_data0 : i_last_initeration_softmax18_sel_x_b;
    // Data1
    assign SR_SE_i_next_initerations_softmax10_vt_select_2_D1 = SR_SE_i_next_initerations_softmax10_vt_select_2_r_valid == 1'b1 ? SR_SE_i_next_initerations_softmax10_vt_select_2_r_data1 : bubble_select_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_b;
    // Data2
    assign SR_SE_i_next_initerations_softmax10_vt_select_2_D2 = SR_SE_i_next_initerations_softmax10_vt_select_2_r_valid == 1'b1 ? SR_SE_i_next_initerations_softmax10_vt_select_2_r_data2 : bubble_select_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_b;
    // Data3
    assign SR_SE_i_next_initerations_softmax10_vt_select_2_D3 = SR_SE_i_next_initerations_softmax10_vt_select_2_r_valid == 1'b1 ? SR_SE_i_next_initerations_softmax10_vt_select_2_r_data3 : i_next_initerations_softmax10_vt_join_q;

    // SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4(STALLENABLE,344)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_consumed0 = (~ (SE_out_redist4_i_masked_softmax28_q_71_fifo_backStall) & SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_consumed1 = (~ (SR_SE_i_next_initerations_softmax10_vt_select_2_backStall) & SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_StallValid = SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_backStall & SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_toReg0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_toReg1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_or0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_consumed1 & SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_or0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_backStall = SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_V0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_V1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_wireValid = i_llvm_fpga_pop_i4_initerations_pop16_softmax4_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_push_i4_initerations_push16_softmax17(STALLENABLE,358)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_initerations_push16_softmax17_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_initerations_push16_softmax17_wireValid = i_llvm_fpga_push_i4_initerations_push16_softmax17_out_valid_out;

    // i_llvm_fpga_push_i4_initerations_push16_softmax17(BLACKBOX,77)@174
    // in in_stall_in@20000000
    // out out_data_out@175
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@175
    softmax_i_llvm_fpga_push_i4_initerations_push16_0 thei_llvm_fpga_push_i4_initerations_push16_softmax17 (
        .in_data_in(SR_SE_i_next_initerations_softmax10_vt_select_2_D3),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i4_initerations_pop16_softmax4_out_feedback_stall_out_16),
        .in_keep_going(SR_SE_i_next_initerations_softmax10_vt_select_2_D2),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_initerations_push16_softmax17_backStall),
        .in_valid_in(SE_i_next_initerations_softmax10_vt_select_2_V1),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i4_initerations_push16_softmax17_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i4_initerations_push16_softmax17_out_feedback_valid_out_16),
        .out_stall_out(i_llvm_fpga_push_i4_initerations_push16_softmax17_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_initerations_push16_softmax17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo(BITJOIN,307)
    assign bubble_join_redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_q = redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_data_out;

    // bubble_select_redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo(BITSELECT,308)
    assign bubble_select_redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_b = $unsigned(bubble_join_redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_q[0:0]);

    // c_i4_736(CONSTANT,42)
    assign c_i4_736_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_initerations_pop16_softmax4(BLACKBOX,70)@173
    // in in_stall_in@20000000
    // out out_data_out@174
    // out out_feedback_stall_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@174
    softmax_i_llvm_fpga_pop_i4_initerations_pop16_0 thei_llvm_fpga_pop_i4_initerations_pop16_softmax4 (
        .in_data_in(c_i4_736_q),
        .in_dir(bubble_select_redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_b),
        .in_feedback_in_16(i_llvm_fpga_push_i4_initerations_push16_softmax17_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i4_initerations_push16_softmax17_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_backStall),
        .in_valid_in(SE_out_redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop16_softmax4_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i4_initerations_pop16_softmax4_out_feedback_stall_out_16),
        .out_stall_out(i_llvm_fpga_pop_i4_initerations_pop16_softmax4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_initerations_pop16_softmax4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo(STALLENABLE,414)
    // Valid signal propagation
    assign SE_out_redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_V0 = SE_out_redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_backStall = i_llvm_fpga_pop_i4_initerations_pop16_softmax4_out_stall_out | ~ (SE_out_redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_wireValid = redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_valid_out;

    // redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo(STALLFIFO,234)
    assign redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_valid_in = SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_V2;
    assign redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_stall_in = SE_out_redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_backStall;
    assign redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_data_in = bubble_select_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_b;
    assign redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_valid_in_bitsignaltemp = redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_valid_in[0];
    assign redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_stall_in_bitsignaltemp = redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_stall_in[0];
    assign redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_valid_out[0] = redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_valid_out_bitsignaltemp;
    assign redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_stall_out[0] = redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(72),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo (
        .valid_in(redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_valid_in_bitsignaltemp),
        .stall_in(redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_b),
        .valid_out(redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_valid_out_bitsignaltemp),
        .stall_out(redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_stall_out_bitsignaltemp),
        .data_out(redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo(BITJOIN,310)
    assign bubble_join_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_q = redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_data_out;

    // bubble_select_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo(BITSELECT,311)
    assign bubble_select_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_b = $unsigned(bubble_join_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7(BITJOIN,275)
    assign bubble_join_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_q = i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7(BITSELECT,276)
    assign bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_b = $unsigned(bubble_join_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_q[4:0]);

    // i_exitcond3_softmax13_cmp_nsign(LOGICAL,160)@103
    assign i_exitcond3_softmax13_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_b[4:4]));

    // i_notcmp_softmax22(LOGICAL,84)@103
    assign i_notcmp_softmax22_q = i_exitcond3_softmax13_cmp_nsign_q ^ VCC_q;

    // SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo(STALLENABLE,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_fromReg0 <= '0;
            SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_fromReg0 <= SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_toReg0;
            // Successor 1
            SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_fromReg1 <= SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_consumed0 = (~ (SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_backStall) & SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_wireValid) | SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_fromReg0;
    assign SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_consumed1 = (~ (SR_SE_i_masked_softmax28_backStall) & SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_wireValid) | SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_fromReg1;
    // Consuming
    assign SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_StallValid = SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_backStall & SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_wireValid;
    assign SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_toReg0 = SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_StallValid & SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_consumed0;
    assign SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_toReg1 = SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_StallValid & SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_or0 = SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_consumed0;
    assign SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_wireStall = ~ (SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_consumed1 & SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_or0);
    assign SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_backStall = SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_V0 = SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_wireValid & ~ (SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_fromReg0);
    assign SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_V1 = SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_wireValid & ~ (SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_wireValid = redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_valid_out;

    // i_masked_softmax28(LOGICAL,79)@103 + 1
    assign i_masked_softmax28_qi = SR_SE_i_masked_softmax28_D0 & SR_SE_i_masked_softmax28_D1;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_softmax28_delay ( .xin(i_masked_softmax28_qi), .xout(i_masked_softmax28_q), .ena(SE_i_masked_softmax28_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist4_i_masked_softmax28_q_71_fifo(STALLFIFO,224)
    assign redist4_i_masked_softmax28_q_71_fifo_valid_in = SE_i_masked_softmax28_V0;
    assign redist4_i_masked_softmax28_q_71_fifo_stall_in = SE_out_redist4_i_masked_softmax28_q_71_fifo_backStall;
    assign redist4_i_masked_softmax28_q_71_fifo_data_in = i_masked_softmax28_q;
    assign redist4_i_masked_softmax28_q_71_fifo_valid_in_bitsignaltemp = redist4_i_masked_softmax28_q_71_fifo_valid_in[0];
    assign redist4_i_masked_softmax28_q_71_fifo_stall_in_bitsignaltemp = redist4_i_masked_softmax28_q_71_fifo_stall_in[0];
    assign redist4_i_masked_softmax28_q_71_fifo_valid_out[0] = redist4_i_masked_softmax28_q_71_fifo_valid_out_bitsignaltemp;
    assign redist4_i_masked_softmax28_q_71_fifo_stall_out[0] = redist4_i_masked_softmax28_q_71_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(71),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist4_i_masked_softmax28_q_71_fifo (
        .valid_in(redist4_i_masked_softmax28_q_71_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_i_masked_softmax28_q_71_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_softmax28_q),
        .valid_out(redist4_i_masked_softmax28_q_71_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_i_masked_softmax28_q_71_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_i_masked_softmax28_q_71_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_masked_softmax28(STALLENABLE,361)
    // Valid signal propagation
    assign SE_i_masked_softmax28_V0 = SE_i_masked_softmax28_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_softmax28_s_tv_0 = redist4_i_masked_softmax28_q_71_fifo_stall_out & SE_i_masked_softmax28_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_softmax28_backEN = ~ (SE_i_masked_softmax28_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_softmax28_v_s_0 = SE_i_masked_softmax28_backEN & SR_SE_i_masked_softmax28_V;
    // Backward Stall generation
    assign SE_i_masked_softmax28_backStall = ~ (SE_i_masked_softmax28_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_softmax28_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_softmax28_backEN == 1'b0)
            begin
                SE_i_masked_softmax28_R_v_0 <= SE_i_masked_softmax28_R_v_0 & SE_i_masked_softmax28_s_tv_0;
            end
            else
            begin
                SE_i_masked_softmax28_R_v_0 <= SE_i_masked_softmax28_v_s_0;
            end

        end
    end

    // SR_SE_i_masked_softmax28(STALLREG,529)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_masked_softmax28_r_valid <= 1'b0;
            SR_SE_i_masked_softmax28_r_data0 <= 1'bx;
            SR_SE_i_masked_softmax28_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_masked_softmax28_r_valid <= SE_i_masked_softmax28_backStall & (SR_SE_i_masked_softmax28_r_valid | SR_SE_i_masked_softmax28_i_valid);

            if (SR_SE_i_masked_softmax28_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_masked_softmax28_r_data0 <= i_notcmp_softmax22_q;
                SR_SE_i_masked_softmax28_r_data1 <= $unsigned(bubble_select_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_masked_softmax28_and0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_V3;
    assign SR_SE_i_masked_softmax28_i_valid = SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_V1 & SR_SE_i_masked_softmax28_and0;
    // Stall signal propagation
    assign SR_SE_i_masked_softmax28_backStall = SR_SE_i_masked_softmax28_r_valid | ~ (SR_SE_i_masked_softmax28_i_valid);

    // Valid
    assign SR_SE_i_masked_softmax28_V = SR_SE_i_masked_softmax28_r_valid == 1'b1 ? SR_SE_i_masked_softmax28_r_valid : SR_SE_i_masked_softmax28_i_valid;

    // Data0
    assign SR_SE_i_masked_softmax28_D0 = SR_SE_i_masked_softmax28_r_valid == 1'b1 ? SR_SE_i_masked_softmax28_r_data0 : i_notcmp_softmax22_q;
    // Data1
    assign SR_SE_i_masked_softmax28_D1 = SR_SE_i_masked_softmax28_r_valid == 1'b1 ? SR_SE_i_masked_softmax28_r_data1 : bubble_select_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_b;

    // SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24(STALLENABLE,359)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_V0 = SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_backStall = i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_and0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_V2;
    assign SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_V3 & SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_and0;

    // SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23(STALLENABLE,351)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_backStall = i_llvm_fpga_push_i1_notexitcond_softmax23_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_wireValid = SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_V;

    // SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23(STALLREG,537)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_r_valid <= SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_backStall & (SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_r_valid | SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_r_data0 <= $unsigned(i_exitcond3_softmax13_cmp_nsign_q);
                SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_r_data1 <= $unsigned(bubble_select_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_and0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_V1;
    assign SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_i_valid = SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_V0 & SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_backStall = SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_V = SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_r_valid : SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_D0 = SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_r_data0 : i_exitcond3_softmax13_cmp_nsign_q;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_D1 = SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_r_data1 : bubble_select_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_b;

    // bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg(STALLFIFO,526)
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_V0;
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_stall_in = SE_out_redist4_i_masked_softmax28_q_71_fifo_backStall;
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(72),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7(STALLENABLE,346)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg0 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg1 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg2 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg3 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg4 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_backStall) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_consumed2 = (~ (SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_backStall) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_consumed3 = (~ (SR_SE_i_masked_softmax28_backStall) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_consumed4 = (~ (SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_backStall) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_StallValid = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_backStall & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_wireValid;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_toReg0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_consumed0;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_toReg1 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_consumed1;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_toReg2 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_consumed2;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_toReg3 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_consumed3;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_toReg4 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_or0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_consumed0;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_or1 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_consumed1 & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_or0;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_or2 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_consumed2 & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_or1;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_or3 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_consumed3 & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_or2;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_wireStall = ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_consumed4 & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_or3);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_backStall = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_V0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_V1 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_V2 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_V3 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_V4 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_wireValid = i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_out_valid_out;

    // SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24(STALLENABLE,360)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_wireValid = i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_out_valid_out;

    // c_i5_143(CONSTANT,43)
    assign c_i5_143_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next2_softmax15(ADD,55)@103
    assign i_fpga_indvars_iv_next2_softmax15_a = {1'b0, bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_b};
    assign i_fpga_indvars_iv_next2_softmax15_b = {1'b0, c_i5_143_q};
    assign i_fpga_indvars_iv_next2_softmax15_o = $unsigned(i_fpga_indvars_iv_next2_softmax15_a) + $unsigned(i_fpga_indvars_iv_next2_softmax15_b);
    assign i_fpga_indvars_iv_next2_softmax15_q = i_fpga_indvars_iv_next2_softmax15_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next2_softmax15_sel_x(BITSELECT,2)@103
    assign bgTrunc_i_fpga_indvars_iv_next2_softmax15_sel_x_b = i_fpga_indvars_iv_next2_softmax15_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24(BLACKBOX,78)@103
    // in in_stall_in@20000000
    // out out_data_out@104
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@104
    softmax_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_0 thei_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next2_softmax15_sel_x_b),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_out_feedback_stall_out_13),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_softmax3_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_V0),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_out_feedback_valid_out_13),
        .out_stall_out(i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_839(CONSTANT,44)
    assign c_i5_839_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7(BLACKBOX,71)@102
    // in in_stall_in@20000000
    // out out_data_out@103
    // out out_feedback_stall_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@103
    softmax_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7 (
        .in_data_in(c_i5_839_q),
        .in_dir(bubble_select_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_b),
        .in_feedback_in_13(i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_backStall),
        .in_valid_in(SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_out_feedback_stall_out_13),
        .out_stall_out(i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,367)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = softmax_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,279)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,280)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // softmax_B4_merge_reg_aunroll_x(BLACKBOX,34)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    softmax_B4_merge_reg thesoftmax_B4_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_softmax_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_stall_out(softmax_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(softmax_B4_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_softmax_B4_merge_reg_aunroll_x(BITJOIN,240)
    assign bubble_join_softmax_B4_merge_reg_aunroll_x_q = softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_softmax_B4_merge_reg_aunroll_x(BITSELECT,241)
    assign bubble_select_softmax_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_softmax_B4_merge_reg_aunroll_x_q[0:0]);

    // i_arrayidx9_softmax0_add_x_p1_of_2(ADD,176)@103 + 1
    assign i_arrayidx9_softmax0_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_D0};
    assign i_arrayidx9_softmax0_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx9_softmax0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx9_softmax0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx9_softmax0_add_x_p1_of_2_o <= $unsigned(i_arrayidx9_softmax0_add_x_p1_of_2_a) + $unsigned(i_arrayidx9_softmax0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx9_softmax0_add_x_p1_of_2_c[0] = i_arrayidx9_softmax0_add_x_p1_of_2_o[52];
    assign i_arrayidx9_softmax0_add_x_p1_of_2_q = i_arrayidx9_softmax0_add_x_p1_of_2_o[51:0];

    // c_i32_038(CONSTANT,39)
    assign c_i32_038_q = $unsigned(32'b00000000000000000000000000000000);

    // i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,188)
    assign i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel1_0_b = c_i32_038_q[29:18];

    // i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,190)@72
    assign i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel1_0_b};

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1(BITJOIN,248)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_q = i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1(BITSELECT,249)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_q[63:0]);

    // i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,204)@103
    assign i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_b[51:0]);
    assign i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_b[63:52]);

    // redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(12'b000000000000);
        end
        else if (SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx9_softmax0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,195)@104
    assign i_arrayidx9_softmax0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,186)
    assign i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel0_2_b = c_i32_038_q[17:0];

    // SE_bgTrunc_i_inc11_softmax12_sel_x(STALLENABLE,313)
    // Valid signal propagation
    assign SE_bgTrunc_i_inc11_softmax12_sel_x_V0 = SE_bgTrunc_i_inc11_softmax12_sel_x_wireValid;
    // Backward Stall generation
    assign SE_bgTrunc_i_inc11_softmax12_sel_x_backStall = i_llvm_fpga_push_i32_i_123_push14_softmax21_out_stall_out | ~ (SE_bgTrunc_i_inc11_softmax12_sel_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_bgTrunc_i_inc11_softmax12_sel_x_and0 = SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_V1;
    assign SE_bgTrunc_i_inc11_softmax12_sel_x_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_V1 & SE_bgTrunc_i_inc11_softmax12_sel_x_and0;

    // SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel0_2(STALLENABLE,383)
    // Valid signal propagation
    assign SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel0_2_V0 = 1'b1;
    assign SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel0_2_V1 = 1'b1;

    // SE_i_arrayidx9_softmax0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,388)
    // Valid signal propagation
    assign SE_i_arrayidx9_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_arrayidx9_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx9_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_backStall | ~ (SE_i_arrayidx9_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx9_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel0_2_V1;
    assign SE_i_arrayidx9_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_V0 & SE_i_arrayidx9_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo(STALLENABLE,400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_fromReg0 <= '0;
            SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_fromReg0 <= SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_toReg0;
            // Successor 1
            SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_fromReg1 <= SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_consumed0 = (~ (SE_i_arrayidx9_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_backStall) & SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_wireValid) | SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_fromReg0;
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_consumed1 = (~ (SE_bgTrunc_i_inc11_softmax12_sel_x_backStall) & SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_wireValid) | SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_fromReg1;
    // Consuming
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_StallValid = SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_backStall & SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_wireValid;
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_toReg0 = SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_StallValid & SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_consumed0;
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_toReg1 = SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_StallValid & SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_or0 = SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_consumed0;
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_wireStall = ~ (SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_consumed1 & SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_or0);
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_backStall = SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_V0 = SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_wireValid & ~ (SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_fromReg0);
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_V1 = SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_wireValid & ~ (SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_wireValid = redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_valid_out;

    // redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo(STALLFIFO,226)
    assign redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_V1;
    assign redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_stall_in = SE_out_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_backStall;
    assign redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_data_in = bubble_select_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_b;
    assign redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_valid_in_bitsignaltemp = redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_valid_in[0];
    assign redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_stall_in_bitsignaltemp = redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_stall_in[0];
    assign redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_valid_out[0] = redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_valid_out_bitsignaltemp;
    assign redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_stall_out[0] = redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo (
        .valid_in(redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_b),
        .valid_out(redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,384)
    // Valid signal propagation
    assign SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SE_i_arrayidx5_softmax0_add_x_p1_of_2_backStall | ~ (SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel0_2_V0;
    assign SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_V0 & SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5(STALLENABLE,340)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_consumed0 = (~ (SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_backStall) & SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_consumed1 = (~ (redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_StallValid = SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_backStall & SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_toReg0 = SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_StallValid & SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_toReg1 = SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_StallValid & SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_or0 = SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_consumed1 & SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_or0);
    assign SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_backStall = SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_V0 = SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_V1 = SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_wireValid = i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_i_123_push14_softmax21(STALLENABLE,354)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_123_push14_softmax21_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_123_push14_softmax21_wireValid = i_llvm_fpga_push_i32_i_123_push14_softmax21_out_valid_out;

    // c_i32_141(CONSTANT,40)
    assign c_i32_141_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo(BITJOIN,289)
    assign bubble_join_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_q = redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_data_out;

    // bubble_select_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo(BITSELECT,290)
    assign bubble_select_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_b = $unsigned(bubble_join_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_q[31:0]);

    // i_inc11_softmax12(ADD,60)@103
    assign i_inc11_softmax12_a = {1'b0, bubble_select_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_b};
    assign i_inc11_softmax12_b = {1'b0, c_i32_141_q};
    assign i_inc11_softmax12_o = $unsigned(i_inc11_softmax12_a) + $unsigned(i_inc11_softmax12_b);
    assign i_inc11_softmax12_q = i_inc11_softmax12_o[32:0];

    // bgTrunc_i_inc11_softmax12_sel_x(BITSELECT,3)@103
    assign bgTrunc_i_inc11_softmax12_sel_x_b = i_inc11_softmax12_q[31:0];

    // i_llvm_fpga_push_i32_i_123_push14_softmax21(BLACKBOX,75)@103
    // in in_stall_in@20000000
    // out out_data_out@104
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@104
    softmax_i_llvm_fpga_push_i32_i_123_push14_0 thei_llvm_fpga_push_i32_i_123_push14_softmax21 (
        .in_data_in(bgTrunc_i_inc11_softmax12_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_feedback_stall_out_14),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_softmax3_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_123_push14_softmax21_backStall),
        .in_valid_in(SE_bgTrunc_i_inc11_softmax12_sel_x_V0),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i32_i_123_push14_softmax21_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i32_i_123_push14_softmax21_out_feedback_valid_out_14),
        .out_stall_out(i_llvm_fpga_push_i32_i_123_push14_softmax21_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_123_push14_softmax21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_123_pop14_softmax5(BLACKBOX,68)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_stall_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    softmax_i_llvm_fpga_pop_i32_i_123_pop14_0 thei_llvm_fpga_pop_i32_i_123_pop14_softmax5 (
        .in_data_in(c_i32_038_q),
        .in_dir(bubble_select_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_b),
        .in_feedback_in_14(i_llvm_fpga_push_i32_i_123_push14_softmax21_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i32_i_123_push14_softmax21_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_backStall),
        .in_valid_in(SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_feedback_stall_out_14),
        .out_stall_out(i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i32_i_123_pop14_softmax5(BITJOIN,265)
    assign bubble_join_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_q = i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_123_pop14_softmax5(BITSELECT,266)
    assign bubble_select_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_q[31:0]);

    // i_arrayidx5_softmax0_c_i2_01_x(CONSTANT,13)
    assign i_arrayidx5_softmax0_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,187)@71
    assign i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel0_2_b, bubble_select_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_b, i_arrayidx5_softmax0_c_i2_01_x_q};

    // SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_1(STALLENABLE,426)
    // Valid signal propagation
    assign SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_out_stall_out | ~ (SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_1_wireValid = bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0(STALLENABLE,328)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_consumed0 = (~ (SE_i_arrayidx5_softmax0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_consumed1 = (~ (SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_wireValid = i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_out_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0(BLACKBOX,62)@70
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0@71
    // out out_stall_out@20000000
    // out out_valid_out@71
    softmax_i_llvm_fpga_ffwd_dest_p1024f32_in0264_0 thei_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_backStall),
        .in_valid_in(SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0(BITJOIN,245)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_q = i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0(BITSELECT,246)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_q[63:0]);

    // i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,203)@71
    assign i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_b[51:0]);
    assign i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_b[63:52]);

    // i_arrayidx5_softmax0_add_x_p1_of_2(ADD,167)@71 + 1
    assign i_arrayidx5_softmax0_add_x_p1_of_2_a = {1'b0, i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_arrayidx5_softmax0_add_x_p1_of_2_b = {1'b0, i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx5_softmax0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx5_softmax0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx5_softmax0_add_x_p1_of_2_o <= $unsigned(i_arrayidx5_softmax0_add_x_p1_of_2_a) + $unsigned(i_arrayidx5_softmax0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx5_softmax0_add_x_p1_of_2_c[0] = i_arrayidx5_softmax0_add_x_p1_of_2_o[52];
    assign i_arrayidx5_softmax0_add_x_p1_of_2_q = i_arrayidx5_softmax0_add_x_p1_of_2_o[51:0];

    // redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(12'b000000000000);
        end
        else if (SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx5_softmax0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,183)@72
    assign i_arrayidx5_softmax0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,392)
    // Valid signal propagation
    assign SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_backStall & SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_V1;
    // Backward Stall generation
    assign SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0(STALLREG,531)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_r_valid <= SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx5_softmax0_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx5_softmax0_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_V = SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx5_softmax0_add_x_p1_of_2_q;

    // SE_i_arrayidx5_softmax0_add_x_p1_of_2(STALLENABLE,376)
    // Valid signal propagation
    assign SE_i_arrayidx5_softmax0_add_x_p1_of_2_V0 = SE_i_arrayidx5_softmax0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx5_softmax0_add_x_p1_of_2_V1 = SE_i_arrayidx5_softmax0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx5_softmax0_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_backStall & SE_i_arrayidx5_softmax0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx5_softmax0_add_x_p1_of_2_s_tv_1 = SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx5_softmax0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx5_softmax0_add_x_p1_of_2_or0 = SE_i_arrayidx5_softmax0_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx5_softmax0_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx5_softmax0_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx5_softmax0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx5_softmax0_add_x_p1_of_2_and0 = SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_V0 & SE_i_arrayidx5_softmax0_add_x_p1_of_2_backEN;
    assign SE_i_arrayidx5_softmax0_add_x_p1_of_2_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_in0264_softmax0_V0 & SE_i_arrayidx5_softmax0_add_x_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_arrayidx5_softmax0_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx5_softmax0_add_x_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx5_softmax0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx5_softmax0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx5_softmax0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx5_softmax0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx5_softmax0_add_x_p1_of_2_R_v_0 & SE_i_arrayidx5_softmax0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx5_softmax0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx5_softmax0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx5_softmax0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx5_softmax0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx5_softmax0_add_x_p1_of_2_R_v_1 & SE_i_arrayidx5_softmax0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx5_softmax0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx5_softmax0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2(STALLREG,530)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_valid <= SE_i_arrayidx5_softmax0_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx5_softmax0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx5_softmax0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_and0 = SE_i_arrayidx5_softmax0_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_and1 = SE_redist1_i_arrayidx5_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_i_valid = SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel1_0_V0 & SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_backStall = SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_V = SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_D0 = SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_data0 : i_arrayidx5_softmax0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_D1 = SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_data1 : i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_D2 = SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_r_data2 : i_arrayidx5_softmax0_add_x_p1_of_2_c;

    // SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel1_0(STALLENABLE,385)
    // Valid signal propagation
    assign SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel1_0_V0 = 1'b1;
    assign SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel1_0_V1 = 1'b1;

    // SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0(STALLENABLE,393)
    // Valid signal propagation
    assign SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_V0 = SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_s_tv_0 = SE_out_i_llvm_fpga_mem_unnamed_softmax7_softmax26_backStall & SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0(STALLREG,534)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_r_valid <= SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx9_softmax0_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx9_softmax0_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_V = SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx9_softmax0_add_x_p1_of_2_q;

    // SE_i_arrayidx9_softmax0_add_x_p1_of_2(STALLENABLE,379)
    // Valid signal propagation
    assign SE_i_arrayidx9_softmax0_add_x_p1_of_2_V0 = SE_i_arrayidx9_softmax0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx9_softmax0_add_x_p1_of_2_V1 = SE_i_arrayidx9_softmax0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx9_softmax0_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_backStall & SE_i_arrayidx9_softmax0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx9_softmax0_add_x_p1_of_2_s_tv_1 = SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx9_softmax0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx9_softmax0_add_x_p1_of_2_or0 = SE_i_arrayidx9_softmax0_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx9_softmax0_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx9_softmax0_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx9_softmax0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx9_softmax0_add_x_p1_of_2_v_s_0 = SE_i_arrayidx9_softmax0_add_x_p1_of_2_backEN & SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx9_softmax0_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx9_softmax0_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx9_softmax0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx9_softmax0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx9_softmax0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx9_softmax0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx9_softmax0_add_x_p1_of_2_R_v_0 & SE_i_arrayidx9_softmax0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx9_softmax0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx9_softmax0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx9_softmax0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx9_softmax0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx9_softmax0_add_x_p1_of_2_R_v_1 & SE_i_arrayidx9_softmax0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx9_softmax0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx9_softmax0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx9_softmax0_add_x_p2_of_2(STALLENABLE,380)
    // Valid signal propagation
    assign SE_i_arrayidx9_softmax0_add_x_p2_of_2_V0 = SE_i_arrayidx9_softmax0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx9_softmax0_add_x_p2_of_2_s_tv_0 = SE_out_i_llvm_fpga_mem_unnamed_softmax7_softmax26_backStall & SE_i_arrayidx9_softmax0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx9_softmax0_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx9_softmax0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx9_softmax0_add_x_p2_of_2_v_s_0 = SE_i_arrayidx9_softmax0_add_x_p2_of_2_backEN & SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx9_softmax0_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx9_softmax0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx9_softmax0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx9_softmax0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx9_softmax0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx9_softmax0_add_x_p2_of_2_R_v_0 & SE_i_arrayidx9_softmax0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx9_softmax0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx9_softmax0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2(STALLREG,533)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_valid <= SE_i_arrayidx9_softmax0_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx9_softmax0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx9_softmax0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_and0 = SE_i_arrayidx9_softmax0_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_and1 = SE_i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel1_0_V1 & SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_i_valid = SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_backStall = SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_V = SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_D0 = SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_data0 : i_arrayidx9_softmax0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_D1 = SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_data1 : i_arrayidx5_softmax0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_D2 = SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_r_data2 : i_arrayidx9_softmax0_add_x_p1_of_2_c;

    // SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,391)
    // Valid signal propagation
    assign SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_backStall & SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_V1;
    // Backward Stall generation
    assign SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // i_arrayidx9_softmax0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,199)@103
    assign i_arrayidx9_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx5_softmax0_add_x_BitSelect_for_b_tessel0_2_b, bubble_select_redist6_i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_data_out_32_fifo_b, i_arrayidx5_softmax0_c_i2_01_x_q};

    // SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2(STALLREG,532)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_r_valid <= SE_i_arrayidx9_softmax0_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx9_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_and0 = SE_i_arrayidx9_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    assign SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_V0 & SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_backStall = SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_V = SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_D0 = SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_r_data0 : i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_D1 = SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_r_data1 : i_arrayidx9_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1(STALLENABLE,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_consumed0 = (~ (SR_SE_i_arrayidx9_softmax0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_consumed1 = (~ (SE_redist0_i_arrayidx9_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_wireValid = i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_out_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1(BLACKBOX,63)@102
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@103
    // out out_stall_out@20000000
    // out out_valid_out@103
    softmax_i_llvm_fpga_ffwd_dest_p1024f32_out0276_0 thei_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_backStall),
        .in_valid_in(SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_2(STALLENABLE,428)
    // Valid signal propagation
    assign SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_p1024f32_out0276_softmax1_out_stall_out | ~ (SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_2_wireValid = bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_valid_out;

    // bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg(STALLFIFO,524)
    assign bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_valid_in = SE_out_softmax_B4_merge_reg_aunroll_x_V1;
    assign bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(102),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_softmax_B4_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg(STALLFIFO,523)
    assign bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_valid_in = SE_out_softmax_B4_merge_reg_aunroll_x_V0;
    assign bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_softmax_B4_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(70),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_softmax_B4_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_softmax_B4_merge_reg_aunroll_x(STALLENABLE,321)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_softmax_B4_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_softmax_B4_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_softmax_B4_merge_reg_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_softmax_B4_merge_reg_aunroll_x_fromReg0 <= SE_out_softmax_B4_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_softmax_B4_merge_reg_aunroll_x_fromReg1 <= SE_out_softmax_B4_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_softmax_B4_merge_reg_aunroll_x_fromReg2 <= SE_out_softmax_B4_merge_reg_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_softmax_B4_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_softmax_B4_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_softmax_B4_merge_reg_aunroll_x_wireValid) | SE_out_softmax_B4_merge_reg_aunroll_x_fromReg0;
    assign SE_out_softmax_B4_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_softmax_B4_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_softmax_B4_merge_reg_aunroll_x_wireValid) | SE_out_softmax_B4_merge_reg_aunroll_x_fromReg1;
    assign SE_out_softmax_B4_merge_reg_aunroll_x_consumed2 = (~ (redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_out) & SE_out_softmax_B4_merge_reg_aunroll_x_wireValid) | SE_out_softmax_B4_merge_reg_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_softmax_B4_merge_reg_aunroll_x_StallValid = SE_out_softmax_B4_merge_reg_aunroll_x_backStall & SE_out_softmax_B4_merge_reg_aunroll_x_wireValid;
    assign SE_out_softmax_B4_merge_reg_aunroll_x_toReg0 = SE_out_softmax_B4_merge_reg_aunroll_x_StallValid & SE_out_softmax_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_softmax_B4_merge_reg_aunroll_x_toReg1 = SE_out_softmax_B4_merge_reg_aunroll_x_StallValid & SE_out_softmax_B4_merge_reg_aunroll_x_consumed1;
    assign SE_out_softmax_B4_merge_reg_aunroll_x_toReg2 = SE_out_softmax_B4_merge_reg_aunroll_x_StallValid & SE_out_softmax_B4_merge_reg_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_softmax_B4_merge_reg_aunroll_x_or0 = SE_out_softmax_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_softmax_B4_merge_reg_aunroll_x_or1 = SE_out_softmax_B4_merge_reg_aunroll_x_consumed1 & SE_out_softmax_B4_merge_reg_aunroll_x_or0;
    assign SE_out_softmax_B4_merge_reg_aunroll_x_wireStall = ~ (SE_out_softmax_B4_merge_reg_aunroll_x_consumed2 & SE_out_softmax_B4_merge_reg_aunroll_x_or1);
    assign SE_out_softmax_B4_merge_reg_aunroll_x_backStall = SE_out_softmax_B4_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_softmax_B4_merge_reg_aunroll_x_V0 = SE_out_softmax_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_softmax_B4_merge_reg_aunroll_x_fromReg0);
    assign SE_out_softmax_B4_merge_reg_aunroll_x_V1 = SE_out_softmax_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_softmax_B4_merge_reg_aunroll_x_fromReg1);
    assign SE_out_softmax_B4_merge_reg_aunroll_x_V2 = SE_out_softmax_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_softmax_B4_merge_reg_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_softmax_B4_merge_reg_aunroll_x_wireValid = softmax_B4_merge_reg_aunroll_x_out_valid_out;

    // redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo(STALLFIFO,230)
    assign redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_in = SE_out_softmax_B4_merge_reg_aunroll_x_V2;
    assign redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_in = SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_backStall;
    assign redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_data_in = bubble_select_softmax_B4_merge_reg_aunroll_x_b;
    assign redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_in_bitsignaltemp = redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_in[0];
    assign redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_in_bitsignaltemp = redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_in[0];
    assign redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_out[0] = redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_out_bitsignaltemp;
    assign redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_out[0] = redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(70),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo (
        .valid_in(redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_in_bitsignaltemp),
        .stall_in(redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_softmax_B4_merge_reg_aunroll_x_b),
        .valid_out(redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_out_bitsignaltemp),
        .stall_out(redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_stall_out_bitsignaltemp),
        .data_out(redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo(BITJOIN,301)
    assign bubble_join_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_q = redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_data_out;

    // bubble_select_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo(BITSELECT,302)
    assign bubble_select_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_b = $unsigned(bubble_join_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_q[0:0]);

    // SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo(STALLENABLE,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg0 <= '0;
            SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg0 <= SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_toReg0;
            // Successor 1
            SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg1 <= SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_consumed0 = (~ (SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall) & SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireValid) | SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg0;
    assign SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_consumed1 = (~ (i_llvm_fpga_pop_i32_i_123_pop14_softmax5_out_stall_out) & SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireValid) | SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg1;
    // Consuming
    assign SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_StallValid = SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_backStall & SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireValid;
    assign SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_toReg0 = SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_StallValid & SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_consumed0;
    assign SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_toReg1 = SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_StallValid & SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_or0 = SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_consumed0;
    assign SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireStall = ~ (SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_consumed1 & SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_or0);
    assign SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_backStall = SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_V0 = SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireValid & ~ (SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg0);
    assign SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_V1 = SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireValid & ~ (SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_wireValid = redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_valid_out;

    // SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0(STALLREG,527)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid <= 1'b0;
            SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid <= SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall & (SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid | SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_i_valid);

            if (SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_data0 <= $unsigned(bubble_select_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_i_valid = SE_out_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall = SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid | ~ (SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_i_valid);

    // Valid
    assign SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V = SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid == 1'b1 ? SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid : SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_i_valid;

    assign SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_D0 = SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid == 1'b1 ? SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_data0 : bubble_select_redist10_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_fifo_b;

    // redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0(REG,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN == 1'b1)
        begin
            redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q <= $unsigned(SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_D0);
        end
    end

    // SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0(STALLENABLE,409)
    // Valid signal propagation
    assign SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V0 = SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0;
    // Stall signal propagation
    assign SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_0 = SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall & SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0;
    // Backward Enable generation
    assign SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN = ~ (SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_v_s_0 = SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN & SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V;
    // Backward Stall generation
    assign SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall = ~ (SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN == 1'b0)
            begin
                SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0 <= SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0 & SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_0;
            end
            else
            begin
                SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0 <= SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_v_s_0;
            end

        end
    end

    // SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1(STALLREG,528)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid <= 1'b0;
            SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid <= SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall & (SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid | SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_i_valid);

            if (SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_data0 <= $unsigned(redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_i_valid = SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V0;
    // Stall signal propagation
    assign SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall = SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid | ~ (SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_i_valid);

    // Valid
    assign SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V = SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid == 1'b1 ? SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid : SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_i_valid;

    assign SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_D0 = SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid == 1'b1 ? SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_data0 : redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q;

    // redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1(REG,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN == 1'b1)
        begin
            redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q <= $unsigned(SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_D0);
        end
    end

    // SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1(STALLENABLE,410)
    // Valid signal propagation
    assign SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V0 = SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0;
    assign SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V1 = SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1;
    assign SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V2 = SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2;
    // Stall signal propagation
    assign SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_out_stall_out & SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0;
    assign SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_1 = i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_stall_out & SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1;
    assign SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_2 = redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_out & SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2;
    // Backward Enable generation
    assign SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or0 = SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_0;
    assign SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or1 = SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_1 | SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or0;
    assign SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN = ~ (SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_2 | SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_v_s_0 = SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN & SR_SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V;
    // Backward Stall generation
    assign SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall = ~ (SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0 <= 1'b0;
            SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1 <= 1'b0;
            SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN == 1'b0)
            begin
                SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0 <= SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0 & SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_0;
            end
            else
            begin
                SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0 <= SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_v_s_0;
            end

            if (SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN == 1'b0)
            begin
                SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1 <= SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1 & SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_1;
            end
            else
            begin
                SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1 <= SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_v_s_0;
            end

            if (SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN == 1'b0)
            begin
                SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2 <= SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2 & SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_2;
            end
            else
            begin
                SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2 <= SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_v_s_0;
            end

        end
    end

    // redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo(STALLFIFO,233)
    assign redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_in = SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V2;
    assign redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_in = SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_backStall;
    assign redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_data_in = redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q;
    assign redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_in_bitsignaltemp = redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_in[0];
    assign redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_in_bitsignaltemp = redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_in[0];
    assign redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_out[0] = redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_out_bitsignaltemp;
    assign redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_out[0] = redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(31),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo (
        .valid_in(redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_in_bitsignaltemp),
        .stall_in(redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_in_bitsignaltemp),
        .data_in(redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q),
        .valid_out(redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_out_bitsignaltemp),
        .stall_out(redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_stall_out_bitsignaltemp),
        .data_out(redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo(STALLENABLE,412)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg0 <= '0;
            SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg1 <= '0;
            SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg0 <= SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_toReg0;
            // Successor 1
            SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg1 <= SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_toReg1;
            // Successor 2
            SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg2 <= SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_consumed0 = (~ (i_llvm_fpga_pipeline_keep_going_softmax3_out_stall_out) & SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireValid) | SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg0;
    assign SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_consumed1 = (~ (i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_out_stall_out) & SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireValid) | SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg1;
    assign SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_consumed2 = (~ (redist13_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_172_fifo_stall_out) & SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireValid) | SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg2;
    // Consuming
    assign SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_StallValid = SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_backStall & SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireValid;
    assign SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_toReg0 = SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_StallValid & SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_consumed0;
    assign SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_toReg1 = SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_StallValid & SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_consumed1;
    assign SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_toReg2 = SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_StallValid & SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_or0 = SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_consumed0;
    assign SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_or1 = SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_consumed1 & SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_or0;
    assign SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireStall = ~ (SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_consumed2 & SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_or1);
    assign SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_backStall = SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_V0 = SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireValid & ~ (SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg0);
    assign SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_V1 = SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireValid & ~ (SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg1);
    assign SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_V2 = SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireValid & ~ (SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_wireValid = redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_softmax23(STALLENABLE,352)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_softmax23_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_softmax23_wireValid = i_llvm_fpga_push_i1_notexitcond_softmax23_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_softmax23(BLACKBOX,74)@103
    // in in_stall_in@20000000
    // out out_data_out@104
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@104
    softmax_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_softmax23 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_D0),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_softmax3_out_not_exitcond_stall_out),
        .in_first_cleanup(SR_SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_softmax23_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_softmax23_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_softmax23_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_softmax23_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_softmax23_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_softmax23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_softmax25(STALLENABLE,348)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_softmax25_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_softmax25_wireValid = i_llvm_fpga_push_i1_lastiniteration_softmax25_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration_softmax25(BLACKBOX,72)@174
    // in in_stall_in@20000000
    // out out_data_out@175
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@175
    softmax_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_softmax25 (
        .in_data_in(SR_SE_i_next_initerations_softmax10_vt_select_2_D0),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_softmax3_out_initeration_stall_out),
        .in_keep_going(SR_SE_i_next_initerations_softmax10_vt_select_2_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_softmax25_backStall),
        .in_valid_in(SE_i_next_initerations_softmax10_vt_select_2_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_softmax25_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_softmax25_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_softmax25_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_softmax25_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo(BITJOIN,304)
    assign bubble_join_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_q = redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_data_out;

    // bubble_select_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo(BITSELECT,305)
    assign bubble_select_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_b = $unsigned(bubble_join_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_q[0:0]);

    // i_llvm_fpga_pipeline_keep_going_softmax3(BLACKBOX,66)@102
    // in in_stall_in@20000000
    // out out_data_out@103
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@103
    softmax_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_softmax3 (
        .in_data_in(bubble_select_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_b),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_softmax25_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_softmax25_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_softmax23_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_softmax23_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_backStall),
        .in_valid_in(SE_out_redist12_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_101_fifo_V0),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_softmax3_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_softmax3_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_softmax3_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_softmax3_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_softmax3_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_softmax3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_softmax3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pipeline_keep_going_softmax3(BITJOIN,258)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_softmax3_q = i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_softmax3(BITSELECT,259)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_softmax3_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_softmax3_q[0:0]);

    // bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg(STALLFIFO,525)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_stall_in = SE_out_redist4_i_masked_softmax28_q_71_fifo_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(72),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pipeline_keep_going_softmax3(STALLENABLE,336)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_consumed1 = (~ (SE_bgTrunc_i_inc11_softmax12_sel_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_consumed2 = (~ (SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_consumed3 = (~ (SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv1_push13_softmax24_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_consumed4 = (~ (redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_or3 = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_or3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_V4 = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_wireValid = i_llvm_fpga_pipeline_keep_going_softmax3_out_valid_out;

    // redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo(STALLFIFO,227)
    assign redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_V4;
    assign redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_stall_in = SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_backStall;
    assign redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_data_in = bubble_select_i_llvm_fpga_pipeline_keep_going_softmax3_b;
    assign redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_valid_in_bitsignaltemp = redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_valid_in[0];
    assign redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_stall_in_bitsignaltemp = redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_stall_in[0];
    assign redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_valid_out[0] = redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_valid_out_bitsignaltemp;
    assign redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_stall_out[0] = redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(72),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo (
        .valid_in(redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_valid_in_bitsignaltemp),
        .stall_in(redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pipeline_keep_going_softmax3_b),
        .valid_out(redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_valid_out_bitsignaltemp),
        .stall_out(redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_stall_out_bitsignaltemp),
        .data_out(redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo(BITJOIN,292)
    assign bubble_join_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_q = redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_data_out;

    // bubble_select_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo(BITSELECT,293)
    assign bubble_select_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_b = $unsigned(bubble_join_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_memdep_softmax33(BITJOIN,251)
    assign bubble_join_i_llvm_fpga_mem_memdep_softmax33_q = i_llvm_fpga_mem_memdep_softmax33_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_softmax33(BITSELECT,252)
    assign bubble_select_i_llvm_fpga_mem_memdep_softmax33_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_softmax33_q[0:0]);

    // SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo(STALLENABLE,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_fromReg0 <= '0;
            SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_fromReg0 <= SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_toReg0;
            // Successor 1
            SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_fromReg1 <= SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_consumed0 = (~ (SR_SE_i_next_initerations_softmax10_vt_select_2_backStall) & SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_wireValid) | SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_fromReg0;
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_consumed1 = (~ (SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_backStall) & SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_wireValid) | SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_fromReg1;
    // Consuming
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_StallValid = SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_backStall & SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_wireValid;
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_toReg0 = SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_StallValid & SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_consumed0;
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_toReg1 = SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_StallValid & SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_or0 = SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_consumed0;
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_wireStall = ~ (SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_consumed1 & SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_or0);
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_backStall = SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_V0 = SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_wireValid & ~ (SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_fromReg0);
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_V1 = SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_wireValid & ~ (SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_wireValid = redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_valid_out;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push15_softmax35(STALLENABLE,350)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push15_softmax35_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push15_softmax35_wireValid = i_llvm_fpga_push_i1_memdep_phi_push15_softmax35_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi_push15_softmax35(BLACKBOX,73)@174
    // in in_stall_in@20000000
    // out out_data_out@175
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@175
    softmax_i_llvm_fpga_push_i1_memdep_phi_push15_0 thei_llvm_fpga_push_i1_memdep_phi_push15_softmax35 (
        .in_data_in(SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_D0),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_out_feedback_stall_out_15),
        .in_keep_going(SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push15_softmax35_backStall),
        .in_valid_in(SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_V0),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i1_memdep_phi_push15_softmax35_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i1_memdep_phi_push15_softmax35_out_feedback_valid_out_15),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push15_softmax35_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push15_softmax35_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33(STALLENABLE,440)
    // Valid signal propagation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_V0 = SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_backStall = i_llvm_fpga_push_i1_memdep_phi_push15_softmax35_out_stall_out | ~ (SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_wireValid = SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_V;

    // SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33(STALLREG,536)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_r_valid <= 1'b0;
            SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_r_data0 <= 1'bx;
            SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_r_valid <= SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_backStall & (SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_r_valid | SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_i_valid);

            if (SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_mem_memdep_softmax33_b);
                SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_r_data1 <= $unsigned(bubble_select_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_and0 = SE_out_i_llvm_fpga_mem_memdep_softmax33_V1;
    assign SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_i_valid = SE_out_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_V1 & SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_and0;
    // Stall signal propagation
    assign SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_backStall = SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_r_valid | ~ (SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_i_valid);

    // Valid
    assign SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_V = SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_r_valid == 1'b1 ? SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_r_valid : SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_i_valid;

    // Data0
    assign SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_D0 = SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_r_valid == 1'b1 ? SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_r_data0 : bubble_select_i_llvm_fpga_mem_memdep_softmax33_b;
    // Data1
    assign SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_D1 = SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_r_valid == 1'b1 ? SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_r_data1 : bubble_select_redist7_i_llvm_fpga_pipeline_keep_going_softmax3_out_data_out_71_fifo_b;

    // SE_out_redist4_i_masked_softmax28_q_71_fifo(STALLENABLE,396)
    // Valid signal propagation
    assign SE_out_redist4_i_masked_softmax28_q_71_fifo_V0 = SE_out_redist4_i_masked_softmax28_q_71_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist4_i_masked_softmax28_q_71_fifo_backStall = in_stall_in | ~ (SE_out_redist4_i_masked_softmax28_q_71_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist4_i_masked_softmax28_q_71_fifo_and0 = redist4_i_masked_softmax28_q_71_fifo_valid_out;
    assign SE_out_redist4_i_masked_softmax28_q_71_fifo_and1 = bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_1_reg_valid_out & SE_out_redist4_i_masked_softmax28_q_71_fifo_and0;
    assign SE_out_redist4_i_masked_softmax28_q_71_fifo_and2 = bubble_out_i_llvm_fpga_pipeline_keep_going_softmax3_1_reg_valid_out & SE_out_redist4_i_masked_softmax28_q_71_fifo_and1;
    assign SE_out_redist4_i_masked_softmax28_q_71_fifo_and3 = SE_out_i_llvm_fpga_pop_i4_initerations_pop16_softmax4_V0 & SE_out_redist4_i_masked_softmax28_q_71_fifo_and2;
    assign SE_out_redist4_i_masked_softmax28_q_71_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_softmax33_V0 & SE_out_redist4_i_masked_softmax28_q_71_fifo_and3;

    // SE_out_i_llvm_fpga_mem_memdep_softmax33(STALLENABLE,332)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_softmax33_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_softmax33_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_softmax33_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_softmax33_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_softmax33_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_softmax33_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_softmax33_consumed0 = (~ (SE_out_redist4_i_masked_softmax28_q_71_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_softmax33_wireValid) | SE_out_i_llvm_fpga_mem_memdep_softmax33_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_softmax33_consumed1 = (~ (SR_SE_bubble_select_i_llvm_fpga_mem_memdep_softmax33_backStall) & SE_out_i_llvm_fpga_mem_memdep_softmax33_wireValid) | SE_out_i_llvm_fpga_mem_memdep_softmax33_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_softmax33_StallValid = SE_out_i_llvm_fpga_mem_memdep_softmax33_backStall & SE_out_i_llvm_fpga_mem_memdep_softmax33_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_softmax33_toReg0 = SE_out_i_llvm_fpga_mem_memdep_softmax33_StallValid & SE_out_i_llvm_fpga_mem_memdep_softmax33_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_softmax33_toReg1 = SE_out_i_llvm_fpga_mem_memdep_softmax33_StallValid & SE_out_i_llvm_fpga_mem_memdep_softmax33_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_softmax33_or0 = SE_out_i_llvm_fpga_mem_memdep_softmax33_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_softmax33_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_softmax33_consumed1 & SE_out_i_llvm_fpga_mem_memdep_softmax33_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_softmax33_backStall = SE_out_i_llvm_fpga_mem_memdep_softmax33_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_softmax33_V0 = SE_out_i_llvm_fpga_mem_memdep_softmax33_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_softmax33_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_softmax33_V1 = SE_out_i_llvm_fpga_mem_memdep_softmax33_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_softmax33_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_softmax33_wireValid = i_llvm_fpga_mem_memdep_softmax33_out_o_valid;

    // bubble_join_redist9_i_first_cleanup_xor_softmax16_q_70_fifo(BITJOIN,298)
    assign bubble_join_redist9_i_first_cleanup_xor_softmax16_q_70_fifo_q = redist9_i_first_cleanup_xor_softmax16_q_70_fifo_data_out;

    // bubble_select_redist9_i_first_cleanup_xor_softmax16_q_70_fifo(BITSELECT,299)
    assign bubble_select_redist9_i_first_cleanup_xor_softmax16_q_70_fifo_b = $unsigned(bubble_join_redist9_i_first_cleanup_xor_softmax16_q_70_fifo_q[0:0]);

    // bubble_join_i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x(BITJOIN,237)
    assign bubble_join_i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_q = {i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_out_c0_exit37_2_tpl, i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_out_c0_exit37_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x(BITSELECT,238)
    assign bubble_select_i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_q[95:32]);

    // i_llvm_fpga_mem_memdep_softmax33(BLACKBOX,64)@143
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_softmax_avm_address@20000000
    // out out_memdep_softmax_avm_burstcount@20000000
    // out out_memdep_softmax_avm_byteenable@20000000
    // out out_memdep_softmax_avm_enable@20000000
    // out out_memdep_softmax_avm_read@20000000
    // out out_memdep_softmax_avm_write@20000000
    // out out_memdep_softmax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@174
    // out out_o_writeack@174
    softmax_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_softmax33 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_c),
        .in_i_predicate(bubble_select_redist9_i_first_cleanup_xor_softmax16_q_70_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_softmax33_backStall),
        .in_i_valid(SE_out_redist9_i_first_cleanup_xor_softmax16_q_70_fifo_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_b),
        .in_memdep_softmax_avm_readdata(in_memdep_softmax_avm_readdata),
        .in_memdep_softmax_avm_readdatavalid(in_memdep_softmax_avm_readdatavalid),
        .in_memdep_softmax_avm_waitrequest(in_memdep_softmax_avm_waitrequest),
        .in_memdep_softmax_avm_writeack(in_memdep_softmax_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_softmax33_out_lsu_memdep_o_active),
        .out_memdep_softmax_avm_address(i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_address),
        .out_memdep_softmax_avm_burstcount(i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_burstcount),
        .out_memdep_softmax_avm_byteenable(i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_byteenable),
        .out_memdep_softmax_avm_enable(i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_enable),
        .out_memdep_softmax_avm_read(i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_read),
        .out_memdep_softmax_avm_write(i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_write),
        .out_memdep_softmax_avm_writedata(i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_softmax33_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_softmax33_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_softmax33_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx9_softmax0_add_x_p2_of_2(ADD,177)@104 + 1
    assign i_arrayidx9_softmax0_add_x_p2_of_2_cin = SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_D2;
    assign i_arrayidx9_softmax0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx9_softmax0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx9_softmax0_add_x_p2_of_2_D1}, i_arrayidx9_softmax0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx9_softmax0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx9_softmax0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx9_softmax0_add_x_p2_of_2_o <= $unsigned(i_arrayidx9_softmax0_add_x_p2_of_2_a) + $unsigned(i_arrayidx9_softmax0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx9_softmax0_add_x_p2_of_2_q = i_arrayidx9_softmax0_add_x_p2_of_2_o[13:1];

    // redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0(REG,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx9_softmax0_add_x_BitJoin_for_q(BITJOIN,178)@105
    assign i_arrayidx9_softmax0_add_x_BitJoin_for_q_q = {i_arrayidx9_softmax0_add_x_p2_of_2_q, redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx9_softmax0_dupName_0_trunc_sel_x(BITSELECT,16)@105
    assign i_arrayidx9_softmax0_dupName_0_trunc_sel_x_b = i_arrayidx9_softmax0_add_x_BitJoin_for_q_q[63:0];

    // bubble_join_i_llvm_fpga_mem_unnamed_softmax7_softmax26(BITJOIN,255)
    assign bubble_join_i_llvm_fpga_mem_unnamed_softmax7_softmax26_q = i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_softmax7_softmax26(BITSELECT,256)
    assign bubble_select_i_llvm_fpga_mem_unnamed_softmax7_softmax26_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_softmax7_softmax26_q[31:0]);

    // i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x(BLACKBOX,33)@105
    // in in_i_stall@20000000
    // out out_c0_exit37_0_tpl@143
    // out out_c0_exit37_1_tpl@143
    // out out_c0_exit37_2_tpl@143
    // out out_o_stall@20000000
    // out out_o_valid@143
    softmax_i_sfc_s_c0_in_for_body3_s_c0_enter333_softmax30 thei_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x (
        .in_c0_eni2_0_tpl(GND_q),
        .in_c0_eni2_1_tpl(bubble_select_i_llvm_fpga_mem_unnamed_softmax7_softmax26_b),
        .in_c0_eni2_2_tpl(i_arrayidx9_softmax0_dupName_0_trunc_sel_x_b),
        .in_i_stall(SE_out_redist9_i_first_cleanup_xor_softmax16_q_70_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_softmax7_softmax26_V0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .out_c0_exit37_0_tpl(),
        .out_c0_exit37_1_tpl(i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_out_c0_exit37_1_tpl),
        .out_c0_exit37_2_tpl(i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_out_c0_exit37_2_tpl),
        .out_o_stall(i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist9_i_first_cleanup_xor_softmax16_q_70_fifo(STALLENABLE,406)
    // Valid signal propagation
    assign SE_out_redist9_i_first_cleanup_xor_softmax16_q_70_fifo_V0 = SE_out_redist9_i_first_cleanup_xor_softmax16_q_70_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist9_i_first_cleanup_xor_softmax16_q_70_fifo_backStall = i_llvm_fpga_mem_memdep_softmax33_out_o_stall | ~ (SE_out_redist9_i_first_cleanup_xor_softmax16_q_70_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist9_i_first_cleanup_xor_softmax16_q_70_fifo_and0 = redist9_i_first_cleanup_xor_softmax16_q_70_fifo_valid_out;
    assign SE_out_redist9_i_first_cleanup_xor_softmax16_q_70_fifo_wireValid = i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_out_o_valid & SE_out_redist9_i_first_cleanup_xor_softmax16_q_70_fifo_and0;

    // redist9_i_first_cleanup_xor_softmax16_q_70_fifo(STALLFIFO,229)
    assign redist9_i_first_cleanup_xor_softmax16_q_70_fifo_valid_in = SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_V1;
    assign redist9_i_first_cleanup_xor_softmax16_q_70_fifo_stall_in = SE_out_redist9_i_first_cleanup_xor_softmax16_q_70_fifo_backStall;
    assign redist9_i_first_cleanup_xor_softmax16_q_70_fifo_data_in = bubble_select_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_b;
    assign redist9_i_first_cleanup_xor_softmax16_q_70_fifo_valid_in_bitsignaltemp = redist9_i_first_cleanup_xor_softmax16_q_70_fifo_valid_in[0];
    assign redist9_i_first_cleanup_xor_softmax16_q_70_fifo_stall_in_bitsignaltemp = redist9_i_first_cleanup_xor_softmax16_q_70_fifo_stall_in[0];
    assign redist9_i_first_cleanup_xor_softmax16_q_70_fifo_valid_out[0] = redist9_i_first_cleanup_xor_softmax16_q_70_fifo_valid_out_bitsignaltemp;
    assign redist9_i_first_cleanup_xor_softmax16_q_70_fifo_stall_out[0] = redist9_i_first_cleanup_xor_softmax16_q_70_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(41),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist9_i_first_cleanup_xor_softmax16_q_70_fifo (
        .valid_in(redist9_i_first_cleanup_xor_softmax16_q_70_fifo_valid_in_bitsignaltemp),
        .stall_in(redist9_i_first_cleanup_xor_softmax16_q_70_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_b),
        .valid_out(redist9_i_first_cleanup_xor_softmax16_q_70_fifo_valid_out_bitsignaltemp),
        .stall_out(redist9_i_first_cleanup_xor_softmax16_q_70_fifo_stall_out_bitsignaltemp),
        .data_out(redist9_i_first_cleanup_xor_softmax16_q_70_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl_softmax0_shift_x(BITSELECT,146)@103
    assign leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl_softmax0_shift_x_in = bubble_select_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_b[2:0];
    assign leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl_softmax0_shift_x_b = leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl_softmax0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid148_i_cleanups_shl_softmax0_shift_x(BITJOIN,147)@103
    assign leftShiftStage0Idx1_uid148_i_cleanups_shl_softmax0_shift_x_q = {leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl_softmax0_shift_x_b, GND_q};

    // leftShiftStage0_uid150_i_cleanups_shl_softmax0_shift_x(MUX,149)@103
    assign leftShiftStage0_uid150_i_cleanups_shl_softmax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid150_i_cleanups_shl_softmax0_shift_x_s or bubble_select_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_b or leftShiftStage0Idx1_uid148_i_cleanups_shl_softmax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid150_i_cleanups_shl_softmax0_shift_x_s)
            1'b0 : leftShiftStage0_uid150_i_cleanups_shl_softmax0_shift_x_q = bubble_select_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_b;
            1'b1 : leftShiftStage0_uid150_i_cleanups_shl_softmax0_shift_x_q = leftShiftStage0Idx1_uid148_i_cleanups_shl_softmax0_shift_x_q;
            default : leftShiftStage0_uid150_i_cleanups_shl_softmax0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_softmax9_vt_select_3(BITSELECT,51)@103
    assign i_cleanups_shl_softmax9_vt_select_3_b = leftShiftStage0_uid150_i_cleanups_shl_softmax0_shift_x_q[3:1];

    // i_cleanups_shl_softmax9_vt_join(BITJOIN,50)@103
    assign i_cleanups_shl_softmax9_vt_join_q = {i_cleanups_shl_softmax9_vt_select_3_b, GND_q};

    // bubble_join_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo(BITJOIN,286)
    assign bubble_join_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_q = redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_data_out;

    // bubble_select_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo(BITSELECT,287)
    assign bubble_select_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_b = $unsigned(bubble_join_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_q[3:0]);

    // i_or_softmax27(LOGICAL,85)@103
    assign i_or_softmax27_q = i_notcmp_softmax22_q | bubble_select_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_b;

    // i_next_cleanups_softmax32(MUX,80)@103
    assign i_next_cleanups_softmax32_s = i_or_softmax27_q;
    always @(i_next_cleanups_softmax32_s or bubble_select_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_b or i_cleanups_shl_softmax9_vt_join_q)
    begin
        unique case (i_next_cleanups_softmax32_s)
            1'b0 : i_next_cleanups_softmax32_q = bubble_select_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_b;
            1'b1 : i_next_cleanups_softmax32_q = i_cleanups_shl_softmax9_vt_join_q;
            default : i_next_cleanups_softmax32_q = 4'b0;
        endcase
    end

    // SE_out_i_llvm_fpga_push_i4_cleanups_push17_softmax34(STALLENABLE,356)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push17_softmax34_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push17_softmax34_wireValid = i_llvm_fpga_push_i4_cleanups_push17_softmax34_out_valid_out;

    // i_llvm_fpga_push_i4_cleanups_push17_softmax34(BLACKBOX,76)@103
    // in in_stall_in@20000000
    // out out_data_out@104
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@104
    softmax_i_llvm_fpga_push_i4_cleanups_push17_0 thei_llvm_fpga_push_i4_cleanups_push17_softmax34 (
        .in_data_in(SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_D0),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_feedback_stall_out_17),
        .in_keep_going(SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_cleanups_push17_softmax34_backStall),
        .in_valid_in(SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_V0),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i4_cleanups_push17_softmax34_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i4_cleanups_push17_softmax34_out_feedback_valid_out_17),
        .out_stall_out(i_llvm_fpga_push_i4_cleanups_push17_softmax34_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_cleanups_push17_softmax34_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo(STALLENABLE,398)
    // Valid signal propagation
    assign SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_V0 = SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_backStall = i_llvm_fpga_push_i4_cleanups_push17_softmax34_out_stall_out | ~ (SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_wireValid = SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_V;

    // SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo(STALLREG,538)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_r_valid <= 1'b0;
            SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_r_data0 <= 4'bxxxx;
            SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_r_valid <= SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_backStall & (SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_r_valid | SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_i_valid);

            if (SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_r_data0 <= i_next_cleanups_softmax32_q;
                SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_softmax3_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_and0 = redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_valid_out;
    assign SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_and1 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv1_pop13_softmax7_V4 & SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_and0;
    assign SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_and2 = SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_V0 & SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_and1;
    assign SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_softmax3_V2 & SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_and2;
    // Stall signal propagation
    assign SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_backStall = SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_r_valid | ~ (SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_i_valid);

    // Valid
    assign SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_V = SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_r_valid == 1'b1 ? SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_r_valid : SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_i_valid;

    // Data0
    assign SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_D0 = SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_r_valid == 1'b1 ? SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_r_data0 : i_next_cleanups_softmax32_q;
    // Data1
    assign SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_D1 = SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_r_valid == 1'b1 ? SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_r_data1 : bubble_select_i_llvm_fpga_pipeline_keep_going_softmax3_b;

    // SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo(STALLENABLE,404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_fromReg0 <= '0;
            SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_fromReg0 <= SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_toReg0;
            // Successor 1
            SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_fromReg1 <= SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_consumed0 = (~ (SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_backStall) & SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_wireValid) | SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_fromReg0;
    assign SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_consumed1 = (~ (redist9_i_first_cleanup_xor_softmax16_q_70_fifo_stall_out) & SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_wireValid) | SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_fromReg1;
    // Consuming
    assign SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_StallValid = SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_backStall & SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_wireValid;
    assign SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_toReg0 = SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_StallValid & SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_consumed0;
    assign SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_toReg1 = SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_StallValid & SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_or0 = SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_consumed0;
    assign SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_wireStall = ~ (SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_consumed1 & SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_or0);
    assign SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_backStall = SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_V0 = SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_wireValid & ~ (SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_fromReg0);
    assign SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_V1 = SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_wireValid & ~ (SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_wireValid = redist8_i_first_cleanup_xor_softmax16_q_30_fifo_valid_out;

    // redist8_i_first_cleanup_xor_softmax16_q_30_fifo(STALLFIFO,228)
    assign redist8_i_first_cleanup_xor_softmax16_q_30_fifo_valid_in = SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_V3;
    assign redist8_i_first_cleanup_xor_softmax16_q_30_fifo_stall_in = SE_out_redist8_i_first_cleanup_xor_softmax16_q_30_fifo_backStall;
    assign redist8_i_first_cleanup_xor_softmax16_q_30_fifo_data_in = i_first_cleanup_xor_softmax16_q;
    assign redist8_i_first_cleanup_xor_softmax16_q_30_fifo_valid_in_bitsignaltemp = redist8_i_first_cleanup_xor_softmax16_q_30_fifo_valid_in[0];
    assign redist8_i_first_cleanup_xor_softmax16_q_30_fifo_stall_in_bitsignaltemp = redist8_i_first_cleanup_xor_softmax16_q_30_fifo_stall_in[0];
    assign redist8_i_first_cleanup_xor_softmax16_q_30_fifo_valid_out[0] = redist8_i_first_cleanup_xor_softmax16_q_30_fifo_valid_out_bitsignaltemp;
    assign redist8_i_first_cleanup_xor_softmax16_q_30_fifo_stall_out[0] = redist8_i_first_cleanup_xor_softmax16_q_30_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(31),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist8_i_first_cleanup_xor_softmax16_q_30_fifo (
        .valid_in(redist8_i_first_cleanup_xor_softmax16_q_30_fifo_valid_in_bitsignaltemp),
        .stall_in(redist8_i_first_cleanup_xor_softmax16_q_30_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_xor_softmax16_q),
        .valid_out(redist8_i_first_cleanup_xor_softmax16_q_30_fifo_valid_out_bitsignaltemp),
        .stall_out(redist8_i_first_cleanup_xor_softmax16_q_30_fifo_stall_out_bitsignaltemp),
        .data_out(redist8_i_first_cleanup_xor_softmax16_q_30_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2(BITJOIN,268)
    assign bubble_join_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_q = i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2(BITSELECT,269)
    assign bubble_select_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_q[3:0]);

    // i_first_cleanup_softmax8_sel_x(BITSELECT,26)@73
    assign i_first_cleanup_softmax8_sel_x_b = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_b[0:0];

    // redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo(STALLFIFO,235)
    assign redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_valid_in = SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_V2;
    assign redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_stall_in = SE_out_redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_backStall;
    assign redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_data_in = i_first_cleanup_softmax8_sel_x_b;
    assign redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_valid_in_bitsignaltemp = redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_valid_in[0];
    assign redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_stall_in_bitsignaltemp = redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_stall_in[0];
    assign redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_valid_out[0] = redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_valid_out_bitsignaltemp;
    assign redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_stall_out[0] = redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(31),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist14_i_first_cleanup_softmax8_sel_x_b_30_fifo (
        .valid_in(redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_valid_in_bitsignaltemp),
        .stall_in(redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_softmax8_sel_x_b),
        .valid_out(redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_valid_out_bitsignaltemp),
        .stall_out(redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_stall_out_bitsignaltemp),
        .data_out(redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo(STALLFIFO,225)
    assign redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_valid_in = SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_V0;
    assign redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_stall_in = SR_SE_out_redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_backStall;
    assign redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_data_in = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_b;
    assign redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_valid_in_bitsignaltemp = redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_valid_in[0];
    assign redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_stall_in_bitsignaltemp = redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_stall_in[0];
    assign redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_valid_out[0] = redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_valid_out_bitsignaltemp;
    assign redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_stall_out[0] = redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(31),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(4),
        .IMPL("ram")
    ) theredist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo (
        .valid_in(redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_valid_in_bitsignaltemp),
        .stall_in(redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_b),
        .valid_out(redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_valid_out_bitsignaltemp),
        .stall_out(redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_stall_out_bitsignaltemp),
        .data_out(redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_cleanups_pop17_softmax2(BLACKBOX,69)@72
    // in in_stall_in@20000000
    // out out_data_out@73
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@73
    softmax_i_llvm_fpga_pop_i4_cleanups_pop17_0 thei_llvm_fpga_pop_i4_cleanups_pop17_softmax2 (
        .in_data_in(c_i4_736_q),
        .in_dir(redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i4_cleanups_push17_softmax34_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i4_cleanups_push17_softmax34_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_backStall),
        .in_valid_in(SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V1),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2(STALLENABLE,342)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_fromReg2 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_fromReg3 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_consumed0 = (~ (redist5_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_data_out_30_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_consumed1 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_consumed2 = (~ (redist14_i_first_cleanup_softmax8_sel_x_b_30_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_consumed3 = (~ (redist8_i_first_cleanup_xor_softmax16_q_30_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_StallValid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_backStall & SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_toReg0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_toReg1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_consumed1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_toReg2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_consumed2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_toReg3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_or0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_or1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_consumed1 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_or0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_or2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_consumed2 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_or1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_consumed3 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_or2);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_backStall = SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_V0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_V1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_V2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_V3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_wireValid = i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_out_valid_out;

    // SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0(STALLENABLE,394)
    // Valid signal propagation
    assign SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_V0 = SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_backStall & SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_arrayidx5_softmax0_add_x_p2_of_2(STALLENABLE,377)
    // Valid signal propagation
    assign SE_i_arrayidx5_softmax0_add_x_p2_of_2_V0 = SE_i_arrayidx5_softmax0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx5_softmax0_add_x_p2_of_2_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_backStall & SE_i_arrayidx5_softmax0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx5_softmax0_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx5_softmax0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx5_softmax0_add_x_p2_of_2_v_s_0 = SE_i_arrayidx5_softmax0_add_x_p2_of_2_backEN & SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx5_softmax0_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx5_softmax0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx5_softmax0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx5_softmax0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx5_softmax0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx5_softmax0_add_x_p2_of_2_R_v_0 & SE_i_arrayidx5_softmax0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx5_softmax0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx5_softmax0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6(BLACKBOX,67)@72
    // in in_stall_in@20000000
    // out out_data_out@73
    // out out_feedback_stall_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@73
    softmax_i_llvm_fpga_pop_i1_memdep_phi_pop15_0 thei_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6 (
        .in_data_in(GND_q),
        .in_dir(redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i1_memdep_phi_push15_softmax35_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i1_memdep_phi_push15_softmax35_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_backStall),
        .in_valid_in(SE_redist11_softmax_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_out_feedback_stall_out_15),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6(STALLENABLE,338)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_backStall = i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_and1 = SE_i_arrayidx5_softmax0_add_x_p2_of_2_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_and0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_and2 = SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_and1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_wireValid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop17_softmax2_V1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_and2;

    // SE_out_i_llvm_fpga_mem_unnamed_softmax7_softmax26(STALLENABLE,334)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_softmax7_softmax26_V0 = SE_out_i_llvm_fpga_mem_unnamed_softmax7_softmax26_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_softmax7_softmax26_backStall = i_sfc_s_c0_in_for_body3_softmaxs_c0_enter333_softmax30_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_softmax7_softmax26_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_softmax7_softmax26_and0 = i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_softmax7_softmax26_and1 = SE_i_arrayidx9_softmax0_add_x_p2_of_2_V0 & SE_out_i_llvm_fpga_mem_unnamed_softmax7_softmax26_and0;
    assign SE_out_i_llvm_fpga_mem_unnamed_softmax7_softmax26_wireValid = SE_redist2_i_arrayidx9_softmax0_add_x_p1_of_2_q_1_0_V0 & SE_out_i_llvm_fpga_mem_unnamed_softmax7_softmax26_and1;

    // i_first_cleanup_xor_softmax16(LOGICAL,54)@73
    assign i_first_cleanup_xor_softmax16_q = i_first_cleanup_softmax8_sel_x_b ^ VCC_q;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6(BITJOIN,262)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_q = i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6(BITSELECT,263)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_q[0:0]);

    // i_arrayidx5_softmax0_add_x_p2_of_2(ADD,168)@72 + 1
    assign i_arrayidx5_softmax0_add_x_p2_of_2_cin = SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_D2;
    assign i_arrayidx5_softmax0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx5_softmax0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx5_softmax0_add_x_p2_of_2_D1}, i_arrayidx5_softmax0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx5_softmax0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx5_softmax0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx5_softmax0_add_x_p2_of_2_o <= $unsigned(i_arrayidx5_softmax0_add_x_p2_of_2_a) + $unsigned(i_arrayidx5_softmax0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx5_softmax0_add_x_p2_of_2_q = i_arrayidx5_softmax0_add_x_p2_of_2_o[13:1];

    // redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0(REG,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx5_softmax0_add_x_BitJoin_for_q(BITJOIN,169)@73
    assign i_arrayidx5_softmax0_add_x_BitJoin_for_q_q = {i_arrayidx5_softmax0_add_x_p2_of_2_q, redist3_i_arrayidx5_softmax0_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx5_softmax0_dupName_0_trunc_sel_x(BITSELECT,10)@73
    assign i_arrayidx5_softmax0_dupName_0_trunc_sel_x_b = i_arrayidx5_softmax0_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_unnamed_softmax7_softmax26(BLACKBOX,65)@73
    // in in_i_stall@20000000
    // out out_o_readdata@105
    // out out_o_stall@20000000
    // out out_o_valid@105
    // out out_unnamed_softmax7_softmax_avm_address@20000000
    // out out_unnamed_softmax7_softmax_avm_burstcount@20000000
    // out out_unnamed_softmax7_softmax_avm_byteenable@20000000
    // out out_unnamed_softmax7_softmax_avm_enable@20000000
    // out out_unnamed_softmax7_softmax_avm_read@20000000
    // out out_unnamed_softmax7_softmax_avm_write@20000000
    // out out_unnamed_softmax7_softmax_avm_writedata@20000000
    softmax_i_llvm_fpga_mem_unnamed_7_softmax0 thei_llvm_fpga_mem_unnamed_softmax7_softmax26 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx5_softmax0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_b),
        .in_i_predicate(i_first_cleanup_xor_softmax16_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_softmax7_softmax26_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop15_softmax6_V0),
        .in_unnamed_softmax7_softmax_avm_readdata(in_unnamed_softmax7_softmax_avm_readdata),
        .in_unnamed_softmax7_softmax_avm_readdatavalid(in_unnamed_softmax7_softmax_avm_readdatavalid),
        .in_unnamed_softmax7_softmax_avm_waitrequest(in_unnamed_softmax7_softmax_avm_waitrequest),
        .in_unnamed_softmax7_softmax_avm_writeack(in_unnamed_softmax7_softmax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_o_valid),
        .out_unnamed_softmax7_softmax_avm_address(i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_address),
        .out_unnamed_softmax7_softmax_avm_burstcount(i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_burstcount),
        .out_unnamed_softmax7_softmax_avm_byteenable(i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_byteenable),
        .out_unnamed_softmax7_softmax_avm_enable(i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_enable),
        .out_unnamed_softmax7_softmax_avm_read(i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_read),
        .out_unnamed_softmax7_softmax_avm_write(i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_write),
        .out_unnamed_softmax7_softmax_avm_writedata(i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,6)
    assign out_unnamed_softmax7_softmax_avm_address = i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_address;
    assign out_unnamed_softmax7_softmax_avm_enable = i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_enable;
    assign out_unnamed_softmax7_softmax_avm_read = i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_read;
    assign out_unnamed_softmax7_softmax_avm_write = i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_write;
    assign out_unnamed_softmax7_softmax_avm_writedata = i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_writedata;
    assign out_unnamed_softmax7_softmax_avm_byteenable = i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_byteenable;
    assign out_unnamed_softmax7_softmax_avm_burstcount = i_llvm_fpga_mem_unnamed_softmax7_softmax26_out_unnamed_softmax7_softmax_avm_burstcount;

    // bubble_join_redist4_i_masked_softmax28_q_71_fifo(BITJOIN,283)
    assign bubble_join_redist4_i_masked_softmax28_q_71_fifo_q = redist4_i_masked_softmax28_q_71_fifo_data_out;

    // bubble_select_redist4_i_masked_softmax28_q_71_fifo(BITSELECT,284)
    assign bubble_select_redist4_i_masked_softmax28_q_71_fifo_b = $unsigned(bubble_join_redist4_i_masked_softmax28_q_71_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,7)@174
    assign out_masked = bubble_select_redist4_i_masked_softmax28_q_71_fifo_b;
    assign out_valid_out = SE_out_redist4_i_masked_softmax28_q_71_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,8)
    assign out_memdep_softmax_avm_address = i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_address;
    assign out_memdep_softmax_avm_enable = i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_enable;
    assign out_memdep_softmax_avm_read = i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_read;
    assign out_memdep_softmax_avm_write = i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_write;
    assign out_memdep_softmax_avm_writedata = i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_writedata;
    assign out_memdep_softmax_avm_byteenable = i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_byteenable;
    assign out_memdep_softmax_avm_burstcount = i_llvm_fpga_mem_memdep_softmax33_out_memdep_softmax_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,9)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_softmax33_out_lsu_memdep_o_active;

    // ext_sig_sync_out(GPOUT,48)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_softmax3_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_softmax3_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_softmax3_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_softmax3_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,126)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_softmax3_out_pipeline_valid_out;

    // sync_out(GPOUT,134)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
