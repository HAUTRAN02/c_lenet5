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

// SystemVerilog created from bb_relu1_B4_stall_region
// Created for function/kernel relu1
// SystemVerilog created on Sat Apr  1 13:10:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module relu1_bb_B4_stall_region (
    input wire [63:0] in_memdep_relu1_avm_readdata,
    input wire [0:0] in_memdep_relu1_avm_writeack,
    input wire [0:0] in_memdep_relu1_avm_waitrequest,
    input wire [0:0] in_memdep_relu1_avm_readdatavalid,
    output wire [63:0] out_unnamed_relu15_relu1_avm_address,
    output wire [0:0] out_unnamed_relu15_relu1_avm_enable,
    output wire [0:0] out_unnamed_relu15_relu1_avm_read,
    output wire [0:0] out_unnamed_relu15_relu1_avm_write,
    output wire [63:0] out_unnamed_relu15_relu1_avm_writedata,
    output wire [7:0] out_unnamed_relu15_relu1_avm_byteenable,
    output wire [0:0] out_unnamed_relu15_relu1_avm_burstcount,
    output wire [0:0] out_exitcond535_pop29,
    output wire [0:0] out_exitcond828_pop25,
    output wire [0:0] out_masked,
    output wire [0:0] out_memdep,
    output wire [0:0] out_notcmp1136_pop30,
    output wire [0:0] out_notcmp1630_pop26,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_memdep_relu1_avm_address,
    output wire [0:0] out_memdep_relu1_avm_enable,
    output wire [0:0] out_memdep_relu1_avm_read,
    output wire [0:0] out_memdep_relu1_avm_write,
    output wire [63:0] out_memdep_relu1_avm_writedata,
    output wire [7:0] out_memdep_relu1_avm_byteenable,
    output wire [0:0] out_memdep_relu1_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire [63:0] in_unnamed_relu15_relu1_avm_readdata,
    input wire [0:0] in_unnamed_relu15_relu1_avm_writeack,
    input wire [0:0] in_unnamed_relu15_relu1_avm_waitrequest,
    input wire [0:0] in_unnamed_relu15_relu1_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_relu13_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_relu13_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond551,
    input wire [0:0] in_exitcond827_pop1655,
    input wire [0:0] in_forked,
    input wire [31:0] in_i_018_pop1453,
    input wire [31:0] in_k_019_pop1131_pop1857,
    input wire [0:0] in_memdep_phi1_pop1554,
    input wire [0:0] in_memdep_phi2_pop1233_pop1958,
    input wire [0:0] in_notcmp1152,
    input wire [0:0] in_notcmp1629_pop1756,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_relu123_sel_x_b;
    wire [31:0] bgTrunc_i_inc_relu120_sel_x_b;
    wire [63:0] i_arrayidx10_relu10_dupName_4_trunc_sel_x_b;
    wire [1:0] i_arrayidx10_relu10_c_i2_03_x_q;
    wire [63:0] i_arrayidx23_relu10_dupName_4_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_relu116_sel_x_b;
    wire [63:0] i_idxprom7_relu127_sel_x_b;
    wire [63:0] i_idxprom_relu132_sel_x_b;
    wire [0:0] i_last_initeration_relu137_sel_x_b;
    wire [31:0] i_sfc_s_c0_in_for_body6_relu1s_c0_enter8412_relu151_aunroll_x_out_c0_exit87_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_relu1s_c0_enter8412_relu151_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body6_relu1s_c0_enter8412_relu151_aunroll_x_out_o_valid;
    wire [0:0] relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] relu1_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] relu1_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] relu1_B4_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] relu1_B4_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] relu1_B4_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] relu1_B4_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] relu1_B4_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] relu1_B4_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] relu1_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] relu1_B4_merge_reg_aunroll_x_out_valid_out;
    wire [1:0] c_i2_156_q;
    wire [31:0] c_i32_058_q;
    wire [31:0] c_i32_160_q;
    wire [5:0] c_i6_162_q;
    wire [5:0] c_i6_2659_q;
    wire [1:0] i_cleanups_shl_relu117_vt_join_q;
    wire [0:0] i_cleanups_shl_relu117_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_relu135_q;
    wire [6:0] i_fpga_indvars_iv_next_relu123_a;
    wire [6:0] i_fpga_indvars_iv_next_relu123_b;
    logic [6:0] i_fpga_indvars_iv_next_relu123_o;
    wire [6:0] i_fpga_indvars_iv_next_relu123_q;
    wire [63:0] i_idxprom7_relu127_vt_join_q;
    wire [31:0] i_idxprom7_relu127_vt_select_31_b;
    wire [63:0] i_idxprom_relu132_vt_join_q;
    wire [31:0] i_idxprom_relu132_vt_select_31_b;
    wire [32:0] i_inc_relu120_a;
    wire [32:0] i_inc_relu120_b;
    logic [32:0] i_inc_relu120_o;
    wire [32:0] i_inc_relu120_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_relu154_out_lsu_memdep_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_relu154_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_relu154_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_relu154_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_relu15_relu148_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_relu15_relu148_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_relu15_relu148_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu13_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu13_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu13_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu13_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu13_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu13_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu13_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu13_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_out_feedback_stall_out_25;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_out_feedback_stall_out_32;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_out_feedback_stall_out_30;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop24_relu12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop24_relu12_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop24_relu12_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop24_relu12_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop23_relu14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop23_relu14_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop23_relu14_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop23_relu14_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_j_017_pop21_relu15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_017_pop21_relu15_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i32_j_017_pop21_relu15_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_017_pop21_relu15_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_valid_out;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond535_push29_relu124_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i1_exitcond535_push29_relu124_out_feedback_valid_out_29;
    wire [0:0] i_llvm_fpga_push_i1_exitcond535_push29_relu124_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond535_push29_relu124_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond828_push25_relu129_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i1_exitcond828_push25_relu129_out_feedback_valid_out_25;
    wire [0:0] i_llvm_fpga_push_i1_exitcond828_push25_relu129_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond828_push25_relu129_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_relu145_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_relu145_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_relu145_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_relu145_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_out_feedback_valid_out_32;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_out_feedback_valid_out_28;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_relu155_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_relu155_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_relu155_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_relu155_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1136_push30_relu125_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1136_push30_relu125_out_feedback_valid_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1136_push30_relu125_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1136_push30_relu125_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1630_push26_relu130_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1630_push26_relu130_out_feedback_valid_out_26;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1630_push26_relu130_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1630_push26_relu130_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_relu140_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_relu140_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_relu140_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_relu140_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push24_relu153_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push24_relu153_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push24_relu153_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push24_relu153_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push23_relu136_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push23_relu136_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push23_relu136_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push23_relu136_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_j_017_push21_relu138_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_j_017_push21_relu138_out_feedback_valid_out_21;
    wire [0:0] i_llvm_fpga_push_i32_j_017_push21_relu138_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_j_017_push21_relu138_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_out_valid_out;
    wire [0:0] i_masked_relu147_qi;
    reg [0:0] i_masked_relu147_q;
    wire [0:0] i_next_cleanups_relu149_s;
    reg [1:0] i_next_cleanups_relu149_q;
    wire [1:0] i_next_initerations_relu118_vt_join_q;
    wire [0:0] i_next_initerations_relu118_vt_select_0_b;
    wire [0:0] i_notcmp_relu139_q;
    wire [0:0] i_or_relu146_q;
    wire [0:0] i_reduction_relu1_0_relu134_qi;
    reg [0:0] i_reduction_relu1_0_relu134_q;
    wire [0:0] i_reduction_relu1_1_relu144_q;
    wire [35:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_align_0_qint;
    wire [42:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_align_2_q;
    wire [42:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_align_3_qint;
    wire [35:0] i_arrayidx10_relu10_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx10_relu10_mult_x_sums_align_0_qint;
    wire [47:0] i_arrayidx10_relu10_mult_x_sums_align_2_q;
    wire [47:0] i_arrayidx10_relu10_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx10_relu10_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx10_relu10_mult_x_sums_align_3_qint;
    wire [35:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_align_0_qint;
    wire [42:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_align_2_q;
    wire [42:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_align_3_qint;
    wire [35:0] i_arrayidx23_relu10_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx23_relu10_mult_x_sums_align_0_qint;
    wire [47:0] i_arrayidx23_relu10_mult_x_sums_align_2_q;
    wire [47:0] i_arrayidx23_relu10_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx23_relu10_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx23_relu10_mult_x_sums_align_3_qint;
    wire [0:0] leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl_relu10_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl_relu10_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid320_i_cleanups_shl_relu10_shift_x_q;
    wire [0:0] leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_s;
    reg [1:0] leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid326_i_next_initerations_relu10_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid328_i_next_initerations_relu10_shift_x_q;
    wire [0:0] rightShiftStage0_uid330_i_next_initerations_relu10_shift_x_s;
    reg [1:0] rightShiftStage0_uid330_i_next_initerations_relu10_shift_x_q;
    wire [0:0] i_exitcond_relu121_cmp_nsign_q;
    wire [18:0] xIfSign_mergedSignalTM_uid359_i_arrayidx10_relu10_dupName_0_mult_x_im0_q;
    wire [2:0] padACst_uid363_i_arrayidx10_relu10_dupName_0_mult_x_im0_q;
    wire [21:0] aPostPad_uid364_i_arrayidx10_relu10_dupName_0_mult_x_im0_q;
    wire [22:0] sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_a;
    wire [22:0] sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_b;
    logic [22:0] sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_o;
    wire [22:0] sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_q;
    wire [3:0] sR_bottomExtension_uid368_i_arrayidx10_relu10_dupName_0_mult_x_im0_q;
    wire [18:0] xIfSign_mergedSignalTM_uid422_i_arrayidx10_relu10_dupName_0_mult_x_im3_q;
    wire [21:0] aPostPad_uid427_i_arrayidx10_relu10_dupName_0_mult_x_im3_q;
    wire [22:0] sub_uid428_i_arrayidx10_relu10_dupName_0_mult_x_im3_a;
    wire [22:0] sub_uid428_i_arrayidx10_relu10_dupName_0_mult_x_im3_b;
    logic [22:0] sub_uid428_i_arrayidx10_relu10_dupName_0_mult_x_im3_o;
    wire [22:0] sub_uid428_i_arrayidx10_relu10_dupName_0_mult_x_im3_q;
    wire [20:0] sR_bottomRange_uid432_i_arrayidx10_relu10_dupName_0_mult_x_im3_in;
    wire [20:0] sR_bottomRange_uid432_i_arrayidx10_relu10_dupName_0_mult_x_im3_b;
    wire [24:0] sR_mergedSignalTM_uid433_i_arrayidx10_relu10_dupName_0_mult_x_im3_q;
    wire [18:0] xIfSign_mergedSignalTM_uid485_i_arrayidx10_relu10_dupName_0_mult_x_im6_q;
    wire [21:0] aPostPad_uid490_i_arrayidx10_relu10_dupName_0_mult_x_im6_q;
    wire [22:0] sub_uid491_i_arrayidx10_relu10_dupName_0_mult_x_im6_a;
    wire [22:0] sub_uid491_i_arrayidx10_relu10_dupName_0_mult_x_im6_b;
    logic [22:0] sub_uid491_i_arrayidx10_relu10_dupName_0_mult_x_im6_o;
    wire [22:0] sub_uid491_i_arrayidx10_relu10_dupName_0_mult_x_im6_q;
    wire [20:0] sR_bottomRange_uid495_i_arrayidx10_relu10_dupName_0_mult_x_im6_in;
    wire [20:0] sR_bottomRange_uid495_i_arrayidx10_relu10_dupName_0_mult_x_im6_b;
    wire [24:0] sR_mergedSignalTM_uid496_i_arrayidx10_relu10_dupName_0_mult_x_im6_q;
    wire [10:0] xIfSign_mergedSignalTM_uid548_i_arrayidx10_relu10_dupName_0_mult_x_im9_q;
    wire [13:0] aPostPad_uid553_i_arrayidx10_relu10_dupName_0_mult_x_im9_q;
    wire [14:0] sub_uid554_i_arrayidx10_relu10_dupName_0_mult_x_im9_a;
    wire [14:0] sub_uid554_i_arrayidx10_relu10_dupName_0_mult_x_im9_b;
    logic [14:0] sub_uid554_i_arrayidx10_relu10_dupName_0_mult_x_im9_o;
    wire [14:0] sub_uid554_i_arrayidx10_relu10_dupName_0_mult_x_im9_q;
    wire [12:0] sR_bottomRange_uid558_i_arrayidx10_relu10_dupName_0_mult_x_im9_in;
    wire [12:0] sR_bottomRange_uid558_i_arrayidx10_relu10_dupName_0_mult_x_im9_b;
    wire [16:0] sR_mergedSignalTM_uid559_i_arrayidx10_relu10_dupName_0_mult_x_im9_q;
    wire [0:0] lowRangeB_uid582_i_arrayidx10_relu10_mult_x_im0_in;
    wire [0:0] lowRangeB_uid582_i_arrayidx10_relu10_mult_x_im0_b;
    wire [16:0] highBBits_uid583_i_arrayidx10_relu10_mult_x_im0_b;
    wire [18:0] addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_a;
    wire [18:0] addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_b;
    logic [18:0] addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_o;
    wire [18:0] addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_q;
    wire [19:0] add_uid585_i_arrayidx10_relu10_mult_x_im0_q;
    wire [13:0] highBBits_uid588_i_arrayidx10_relu10_mult_x_im0_b;
    wire [20:0] a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_a;
    wire [20:0] a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_b;
    logic [20:0] a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_o;
    wire [20:0] a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_q;
    wire [5:0] sR_bottomExtension_uid593_i_arrayidx10_relu10_mult_x_im0_q;
    wire [0:0] lowRangeB_uid651_i_arrayidx10_relu10_mult_x_im3_in;
    wire [0:0] lowRangeB_uid651_i_arrayidx10_relu10_mult_x_im3_b;
    wire [16:0] highBBits_uid652_i_arrayidx10_relu10_mult_x_im3_b;
    wire [18:0] addsumAHighB_uid653_i_arrayidx10_relu10_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid653_i_arrayidx10_relu10_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid653_i_arrayidx10_relu10_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid653_i_arrayidx10_relu10_mult_x_im3_q;
    wire [19:0] add_uid654_i_arrayidx10_relu10_mult_x_im3_q;
    wire [3:0] lowRangeB_uid656_i_arrayidx10_relu10_mult_x_im3_in;
    wire [3:0] lowRangeB_uid656_i_arrayidx10_relu10_mult_x_im3_b;
    wire [13:0] highBBits_uid657_i_arrayidx10_relu10_mult_x_im3_b;
    wire [20:0] a_subconst_49_sumAHighB_uid658_i_arrayidx10_relu10_mult_x_im3_a;
    wire [20:0] a_subconst_49_sumAHighB_uid658_i_arrayidx10_relu10_mult_x_im3_b;
    logic [20:0] a_subconst_49_sumAHighB_uid658_i_arrayidx10_relu10_mult_x_im3_o;
    wire [20:0] a_subconst_49_sumAHighB_uid658_i_arrayidx10_relu10_mult_x_im3_q;
    wire [24:0] a_subconst_49_uid659_i_arrayidx10_relu10_mult_x_im3_q;
    wire [23:0] sR_bottomRange_uid663_i_arrayidx10_relu10_mult_x_im3_in;
    wire [23:0] sR_bottomRange_uid663_i_arrayidx10_relu10_mult_x_im3_b;
    wire [29:0] sR_mergedSignalTM_uid664_i_arrayidx10_relu10_mult_x_im3_q;
    wire [0:0] lowRangeB_uid720_i_arrayidx10_relu10_mult_x_im6_in;
    wire [0:0] lowRangeB_uid720_i_arrayidx10_relu10_mult_x_im6_b;
    wire [16:0] highBBits_uid721_i_arrayidx10_relu10_mult_x_im6_b;
    wire [18:0] addsumAHighB_uid722_i_arrayidx10_relu10_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid722_i_arrayidx10_relu10_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid722_i_arrayidx10_relu10_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid722_i_arrayidx10_relu10_mult_x_im6_q;
    wire [19:0] add_uid723_i_arrayidx10_relu10_mult_x_im6_q;
    wire [3:0] lowRangeB_uid725_i_arrayidx10_relu10_mult_x_im6_in;
    wire [3:0] lowRangeB_uid725_i_arrayidx10_relu10_mult_x_im6_b;
    wire [13:0] highBBits_uid726_i_arrayidx10_relu10_mult_x_im6_b;
    wire [20:0] a_subconst_49_sumAHighB_uid727_i_arrayidx10_relu10_mult_x_im6_a;
    wire [20:0] a_subconst_49_sumAHighB_uid727_i_arrayidx10_relu10_mult_x_im6_b;
    logic [20:0] a_subconst_49_sumAHighB_uid727_i_arrayidx10_relu10_mult_x_im6_o;
    wire [20:0] a_subconst_49_sumAHighB_uid727_i_arrayidx10_relu10_mult_x_im6_q;
    wire [24:0] a_subconst_49_uid728_i_arrayidx10_relu10_mult_x_im6_q;
    wire [23:0] sR_bottomRange_uid732_i_arrayidx10_relu10_mult_x_im6_in;
    wire [23:0] sR_bottomRange_uid732_i_arrayidx10_relu10_mult_x_im6_b;
    wire [29:0] sR_mergedSignalTM_uid733_i_arrayidx10_relu10_mult_x_im6_q;
    wire [0:0] lowRangeB_uid789_i_arrayidx10_relu10_mult_x_im9_in;
    wire [0:0] lowRangeB_uid789_i_arrayidx10_relu10_mult_x_im9_b;
    wire [8:0] highBBits_uid790_i_arrayidx10_relu10_mult_x_im9_b;
    wire [10:0] addsumAHighB_uid791_i_arrayidx10_relu10_mult_x_im9_a;
    wire [10:0] addsumAHighB_uid791_i_arrayidx10_relu10_mult_x_im9_b;
    logic [10:0] addsumAHighB_uid791_i_arrayidx10_relu10_mult_x_im9_o;
    wire [10:0] addsumAHighB_uid791_i_arrayidx10_relu10_mult_x_im9_q;
    wire [11:0] add_uid792_i_arrayidx10_relu10_mult_x_im9_q;
    wire [3:0] lowRangeB_uid794_i_arrayidx10_relu10_mult_x_im9_in;
    wire [3:0] lowRangeB_uid794_i_arrayidx10_relu10_mult_x_im9_b;
    wire [5:0] highBBits_uid795_i_arrayidx10_relu10_mult_x_im9_b;
    wire [12:0] a_subconst_49_sumAHighB_uid796_i_arrayidx10_relu10_mult_x_im9_a;
    wire [12:0] a_subconst_49_sumAHighB_uid796_i_arrayidx10_relu10_mult_x_im9_b;
    logic [12:0] a_subconst_49_sumAHighB_uid796_i_arrayidx10_relu10_mult_x_im9_o;
    wire [12:0] a_subconst_49_sumAHighB_uid796_i_arrayidx10_relu10_mult_x_im9_q;
    wire [16:0] a_subconst_49_uid797_i_arrayidx10_relu10_mult_x_im9_q;
    wire [15:0] sR_bottomRange_uid801_i_arrayidx10_relu10_mult_x_im9_in;
    wire [15:0] sR_bottomRange_uid801_i_arrayidx10_relu10_mult_x_im9_b;
    wire [21:0] sR_mergedSignalTM_uid802_i_arrayidx10_relu10_mult_x_im9_q;
    wire [52:0] i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx10_relu10_dupName_1_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx10_relu10_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx10_relu10_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx10_relu10_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx10_relu10_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx10_relu10_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx10_relu10_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx10_relu10_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx10_relu10_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx10_relu10_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx10_relu10_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx23_relu10_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx23_relu10_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx23_relu10_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx23_relu10_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx23_relu10_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx23_relu10_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx23_relu10_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx23_relu10_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx23_relu10_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx23_relu10_add_x_p2_of_2_q;
    wire [10:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q;
    wire [52:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [21:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [21:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [21:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [19:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [52:0] i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [26:0] i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [26:0] i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [26:0] i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [24:0] i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [52:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [21:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [21:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [21:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [19:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [52:0] i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [26:0] i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [26:0] i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [26:0] i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [24:0] i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [11:0] i_arrayidx10_relu10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx10_relu10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx10_relu10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx10_relu10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [17:0] i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_tessel0_2_b;
    wire [51:0] i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [11:0] i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [12:0] i_arrayidx10_relu10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx10_relu10_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx10_relu10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx23_relu10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx23_relu10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx23_relu10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx23_relu10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx23_relu10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx23_relu10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [12:0] i_arrayidx23_relu10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx23_relu10_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx23_relu10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [20:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b;
    wire [51:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [19:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [19:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    wire [3:0] i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b;
    wire [19:0] i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b;
    wire [51:0] i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [24:0] i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [24:0] i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    wire [51:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [19:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [19:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    wire [51:0] i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [24:0] i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [24:0] i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    wire [17:0] i_arrayidx10_relu10_dupName_0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx10_relu10_dupName_0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx10_relu10_dupName_0_mult_x_bs1_merged_bit_select_d;
    wire [9:0] i_arrayidx10_relu10_dupName_0_mult_x_bs1_merged_bit_select_e;
    wire [17:0] i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_d;
    wire [9:0] i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_e;
    wire [51:0] i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [51:0] i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [26:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_b;
    wire [8:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c;
    wire [8:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [18:0] i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    wire [21:0] i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b;
    wire [13:0] i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c;
    wire [3:0] i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [23:0] i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    wire [26:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_b;
    wire [8:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c;
    wire [8:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [18:0] i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    wire [21:0] i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b;
    wire [13:0] i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c;
    wire [3:0] i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [23:0] i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    wire [2:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
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
    reg [23:0] redist0_i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q;
    reg [13:0] redist1_i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q;
    reg [18:0] redist2_i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q;
    reg [8:0] redist3_i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c_1_0_q;
    reg [23:0] redist4_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q;
    reg [13:0] redist5_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q;
    reg [18:0] redist6_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q;
    reg [8:0] redist7_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c_1_0_q;
    reg [11:0] redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [11:0] redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [51:0] redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_q;
    reg [51:0] redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_q;
    reg [15:0] redist15_sR_bottomRange_uid801_i_arrayidx10_relu10_mult_x_im9_b_1_0_q;
    reg [23:0] redist16_sR_bottomRange_uid732_i_arrayidx10_relu10_mult_x_im6_b_1_0_q;
    reg [23:0] redist17_sR_bottomRange_uid663_i_arrayidx10_relu10_mult_x_im3_b_1_0_q;
    reg [13:0] redist18_highBBits_uid588_i_arrayidx10_relu10_mult_x_im0_b_1_0_q;
    reg [0:0] redist19_lowRangeB_uid582_i_arrayidx10_relu10_mult_x_im0_b_1_0_q;
    reg [12:0] redist20_sR_bottomRange_uid558_i_arrayidx10_relu10_dupName_0_mult_x_im9_b_1_0_q;
    reg [20:0] redist21_sR_bottomRange_uid495_i_arrayidx10_relu10_dupName_0_mult_x_im6_b_1_0_q;
    reg [20:0] redist22_sR_bottomRange_uid432_i_arrayidx10_relu10_dupName_0_mult_x_im3_b_1_0_q;
    reg [0:0] redist23_i_reduction_relu1_0_relu134_q_2_0_q;
    wire [0:0] redist24_i_masked_relu147_q_69_fifo_valid_in;
    wire redist24_i_masked_relu147_q_69_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist24_i_masked_relu147_q_69_fifo_stall_in;
    wire redist24_i_masked_relu147_q_69_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist24_i_masked_relu147_q_69_fifo_data_in;
    wire [0:0] redist24_i_masked_relu147_q_69_fifo_valid_out;
    wire redist24_i_masked_relu147_q_69_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist24_i_masked_relu147_q_69_fifo_stall_out;
    wire redist24_i_masked_relu147_q_69_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist24_i_masked_relu147_q_69_fifo_data_out;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_valid_in;
    wire redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_stall_in;
    wire redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_data_in;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_valid_out;
    wire redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_stall_out;
    wire redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_data_out;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_66_0_q;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_66_1_q;
    reg [31:0] redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_0_q;
    reg [31:0] redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_1_q;
    reg [31:0] redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_q;
    wire [0:0] redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_valid_in;
    wire redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_stall_in;
    wire redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_data_in;
    wire [0:0] redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_valid_out;
    wire redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_stall_out;
    wire redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_data_out;
    reg [31:0] redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_69_0_q;
    reg [31:0] redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_69_1_q;
    reg [31:0] redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_69_2_q;
    reg [0:0] redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_q;
    reg [0:0] redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_q;
    wire [0:0] redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_valid_in;
    wire redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_stall_in;
    wire redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_data_in;
    wire [0:0] redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_valid_out;
    wire redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_stall_out;
    wire redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_data_out;
    reg [0:0] redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_q;
    reg [0:0] redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_q;
    reg [0:0] redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q;
    reg [0:0] redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q;
    wire [0:0] redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_in;
    wire redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_in;
    wire redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_data_in;
    wire [0:0] redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_out;
    wire redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_out;
    wire redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_data_out;
    reg [0:0] redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_q;
    reg [0:0] redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [2:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [2:0] coalesced_delay_0_fifo_data_out;
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
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_body6_relu1s_c0_enter8412_relu151_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_relu1s_c0_enter8412_relu151_aunroll_x_b;
    wire [70:0] bubble_join_relu1_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_relu1_B4_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_relu1_B4_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_relu1_B4_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_relu1_B4_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_relu1_B4_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_relu1_B4_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_relu1_B4_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_relu1_B4_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_relu1_B4_merge_reg_aunroll_x_j;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_relu154_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_relu154_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_relu15_relu148_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_relu15_relu148_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_relu13_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_relu13_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_initerations_pop23_relu14_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_relu14_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_j_017_pop21_relu15_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_j_017_pop21_relu15_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_b;
    wire [5:0] bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_q;
    wire [5:0] bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_b;
    wire [70:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_join_redist24_i_masked_relu147_q_69_fifo_q;
    wire [0:0] bubble_select_redist24_i_masked_relu147_q_69_fifo_b;
    wire [31:0] bubble_join_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_q;
    wire [31:0] bubble_select_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_b;
    wire [31:0] bubble_join_redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_q;
    wire [31:0] bubble_select_redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_b;
    wire [0:0] bubble_join_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_q;
    wire [0:0] bubble_select_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_b;
    wire [0:0] bubble_join_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_q;
    wire [0:0] bubble_select_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_b;
    wire [2:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [2:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [3:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [3:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [64:0] bubble_join_coalesced_delay_3_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_3_fifo_b;
    wire [0:0] SE_bgTrunc_i_inc_relu120_sel_x_wireValid;
    wire [0:0] SE_bgTrunc_i_inc_relu120_sel_x_and0;
    wire [0:0] SE_bgTrunc_i_inc_relu120_sel_x_backStall;
    wire [0:0] SE_bgTrunc_i_inc_relu120_sel_x_V0;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_relu1_B4_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu154_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu154_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu154_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu154_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_relu154_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu154_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu154_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_relu154_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu154_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu154_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu154_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu154_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu154_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_relu15_relu148_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_relu15_relu148_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_relu15_relu148_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg6;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_or4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_or5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_and2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_and3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_V3;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond535_push29_relu124_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond535_push29_relu124_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond828_push25_relu129_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond828_push25_relu129_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_relu145_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_relu145_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_or0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_relu140_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_relu140_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push24_relu153_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push24_relu153_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push23_relu136_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push23_relu136_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_017_push21_relu138_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_017_push21_relu138_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_backStall;
    reg [0:0] SE_i_masked_relu147_R_v_0;
    wire [0:0] SE_i_masked_relu147_v_s_0;
    wire [0:0] SE_i_masked_relu147_s_tv_0;
    wire [0:0] SE_i_masked_relu147_backEN;
    wire [0:0] SE_i_masked_relu147_backStall;
    wire [0:0] SE_i_masked_relu147_V0;
    wire [0:0] SE_i_next_initerations_relu118_vt_select_0_wireValid;
    wire [0:0] SE_i_next_initerations_relu118_vt_select_0_wireStall;
    wire [0:0] SE_i_next_initerations_relu118_vt_select_0_StallValid;
    wire [0:0] SE_i_next_initerations_relu118_vt_select_0_toReg0;
    reg [0:0] SE_i_next_initerations_relu118_vt_select_0_fromReg0;
    wire [0:0] SE_i_next_initerations_relu118_vt_select_0_consumed0;
    wire [0:0] SE_i_next_initerations_relu118_vt_select_0_toReg1;
    reg [0:0] SE_i_next_initerations_relu118_vt_select_0_fromReg1;
    wire [0:0] SE_i_next_initerations_relu118_vt_select_0_consumed1;
    wire [0:0] SE_i_next_initerations_relu118_vt_select_0_or0;
    wire [0:0] SE_i_next_initerations_relu118_vt_select_0_backStall;
    wire [0:0] SE_i_next_initerations_relu118_vt_select_0_V0;
    wire [0:0] SE_i_next_initerations_relu118_vt_select_0_V1;
    reg [0:0] SE_i_reduction_relu1_0_relu134_R_v_0;
    wire [0:0] SE_i_reduction_relu1_0_relu134_v_s_0;
    wire [0:0] SE_i_reduction_relu1_0_relu134_s_tv_0;
    wire [0:0] SE_i_reduction_relu1_0_relu134_backEN;
    wire [0:0] SE_i_reduction_relu1_0_relu134_and0;
    wire [0:0] SE_i_reduction_relu1_0_relu134_backStall;
    wire [0:0] SE_i_reduction_relu1_0_relu134_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_wireValid;
    wire [0:0] SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_backStall;
    wire [0:0] SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_V0;
    reg [0:0] SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_R_v_0;
    wire [0:0] SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_v_s_0;
    wire [0:0] SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_s_tv_0;
    wire [0:0] SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_backEN;
    wire [0:0] SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_backStall;
    wire [0:0] SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_V0;
    reg [0:0] SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_R_v_0;
    wire [0:0] SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_v_s_0;
    wire [0:0] SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_s_tv_0;
    wire [0:0] SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_backEN;
    wire [0:0] SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_backStall;
    wire [0:0] SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_V0;
    reg [0:0] SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_R_v_0;
    wire [0:0] SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_v_s_0;
    wire [0:0] SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_s_tv_0;
    wire [0:0] SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_backEN;
    wire [0:0] SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_backStall;
    wire [0:0] SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_V0;
    reg [0:0] SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx10_relu10_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_relu10_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx10_relu10_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_relu10_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_relu10_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_relu10_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_relu10_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_relu10_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_relu10_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_relu10_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx10_relu10_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx10_relu10_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_relu10_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_relu10_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_relu10_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_relu10_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_and1;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_arrayidx23_relu10_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx23_relu10_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx23_relu10_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx23_relu10_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx23_relu10_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx23_relu10_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx23_relu10_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx23_relu10_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx23_relu10_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx23_relu10_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx23_relu10_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx23_relu10_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx23_relu10_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx23_relu10_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx23_relu10_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx23_relu10_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    reg [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or1;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V1;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V2;
    reg [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    reg [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or1;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V1;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V2;
    reg [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    reg [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_or1;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_V1;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_V2;
    reg [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    reg [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_or0;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_or1;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_V1;
    wire [0:0] SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_V2;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_tessel1_0_V0;
    wire [0:0] SE_i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_tessel1_0_V1;
    reg [0:0] SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist23_i_reduction_relu1_0_relu134_q_2_0_R_v_0;
    wire [0:0] SE_redist23_i_reduction_relu1_0_relu134_q_2_0_v_s_0;
    wire [0:0] SE_redist23_i_reduction_relu1_0_relu134_q_2_0_s_tv_0;
    wire [0:0] SE_redist23_i_reduction_relu1_0_relu134_q_2_0_backEN;
    wire [0:0] SE_redist23_i_reduction_relu1_0_relu134_q_2_0_backStall;
    wire [0:0] SE_redist23_i_reduction_relu1_0_relu134_q_2_0_V0;
    wire [0:0] SE_in_redist24_i_masked_relu147_q_69_fifo_wireValid;
    wire [0:0] SE_in_redist24_i_masked_relu147_q_69_fifo_backStall;
    wire [0:0] SE_in_redist24_i_masked_relu147_q_69_fifo_V0;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_wireValid;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_backStall;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_V0;
    reg [0:0] SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_R_v_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_v_s_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_s_tv_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_backEN;
    wire [0:0] SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_backStall;
    wire [0:0] SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_V0;
    wire [0:0] SE_out_redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_wireValid;
    wire [0:0] SE_out_redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_backStall;
    wire [0:0] SE_out_redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_V0;
    reg [0:0] SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_R_v_0;
    wire [0:0] SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_v_s_0;
    wire [0:0] SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_s_tv_0;
    wire [0:0] SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_backEN;
    wire [0:0] SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_backStall;
    wire [0:0] SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_V0;
    reg [0:0] SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_0;
    reg [0:0] SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_1;
    reg [0:0] SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_2;
    wire [0:0] SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_v_s_0;
    wire [0:0] SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_s_tv_0;
    wire [0:0] SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_s_tv_1;
    wire [0:0] SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_s_tv_2;
    wire [0:0] SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_backEN;
    wire [0:0] SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_or0;
    wire [0:0] SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_or1;
    wire [0:0] SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_backStall;
    wire [0:0] SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_V0;
    wire [0:0] SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_V1;
    wire [0:0] SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_V2;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_wireValid;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_wireStall;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_StallValid;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_toReg0;
    reg [0:0] SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_fromReg0;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_consumed0;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_toReg1;
    reg [0:0] SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_fromReg1;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_consumed1;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_or0;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_backStall;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_V0;
    wire [0:0] SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_V1;
    reg [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_R_v_0;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_v_s_0;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_s_tv_0;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_backEN;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_backStall;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_V0;
    reg [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_0;
    reg [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_1;
    reg [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_2;
    reg [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_3;
    reg [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_4;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_v_s_0;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_s_tv_0;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_s_tv_1;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_s_tv_2;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_s_tv_3;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_s_tv_4;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_backEN;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_or0;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_or1;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_or2;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_or3;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_backStall;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_V0;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_V1;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_V2;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_V3;
    wire [0:0] SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_V4;
    reg [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0;
    wire [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_v_s_0;
    wire [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_0;
    wire [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN;
    wire [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall;
    wire [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V0;
    reg [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0;
    reg [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1;
    reg [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2;
    reg [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_3;
    wire [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_v_s_0;
    wire [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_0;
    wire [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_1;
    wire [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_2;
    wire [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_3;
    wire [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN;
    wire [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or0;
    wire [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or1;
    wire [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or2;
    wire [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall;
    wire [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V0;
    wire [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V1;
    wire [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V2;
    wire [0:0] SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V3;
    wire [0:0] SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_wireValid;
    wire [0:0] SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_wireStall;
    wire [0:0] SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_StallValid;
    wire [0:0] SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_toReg0;
    reg [0:0] SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_fromReg0;
    wire [0:0] SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_consumed0;
    wire [0:0] SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_toReg1;
    reg [0:0] SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_fromReg1;
    wire [0:0] SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_consumed1;
    wire [0:0] SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_or0;
    wire [0:0] SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_backStall;
    wire [0:0] SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_V0;
    wire [0:0] SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_V1;
    reg [0:0] SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_R_v_0;
    wire [0:0] SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_v_s_0;
    wire [0:0] SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_s_tv_0;
    wire [0:0] SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backEN;
    wire [0:0] SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backStall;
    wire [0:0] SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_V0;
    reg [0:0] SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_R_v_0;
    wire [0:0] SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_v_s_0;
    wire [0:0] SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_s_tv_0;
    wire [0:0] SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backEN;
    wire [0:0] SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backStall;
    wire [0:0] SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg2;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg3;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg4;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg4;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed4;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V4;
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
    wire [0:0] SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and7;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_V0;
    wire [0:0] bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_i_valid;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_valid;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data0;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data1;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data2;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data3;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data4;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data5;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data6;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_V;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D0;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D1;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D2;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D3;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D4;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D5;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D6;
    wire [0:0] SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_i_valid;
    reg [0:0] SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid;
    reg [0:0] SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_data0;
    wire [0:0] SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall;
    wire [0:0] SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V;
    wire [0:0] SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_D0;
    wire [0:0] SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_i_valid;
    reg [0:0] SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid;
    reg [0:0] SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_data0;
    wire [0:0] SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall;
    wire [0:0] SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V;
    wire [0:0] SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_D0;
    wire [0:0] SR_SE_i_masked_relu147_i_valid;
    reg [0:0] SR_SE_i_masked_relu147_r_valid;
    wire [0:0] SR_SE_i_masked_relu147_and0;
    reg [0:0] SR_SE_i_masked_relu147_r_data0;
    reg [0:0] SR_SE_i_masked_relu147_r_data1;
    wire [0:0] SR_SE_i_masked_relu147_backStall;
    wire [0:0] SR_SE_i_masked_relu147_V;
    wire [0:0] SR_SE_i_masked_relu147_D0;
    wire [0:0] SR_SE_i_masked_relu147_D1;
    wire [0:0] SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_i_valid;
    reg [0:0] SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_valid;
    reg [0:0] SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_data0;
    wire [0:0] SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backStall;
    wire [0:0] SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_V;
    wire [0:0] SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_D0;
    wire [0:0] SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_i_valid;
    reg [0:0] SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_valid;
    reg [0:0] SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_data0;
    wire [0:0] SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backStall;
    wire [0:0] SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_V;
    wire [0:0] SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_D0;
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
    wire [0:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_valid;
    reg [51:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data1;
    reg [51:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data2;
    reg [51:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data3;
    reg [23:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data4;
    reg [23:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data5;
    reg [13:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data6;
    reg [13:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data7;
    reg [31:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data8;
    wire [0:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D1;
    wire [51:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D2;
    wire [51:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D3;
    wire [23:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D4;
    wire [23:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D5;
    wire [13:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D6;
    wire [13:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D7;
    wire [31:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D8;
    wire [0:0] SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid;
    reg [51:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data1;
    reg [51:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data2;
    reg [51:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data3;
    reg [18:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data4;
    reg [18:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data5;
    reg [8:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data6;
    reg [8:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data7;
    reg [31:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data8;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D1;
    wire [51:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D2;
    wire [51:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D3;
    wire [18:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D4;
    wire [18:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D5;
    wire [8:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D6;
    wire [8:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D7;
    wire [31:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D8;
    wire [0:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_valid;
    reg [24:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data0;
    reg [24:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data2;
    reg [24:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data3;
    reg [24:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data4;
    reg [0:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data5;
    reg [31:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data6;
    wire [0:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_V;
    wire [24:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D0;
    wire [24:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D2;
    wire [24:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D3;
    wire [24:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D4;
    wire [0:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D5;
    wire [31:0] SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D6;
    wire [0:0] SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid;
    reg [19:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data0;
    reg [19:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data2;
    reg [19:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data3;
    reg [19:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data4;
    reg [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data5;
    reg [31:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data6;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V;
    wire [19:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D0;
    wire [19:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D2;
    wire [19:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D3;
    wire [19:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D4;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D5;
    wire [31:0] SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D6;
    wire [0:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_i_valid;
    reg [0:0] SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_r_valid;
    reg [0:0] SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_r_data0;
    wire [0:0] SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_backStall;
    wire [0:0] SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_V;
    wire [0:0] SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_D0;
    wire [0:0] SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_i_valid;
    reg [0:0] SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_r_valid;
    reg [0:0] SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_r_data0;
    wire [0:0] SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_backStall;
    wire [0:0] SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_V;
    wire [0:0] SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_D0;
    wire [0:0] SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_i_valid;
    reg [0:0] SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_r_valid;
    reg [0:0] SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_r_data0;
    wire [0:0] SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_backStall;
    wire [0:0] SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_V;
    wire [0:0] SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_D0;
    wire [0:0] SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_i_valid;
    reg [0:0] SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_r_valid;
    reg [0:0] SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_r_data0;
    wire [0:0] SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_backStall;
    wire [0:0] SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_V;
    wire [0:0] SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_D0;
    wire [0:0] SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_i_valid;
    reg [0:0] SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_r_valid;
    reg [0:0] SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_r_data0;
    wire [0:0] SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_backStall;
    wire [0:0] SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_V;
    wire [0:0] SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_D1;
    wire [0:0] SR_SE_i_next_initerations_relu118_vt_select_0_i_valid;
    reg [0:0] SR_SE_i_next_initerations_relu118_vt_select_0_r_valid;
    wire [0:0] SR_SE_i_next_initerations_relu118_vt_select_0_and0;
    reg [0:0] SR_SE_i_next_initerations_relu118_vt_select_0_r_data0;
    reg [0:0] SR_SE_i_next_initerations_relu118_vt_select_0_r_data1;
    reg [0:0] SR_SE_i_next_initerations_relu118_vt_select_0_r_data2;
    reg [1:0] SR_SE_i_next_initerations_relu118_vt_select_0_r_data3;
    wire [0:0] SR_SE_i_next_initerations_relu118_vt_select_0_backStall;
    wire [0:0] SR_SE_i_next_initerations_relu118_vt_select_0_V;
    wire [0:0] SR_SE_i_next_initerations_relu118_vt_select_0_D0;
    wire [0:0] SR_SE_i_next_initerations_relu118_vt_select_0_D1;
    wire [0:0] SR_SE_i_next_initerations_relu118_vt_select_0_D2;
    wire [1:0] SR_SE_i_next_initerations_relu118_vt_select_0_D3;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_D1;
    wire [0:0] SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_i_valid;
    reg [0:0] SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_r_valid;
    wire [0:0] SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_and0;
    wire [0:0] SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_and1;
    reg [1:0] SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_r_data0;
    reg [0:0] SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_r_data1;
    wire [0:0] SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_backStall;
    wire [0:0] SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_V;
    wire [1:0] SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_D0;
    wire [0:0] SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_and0;
    reg [31:0] SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_V;
    wire [31:0] SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_D1;
    wire [0:0] SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_i_valid;
    reg [0:0] SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_r_valid;
    reg [31:0] SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_r_data0;
    wire [0:0] SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_backStall;
    wire [0:0] SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_V;
    wire [31:0] SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_and0;
    reg [5:0] SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_V;
    wire [5:0] SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_D1;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i32_058(CONSTANT,82)
    assign c_i32_058_q = $unsigned(32'b00000000000000000000000000000000);

    // i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_tessel0_2(BITSELECT,1448)
    assign i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_tessel0_2_b = c_i32_058_q[17:0];

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115(BITJOIN,1701)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_q = i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115(BITSELECT,1702)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111(BITJOIN,1698)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_q = i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111(BITSELECT,1699)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_q[0:0]);

    // i_reduction_relu1_0_relu134(LOGICAL,151)@71 + 1
    assign i_reduction_relu1_0_relu134_qi = bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_relu1_0_relu134_delay ( .xin(i_reduction_relu1_0_relu134_qi), .xout(i_reduction_relu1_0_relu134_q), .ena(SE_i_reduction_relu1_0_relu134_backEN[0]), .clk(clock), .aclr(resetn) );

    // SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0(STALLREG,2230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_r_valid <= 1'b0;
            SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_r_valid <= SE_redist23_i_reduction_relu1_0_relu134_q_2_0_backStall & (SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_r_valid | SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_i_valid);

            if (SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_r_data0 <= i_reduction_relu1_0_relu134_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_i_valid = SE_i_reduction_relu1_0_relu134_V0;
    // Stall signal propagation
    assign SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_backStall = SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_r_valid | ~ (SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_i_valid);

    // Valid
    assign SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_V = SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_r_valid == 1'b1 ? SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_r_valid : SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_i_valid;

    assign SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_D0 = SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_r_valid == 1'b1 ? SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_r_data0 : i_reduction_relu1_0_relu134_q;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128(STALLENABLE,1826)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_wireValid = i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_out_valid_out;

    // bubble_join_i_llvm_fpga_pipeline_keep_going_relu13(BITJOIN,1686)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_relu13_q = i_llvm_fpga_pipeline_keep_going_relu13_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_relu13(BITSELECT,1687)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_relu13_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_relu13_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128(BLACKBOX,132)@71
    // in in_stall_in@20000000
    // out out_data_out@72
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    // out out_stall_out@20000000
    // out out_valid_out@72
    relu1_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_0 thei_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_b),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_out_feedback_stall_out_32),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_relu13_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_V0),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_out_feedback_valid_out_32),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0(REG,1650)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_backEN == 1'b1)
        begin
            redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_q <= $unsigned(SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_D0);
        end
    end

    // redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1(REG,1651)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_backEN == 1'b1)
        begin
            redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_q <= $unsigned(SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_D0);
        end
    end

    // bubble_join_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo(BITJOIN,1748)
    assign bubble_join_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_q = redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_data_out;

    // bubble_select_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo(BITSELECT,1749)
    assign bubble_select_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_b = $unsigned(bubble_join_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_q[0:0]);

    // redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0(REG,1653)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_backEN == 1'b1)
        begin
            redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_q <= $unsigned(SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_D0);
        end
    end

    // redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1(REG,1654)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_backEN == 1'b1)
        begin
            redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_q <= $unsigned(SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_D0);
        end
    end

    // bubble_join_i_llvm_fpga_mem_unnamed_relu15_relu148(BITJOIN,1683)
    assign bubble_join_i_llvm_fpga_mem_unnamed_relu15_relu148_q = i_llvm_fpga_mem_unnamed_relu15_relu148_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_relu15_relu148(BITSELECT,1684)
    assign bubble_select_i_llvm_fpga_mem_unnamed_relu15_relu148_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_relu15_relu148_q[31:0]);

    // i_sfc_s_c0_in_for_body6_relu1s_c0_enter8412_relu151_aunroll_x(BLACKBOX,75)@105
    // in in_i_stall@20000000
    // out out_c0_exit87_0_tpl@111
    // out out_c0_exit87_1_tpl@111
    // out out_o_stall@20000000
    // out out_o_valid@111
    relu1_i_sfc_s_c0_in_for_body6_s_c0_enter8412_relu151 thei_sfc_s_c0_in_for_body6_relu1s_c0_enter8412_relu151_aunroll_x (
        .in_c0_eni183_0_tpl(GND_q),
        .in_c0_eni183_1_tpl(bubble_select_i_llvm_fpga_mem_unnamed_relu15_relu148_b),
        .in_i_stall(SE_out_coalesced_delay_3_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_relu15_relu148_V0),
        .out_c0_exit87_0_tpl(),
        .out_c0_exit87_1_tpl(i_sfc_s_c0_in_for_body6_relu1s_c0_enter8412_relu151_aunroll_x_out_c0_exit87_1_tpl),
        .out_o_stall(i_sfc_s_c0_in_for_body6_relu1s_c0_enter8412_relu151_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body6_relu1s_c0_enter8412_relu151_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_for_body6_relu1s_c0_enter8412_relu151_aunroll_x(BITJOIN,1665)
    assign bubble_join_i_sfc_s_c0_in_for_body6_relu1s_c0_enter8412_relu151_aunroll_x_q = i_sfc_s_c0_in_for_body6_relu1s_c0_enter8412_relu151_aunroll_x_out_c0_exit87_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_body6_relu1s_c0_enter8412_relu151_aunroll_x(BITSELECT,1666)
    assign bubble_select_i_sfc_s_c0_in_for_body6_relu1s_c0_enter8412_relu151_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_relu1s_c0_enter8412_relu151_aunroll_x_q[31:0]);

    // bubble_join_coalesced_delay_3_fifo(BITJOIN,1760)
    assign bubble_join_coalesced_delay_3_fifo_q = coalesced_delay_3_fifo_data_out;

    // bubble_select_coalesced_delay_3_fifo(BITSELECT,1761)
    assign bubble_select_coalesced_delay_3_fifo_b = $unsigned(bubble_join_coalesced_delay_3_fifo_q[64:0]);

    // sel_for_coalesced_delay_3(BITSELECT,1617)
    assign sel_for_coalesced_delay_3_b = $unsigned(bubble_select_coalesced_delay_3_fifo_b[63:0]);
    assign sel_for_coalesced_delay_3_c = $unsigned(bubble_select_coalesced_delay_3_fifo_b[64:64]);

    // i_llvm_fpga_mem_memdep_relu154(BLACKBOX,113)@111
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_relu1_avm_address@20000000
    // out out_memdep_relu1_avm_burstcount@20000000
    // out out_memdep_relu1_avm_byteenable@20000000
    // out out_memdep_relu1_avm_enable@20000000
    // out out_memdep_relu1_avm_read@20000000
    // out out_memdep_relu1_avm_write@20000000
    // out out_memdep_relu1_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@142
    // out out_o_writeack@142
    relu1_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_relu154 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_3_b),
        .in_i_predicate(sel_for_coalesced_delay_3_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_relu154_backStall),
        .in_i_valid(SE_out_coalesced_delay_3_fifo_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_body6_relu1s_c0_enter8412_relu151_aunroll_x_b),
        .in_memdep_relu1_avm_readdata(in_memdep_relu1_avm_readdata),
        .in_memdep_relu1_avm_readdatavalid(in_memdep_relu1_avm_readdatavalid),
        .in_memdep_relu1_avm_waitrequest(in_memdep_relu1_avm_waitrequest),
        .in_memdep_relu1_avm_writeack(in_memdep_relu1_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_relu154_out_lsu_memdep_o_active),
        .out_memdep_relu1_avm_address(i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_address),
        .out_memdep_relu1_avm_burstcount(i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_burstcount),
        .out_memdep_relu1_avm_byteenable(i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_byteenable),
        .out_memdep_relu1_avm_enable(i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_enable),
        .out_memdep_relu1_avm_read(i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_read),
        .out_memdep_relu1_avm_write(i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_write),
        .out_memdep_relu1_avm_writedata(i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_relu154_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_relu154_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_relu154_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_relu154(STALLENABLE,1788)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_relu154_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_relu154_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_relu154_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_relu154_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_relu154_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_relu154_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_relu154_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_backStall) & SE_out_i_llvm_fpga_mem_memdep_relu154_wireValid) | SE_out_i_llvm_fpga_mem_memdep_relu154_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_relu154_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_backStall) & SE_out_i_llvm_fpga_mem_memdep_relu154_wireValid) | SE_out_i_llvm_fpga_mem_memdep_relu154_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_relu154_StallValid = SE_out_i_llvm_fpga_mem_memdep_relu154_backStall & SE_out_i_llvm_fpga_mem_memdep_relu154_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_relu154_toReg0 = SE_out_i_llvm_fpga_mem_memdep_relu154_StallValid & SE_out_i_llvm_fpga_mem_memdep_relu154_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_relu154_toReg1 = SE_out_i_llvm_fpga_mem_memdep_relu154_StallValid & SE_out_i_llvm_fpga_mem_memdep_relu154_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_relu154_or0 = SE_out_i_llvm_fpga_mem_memdep_relu154_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_relu154_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_relu154_consumed1 & SE_out_i_llvm_fpga_mem_memdep_relu154_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_relu154_backStall = SE_out_i_llvm_fpga_mem_memdep_relu154_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_relu154_V0 = SE_out_i_llvm_fpga_mem_memdep_relu154_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_relu154_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_relu154_V1 = SE_out_i_llvm_fpga_mem_memdep_relu154_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_relu154_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_relu154_wireValid = i_llvm_fpga_mem_memdep_relu154_out_o_valid;

    // SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112(STALLENABLE,1796)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_StallValid = SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_backStall & SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_toReg0 = SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_toReg1 = SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_or0 = SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_consumed1 & SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_or0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_backStall = SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_V0 = SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_V1 = SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_wireValid = i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18(STALLENABLE,1794)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_StallValid = SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_backStall & SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_toReg0 = SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_toReg1 = SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_or0 = SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_consumed1 & SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_or0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_backStall = SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_V0 = SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_V1 = SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_wireValid = i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_out_valid_out;

    // redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0(REG,1658)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backEN == 1'b1)
        begin
            redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_q <= $unsigned(SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_D0);
        end
    end

    // SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1(STALLENABLE,2061)
    // Valid signal propagation
    assign SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_V0 = SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_R_v_0;
    // Stall signal propagation
    assign SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_s_tv_0 = SR_SE_out_coalesced_delay_1_fifo_backStall & SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_R_v_0;
    // Backward Enable generation
    assign SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backEN = ~ (SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_v_s_0 = SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backEN & SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_V;
    // Backward Stall generation
    assign SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backStall = ~ (SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backEN == 1'b0)
            begin
                SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_R_v_0 <= SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_R_v_0 & SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_s_tv_0;
            end
            else
            begin
                SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_R_v_0 <= SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_v_s_0;
            end

        end
    end

    // SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1(STALLREG,2217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_valid <= 1'b0;
            SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_valid <= SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backStall & (SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_valid | SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_i_valid);

            if (SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_data0 <= $unsigned(redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_i_valid = SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_V0;
    // Stall signal propagation
    assign SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backStall = SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_valid | ~ (SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_i_valid);

    // Valid
    assign SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_V = SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_valid == 1'b1 ? SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_valid : SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_i_valid;

    assign SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_D0 = SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_valid == 1'b1 ? SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_data0 : redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_q;

    // SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0(STALLENABLE,2060)
    // Valid signal propagation
    assign SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_V0 = SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_R_v_0;
    // Stall signal propagation
    assign SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_s_tv_0 = SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backStall & SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_R_v_0;
    // Backward Enable generation
    assign SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backEN = ~ (SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_v_s_0 = SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backEN & SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_V;
    // Backward Stall generation
    assign SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backStall = ~ (SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backEN == 1'b0)
            begin
                SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_R_v_0 <= SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_R_v_0 & SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_s_tv_0;
            end
            else
            begin
                SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_R_v_0 <= SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_v_s_0;
            end

        end
    end

    // SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0(STALLREG,2216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_valid <= 1'b0;
            SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_valid <= SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backStall & (SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_valid | SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_i_valid);

            if (SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_data0 <= $unsigned(bubble_select_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_i_valid = SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backStall = SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_valid | ~ (SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_i_valid);

    // Valid
    assign SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_V = SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_valid == 1'b1 ? SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_valid : SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_i_valid;

    assign SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_D0 = SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_valid == 1'b1 ? SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_data0 : bubble_select_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_b;

    // redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0(REG,1655)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN == 1'b1)
        begin
            redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q <= $unsigned(SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_D0);
        end
    end

    // SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0(STALLENABLE,2056)
    // Valid signal propagation
    assign SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V0 = SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0;
    // Stall signal propagation
    assign SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_0 = SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall & SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0;
    // Backward Enable generation
    assign SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN = ~ (SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_v_s_0 = SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN & SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V;
    // Backward Stall generation
    assign SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall = ~ (SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN == 1'b0)
            begin
                SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0 <= SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0 & SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_0;
            end
            else
            begin
                SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0 <= SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_v_s_0;
            end

        end
    end

    // SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1(STALLREG,2214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid <= 1'b0;
            SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid <= SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall & (SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid | SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_i_valid);

            if (SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_data0 <= $unsigned(redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_i_valid = SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V0;
    // Stall signal propagation
    assign SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall = SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid | ~ (SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_i_valid);

    // Valid
    assign SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V = SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid == 1'b1 ? SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid : SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_i_valid;

    assign SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_D0 = SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid == 1'b1 ? SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_data0 : redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q;

    // redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1(REG,1656)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN == 1'b1)
        begin
            redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q <= $unsigned(SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_D0);
        end
    end

    // SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17(STALLENABLE,1818)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_fromReg0 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_fromReg1 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_fromReg2 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_fromReg3 <= SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_consumed2 = (~ (SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_consumed3 = (~ (SR_SE_i_masked_relu147_backStall) & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_wireValid) | SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_StallValid = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_backStall & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_wireValid;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_toReg0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_consumed0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_toReg1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_consumed1;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_toReg2 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_consumed2;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_toReg3 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_StallValid & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_or0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_consumed0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_or1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_consumed1 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_or0;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_or2 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_consumed2 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_or1;
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_wireStall = ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_consumed3 & SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_or2);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_backStall = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_V0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_V1 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_V2 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_V3 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_wireValid & ~ (SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_wireValid = i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_out_valid_out;

    // SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141(STALLENABLE,1847)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_V0 = SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_backStall = i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_wireValid = SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_V;

    // SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141(STALLENABLE,1848)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_wireValid = i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_out_valid_out;

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141(BLACKBOX,143)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    relu1_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_0 thei_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_D0),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_out_feedback_stall_out_20),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_V0),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_out_feedback_valid_out_20),
        .out_stall_out(i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_2659(CONSTANT,85)
    assign c_i6_2659_q = $unsigned(6'b011010);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17(BLACKBOX,128)@72
    // in in_stall_in@20000000
    // out out_data_out@73
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@73
    relu1_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17 (
        .in_data_in(c_i6_2659_q),
        .in_dir(redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_backStall),
        .in_valid_in(SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V2),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1(STALLENABLE,2057)
    // Valid signal propagation
    assign SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V0 = SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0;
    assign SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V1 = SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1;
    assign SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V2 = SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2;
    assign SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V3 = SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_3;
    // Stall signal propagation
    assign SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_out_stall_out & SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0;
    assign SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_1 = i_llvm_fpga_pop_i2_cleanups_pop24_relu12_out_stall_out & SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1;
    assign SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_2 = i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_out_stall_out & SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2;
    assign SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_3 = redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_out & SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_3;
    // Backward Enable generation
    assign SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or0 = SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_0;
    assign SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or1 = SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_1 | SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or0;
    assign SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or2 = SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_2 | SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or1;
    assign SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN = ~ (SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_3 | SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_v_s_0 = SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN & SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V;
    // Backward Stall generation
    assign SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall = ~ (SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0 <= 1'b0;
            SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1 <= 1'b0;
            SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2 <= 1'b0;
            SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN == 1'b0)
            begin
                SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0 <= SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0 & SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_0;
            end
            else
            begin
                SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0 <= SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_v_s_0;
            end

            if (SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN == 1'b0)
            begin
                SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1 <= SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1 & SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_1;
            end
            else
            begin
                SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1 <= SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_v_s_0;
            end

            if (SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN == 1'b0)
            begin
                SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2 <= SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2 & SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_2;
            end
            else
            begin
                SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2 <= SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_v_s_0;
            end

            if (SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN == 1'b0)
            begin
                SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_3 <= SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_3 & SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_3;
            end
            else
            begin
                SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_3 <= SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_v_s_0;
            end

        end
    end

    // redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo(STALLFIFO,1657)
    assign redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_in = SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V3;
    assign redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_in = SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_backStall;
    assign redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_data_in = redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q;
    assign redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_in_bitsignaltemp = redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_in[0];
    assign redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_in_bitsignaltemp = redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_in[0];
    assign redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_out[0] = redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_out_bitsignaltemp;
    assign redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_out[0] = redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo (
        .valid_in(redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_in_bitsignaltemp),
        .stall_in(redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_in_bitsignaltemp),
        .data_in(redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q),
        .valid_out(redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_out_bitsignaltemp),
        .stall_out(redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_out_bitsignaltemp),
        .data_out(redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo(STALLENABLE,2059)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_fromReg0 <= '0;
            SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_fromReg0 <= SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_toReg0;
            // Successor 1
            SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_fromReg1 <= SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_consumed0 = (~ (SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backStall) & SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_wireValid) | SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_fromReg0;
    assign SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_consumed1 = (~ (i_llvm_fpga_pop_i2_initerations_pop23_relu14_out_stall_out) & SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_wireValid) | SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_fromReg1;
    // Consuming
    assign SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_StallValid = SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_backStall & SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_wireValid;
    assign SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_toReg0 = SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_StallValid & SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_consumed0;
    assign SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_toReg1 = SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_StallValid & SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_or0 = SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_consumed0;
    assign SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_wireStall = ~ (SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_consumed1 & SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_or0);
    assign SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_backStall = SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_V0 = SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_wireValid & ~ (SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_fromReg0);
    assign SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_V1 = SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_wireValid & ~ (SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_wireValid = redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_out;

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_relu145(STALLENABLE,1824)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_relu145_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_relu145_wireValid = i_llvm_fpga_push_i1_lastiniteration_relu145_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration_relu145(BLACKBOX,131)@140
    // in in_stall_in@20000000
    // out out_data_out@141
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@141
    relu1_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_relu145 (
        .in_data_in(SR_SE_i_next_initerations_relu118_vt_select_0_D0),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_relu13_out_initeration_stall_out),
        .in_keep_going(SR_SE_i_next_initerations_relu118_vt_select_0_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_relu145_backStall),
        .in_valid_in(SE_i_next_initerations_relu118_vt_select_0_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_relu145_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_relu145_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_relu145_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_relu145_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_next_initerations_relu118_vt_select_0(STALLENABLE,1852)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_relu118_vt_select_0_fromReg0 <= '0;
            SE_i_next_initerations_relu118_vt_select_0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_relu118_vt_select_0_fromReg0 <= SE_i_next_initerations_relu118_vt_select_0_toReg0;
            // Successor 1
            SE_i_next_initerations_relu118_vt_select_0_fromReg1 <= SE_i_next_initerations_relu118_vt_select_0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_relu118_vt_select_0_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_relu145_out_stall_out) & SE_i_next_initerations_relu118_vt_select_0_wireValid) | SE_i_next_initerations_relu118_vt_select_0_fromReg0;
    assign SE_i_next_initerations_relu118_vt_select_0_consumed1 = (~ (i_llvm_fpga_push_i2_initerations_push23_relu136_out_stall_out) & SE_i_next_initerations_relu118_vt_select_0_wireValid) | SE_i_next_initerations_relu118_vt_select_0_fromReg1;
    // Consuming
    assign SE_i_next_initerations_relu118_vt_select_0_StallValid = SE_i_next_initerations_relu118_vt_select_0_backStall & SE_i_next_initerations_relu118_vt_select_0_wireValid;
    assign SE_i_next_initerations_relu118_vt_select_0_toReg0 = SE_i_next_initerations_relu118_vt_select_0_StallValid & SE_i_next_initerations_relu118_vt_select_0_consumed0;
    assign SE_i_next_initerations_relu118_vt_select_0_toReg1 = SE_i_next_initerations_relu118_vt_select_0_StallValid & SE_i_next_initerations_relu118_vt_select_0_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_relu118_vt_select_0_or0 = SE_i_next_initerations_relu118_vt_select_0_consumed0;
    assign SE_i_next_initerations_relu118_vt_select_0_wireStall = ~ (SE_i_next_initerations_relu118_vt_select_0_consumed1 & SE_i_next_initerations_relu118_vt_select_0_or0);
    assign SE_i_next_initerations_relu118_vt_select_0_backStall = SE_i_next_initerations_relu118_vt_select_0_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_relu118_vt_select_0_V0 = SE_i_next_initerations_relu118_vt_select_0_wireValid & ~ (SE_i_next_initerations_relu118_vt_select_0_fromReg0);
    assign SE_i_next_initerations_relu118_vt_select_0_V1 = SE_i_next_initerations_relu118_vt_select_0_wireValid & ~ (SE_i_next_initerations_relu118_vt_select_0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_relu118_vt_select_0_wireValid = SR_SE_i_next_initerations_relu118_vt_select_0_V;

    // SE_out_i_llvm_fpga_push_i2_initerations_push23_relu136(STALLENABLE,1840)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_initerations_push23_relu136_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_initerations_push23_relu136_wireValid = i_llvm_fpga_push_i2_initerations_push23_relu136_out_valid_out;

    // i_llvm_fpga_push_i2_initerations_push23_relu136(BLACKBOX,139)@140
    // in in_stall_in@20000000
    // out out_data_out@141
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@141
    relu1_i_llvm_fpga_push_i2_initerations_push23_0 thei_llvm_fpga_push_i2_initerations_push23_relu136 (
        .in_data_in(SR_SE_i_next_initerations_relu118_vt_select_0_D3),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i2_initerations_pop23_relu14_out_feedback_stall_out_23),
        .in_keep_going(SR_SE_i_next_initerations_relu118_vt_select_0_D2),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_initerations_push23_relu136_backStall),
        .in_valid_in(SE_i_next_initerations_relu118_vt_select_0_V1),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i2_initerations_push23_relu136_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i2_initerations_push23_relu136_out_feedback_valid_out_23),
        .out_stall_out(i_llvm_fpga_push_i2_initerations_push23_relu136_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_initerations_push23_relu136_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo(BITJOIN,1751)
    assign bubble_join_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_q = redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_data_out;

    // bubble_select_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo(BITSELECT,1752)
    assign bubble_select_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_b = $unsigned(bubble_join_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_q[0:0]);

    // c_i2_156(CONSTANT,81)
    assign c_i2_156_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_initerations_pop23_relu14(BLACKBOX,124)@139
    // in in_stall_in@20000000
    // out out_data_out@140
    // out out_feedback_stall_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@140
    relu1_i_llvm_fpga_pop_i2_initerations_pop23_0 thei_llvm_fpga_pop_i2_initerations_pop23_relu14 (
        .in_data_in(c_i2_156_q),
        .in_dir(bubble_select_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_b),
        .in_feedback_in_23(i_llvm_fpga_push_i2_initerations_push23_relu136_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i2_initerations_push23_relu136_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_backStall),
        .in_valid_in(SE_out_redist36_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop23_relu14_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i2_initerations_pop23_relu14_out_feedback_stall_out_23),
        .out_stall_out(i_llvm_fpga_pop_i2_initerations_pop23_relu14_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_initerations_pop23_relu14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14(STALLENABLE,1810)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_consumed1 = (~ (SR_SE_i_next_initerations_relu118_vt_select_0_backStall) & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_StallValid = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_backStall & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_toReg0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_toReg1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_or0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_consumed1 & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_or0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_backStall = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_V0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_V1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_wireValid = i_llvm_fpga_pop_i2_initerations_pop23_relu14_out_valid_out;

    // bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg(STALLFIFO,2210)
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_V0;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_masked_relu147(STALLENABLE,1849)
    // Valid signal propagation
    assign SE_i_masked_relu147_V0 = SE_i_masked_relu147_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_relu147_s_tv_0 = SE_in_redist24_i_masked_relu147_q_69_fifo_backStall & SE_i_masked_relu147_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_relu147_backEN = ~ (SE_i_masked_relu147_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_relu147_v_s_0 = SE_i_masked_relu147_backEN & SR_SE_i_masked_relu147_V;
    // Backward Stall generation
    assign SE_i_masked_relu147_backStall = ~ (SE_i_masked_relu147_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_relu147_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_relu147_backEN == 1'b0)
            begin
                SE_i_masked_relu147_R_v_0 <= SE_i_masked_relu147_R_v_0 & SE_i_masked_relu147_s_tv_0;
            end
            else
            begin
                SE_i_masked_relu147_R_v_0 <= SE_i_masked_relu147_v_s_0;
            end

        end
    end

    // i_masked_relu147(LOGICAL,144)@73 + 1
    assign i_masked_relu147_qi = SR_SE_i_masked_relu147_D0 & SR_SE_i_masked_relu147_D1;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_relu147_delay ( .xin(i_masked_relu147_qi), .xout(i_masked_relu147_q), .ena(SE_i_masked_relu147_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_in_redist24_i_masked_relu147_q_69_fifo(STALLENABLE,2036)
    // Valid signal propagation
    assign SE_in_redist24_i_masked_relu147_q_69_fifo_V0 = SE_in_redist24_i_masked_relu147_q_69_fifo_wireValid;
    // Backward Stall generation
    assign SE_in_redist24_i_masked_relu147_q_69_fifo_backStall = redist24_i_masked_relu147_q_69_fifo_stall_out | ~ (SE_in_redist24_i_masked_relu147_q_69_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_redist24_i_masked_relu147_q_69_fifo_wireValid = SE_i_masked_relu147_V0;

    // redist24_i_masked_relu147_q_69_fifo(STALLFIFO,1639)
    assign redist24_i_masked_relu147_q_69_fifo_valid_in = SE_in_redist24_i_masked_relu147_q_69_fifo_V0;
    assign redist24_i_masked_relu147_q_69_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_backStall;
    assign redist24_i_masked_relu147_q_69_fifo_data_in = i_masked_relu147_q;
    assign redist24_i_masked_relu147_q_69_fifo_valid_in_bitsignaltemp = redist24_i_masked_relu147_q_69_fifo_valid_in[0];
    assign redist24_i_masked_relu147_q_69_fifo_stall_in_bitsignaltemp = redist24_i_masked_relu147_q_69_fifo_stall_in[0];
    assign redist24_i_masked_relu147_q_69_fifo_valid_out[0] = redist24_i_masked_relu147_q_69_fifo_valid_out_bitsignaltemp;
    assign redist24_i_masked_relu147_q_69_fifo_stall_out[0] = redist24_i_masked_relu147_q_69_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(69),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist24_i_masked_relu147_q_69_fifo (
        .valid_in(redist24_i_masked_relu147_q_69_fifo_valid_in_bitsignaltemp),
        .stall_in(redist24_i_masked_relu147_q_69_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_relu147_q),
        .valid_out(redist24_i_masked_relu147_q_69_fifo_valid_out_bitsignaltemp),
        .stall_out(redist24_i_masked_relu147_q_69_fifo_stall_out_bitsignaltemp),
        .data_out(redist24_i_masked_relu147_q_69_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg(STALLFIFO,2211)
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_V0;
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(70),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1(STALLENABLE,2168)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and0 = bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and1 = redist24_i_masked_relu147_q_69_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and2 = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and3 = bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and4 = SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and5 = SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and6 = SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and7 = SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and6;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_relu154_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_and7;

    // SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19(STALLENABLE,1804)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_wireValid = i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_out_valid_out;

    // SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125(STALLENABLE,1831)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_V0 = SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_backStall = i_llvm_fpga_push_i1_notcmp1136_push30_relu125_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_wireValid = SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_V;

    // SE_out_i_llvm_fpga_push_i1_notcmp1136_push30_relu125(STALLENABLE,1832)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_wireValid = i_llvm_fpga_push_i1_notcmp1136_push30_relu125_out_valid_out;

    // i_llvm_fpga_push_i1_notcmp1136_push30_relu125(BLACKBOX,135)@142
    // in in_stall_in@20000000
    // out out_data_out@143
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    // out out_stall_out@20000000
    // out out_valid_out@143
    relu1_i_llvm_fpga_push_i1_notcmp1136_push30_0 thei_llvm_fpga_push_i1_notcmp1136_push30_relu125 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_D0),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_out_feedback_stall_out_30),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_V0),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i1_notcmp1136_push30_relu125_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i1_notcmp1136_push30_relu125_out_feedback_valid_out_30),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp1136_push30_relu125_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp1136_push30_relu125_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19(BLACKBOX,121)@141
    // in in_stall_in@20000000
    // out out_data_out@142
    // out out_feedback_stall_out_30@20000000
    // out out_stall_out@20000000
    // out out_valid_out@142
    relu1_i_llvm_fpga_pop_i1_notcmp1136_pop30_0 thei_llvm_fpga_pop_i1_notcmp1136_pop30_relu19 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D6),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D3),
        .in_feedback_in_30(i_llvm_fpga_push_i1_notcmp1136_push30_relu125_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i1_notcmp1136_push30_relu125_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V2),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_out_feedback_stall_out_30),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129(STALLENABLE,1821)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_V0 = SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_backStall = i_llvm_fpga_push_i1_exitcond828_push25_relu129_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_wireValid = SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_V;

    // SE_out_i_llvm_fpga_push_i1_exitcond828_push25_relu129(STALLENABLE,1822)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_exitcond828_push25_relu129_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_exitcond828_push25_relu129_wireValid = i_llvm_fpga_push_i1_exitcond828_push25_relu129_out_valid_out;

    // i_llvm_fpga_push_i1_exitcond828_push25_relu129(BLACKBOX,130)@142
    // in in_stall_in@20000000
    // out out_data_out@143
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@143
    relu1_i_llvm_fpga_push_i1_exitcond828_push25_0 thei_llvm_fpga_push_i1_exitcond828_push25_relu129 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_D0),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_out_feedback_stall_out_25),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_exitcond828_push25_relu129_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_V0),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i1_exitcond828_push25_relu129_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i1_exitcond828_push25_relu129_out_feedback_valid_out_25),
        .out_stall_out(i_llvm_fpga_push_i1_exitcond828_push25_relu129_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_exitcond828_push25_relu129_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond828_pop25_relu112(BLACKBOX,117)@141
    // in in_stall_in@20000000
    // out out_data_out@142
    // out out_feedback_stall_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@142
    relu1_i_llvm_fpga_pop_i1_exitcond828_pop25_0 thei_llvm_fpga_pop_i1_exitcond828_pop25_relu112 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D5),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D2),
        .in_feedback_in_25(i_llvm_fpga_push_i1_exitcond828_push25_relu129_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i1_exitcond828_push25_relu129_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_out_feedback_stall_out_25),
        .out_stall_out(i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124(STALLENABLE,1819)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_V0 = SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_backStall = i_llvm_fpga_push_i1_exitcond535_push29_relu124_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_wireValid = SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_V;

    // SE_out_i_llvm_fpga_push_i1_exitcond535_push29_relu124(STALLENABLE,1820)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_exitcond535_push29_relu124_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_exitcond535_push29_relu124_wireValid = i_llvm_fpga_push_i1_exitcond535_push29_relu124_out_valid_out;

    // i_llvm_fpga_push_i1_exitcond535_push29_relu124(BLACKBOX,129)@142
    // in in_stall_in@20000000
    // out out_data_out@143
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    // out out_stall_out@20000000
    // out out_valid_out@143
    relu1_i_llvm_fpga_push_i1_exitcond535_push29_0 thei_llvm_fpga_push_i1_exitcond535_push29_relu124 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_D0),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_out_feedback_stall_out_29),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_exitcond535_push29_relu124_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_V0),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i1_exitcond535_push29_relu124_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i1_exitcond535_push29_relu124_out_feedback_valid_out_29),
        .out_stall_out(i_llvm_fpga_push_i1_exitcond535_push29_relu124_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_exitcond535_push29_relu124_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond535_pop29_relu18(BLACKBOX,116)@141
    // in in_stall_in@20000000
    // out out_data_out@142
    // out out_feedback_stall_out_29@20000000
    // out out_stall_out@20000000
    // out out_valid_out@142
    relu1_i_llvm_fpga_pop_i1_exitcond535_pop29_0 thei_llvm_fpga_pop_i1_exitcond535_pop29_relu18 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D0),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D1),
        .in_feedback_in_29(i_llvm_fpga_push_i1_exitcond535_push29_relu124_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i1_exitcond535_push29_relu124_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_out_feedback_stall_out_29),
        .out_stall_out(i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,2065)
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
    assign SE_out_coalesced_delay_1_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg0;
    assign SE_out_coalesced_delay_1_fifo_consumed1 = (~ (i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg1;
    assign SE_out_coalesced_delay_1_fifo_consumed2 = (~ (i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg2;
    assign SE_out_coalesced_delay_1_fifo_consumed3 = (~ (i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg3;
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

    // SE_out_i_llvm_fpga_push_i1_notcmp1630_push26_relu130(STALLENABLE,1834)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_wireValid = i_llvm_fpga_push_i1_notcmp1630_push26_relu130_out_valid_out;

    // i_llvm_fpga_push_i1_notcmp1630_push26_relu130(BLACKBOX,136)@142
    // in in_stall_in@20000000
    // out out_data_out@143
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@143
    relu1_i_llvm_fpga_push_i1_notcmp1630_push26_0 thei_llvm_fpga_push_i1_notcmp1630_push26_relu130 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_D0),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_out_feedback_stall_out_26),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_V0),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i1_notcmp1630_push26_relu130_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i1_notcmp1630_push26_relu130_out_feedback_valid_out_26),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp1630_push26_relu130_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp1630_push26_relu130_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1(REG,1659)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backEN == 1'b1)
        begin
            redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q <= $unsigned(SR_SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_D0);
        end
    end

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,1757)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,1758)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[3:0]);

    // sel_for_coalesced_delay_1(BITSELECT,1611)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1:1]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[2:2]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[3:3]);

    // SE_stall_entry(STALLENABLE,1857)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = relu1_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,1735)
    assign bubble_join_stall_entry_q = {in_notcmp1629_pop1756, in_notcmp1152, in_memdep_phi2_pop1233_pop1958, in_memdep_phi1_pop1554, in_k_019_pop1131_pop1857, in_i_018_pop1453, in_forked, in_exitcond827_pop1655, in_exitcond551};

    // bubble_select_stall_entry(BITSELECT,1736)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[66:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[67:67]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[68:68]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[69:69]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[70:70]);

    // relu1_B4_merge_reg_aunroll_x(BLACKBOX,76)@0
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
    relu1_B4_merge_reg therelu1_B4_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_d),
        .in_data_in_1_tpl(bubble_select_stall_entry_b),
        .in_data_in_2_tpl(bubble_select_stall_entry_i),
        .in_data_in_3_tpl(bubble_select_stall_entry_e),
        .in_data_in_4_tpl(bubble_select_stall_entry_g),
        .in_data_in_5_tpl(bubble_select_stall_entry_c),
        .in_data_in_6_tpl(bubble_select_stall_entry_j),
        .in_data_in_7_tpl(bubble_select_stall_entry_f),
        .in_data_in_8_tpl(bubble_select_stall_entry_h),
        .in_stall_in(SE_out_relu1_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(relu1_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(relu1_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(relu1_B4_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(relu1_B4_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(relu1_B4_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(relu1_B4_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(relu1_B4_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(relu1_B4_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_stall_out(relu1_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(relu1_B4_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_relu1_B4_merge_reg_aunroll_x(BITJOIN,1668)
    assign bubble_join_relu1_B4_merge_reg_aunroll_x_q = {relu1_B4_merge_reg_aunroll_x_out_data_out_8_tpl, relu1_B4_merge_reg_aunroll_x_out_data_out_7_tpl, relu1_B4_merge_reg_aunroll_x_out_data_out_6_tpl, relu1_B4_merge_reg_aunroll_x_out_data_out_5_tpl, relu1_B4_merge_reg_aunroll_x_out_data_out_4_tpl, relu1_B4_merge_reg_aunroll_x_out_data_out_3_tpl, relu1_B4_merge_reg_aunroll_x_out_data_out_2_tpl, relu1_B4_merge_reg_aunroll_x_out_data_out_1_tpl, relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_relu1_B4_merge_reg_aunroll_x(BITSELECT,1669)
    assign bubble_select_relu1_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_relu1_B4_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_relu1_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_relu1_B4_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_relu1_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_relu1_B4_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_relu1_B4_merge_reg_aunroll_x_e = $unsigned(bubble_join_relu1_B4_merge_reg_aunroll_x_q[34:3]);
    assign bubble_select_relu1_B4_merge_reg_aunroll_x_f = $unsigned(bubble_join_relu1_B4_merge_reg_aunroll_x_q[35:35]);
    assign bubble_select_relu1_B4_merge_reg_aunroll_x_g = $unsigned(bubble_join_relu1_B4_merge_reg_aunroll_x_q[36:36]);
    assign bubble_select_relu1_B4_merge_reg_aunroll_x_h = $unsigned(bubble_join_relu1_B4_merge_reg_aunroll_x_q[37:37]);
    assign bubble_select_relu1_B4_merge_reg_aunroll_x_i = $unsigned(bubble_join_relu1_B4_merge_reg_aunroll_x_q[69:38]);
    assign bubble_select_relu1_B4_merge_reg_aunroll_x_j = $unsigned(bubble_join_relu1_B4_merge_reg_aunroll_x_q[70:70]);

    // join_for_coalesced_delay_1(BITJOIN,1610)
    assign join_for_coalesced_delay_1_q = {bubble_select_relu1_B4_merge_reg_aunroll_x_h, bubble_select_relu1_B4_merge_reg_aunroll_x_g, bubble_select_relu1_B4_merge_reg_aunroll_x_d, bubble_select_relu1_B4_merge_reg_aunroll_x_c};

    // join_for_coalesced_delay_0(BITJOIN,1607)
    assign join_for_coalesced_delay_0_q = {bubble_select_relu1_B4_merge_reg_aunroll_x_j, bubble_select_relu1_B4_merge_reg_aunroll_x_f, bubble_select_relu1_B4_merge_reg_aunroll_x_b};

    // coalesced_delay_0_fifo(STALLFIFO,1660)
    assign coalesced_delay_0_fifo_valid_in = SE_out_relu1_B4_merge_reg_aunroll_x_V4;
    assign coalesced_delay_0_fifo_stall_in = SR_SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(70),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(3),
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

    // bubble_join_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114(BITJOIN,1728)
    assign bubble_join_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_q = i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114(BITSELECT,1729)
    assign bubble_select_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_q[31:0]);

    // bubble_join_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo(BITJOIN,1742)
    assign bubble_join_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_q = redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_data_out;

    // bubble_select_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo(BITSELECT,1743)
    assign bubble_select_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_b = $unsigned(bubble_join_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_q[31:0]);

    // redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_66_0(REG,1641)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_66_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_backEN == 1'b1)
        begin
            redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_66_0_q <= $unsigned(bubble_select_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_b);
        end
    end

    // redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_66_1(REG,1642)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_66_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_backEN == 1'b1)
        begin
            redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_66_1_q <= $unsigned(redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_66_0_q);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_idxprom_relu132_sel_x(BITSELECT,69)@66
    assign i_idxprom_relu132_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_b[31:0]};

    // i_idxprom_relu132_vt_select_31(BITSELECT,108)@66
    assign i_idxprom_relu132_vt_select_31_b = i_idxprom_relu132_sel_x_b[31:0];

    // i_idxprom_relu132_vt_join(BITJOIN,107)@66
    assign i_idxprom_relu132_vt_join_q = {c_i32_058_q, i_idxprom_relu132_vt_select_31_b};

    // i_arrayidx10_relu10_mult_x_bs1_merged_bit_select(BITSELECT,1550)@66
    assign i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_b = i_idxprom_relu132_vt_join_q[17:0];
    assign i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_c = i_idxprom_relu132_vt_join_q[35:18];
    assign i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_d = i_idxprom_relu132_vt_join_q[53:36];
    assign i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_e = i_idxprom_relu132_vt_join_q[63:54];

    // join_for_coalesced_delay_2(BITJOIN,1613)
    assign join_for_coalesced_delay_2_q = {i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_e, i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_d, i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_c};

    // coalesced_delay_2_0(REG,1662)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_2_0_q <= $unsigned(46'b0000000000000000000000000000000000000000000000);
        end
        else if (SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_backEN == 1'b1)
        begin
            coalesced_delay_2_0_q <= $unsigned(join_for_coalesced_delay_2_q);
        end
    end

    // sel_for_coalesced_delay_2(BITSELECT,1614)
    assign sel_for_coalesced_delay_2_b = $unsigned(coalesced_delay_2_0_q[17:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(coalesced_delay_2_0_q[35:18]);
    assign sel_for_coalesced_delay_2_d = $unsigned(coalesced_delay_2_0_q[45:36]);

    // highBBits_uid726_i_arrayidx10_relu10_mult_x_im6(BITSELECT,725)@67
    assign highBBits_uid726_i_arrayidx10_relu10_mult_x_im6_b = sel_for_coalesced_delay_2_c[17:4];

    // highBBits_uid721_i_arrayidx10_relu10_mult_x_im6(BITSELECT,720)@66
    assign highBBits_uid721_i_arrayidx10_relu10_mult_x_im6_b = i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_d[17:1];

    // addsumAHighB_uid722_i_arrayidx10_relu10_mult_x_im6(ADD,721)@66 + 1
    assign addsumAHighB_uid722_i_arrayidx10_relu10_mult_x_im6_a = {1'b0, i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_d};
    assign addsumAHighB_uid722_i_arrayidx10_relu10_mult_x_im6_b = {2'b00, highBBits_uid721_i_arrayidx10_relu10_mult_x_im6_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid722_i_arrayidx10_relu10_mult_x_im6_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid722_i_arrayidx10_relu10_mult_x_im6_o <= $unsigned(addsumAHighB_uid722_i_arrayidx10_relu10_mult_x_im6_a) + $unsigned(addsumAHighB_uid722_i_arrayidx10_relu10_mult_x_im6_b);
        end
    end
    assign addsumAHighB_uid722_i_arrayidx10_relu10_mult_x_im6_q = addsumAHighB_uid722_i_arrayidx10_relu10_mult_x_im6_o[18:0];

    // lowRangeB_uid720_i_arrayidx10_relu10_mult_x_im6(BITSELECT,719)@67
    assign lowRangeB_uid720_i_arrayidx10_relu10_mult_x_im6_in = sel_for_coalesced_delay_2_c[0:0];
    assign lowRangeB_uid720_i_arrayidx10_relu10_mult_x_im6_b = lowRangeB_uid720_i_arrayidx10_relu10_mult_x_im6_in[0:0];

    // add_uid723_i_arrayidx10_relu10_mult_x_im6(BITJOIN,722)@67
    assign add_uid723_i_arrayidx10_relu10_mult_x_im6_q = {addsumAHighB_uid722_i_arrayidx10_relu10_mult_x_im6_q, lowRangeB_uid720_i_arrayidx10_relu10_mult_x_im6_b};

    // a_subconst_49_sumAHighB_uid727_i_arrayidx10_relu10_mult_x_im6(ADD,726)@67
    assign a_subconst_49_sumAHighB_uid727_i_arrayidx10_relu10_mult_x_im6_a = {1'b0, add_uid723_i_arrayidx10_relu10_mult_x_im6_q};
    assign a_subconst_49_sumAHighB_uid727_i_arrayidx10_relu10_mult_x_im6_b = {7'b0000000, highBBits_uid726_i_arrayidx10_relu10_mult_x_im6_b};
    assign a_subconst_49_sumAHighB_uid727_i_arrayidx10_relu10_mult_x_im6_o = $unsigned(a_subconst_49_sumAHighB_uid727_i_arrayidx10_relu10_mult_x_im6_a) + $unsigned(a_subconst_49_sumAHighB_uid727_i_arrayidx10_relu10_mult_x_im6_b);
    assign a_subconst_49_sumAHighB_uid727_i_arrayidx10_relu10_mult_x_im6_q = a_subconst_49_sumAHighB_uid727_i_arrayidx10_relu10_mult_x_im6_o[20:0];

    // lowRangeB_uid725_i_arrayidx10_relu10_mult_x_im6(BITSELECT,724)@67
    assign lowRangeB_uid725_i_arrayidx10_relu10_mult_x_im6_in = sel_for_coalesced_delay_2_c[3:0];
    assign lowRangeB_uid725_i_arrayidx10_relu10_mult_x_im6_b = lowRangeB_uid725_i_arrayidx10_relu10_mult_x_im6_in[3:0];

    // a_subconst_49_uid728_i_arrayidx10_relu10_mult_x_im6(BITJOIN,727)@67
    assign a_subconst_49_uid728_i_arrayidx10_relu10_mult_x_im6_q = {a_subconst_49_sumAHighB_uid727_i_arrayidx10_relu10_mult_x_im6_q, lowRangeB_uid725_i_arrayidx10_relu10_mult_x_im6_b};

    // sR_bottomRange_uid732_i_arrayidx10_relu10_mult_x_im6(BITSELECT,731)@67
    assign sR_bottomRange_uid732_i_arrayidx10_relu10_mult_x_im6_in = a_subconst_49_uid728_i_arrayidx10_relu10_mult_x_im6_q[23:0];
    assign sR_bottomRange_uid732_i_arrayidx10_relu10_mult_x_im6_b = sR_bottomRange_uid732_i_arrayidx10_relu10_mult_x_im6_in[23:0];

    // redist16_sR_bottomRange_uid732_i_arrayidx10_relu10_mult_x_im6_b_1_0(REG,1631)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sR_bottomRange_uid732_i_arrayidx10_relu10_mult_x_im6_b_1_0_q <= $unsigned(24'b000000000000000000000000);
        end
        else if (SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_backEN == 1'b1)
        begin
            redist16_sR_bottomRange_uid732_i_arrayidx10_relu10_mult_x_im6_b_1_0_q <= $unsigned(sR_bottomRange_uid732_i_arrayidx10_relu10_mult_x_im6_b);
        end
    end

    // sR_bottomExtension_uid593_i_arrayidx10_relu10_mult_x_im0(CONSTANT,592)
    assign sR_bottomExtension_uid593_i_arrayidx10_relu10_mult_x_im0_q = $unsigned(6'b000000);

    // sR_mergedSignalTM_uid733_i_arrayidx10_relu10_mult_x_im6(BITJOIN,732)@68
    assign sR_mergedSignalTM_uid733_i_arrayidx10_relu10_mult_x_im6_q = {redist16_sR_bottomRange_uid732_i_arrayidx10_relu10_mult_x_im6_b_1_0_q, sR_bottomExtension_uid593_i_arrayidx10_relu10_mult_x_im0_q};

    // i_arrayidx10_relu10_mult_x_sums_align_0(BITSHIFT,273)@68
    assign i_arrayidx10_relu10_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid733_i_arrayidx10_relu10_mult_x_im6_q, 6'b000000 };
    assign i_arrayidx10_relu10_mult_x_sums_align_0_q = i_arrayidx10_relu10_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select(BITSELECT,1555)@68
    assign i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b = $unsigned(i_arrayidx10_relu10_mult_x_sums_align_0_q[21:0]);
    assign i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c = $unsigned(i_arrayidx10_relu10_mult_x_sums_align_0_q[35:22]);

    // i_arrayidx23_relu10_mult_x_sums_align_0(BITSHIFT,309)@68
    assign i_arrayidx23_relu10_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid733_i_arrayidx10_relu10_mult_x_im6_q, 6'b000000 };
    assign i_arrayidx23_relu10_mult_x_sums_align_0_q = i_arrayidx23_relu10_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select(BITSELECT,1559)@68
    assign i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b = $unsigned(i_arrayidx23_relu10_mult_x_sums_align_0_q[21:0]);
    assign i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c = $unsigned(i_arrayidx23_relu10_mult_x_sums_align_0_q[35:22]);

    // highBBits_uid795_i_arrayidx10_relu10_mult_x_im9(BITSELECT,794)@67
    assign highBBits_uid795_i_arrayidx10_relu10_mult_x_im9_b = sel_for_coalesced_delay_2_d[9:4];

    // highBBits_uid790_i_arrayidx10_relu10_mult_x_im9(BITSELECT,789)@66
    assign highBBits_uid790_i_arrayidx10_relu10_mult_x_im9_b = i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_e[9:1];

    // addsumAHighB_uid791_i_arrayidx10_relu10_mult_x_im9(ADD,790)@66 + 1
    assign addsumAHighB_uid791_i_arrayidx10_relu10_mult_x_im9_a = {1'b0, i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_e};
    assign addsumAHighB_uid791_i_arrayidx10_relu10_mult_x_im9_b = {2'b00, highBBits_uid790_i_arrayidx10_relu10_mult_x_im9_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid791_i_arrayidx10_relu10_mult_x_im9_o <= 11'b0;
        end
        else if (SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid791_i_arrayidx10_relu10_mult_x_im9_o <= $unsigned(addsumAHighB_uid791_i_arrayidx10_relu10_mult_x_im9_a) + $unsigned(addsumAHighB_uid791_i_arrayidx10_relu10_mult_x_im9_b);
        end
    end
    assign addsumAHighB_uid791_i_arrayidx10_relu10_mult_x_im9_q = addsumAHighB_uid791_i_arrayidx10_relu10_mult_x_im9_o[10:0];

    // lowRangeB_uid789_i_arrayidx10_relu10_mult_x_im9(BITSELECT,788)@67
    assign lowRangeB_uid789_i_arrayidx10_relu10_mult_x_im9_in = sel_for_coalesced_delay_2_d[0:0];
    assign lowRangeB_uid789_i_arrayidx10_relu10_mult_x_im9_b = lowRangeB_uid789_i_arrayidx10_relu10_mult_x_im9_in[0:0];

    // add_uid792_i_arrayidx10_relu10_mult_x_im9(BITJOIN,791)@67
    assign add_uid792_i_arrayidx10_relu10_mult_x_im9_q = {addsumAHighB_uid791_i_arrayidx10_relu10_mult_x_im9_q, lowRangeB_uid789_i_arrayidx10_relu10_mult_x_im9_b};

    // a_subconst_49_sumAHighB_uid796_i_arrayidx10_relu10_mult_x_im9(ADD,795)@67
    assign a_subconst_49_sumAHighB_uid796_i_arrayidx10_relu10_mult_x_im9_a = {1'b0, add_uid792_i_arrayidx10_relu10_mult_x_im9_q};
    assign a_subconst_49_sumAHighB_uid796_i_arrayidx10_relu10_mult_x_im9_b = {7'b0000000, highBBits_uid795_i_arrayidx10_relu10_mult_x_im9_b};
    assign a_subconst_49_sumAHighB_uid796_i_arrayidx10_relu10_mult_x_im9_o = $unsigned(a_subconst_49_sumAHighB_uid796_i_arrayidx10_relu10_mult_x_im9_a) + $unsigned(a_subconst_49_sumAHighB_uid796_i_arrayidx10_relu10_mult_x_im9_b);
    assign a_subconst_49_sumAHighB_uid796_i_arrayidx10_relu10_mult_x_im9_q = a_subconst_49_sumAHighB_uid796_i_arrayidx10_relu10_mult_x_im9_o[12:0];

    // lowRangeB_uid794_i_arrayidx10_relu10_mult_x_im9(BITSELECT,793)@67
    assign lowRangeB_uid794_i_arrayidx10_relu10_mult_x_im9_in = sel_for_coalesced_delay_2_d[3:0];
    assign lowRangeB_uid794_i_arrayidx10_relu10_mult_x_im9_b = lowRangeB_uid794_i_arrayidx10_relu10_mult_x_im9_in[3:0];

    // a_subconst_49_uid797_i_arrayidx10_relu10_mult_x_im9(BITJOIN,796)@67
    assign a_subconst_49_uid797_i_arrayidx10_relu10_mult_x_im9_q = {a_subconst_49_sumAHighB_uid796_i_arrayidx10_relu10_mult_x_im9_q, lowRangeB_uid794_i_arrayidx10_relu10_mult_x_im9_b};

    // sR_bottomRange_uid801_i_arrayidx10_relu10_mult_x_im9(BITSELECT,800)@67
    assign sR_bottomRange_uid801_i_arrayidx10_relu10_mult_x_im9_in = a_subconst_49_uid797_i_arrayidx10_relu10_mult_x_im9_q[15:0];
    assign sR_bottomRange_uid801_i_arrayidx10_relu10_mult_x_im9_b = sR_bottomRange_uid801_i_arrayidx10_relu10_mult_x_im9_in[15:0];

    // redist15_sR_bottomRange_uid801_i_arrayidx10_relu10_mult_x_im9_b_1_0(REG,1630)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sR_bottomRange_uid801_i_arrayidx10_relu10_mult_x_im9_b_1_0_q <= $unsigned(16'b0000000000000000);
        end
        else if (SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_backEN == 1'b1)
        begin
            redist15_sR_bottomRange_uid801_i_arrayidx10_relu10_mult_x_im9_b_1_0_q <= $unsigned(sR_bottomRange_uid801_i_arrayidx10_relu10_mult_x_im9_b);
        end
    end

    // sR_mergedSignalTM_uid802_i_arrayidx10_relu10_mult_x_im9(BITJOIN,801)@68
    assign sR_mergedSignalTM_uid802_i_arrayidx10_relu10_mult_x_im9_q = {redist15_sR_bottomRange_uid801_i_arrayidx10_relu10_mult_x_im9_b_1_0_q, sR_bottomExtension_uid593_i_arrayidx10_relu10_mult_x_im0_q};

    // i_arrayidx10_relu10_mult_x_sums_align_3(BITSHIFT,276)@68
    assign i_arrayidx10_relu10_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid802_i_arrayidx10_relu10_mult_x_im9_q, 6'b000000 };
    assign i_arrayidx10_relu10_mult_x_sums_align_3_q = i_arrayidx10_relu10_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,1556)@68
    assign i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_arrayidx10_relu10_mult_x_sums_align_3_q[3:0]);
    assign i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_arrayidx10_relu10_mult_x_sums_align_3_q[27:4]);

    // i_arrayidx23_relu10_mult_x_sums_align_3(BITSHIFT,312)@68
    assign i_arrayidx23_relu10_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid802_i_arrayidx10_relu10_mult_x_im9_q, 6'b000000 };
    assign i_arrayidx23_relu10_mult_x_sums_align_3_q = i_arrayidx23_relu10_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,1560)@68
    assign i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_arrayidx23_relu10_mult_x_sums_align_3_q[3:0]);
    assign i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_arrayidx23_relu10_mult_x_sums_align_3_q[27:4]);

    // highBBits_uid657_i_arrayidx10_relu10_mult_x_im3(BITSELECT,656)@67
    assign highBBits_uid657_i_arrayidx10_relu10_mult_x_im3_b = sel_for_coalesced_delay_2_b[17:4];

    // highBBits_uid652_i_arrayidx10_relu10_mult_x_im3(BITSELECT,651)@66
    assign highBBits_uid652_i_arrayidx10_relu10_mult_x_im3_b = i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_c[17:1];

    // addsumAHighB_uid653_i_arrayidx10_relu10_mult_x_im3(ADD,652)@66 + 1
    assign addsumAHighB_uid653_i_arrayidx10_relu10_mult_x_im3_a = {1'b0, i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_c};
    assign addsumAHighB_uid653_i_arrayidx10_relu10_mult_x_im3_b = {2'b00, highBBits_uid652_i_arrayidx10_relu10_mult_x_im3_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid653_i_arrayidx10_relu10_mult_x_im3_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid653_i_arrayidx10_relu10_mult_x_im3_o <= $unsigned(addsumAHighB_uid653_i_arrayidx10_relu10_mult_x_im3_a) + $unsigned(addsumAHighB_uid653_i_arrayidx10_relu10_mult_x_im3_b);
        end
    end
    assign addsumAHighB_uid653_i_arrayidx10_relu10_mult_x_im3_q = addsumAHighB_uid653_i_arrayidx10_relu10_mult_x_im3_o[18:0];

    // lowRangeB_uid651_i_arrayidx10_relu10_mult_x_im3(BITSELECT,650)@67
    assign lowRangeB_uid651_i_arrayidx10_relu10_mult_x_im3_in = sel_for_coalesced_delay_2_b[0:0];
    assign lowRangeB_uid651_i_arrayidx10_relu10_mult_x_im3_b = lowRangeB_uid651_i_arrayidx10_relu10_mult_x_im3_in[0:0];

    // add_uid654_i_arrayidx10_relu10_mult_x_im3(BITJOIN,653)@67
    assign add_uid654_i_arrayidx10_relu10_mult_x_im3_q = {addsumAHighB_uid653_i_arrayidx10_relu10_mult_x_im3_q, lowRangeB_uid651_i_arrayidx10_relu10_mult_x_im3_b};

    // a_subconst_49_sumAHighB_uid658_i_arrayidx10_relu10_mult_x_im3(ADD,657)@67
    assign a_subconst_49_sumAHighB_uid658_i_arrayidx10_relu10_mult_x_im3_a = {1'b0, add_uid654_i_arrayidx10_relu10_mult_x_im3_q};
    assign a_subconst_49_sumAHighB_uid658_i_arrayidx10_relu10_mult_x_im3_b = {7'b0000000, highBBits_uid657_i_arrayidx10_relu10_mult_x_im3_b};
    assign a_subconst_49_sumAHighB_uid658_i_arrayidx10_relu10_mult_x_im3_o = $unsigned(a_subconst_49_sumAHighB_uid658_i_arrayidx10_relu10_mult_x_im3_a) + $unsigned(a_subconst_49_sumAHighB_uid658_i_arrayidx10_relu10_mult_x_im3_b);
    assign a_subconst_49_sumAHighB_uid658_i_arrayidx10_relu10_mult_x_im3_q = a_subconst_49_sumAHighB_uid658_i_arrayidx10_relu10_mult_x_im3_o[20:0];

    // lowRangeB_uid656_i_arrayidx10_relu10_mult_x_im3(BITSELECT,655)@67
    assign lowRangeB_uid656_i_arrayidx10_relu10_mult_x_im3_in = sel_for_coalesced_delay_2_b[3:0];
    assign lowRangeB_uid656_i_arrayidx10_relu10_mult_x_im3_b = lowRangeB_uid656_i_arrayidx10_relu10_mult_x_im3_in[3:0];

    // a_subconst_49_uid659_i_arrayidx10_relu10_mult_x_im3(BITJOIN,658)@67
    assign a_subconst_49_uid659_i_arrayidx10_relu10_mult_x_im3_q = {a_subconst_49_sumAHighB_uid658_i_arrayidx10_relu10_mult_x_im3_q, lowRangeB_uid656_i_arrayidx10_relu10_mult_x_im3_b};

    // sR_bottomRange_uid663_i_arrayidx10_relu10_mult_x_im3(BITSELECT,662)@67
    assign sR_bottomRange_uid663_i_arrayidx10_relu10_mult_x_im3_in = a_subconst_49_uid659_i_arrayidx10_relu10_mult_x_im3_q[23:0];
    assign sR_bottomRange_uid663_i_arrayidx10_relu10_mult_x_im3_b = sR_bottomRange_uid663_i_arrayidx10_relu10_mult_x_im3_in[23:0];

    // redist17_sR_bottomRange_uid663_i_arrayidx10_relu10_mult_x_im3_b_1_0(REG,1632)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sR_bottomRange_uid663_i_arrayidx10_relu10_mult_x_im3_b_1_0_q <= $unsigned(24'b000000000000000000000000);
        end
        else if (SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_backEN == 1'b1)
        begin
            redist17_sR_bottomRange_uid663_i_arrayidx10_relu10_mult_x_im3_b_1_0_q <= $unsigned(sR_bottomRange_uid663_i_arrayidx10_relu10_mult_x_im3_b);
        end
    end

    // sR_mergedSignalTM_uid664_i_arrayidx10_relu10_mult_x_im3(BITJOIN,663)@68
    assign sR_mergedSignalTM_uid664_i_arrayidx10_relu10_mult_x_im3_q = {redist17_sR_bottomRange_uid663_i_arrayidx10_relu10_mult_x_im3_b_1_0_q, sR_bottomExtension_uid593_i_arrayidx10_relu10_mult_x_im0_q};

    // i_arrayidx23_relu10_mult_x_sums_align_2(BITSHIFT,311)@68
    assign i_arrayidx23_relu10_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid664_i_arrayidx10_relu10_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx23_relu10_mult_x_sums_align_2_q = i_arrayidx23_relu10_mult_x_sums_align_2_qint[47:0];

    // i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,1545)@68
    assign i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_arrayidx23_relu10_mult_x_sums_align_2_q};

    // highBBits_uid588_i_arrayidx10_relu10_mult_x_im0(BITSELECT,587)@66
    assign highBBits_uid588_i_arrayidx10_relu10_mult_x_im0_b = i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_b[17:4];

    // redist18_highBBits_uid588_i_arrayidx10_relu10_mult_x_im0_b_1_0(REG,1633)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_highBBits_uid588_i_arrayidx10_relu10_mult_x_im0_b_1_0_q <= $unsigned(14'b00000000000000);
        end
        else if (SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_backEN == 1'b1)
        begin
            redist18_highBBits_uid588_i_arrayidx10_relu10_mult_x_im0_b_1_0_q <= $unsigned(highBBits_uid588_i_arrayidx10_relu10_mult_x_im0_b);
        end
    end

    // highBBits_uid583_i_arrayidx10_relu10_mult_x_im0(BITSELECT,582)@66
    assign highBBits_uid583_i_arrayidx10_relu10_mult_x_im0_b = i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_b[17:1];

    // addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0(ADD,583)@66 + 1
    assign addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_a = {1'b0, i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_b};
    assign addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_b = {2'b00, highBBits_uid583_i_arrayidx10_relu10_mult_x_im0_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_o <= $unsigned(addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_a) + $unsigned(addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_b);
        end
    end
    assign addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_q = addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_o[18:0];

    // lowRangeB_uid582_i_arrayidx10_relu10_mult_x_im0(BITSELECT,581)@66
    assign lowRangeB_uid582_i_arrayidx10_relu10_mult_x_im0_in = i_arrayidx10_relu10_mult_x_bs1_merged_bit_select_b[0:0];
    assign lowRangeB_uid582_i_arrayidx10_relu10_mult_x_im0_b = lowRangeB_uid582_i_arrayidx10_relu10_mult_x_im0_in[0:0];

    // redist19_lowRangeB_uid582_i_arrayidx10_relu10_mult_x_im0_b_1_0(REG,1634)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_lowRangeB_uid582_i_arrayidx10_relu10_mult_x_im0_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_backEN == 1'b1)
        begin
            redist19_lowRangeB_uid582_i_arrayidx10_relu10_mult_x_im0_b_1_0_q <= $unsigned(lowRangeB_uid582_i_arrayidx10_relu10_mult_x_im0_b);
        end
    end

    // add_uid585_i_arrayidx10_relu10_mult_x_im0(BITJOIN,584)@67
    assign add_uid585_i_arrayidx10_relu10_mult_x_im0_q = {addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_q, redist19_lowRangeB_uid582_i_arrayidx10_relu10_mult_x_im0_b_1_0_q};

    // a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0(ADD,588)@67 + 1
    assign a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_a = {1'b0, add_uid585_i_arrayidx10_relu10_mult_x_im0_q};
    assign a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_b = {7'b0000000, redist18_highBBits_uid588_i_arrayidx10_relu10_mult_x_im0_b_1_0_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_o <= 21'b0;
        end
        else if (SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_backEN == 1'b1)
        begin
            a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_o <= $unsigned(a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_a) + $unsigned(a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_b);
        end
    end
    assign a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_q = a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_o[20:0];

    // i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2(BITSELECT,1510)@68
    assign i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b = $unsigned(a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_q[19:0]);

    // i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1(BITSELECT,1509)@68
    assign i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b = $unsigned(redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_66_1_q[3:0]);

    // i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,1539)@68
    assign i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b, i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b, i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b, sR_bottomExtension_uid593_i_arrayidx10_relu10_mult_x_im0_q};

    // i_arrayidx10_relu10_mult_x_sums_align_2(BITSHIFT,275)@68
    assign i_arrayidx10_relu10_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid664_i_arrayidx10_relu10_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx10_relu10_mult_x_sums_align_2_q = i_arrayidx10_relu10_mult_x_sums_align_2_qint[47:0];

    // i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,1518)@68
    assign i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_arrayidx10_relu10_mult_x_sums_align_2_q};

    // i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,1512)@68
    assign i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b, i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b, i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b, sR_bottomExtension_uid593_i_arrayidx10_relu10_mult_x_im0_q};

    // i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p1_of_2(ADD,1428)@68 + 1
    assign i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D2};
    assign i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D3};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_2(STALLENABLE,2080)
    // Valid signal propagation
    assign SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_out_stall_out | ~ (SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_2_wireValid = bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11(BLACKBOX,112)@68
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@69
    // out out_stall_out@20000000
    // out out_valid_out@69
    relu1_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_0 thei_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_backStall),
        .in_valid_in(SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11(BITJOIN,1676)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_q = i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11(BITSELECT,1677)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_q[63:0]);

    // i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,1552)@69
    assign i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_b[51:0]);
    assign i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_b[63:52]);

    // i_arrayidx23_relu10_add_x_p1_of_2(ADD,1392)@69 + 1
    assign i_arrayidx23_relu10_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_D0};
    assign i_arrayidx23_relu10_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_relu10_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx23_relu10_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_relu10_add_x_p1_of_2_o <= $unsigned(i_arrayidx23_relu10_add_x_p1_of_2_a) + $unsigned(i_arrayidx23_relu10_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx23_relu10_add_x_p1_of_2_c[0] = i_arrayidx23_relu10_add_x_p1_of_2_o[52];
    assign i_arrayidx23_relu10_add_x_p1_of_2_q = i_arrayidx23_relu10_add_x_p1_of_2_o[51:0];

    // i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p2_of_2(ADD,1429)@69 + 1
    assign i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D5;
    assign i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D3}, 1'b1 };
    assign i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D4}, i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p2_of_2_o <= 27'b0;
        end
        else if (SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p2_of_2_o[25:1];

    // i_arrayidx23_relu10_add_x_BitSelect_for_b_tessel1_0(BITSELECT,1492)@70
    assign i_arrayidx23_relu10_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx23_relu10_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,1494)@70
    assign i_arrayidx23_relu10_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx23_relu10_add_x_BitSelect_for_b_tessel1_0_b};

    // redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,1626)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(12'b000000000000);
        end
        else if (SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx23_relu10_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,1489)@70
    assign i_arrayidx23_relu10_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_1(REG,1644)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_1_q <= $unsigned(SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D6);
        end
    end

    // SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2(STALLENABLE,2044)
    // Valid signal propagation
    assign SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_V0 = SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_R_v_0;
    // Stall signal propagation
    assign SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_s_tv_0 = SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_backStall & SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_R_v_0;
    // Backward Enable generation
    assign SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_backEN = ~ (SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_v_s_0 = SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_backEN & SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_V;
    // Backward Stall generation
    assign SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_backStall = ~ (SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_backEN == 1'b0)
            begin
                SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_R_v_0 <= SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_R_v_0 & SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_s_tv_0;
            end
            else
            begin
                SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_R_v_0 <= SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_v_s_0;
            end

        end
    end

    // SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2(STALLREG,2250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_r_valid <= 1'b0;
            SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_r_valid <= SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_backStall & (SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_r_valid | SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_i_valid);

            if (SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_r_data0 <= $unsigned(redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_i_valid = SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_V2;
    // Stall signal propagation
    assign SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_backStall = SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_r_valid | ~ (SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_i_valid);

    // Valid
    assign SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_V = SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_r_valid == 1'b1 ? SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_r_valid : SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_i_valid;

    assign SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_D0 = SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_r_valid == 1'b1 ? SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_r_data0 : redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_1_q;

    // i_arrayidx10_relu10_add_x_p1_of_2(ADD,1365)@69 + 1
    assign i_arrayidx10_relu10_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_D0};
    assign i_arrayidx10_relu10_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_relu10_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_relu10_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_relu10_add_x_p1_of_2_o <= $unsigned(i_arrayidx10_relu10_add_x_p1_of_2_a) + $unsigned(i_arrayidx10_relu10_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx10_relu10_add_x_p1_of_2_c[0] = i_arrayidx10_relu10_add_x_p1_of_2_o[52];
    assign i_arrayidx10_relu10_add_x_p1_of_2_q = i_arrayidx10_relu10_add_x_p1_of_2_o[51:0];

    // i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2(ADD,1411)@69 + 1
    assign i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D2;
    assign i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D1}, i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_o <= 27'b0;
        end
        else if (SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_o[25:1];

    // i_arrayidx10_relu10_add_x_BitSelect_for_b_tessel1_0(BITSELECT,1460)@70
    assign i_arrayidx10_relu10_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx10_relu10_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,1462)@70
    assign i_arrayidx10_relu10_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx10_relu10_add_x_BitSelect_for_b_tessel1_0_b};

    // SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_1(STALLENABLE,2078)
    // Valid signal propagation
    assign SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_out_stall_out | ~ (SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_1_wireValid = bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10(STALLENABLE,1784)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_consumed0 = (~ (SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_consumed1 = (~ (SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_wireValid = i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_out_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10(BLACKBOX,111)@68
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0@69
    // out out_stall_out@20000000
    // out out_valid_out@69
    relu1_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_0 thei_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_backStall),
        .in_valid_in(SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10(BITJOIN,1673)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_q = i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10(BITSELECT,1674)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_q[63:0]);

    // i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,1551)@69
    assign i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_b[51:0]);
    assign i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_b[63:52]);

    // redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,1627)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(12'b000000000000);
        end
        else if (SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx10_relu10_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,1457)@70
    assign i_arrayidx10_relu10_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,2024)
    // Valid signal propagation
    assign SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_backStall & SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_V1;
    // Backward Stall generation
    assign SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110(BITJOIN,1722)
    assign bubble_join_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_q = i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110(BITSELECT,1723)
    assign bubble_select_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_q[31:0]);

    // SE_out_redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo(STALLENABLE,2046)
    // Valid signal propagation
    assign SE_out_redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_V0 = SE_out_redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_backStall = SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_backStall | ~ (SE_out_redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_wireValid = redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_valid_out;

    // SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110(STALLENABLE,1812)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_V0 = SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_backStall = redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_wireValid = i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_valid_out;

    // redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo(STALLFIFO,1646)
    assign redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_V0;
    assign redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_stall_in = SE_out_redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_backStall;
    assign redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_data_in = bubble_select_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_b;
    assign redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_valid_in_bitsignaltemp = redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_valid_in[0];
    assign redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_stall_in_bitsignaltemp = redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_stall_in[0];
    assign redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_valid_out[0] = redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_valid_out_bitsignaltemp;
    assign redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_stall_out[0] = redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(67),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo (
        .valid_in(redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_valid_in_bitsignaltemp),
        .stall_in(redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_b),
        .valid_out(redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_valid_out_bitsignaltemp),
        .stall_out(redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_stall_out_bitsignaltemp),
        .data_out(redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo(BITJOIN,1745)
    assign bubble_join_redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_q = redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_data_out;

    // bubble_select_redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo(BITSELECT,1746)
    assign bubble_select_redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_b = $unsigned(bubble_join_redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_q[31:0]);

    // redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_69_0(REG,1647)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_69_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_69_0_q <= $unsigned(bubble_select_redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_b);
        end
    end

    // i_idxprom7_relu127_sel_x(BITSELECT,67)@68
    assign i_idxprom7_relu127_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_b[31:0]};

    // i_idxprom7_relu127_vt_select_31(BITSELECT,100)@68
    assign i_idxprom7_relu127_vt_select_31_b = i_idxprom7_relu127_sel_x_b[31:0];

    // i_idxprom7_relu127_vt_join(BITJOIN,99)@68
    assign i_idxprom7_relu127_vt_join_q = {c_i32_058_q, i_idxprom7_relu127_vt_select_31_b};

    // i_arrayidx10_relu10_dupName_0_mult_x_bs1_merged_bit_select(BITSELECT,1549)@68
    assign i_arrayidx10_relu10_dupName_0_mult_x_bs1_merged_bit_select_b = i_idxprom7_relu127_vt_join_q[17:0];
    assign i_arrayidx10_relu10_dupName_0_mult_x_bs1_merged_bit_select_c = i_idxprom7_relu127_vt_join_q[35:18];
    assign i_arrayidx10_relu10_dupName_0_mult_x_bs1_merged_bit_select_d = i_idxprom7_relu127_vt_join_q[53:36];
    assign i_arrayidx10_relu10_dupName_0_mult_x_bs1_merged_bit_select_e = i_idxprom7_relu127_vt_join_q[63:54];

    // xIfSign_mergedSignalTM_uid485_i_arrayidx10_relu10_dupName_0_mult_x_im6(BITJOIN,484)@68
    assign xIfSign_mergedSignalTM_uid485_i_arrayidx10_relu10_dupName_0_mult_x_im6_q = {GND_q, i_arrayidx10_relu10_dupName_0_mult_x_bs1_merged_bit_select_d};

    // padACst_uid363_i_arrayidx10_relu10_dupName_0_mult_x_im0(CONSTANT,362)
    assign padACst_uid363_i_arrayidx10_relu10_dupName_0_mult_x_im0_q = $unsigned(3'b000);

    // aPostPad_uid490_i_arrayidx10_relu10_dupName_0_mult_x_im6(BITJOIN,489)@68
    assign aPostPad_uid490_i_arrayidx10_relu10_dupName_0_mult_x_im6_q = {xIfSign_mergedSignalTM_uid485_i_arrayidx10_relu10_dupName_0_mult_x_im6_q, padACst_uid363_i_arrayidx10_relu10_dupName_0_mult_x_im0_q};

    // sub_uid491_i_arrayidx10_relu10_dupName_0_mult_x_im6(SUB,490)@68
    assign sub_uid491_i_arrayidx10_relu10_dupName_0_mult_x_im6_a = $unsigned({{1{aPostPad_uid490_i_arrayidx10_relu10_dupName_0_mult_x_im6_q[21]}}, aPostPad_uid490_i_arrayidx10_relu10_dupName_0_mult_x_im6_q});
    assign sub_uid491_i_arrayidx10_relu10_dupName_0_mult_x_im6_b = $unsigned({{4{xIfSign_mergedSignalTM_uid485_i_arrayidx10_relu10_dupName_0_mult_x_im6_q[18]}}, xIfSign_mergedSignalTM_uid485_i_arrayidx10_relu10_dupName_0_mult_x_im6_q});
    assign sub_uid491_i_arrayidx10_relu10_dupName_0_mult_x_im6_o = $unsigned($signed(sub_uid491_i_arrayidx10_relu10_dupName_0_mult_x_im6_a) - $signed(sub_uid491_i_arrayidx10_relu10_dupName_0_mult_x_im6_b));
    assign sub_uid491_i_arrayidx10_relu10_dupName_0_mult_x_im6_q = sub_uid491_i_arrayidx10_relu10_dupName_0_mult_x_im6_o[22:0];

    // sR_bottomRange_uid495_i_arrayidx10_relu10_dupName_0_mult_x_im6(BITSELECT,494)@68
    assign sR_bottomRange_uid495_i_arrayidx10_relu10_dupName_0_mult_x_im6_in = $unsigned(sub_uid491_i_arrayidx10_relu10_dupName_0_mult_x_im6_q[20:0]);
    assign sR_bottomRange_uid495_i_arrayidx10_relu10_dupName_0_mult_x_im6_b = $unsigned(sR_bottomRange_uid495_i_arrayidx10_relu10_dupName_0_mult_x_im6_in[20:0]);

    // redist21_sR_bottomRange_uid495_i_arrayidx10_relu10_dupName_0_mult_x_im6_b_1_0(REG,1636)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sR_bottomRange_uid495_i_arrayidx10_relu10_dupName_0_mult_x_im6_b_1_0_q <= $unsigned(21'b000000000000000000000);
        end
        else if (SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist21_sR_bottomRange_uid495_i_arrayidx10_relu10_dupName_0_mult_x_im6_b_1_0_q <= $unsigned(sR_bottomRange_uid495_i_arrayidx10_relu10_dupName_0_mult_x_im6_b);
        end
    end

    // sR_bottomExtension_uid368_i_arrayidx10_relu10_dupName_0_mult_x_im0(CONSTANT,367)
    assign sR_bottomExtension_uid368_i_arrayidx10_relu10_dupName_0_mult_x_im0_q = $unsigned(4'b0000);

    // sR_mergedSignalTM_uid496_i_arrayidx10_relu10_dupName_0_mult_x_im6(BITJOIN,495)@69
    assign sR_mergedSignalTM_uid496_i_arrayidx10_relu10_dupName_0_mult_x_im6_q = {redist21_sR_bottomRange_uid495_i_arrayidx10_relu10_dupName_0_mult_x_im6_b_1_0_q, sR_bottomExtension_uid368_i_arrayidx10_relu10_dupName_0_mult_x_im0_q};

    // i_arrayidx10_relu10_dupName_0_mult_x_sums_align_0(BITSHIFT,255)@69
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid496_i_arrayidx10_relu10_dupName_0_mult_x_im6_q, 11'b00000000000 };
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_align_0_q = i_arrayidx10_relu10_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select(BITSELECT,1553)@69
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_b = $unsigned(i_arrayidx10_relu10_dupName_0_mult_x_sums_align_0_q[26:0]);
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c = $unsigned(i_arrayidx10_relu10_dupName_0_mult_x_sums_align_0_q[35:27]);

    // i_arrayidx23_relu10_dupName_0_mult_x_sums_align_0(BITSHIFT,291)@69
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid496_i_arrayidx10_relu10_dupName_0_mult_x_im6_q, 11'b00000000000 };
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_align_0_q = i_arrayidx23_relu10_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select(BITSELECT,1557)@69
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_b = $unsigned(i_arrayidx23_relu10_dupName_0_mult_x_sums_align_0_q[26:0]);
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c = $unsigned(i_arrayidx23_relu10_dupName_0_mult_x_sums_align_0_q[35:27]);

    // xIfSign_mergedSignalTM_uid548_i_arrayidx10_relu10_dupName_0_mult_x_im9(BITJOIN,547)@68
    assign xIfSign_mergedSignalTM_uid548_i_arrayidx10_relu10_dupName_0_mult_x_im9_q = {GND_q, i_arrayidx10_relu10_dupName_0_mult_x_bs1_merged_bit_select_e};

    // aPostPad_uid553_i_arrayidx10_relu10_dupName_0_mult_x_im9(BITJOIN,552)@68
    assign aPostPad_uid553_i_arrayidx10_relu10_dupName_0_mult_x_im9_q = {xIfSign_mergedSignalTM_uid548_i_arrayidx10_relu10_dupName_0_mult_x_im9_q, padACst_uid363_i_arrayidx10_relu10_dupName_0_mult_x_im0_q};

    // sub_uid554_i_arrayidx10_relu10_dupName_0_mult_x_im9(SUB,553)@68
    assign sub_uid554_i_arrayidx10_relu10_dupName_0_mult_x_im9_a = $unsigned({{1{aPostPad_uid553_i_arrayidx10_relu10_dupName_0_mult_x_im9_q[13]}}, aPostPad_uid553_i_arrayidx10_relu10_dupName_0_mult_x_im9_q});
    assign sub_uid554_i_arrayidx10_relu10_dupName_0_mult_x_im9_b = $unsigned({{4{xIfSign_mergedSignalTM_uid548_i_arrayidx10_relu10_dupName_0_mult_x_im9_q[10]}}, xIfSign_mergedSignalTM_uid548_i_arrayidx10_relu10_dupName_0_mult_x_im9_q});
    assign sub_uid554_i_arrayidx10_relu10_dupName_0_mult_x_im9_o = $unsigned($signed(sub_uid554_i_arrayidx10_relu10_dupName_0_mult_x_im9_a) - $signed(sub_uid554_i_arrayidx10_relu10_dupName_0_mult_x_im9_b));
    assign sub_uid554_i_arrayidx10_relu10_dupName_0_mult_x_im9_q = sub_uid554_i_arrayidx10_relu10_dupName_0_mult_x_im9_o[14:0];

    // sR_bottomRange_uid558_i_arrayidx10_relu10_dupName_0_mult_x_im9(BITSELECT,557)@68
    assign sR_bottomRange_uid558_i_arrayidx10_relu10_dupName_0_mult_x_im9_in = $unsigned(sub_uid554_i_arrayidx10_relu10_dupName_0_mult_x_im9_q[12:0]);
    assign sR_bottomRange_uid558_i_arrayidx10_relu10_dupName_0_mult_x_im9_b = $unsigned(sR_bottomRange_uid558_i_arrayidx10_relu10_dupName_0_mult_x_im9_in[12:0]);

    // redist20_sR_bottomRange_uid558_i_arrayidx10_relu10_dupName_0_mult_x_im9_b_1_0(REG,1635)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sR_bottomRange_uid558_i_arrayidx10_relu10_dupName_0_mult_x_im9_b_1_0_q <= $unsigned(13'b0000000000000);
        end
        else if (SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist20_sR_bottomRange_uid558_i_arrayidx10_relu10_dupName_0_mult_x_im9_b_1_0_q <= $unsigned(sR_bottomRange_uid558_i_arrayidx10_relu10_dupName_0_mult_x_im9_b);
        end
    end

    // sR_mergedSignalTM_uid559_i_arrayidx10_relu10_dupName_0_mult_x_im9(BITJOIN,558)@69
    assign sR_mergedSignalTM_uid559_i_arrayidx10_relu10_dupName_0_mult_x_im9_q = {redist20_sR_bottomRange_uid558_i_arrayidx10_relu10_dupName_0_mult_x_im9_b_1_0_q, sR_bottomExtension_uid368_i_arrayidx10_relu10_dupName_0_mult_x_im0_q};

    // i_arrayidx10_relu10_dupName_0_mult_x_sums_align_3(BITSHIFT,258)@69
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid559_i_arrayidx10_relu10_dupName_0_mult_x_im9_q, 11'b00000000000 };
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_align_3_q = i_arrayidx10_relu10_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,1554)@69
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_arrayidx10_relu10_dupName_0_mult_x_sums_align_3_q[8:0]);
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_arrayidx10_relu10_dupName_0_mult_x_sums_align_3_q[27:9]);

    // i_arrayidx23_relu10_dupName_0_mult_x_sums_align_3(BITSHIFT,294)@69
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid559_i_arrayidx10_relu10_dupName_0_mult_x_im9_q, 11'b00000000000 };
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_align_3_q = i_arrayidx23_relu10_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,1558)@69
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_arrayidx23_relu10_dupName_0_mult_x_sums_align_3_q[8:0]);
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_arrayidx23_relu10_dupName_0_mult_x_sums_align_3_q[27:9]);

    // xIfSign_mergedSignalTM_uid422_i_arrayidx10_relu10_dupName_0_mult_x_im3(BITJOIN,421)@68
    assign xIfSign_mergedSignalTM_uid422_i_arrayidx10_relu10_dupName_0_mult_x_im3_q = {GND_q, i_arrayidx10_relu10_dupName_0_mult_x_bs1_merged_bit_select_c};

    // aPostPad_uid427_i_arrayidx10_relu10_dupName_0_mult_x_im3(BITJOIN,426)@68
    assign aPostPad_uid427_i_arrayidx10_relu10_dupName_0_mult_x_im3_q = {xIfSign_mergedSignalTM_uid422_i_arrayidx10_relu10_dupName_0_mult_x_im3_q, padACst_uid363_i_arrayidx10_relu10_dupName_0_mult_x_im0_q};

    // sub_uid428_i_arrayidx10_relu10_dupName_0_mult_x_im3(SUB,427)@68
    assign sub_uid428_i_arrayidx10_relu10_dupName_0_mult_x_im3_a = $unsigned({{1{aPostPad_uid427_i_arrayidx10_relu10_dupName_0_mult_x_im3_q[21]}}, aPostPad_uid427_i_arrayidx10_relu10_dupName_0_mult_x_im3_q});
    assign sub_uid428_i_arrayidx10_relu10_dupName_0_mult_x_im3_b = $unsigned({{4{xIfSign_mergedSignalTM_uid422_i_arrayidx10_relu10_dupName_0_mult_x_im3_q[18]}}, xIfSign_mergedSignalTM_uid422_i_arrayidx10_relu10_dupName_0_mult_x_im3_q});
    assign sub_uid428_i_arrayidx10_relu10_dupName_0_mult_x_im3_o = $unsigned($signed(sub_uid428_i_arrayidx10_relu10_dupName_0_mult_x_im3_a) - $signed(sub_uid428_i_arrayidx10_relu10_dupName_0_mult_x_im3_b));
    assign sub_uid428_i_arrayidx10_relu10_dupName_0_mult_x_im3_q = sub_uid428_i_arrayidx10_relu10_dupName_0_mult_x_im3_o[22:0];

    // sR_bottomRange_uid432_i_arrayidx10_relu10_dupName_0_mult_x_im3(BITSELECT,431)@68
    assign sR_bottomRange_uid432_i_arrayidx10_relu10_dupName_0_mult_x_im3_in = $unsigned(sub_uid428_i_arrayidx10_relu10_dupName_0_mult_x_im3_q[20:0]);
    assign sR_bottomRange_uid432_i_arrayidx10_relu10_dupName_0_mult_x_im3_b = $unsigned(sR_bottomRange_uid432_i_arrayidx10_relu10_dupName_0_mult_x_im3_in[20:0]);

    // redist22_sR_bottomRange_uid432_i_arrayidx10_relu10_dupName_0_mult_x_im3_b_1_0(REG,1637)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sR_bottomRange_uid432_i_arrayidx10_relu10_dupName_0_mult_x_im3_b_1_0_q <= $unsigned(21'b000000000000000000000);
        end
        else if (SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist22_sR_bottomRange_uid432_i_arrayidx10_relu10_dupName_0_mult_x_im3_b_1_0_q <= $unsigned(sR_bottomRange_uid432_i_arrayidx10_relu10_dupName_0_mult_x_im3_b);
        end
    end

    // sR_mergedSignalTM_uid433_i_arrayidx10_relu10_dupName_0_mult_x_im3(BITJOIN,432)@69
    assign sR_mergedSignalTM_uid433_i_arrayidx10_relu10_dupName_0_mult_x_im3_q = {redist22_sR_bottomRange_uid432_i_arrayidx10_relu10_dupName_0_mult_x_im3_b_1_0_q, sR_bottomExtension_uid368_i_arrayidx10_relu10_dupName_0_mult_x_im0_q};

    // i_arrayidx23_relu10_dupName_0_mult_x_sums_align_2(BITSHIFT,293)@69
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid433_i_arrayidx10_relu10_dupName_0_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_align_2_q = i_arrayidx23_relu10_dupName_0_mult_x_sums_align_2_qint[42:0];

    // i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,1531)@69
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_arrayidx23_relu10_dupName_0_mult_x_sums_align_2_q};

    // xIfSign_mergedSignalTM_uid359_i_arrayidx10_relu10_dupName_0_mult_x_im0(BITJOIN,358)@68
    assign xIfSign_mergedSignalTM_uid359_i_arrayidx10_relu10_dupName_0_mult_x_im0_q = {GND_q, i_arrayidx10_relu10_dupName_0_mult_x_bs1_merged_bit_select_b};

    // aPostPad_uid364_i_arrayidx10_relu10_dupName_0_mult_x_im0(BITJOIN,363)@68
    assign aPostPad_uid364_i_arrayidx10_relu10_dupName_0_mult_x_im0_q = {xIfSign_mergedSignalTM_uid359_i_arrayidx10_relu10_dupName_0_mult_x_im0_q, padACst_uid363_i_arrayidx10_relu10_dupName_0_mult_x_im0_q};

    // sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0(SUB,364)@68 + 1
    assign sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_a = $unsigned({{1{aPostPad_uid364_i_arrayidx10_relu10_dupName_0_mult_x_im0_q[21]}}, aPostPad_uid364_i_arrayidx10_relu10_dupName_0_mult_x_im0_q});
    assign sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_b = $unsigned({{4{xIfSign_mergedSignalTM_uid359_i_arrayidx10_relu10_dupName_0_mult_x_im0_q[18]}}, xIfSign_mergedSignalTM_uid359_i_arrayidx10_relu10_dupName_0_mult_x_im0_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_o <= 23'b0;
        end
        else if (SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_o <= $unsigned($signed(sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_a) - $signed(sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_b));
        end
    end
    assign sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_q = sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_o[22:0];

    // i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1(BITSELECT,1496)@69
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b = $unsigned(sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_q[20:0]);

    // i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,1525)@69
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_b, i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b, sR_bottomExtension_uid368_i_arrayidx10_relu10_dupName_0_mult_x_im0_q};

    // i_arrayidx10_relu10_dupName_0_mult_x_sums_align_2(BITSHIFT,257)@69
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid433_i_arrayidx10_relu10_dupName_0_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_align_2_q = i_arrayidx10_relu10_dupName_0_mult_x_sums_align_2_qint[42:0];

    // i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,1504)@69
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_arrayidx10_relu10_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,1498)@69
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_b, i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b, sR_bottomExtension_uid368_i_arrayidx10_relu10_dupName_0_mult_x_im0_q};

    // SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0(STALLENABLE,1880)
    // Valid signal propagation
    assign SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_V0 = SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_R_v_0;
    // Stall signal propagation
    assign SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_s_tv_0 = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall & SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_R_v_0;
    // Backward Enable generation
    assign SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_backEN = ~ (SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_v_s_0 = SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_backEN & SE_out_redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_66_fifo_V0;
    // Backward Stall generation
    assign SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_backStall = ~ (SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_backEN == 1'b0)
            begin
                SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_R_v_0 <= SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_R_v_0 & SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_s_tv_0;
            end
            else
            begin
                SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_R_v_0 <= SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(STALLREG,2221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= 19'bxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data5 <= 19'bxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data6 <= 9'bxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data7 <= 9'bxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data8 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall & (SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid | SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
                SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q);
                SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= $unsigned(i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
                SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= $unsigned(i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q);
                SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= $unsigned(i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
                SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data5 <= $unsigned(i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
                SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data6 <= $unsigned(i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c);
                SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data7 <= $unsigned(i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c);
                SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data8 <= $unsigned(redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_69_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_i_valid = SE_sub_uid365_i_arrayidx10_relu10_dupName_0_mult_x_im0_V0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid : SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D0 = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data0 : i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    // Data1
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D1 = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data1 : i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    // Data2
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D2 = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data2 : i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    // Data3
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D3 = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data3 : i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    // Data4
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D4 = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data4 : i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    // Data5
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D5 = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data5 : i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    // Data6
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D6 = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data6 : i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c;
    // Data7
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D7 = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data7 : i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c;
    // Data8
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D8 = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data8 : redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_69_0_q;

    // i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(ADD,1401)@69 + 1
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D0};
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(ADD,1419)@69 + 1
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D2};
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D3};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2(STALLREG,2222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_r_valid <= SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx23_relu10_add_x_p1_of_2_q);
                SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_and0 = SE_i_arrayidx23_relu10_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_i_valid = SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V2 & SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_backStall = SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_V = SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_D0 = SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_r_data0 : i_arrayidx23_relu10_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_D1 = SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_r_data1 : i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;

    // redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_69_1(REG,1648)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_69_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_69_1_q <= $unsigned(SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D8);
        end
    end

    // redist2_i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0(REG,1620)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(19'b0000000000000000000);
        end
        else if (SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist2_i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D4);
        end
    end

    // i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,1534)@70
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist2_i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q};

    // i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a(CONSTANT,1396)
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q = $unsigned(11'b00000000000);

    // redist3_i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c_1_0(REG,1621)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c_1_0_q <= $unsigned(9'b000000000);
        end
        else if (SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist3_i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D6);
        end
    end

    // i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,1528)@70
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, redist3_i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c_1_0_q};

    // redist6_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0(REG,1624)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(19'b0000000000000000000);
        end
        else if (SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist6_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D5);
        end
    end

    // i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,1507)@70
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist6_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q};

    // redist7_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c_1_0(REG,1625)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c_1_0_q <= $unsigned(9'b000000000);
        end
        else if (SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist7_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D7);
        end
    end

    // i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,1501)@70
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, redist7_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c_1_0_q};

    // i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(ADD,1420)@70 + 1
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D5;
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D3}, 1'b1 };
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D4}, i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= 22'b0;
        end
        else if (SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o[20:1];

    // i_arrayidx23_relu10_dupName_0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,1470)@71
    assign i_arrayidx23_relu10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx23_relu10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,1472)@71
    assign i_arrayidx23_relu10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx23_relu10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx23_relu10_add_x_p2_of_2(ADD,1393)@70 + 1
    assign i_arrayidx23_relu10_add_x_p2_of_2_cin = SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_D2;
    assign i_arrayidx23_relu10_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx23_relu10_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_D1}, i_arrayidx23_relu10_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_relu10_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx23_relu10_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_relu10_add_x_p2_of_2_o <= $unsigned(i_arrayidx23_relu10_add_x_p2_of_2_a) + $unsigned(i_arrayidx23_relu10_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx23_relu10_add_x_p2_of_2_q = i_arrayidx23_relu10_add_x_p2_of_2_o[13:1];

    // i_arrayidx23_relu10_dupName_0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,1465)@71
    assign i_arrayidx23_relu10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx23_relu10_add_x_p2_of_2_q[11:0]);

    // i_arrayidx23_relu10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,1467)@71
    assign i_arrayidx23_relu10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx23_relu10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b};

    // SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2(STALLREG,2227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_valid <= SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx23_relu10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx23_relu10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_and0 = SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_and1 = SE_i_arrayidx23_relu10_add_x_p2_of_2_V0 & SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_i_valid = SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V1 & SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_backStall = SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_V = SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_D0 = SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_data0 : i_arrayidx23_relu10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_D1 = SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_data1 : i_arrayidx23_relu10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_D2 = SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_r_data2 : i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_c;

    // i_arrayidx10_relu10_dupName_0_add_x_p1_of_2(ADD,1347)@70 + 1
    assign i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_D0};
    assign i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_o <= $unsigned(i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_a) + $unsigned(i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_c[0] = i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_o[52];
    assign i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_q = i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_o[51:0];

    // i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(ADD,1402)@70 + 1
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D2;
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D1}, i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= 22'b0;
        end
        else if (SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o[20:1];

    // i_arrayidx10_relu10_dupName_0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,1438)@71
    assign i_arrayidx10_relu10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx10_relu10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,1440)@71
    assign i_arrayidx10_relu10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx10_relu10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx10_relu10_add_x_p2_of_2(ADD,1366)@70 + 1
    assign i_arrayidx10_relu10_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_D2;
    assign i_arrayidx10_relu10_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx10_relu10_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_D1}, i_arrayidx10_relu10_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_relu10_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_relu10_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_relu10_add_x_p2_of_2_o <= $unsigned(i_arrayidx10_relu10_add_x_p2_of_2_a) + $unsigned(i_arrayidx10_relu10_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx10_relu10_add_x_p2_of_2_q = i_arrayidx10_relu10_add_x_p2_of_2_o[13:1];

    // i_arrayidx10_relu10_dupName_0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,1433)@71
    assign i_arrayidx10_relu10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx10_relu10_add_x_p2_of_2_q[11:0]);

    // i_arrayidx10_relu10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,1435)@71
    assign i_arrayidx10_relu10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx10_relu10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b};

    // SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2(STALLREG,2233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_r_valid <= SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_q);
                SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_and0 = SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_V1 & SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_backStall = SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_V = SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_D0 = SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_r_data0 : i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_D1 = SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_r_data1 : i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // i_arrayidx10_relu10_dupName_1_add_x_p1_of_2(ADD,1356)@71 + 1
    assign i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_D0};
    assign i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_o <= $unsigned(i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_a) + $unsigned(i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_c[0] = i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_o[52];
    assign i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q = i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_o[51:0];

    // i_arrayidx10_relu10_dupName_0_add_x_p2_of_2(ADD,1348)@71 + 1
    assign i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_D2;
    assign i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_D1}, i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_o <= $unsigned(i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_a) + $unsigned(i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_q = i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_o[13:1];

    // i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_a_tessel1_0(BITSELECT,1443)@72
    assign i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_q[11:0]);

    // i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,1445)@72
    assign i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b};

    // SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0(STALLREG,2237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_valid <= SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_V = SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q;

    // SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2(STALLENABLE,1934)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_V0 = SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_V1 = SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_backStall & SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_s_tv_1 = SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_or0 = SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_v_s_0 = SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_backEN & SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_R_v_0 & SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_R_v_1 & SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2(STALLREG,2236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_valid <= SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_and0 = SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_and1 = SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_V0 & SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_i_valid = SE_i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_tessel1_0_V0 & SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_backStall = SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_V = SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_D0 = SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_data0 : i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_D1 = SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_data1 : i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_D2 = SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_r_data2 : i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_c;

    // SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2(STALLENABLE,1933)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_V0 = SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_backStall & SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_v_s_0 = SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_backEN & SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_R_v_0 & SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2(STALLREG,2235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_valid <= SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx10_relu10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_relu10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_and0 = SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_and1 = SE_i_arrayidx10_relu10_add_x_p2_of_2_V0 & SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_i_valid = SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V0 & SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_backStall = SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_V = SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_D0 = SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_data0 : i_arrayidx10_relu10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_D1 = SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_data1 : i_arrayidx10_relu10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_D2 = SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_r_data2 : i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_c;

    // SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(STALLENABLE,1947)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V0 = SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V1 = SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V2 = SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0 = SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 = SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 = SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_backStall & SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or0 = SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or1 = SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 | SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or0;
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN = ~ (SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 | SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_v_s_0 = SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN & SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall = ~ (SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= 1'b0;
            SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 & SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 & SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 & SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(STALLREG,2226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= 20'bxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= 20'bxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= 1'bx;
            SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= 20'bxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data4 <= 20'bxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data5 <= 1'bx;
            SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data6 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall & (SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid | SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= $unsigned(i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= $unsigned(i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= $unsigned(i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data4 <= $unsigned(i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data5 <= $unsigned(i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data6 <= $unsigned(redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_69_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_i_valid = SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid : SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D0 = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data0 : i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D1 = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data1 : i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D2 = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data2 : i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data3
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D3 = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data3 : i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    // Data4
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D4 = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data4 : i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    // Data5
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D5 = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data5 : i_arrayidx23_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data6
    assign SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D6 = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data6 : redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_69_1_q;

    // SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(STALLENABLE,1946)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V0 = SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V1 = SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V2 = SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 = SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall & SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2 = SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or0 = SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or1 = SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 | SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or0;
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN = ~ (SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2 | SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_v_s_0 = SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN & SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall = ~ (SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= 1'b0;
            SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 & SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 & SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 & SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2(STALLENABLE,1932)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_V0 = SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_V1 = SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_backStall & SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_or0 = SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_v_s_0 = SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_backEN & SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_R_v_0 & SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_R_v_1 & SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2(STALLREG,2232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_r_valid <= SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_relu10_add_x_p1_of_2_q);
                SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_and0 = SE_i_arrayidx10_relu10_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_i_valid = SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V0 & SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_backStall = SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_V = SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_D0 = SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_r_data0 : i_arrayidx10_relu10_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_D1 = SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_r_data1 : i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;

    // SE_i_arrayidx10_relu10_add_x_p1_of_2(STALLENABLE,1937)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu10_add_x_p1_of_2_V0 = SE_i_arrayidx10_relu10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_relu10_add_x_p1_of_2_V1 = SE_i_arrayidx10_relu10_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx10_relu10_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx10_relu10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_relu10_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_backStall & SE_i_arrayidx10_relu10_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx10_relu10_add_x_p1_of_2_or0 = SE_i_arrayidx10_relu10_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_relu10_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx10_relu10_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx10_relu10_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_relu10_add_x_p1_of_2_v_s_0 = SE_i_arrayidx10_relu10_add_x_p1_of_2_backEN & SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_relu10_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx10_relu10_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_relu10_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_relu10_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_relu10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_relu10_add_x_p1_of_2_R_v_0 & SE_i_arrayidx10_relu10_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_relu10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_relu10_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_relu10_add_x_p1_of_2_R_v_1 & SE_i_arrayidx10_relu10_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_relu10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_relu10_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx10_relu10_add_x_p2_of_2(STALLENABLE,1938)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu10_add_x_p2_of_2_V0 = SE_i_arrayidx10_relu10_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx10_relu10_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx10_relu10_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx10_relu10_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx10_relu10_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx10_relu10_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_relu10_add_x_p2_of_2_v_s_0 = SE_i_arrayidx10_relu10_add_x_p2_of_2_backEN & SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_relu10_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx10_relu10_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_relu10_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_relu10_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_relu10_add_x_p2_of_2_R_v_0 & SE_i_arrayidx10_relu10_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_relu10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_relu10_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_relu10_add_x_p2_of_2(STALLREG,2234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_valid <= SE_i_arrayidx10_relu10_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx10_relu10_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_relu10_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx10_relu10_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_and0 = SE_i_arrayidx10_relu10_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_and1 = SE_redist9_i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_i_valid = SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_V0 & SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_backStall = SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_V = SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_D0 = SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_data0 : i_arrayidx10_relu10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_D1 = SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_data1 : i_arrayidx10_relu10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_D2 = SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_r_data2 : i_arrayidx10_relu10_add_x_p1_of_2_c;

    // SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2(STALLENABLE,1949)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_V0 = SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_V1 = SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_V2 = SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0 = SR_SE_i_arrayidx10_relu10_add_x_p2_of_2_backStall & SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 = SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_backStall & SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 = SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_backStall & SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_or0 = SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_or1 = SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 | SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_or0;
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_backEN = ~ (SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 | SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0 = SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_backEN & SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_backStall = ~ (SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= 1'b0;
            SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 & SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 & SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 & SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx23_relu10_add_x_p2_of_2(STALLENABLE,1945)
    // Valid signal propagation
    assign SE_i_arrayidx23_relu10_add_x_p2_of_2_V0 = SE_i_arrayidx23_relu10_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx23_relu10_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx23_relu10_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx23_relu10_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx23_relu10_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx23_relu10_add_x_p2_of_2_v_s_0 = SE_i_arrayidx23_relu10_add_x_p2_of_2_backEN & SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx23_relu10_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx23_relu10_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx23_relu10_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx23_relu10_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_relu10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx23_relu10_add_x_p2_of_2_R_v_0 & SE_i_arrayidx23_relu10_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx23_relu10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx23_relu10_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx23_relu10_add_x_p2_of_2(STALLREG,2225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_valid <= SE_i_arrayidx23_relu10_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx23_relu10_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx23_relu10_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx23_relu10_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_and0 = SE_i_arrayidx23_relu10_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_and1 = SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_i_valid = SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_V1 & SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_backStall = SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_V = SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_D0 = SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_data0 : i_arrayidx23_relu10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_D1 = SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_data1 : i_arrayidx23_relu10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_D2 = SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_r_data2 : i_arrayidx23_relu10_add_x_p1_of_2_c;

    // SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,2023)
    // Valid signal propagation
    assign SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_backStall & SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_V1;
    // Backward Stall generation
    assign SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11(STALLENABLE,1786)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_consumed0 = (~ (SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_consumed1 = (~ (SE_redist8_i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_wireValid = i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_out_valid_out;

    // SE_i_arrayidx23_relu10_add_x_p1_of_2(STALLENABLE,1944)
    // Valid signal propagation
    assign SE_i_arrayidx23_relu10_add_x_p1_of_2_V0 = SE_i_arrayidx23_relu10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx23_relu10_add_x_p1_of_2_V1 = SE_i_arrayidx23_relu10_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx23_relu10_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx23_relu10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx23_relu10_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx23_relu10_add_x_p2_of_2_backStall & SE_i_arrayidx23_relu10_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx23_relu10_add_x_p1_of_2_or0 = SE_i_arrayidx23_relu10_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx23_relu10_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx23_relu10_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx23_relu10_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx23_relu10_add_x_p1_of_2_v_s_0 = SE_i_arrayidx23_relu10_add_x_p1_of_2_backEN & SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx23_relu10_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx23_relu10_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx23_relu10_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx23_relu10_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx23_relu10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_relu10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx23_relu10_add_x_p1_of_2_R_v_0 & SE_i_arrayidx23_relu10_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx23_relu10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx23_relu10_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx23_relu10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_relu10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx23_relu10_add_x_p1_of_2_R_v_1 & SE_i_arrayidx23_relu10_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx23_relu10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx23_relu10_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx23_relu10_add_x_p1_of_2(STALLREG,2220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_r_valid <= SE_i_arrayidx23_relu10_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_and0 = SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_V2;
    assign SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_out02110_relu11_V0 & SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_backStall = SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_V = SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_D0 = SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_r_data0 : i_arrayidx23_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_D1 = SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_r_data1 : i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p1_of_2_q;

    // redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_0(REG,1643)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_0_q <= $unsigned(SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D8);
        end
    end

    // redist0_i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0(REG,1618)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(24'b000000000000000000000000);
        end
        else if (SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist0_i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D4);
        end
    end

    // i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,1548)@69
    assign i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist0_i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q};

    // redist1_i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0(REG,1619)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q <= $unsigned(14'b00000000000000);
        end
        else if (SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist1_i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D6);
        end
    end

    // i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,1542)@69
    assign i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, redist1_i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q};

    // i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2(ADD,1410)@68 + 1
    assign i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D0};
    assign i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // redist4_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0(REG,1622)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(24'b000000000000000000000000);
        end
        else if (SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist4_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D5);
        end
    end

    // i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,1521)@69
    assign i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist4_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q};

    // redist5_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0(REG,1623)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q <= $unsigned(14'b00000000000000);
        end
        else if (SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist5_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D7);
        end
    end

    // i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,1515)@69
    assign i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, redist5_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q};

    // SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2(STALLREG,2224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= 25'bxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= 25'bxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= 1'bx;
            SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= 25'bxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data4 <= 25'bxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data5 <= 1'bx;
            SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data6 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_backStall & (SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_valid | SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= $unsigned(i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= $unsigned(i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= $unsigned(i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data4 <= $unsigned(i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data5 <= $unsigned(i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data6 <= $unsigned(redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_i_valid = SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_backStall = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_V = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_valid : SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D0 = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data0 : i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D1 = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data1 : i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D2 = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data2 : i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data3
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D3 = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data3 : i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    // Data4
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D4 = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data4 : i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    // Data5
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D5 = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data5 : i_arrayidx23_relu10_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data6
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_D6 = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_r_data6 : redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_0_q;

    // SR_SE_i_arrayidx10_relu10_add_x_p1_of_2(STALLREG,2231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_r_valid <= SE_i_arrayidx10_relu10_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_and0 = SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_V0;
    assign SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1024a28a28f32_in0209_relu10_V0 & SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_backStall = SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_V = SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_D0 = SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_r_data0 : i_arrayidx10_relu10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_D1 = SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_r_data1 : i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_q;

    // SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2(STALLENABLE,1948)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_V0 = SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_V1 = SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_V2 = SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_relu10_add_x_p1_of_2_backStall & SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p2_of_2_backStall & SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2 = SR_SE_i_arrayidx23_relu10_add_x_p1_of_2_backStall & SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_or0 = SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_or1 = SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 | SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_or0;
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_backEN = ~ (SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2 | SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0 = SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_backEN & SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_backStall = ~ (SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= 1'b0;
            SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 & SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 & SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 & SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2(STALLREG,2219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= 24'bxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data5 <= 24'bxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data6 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data7 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data8 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_backStall & (SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_valid | SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
                SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q);
                SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= $unsigned(i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
                SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= $unsigned(i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q);
                SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= $unsigned(i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
                SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data5 <= $unsigned(i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
                SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data6 <= $unsigned(i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c);
                SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data7 <= $unsigned(i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c);
                SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data8 <= $unsigned(redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_66_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_i_valid = SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_V0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_backStall = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_V = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_valid : SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D0 = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data0 : i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    // Data1
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D1 = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data1 : i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    // Data2
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D2 = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data2 : i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    // Data3
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D3 = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data3 : i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    // Data4
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D4 = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data4 : i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    // Data5
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D5 = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data5 : i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    // Data6
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D6 = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data6 : i_arrayidx23_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c;
    // Data7
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D7 = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data7 : i_arrayidx10_relu10_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c;
    // Data8
    assign SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_D8 = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_r_data8 : redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_66_1_q;

    // SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0(STALLENABLE,1901)
    // Valid signal propagation
    assign SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_V0 = SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_R_v_0;
    // Stall signal propagation
    assign SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_s_tv_0 = SR_SE_i_arrayidx10_relu10_mult_x_sums_result_add_0_0_p1_of_2_backStall & SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_R_v_0;
    // Backward Enable generation
    assign SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_backEN = ~ (SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_v_s_0 = SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_backEN & SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_V0;
    // Backward Stall generation
    assign SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_backStall = ~ (SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_backEN == 1'b0)
            begin
                SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_R_v_0 <= SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_R_v_0 & SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_s_tv_0;
            end
            else
            begin
                SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_R_v_0 <= SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_v_s_0;
            end

        end
    end

    // SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0(STALLENABLE,1898)
    // Valid signal propagation
    assign SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_V0 = SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_R_v_0;
    // Stall signal propagation
    assign SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_s_tv_0 = SE_a_subconst_49_sumAHighB_uid589_i_arrayidx10_relu10_mult_x_im0_backStall & SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_R_v_0;
    // Backward Enable generation
    assign SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_backEN = ~ (SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_v_s_0 = SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_backEN & SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_V0;
    // Backward Stall generation
    assign SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_backStall = ~ (SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_backEN == 1'b0)
            begin
                SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_R_v_0 <= SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_R_v_0 & SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_s_tv_0;
            end
            else
            begin
                SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_R_v_0 <= SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_v_s_0;
            end

        end
    end

    // SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo(STALLENABLE,2039)
    // Valid signal propagation
    assign SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_V0 = SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_backStall = SE_addsumAHighB_uid584_i_arrayidx10_relu10_mult_x_im0_backStall | ~ (SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_wireValid = redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_valid_out;

    // redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo(STALLFIFO,1640)
    assign redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_V0;
    assign redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_stall_in = SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_backStall;
    assign redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_data_in = bubble_select_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_b;
    assign redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_valid_in_bitsignaltemp = redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_valid_in[0];
    assign redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_stall_in_bitsignaltemp = redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_stall_in[0];
    assign redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_valid_out[0] = redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_valid_out_bitsignaltemp;
    assign redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_stall_out[0] = redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo (
        .valid_in(redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_b),
        .valid_out(redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114(STALLENABLE,1816)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_V0 = SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_backStall = redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_64_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_wireValid = i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131(STALLENABLE,1846)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_wireValid = i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_out_valid_out;

    // redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2(REG,1645)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_backEN == 1'b1)
        begin
            redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_q <= $unsigned(SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_D0);
        end
    end

    // i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131(BLACKBOX,142)@71
    // in in_stall_in@20000000
    // out out_data_out@72
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@72
    relu1_i_llvm_fpga_push_i32_k_019_pop1132_push27_0 thei_llvm_fpga_push_i32_k_019_pop1132_push27_relu131 (
        .in_data_in(redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_feedback_stall_out_27),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_relu13_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_V0),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_out_feedback_valid_out_27),
        .out_stall_out(i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114(BLACKBOX,127)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    relu1_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_0 thei_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114 (
        .in_data_in(bubble_select_relu1_B4_merge_reg_aunroll_x_i),
        .in_dir(bubble_select_relu1_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_27(i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_backStall),
        .in_valid_in(SE_out_relu1_B4_merge_reg_aunroll_x_V3),
        .out_data_out(i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_feedback_stall_out_27),
        .out_stall_out(i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126(STALLENABLE,1841)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_V0 = SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_backStall = i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_wireValid = SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_V;

    // SE_out_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126(STALLENABLE,1842)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_wireValid = i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_out_valid_out;

    // i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126(BLACKBOX,140)@71
    // in in_stall_in@20000000
    // out out_data_out@72
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    // out out_stall_out@20000000
    // out out_valid_out@72
    relu1_i_llvm_fpga_push_i32_i_018_pop1437_push31_0 thei_llvm_fpga_push_i32_i_018_pop1437_push31_relu126 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_D0),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_feedback_stall_out_31),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_V0),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_out_feedback_valid_out_31),
        .out_stall_out(i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110(BLACKBOX,125)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_31@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    relu1_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_0 thei_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110 (
        .in_data_in(bubble_select_relu1_B4_merge_reg_aunroll_x_e),
        .in_dir(bubble_select_relu1_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_31(i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_backStall),
        .in_valid_in(SE_out_relu1_B4_merge_reg_aunroll_x_V2),
        .out_data_out(i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_feedback_stall_out_31),
        .out_stall_out(i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg(STALLFIFO,2208)
    assign bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_valid_in = SE_out_relu1_B4_merge_reg_aunroll_x_V1;
    assign bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_relu1_B4_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg(STALLFIFO,2207)
    assign bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_valid_in = SE_out_relu1_B4_merge_reg_aunroll_x_V0;
    assign bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_relu1_B4_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_relu1_B4_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_relu1_B4_merge_reg_aunroll_x(STALLENABLE,1773)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_relu1_B4_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_relu1_B4_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_relu1_B4_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_relu1_B4_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_relu1_B4_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_relu1_B4_merge_reg_aunroll_x_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_relu1_B4_merge_reg_aunroll_x_fromReg0 <= SE_out_relu1_B4_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_relu1_B4_merge_reg_aunroll_x_fromReg1 <= SE_out_relu1_B4_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_relu1_B4_merge_reg_aunroll_x_fromReg2 <= SE_out_relu1_B4_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_relu1_B4_merge_reg_aunroll_x_fromReg3 <= SE_out_relu1_B4_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_relu1_B4_merge_reg_aunroll_x_fromReg4 <= SE_out_relu1_B4_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_relu1_B4_merge_reg_aunroll_x_fromReg5 <= SE_out_relu1_B4_merge_reg_aunroll_x_toReg5;
        end
    end
    // Input Stall processing
    assign SE_out_relu1_B4_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_relu1_B4_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_relu1_B4_merge_reg_aunroll_x_wireValid) | SE_out_relu1_B4_merge_reg_aunroll_x_fromReg0;
    assign SE_out_relu1_B4_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_relu1_B4_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_relu1_B4_merge_reg_aunroll_x_wireValid) | SE_out_relu1_B4_merge_reg_aunroll_x_fromReg1;
    assign SE_out_relu1_B4_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_stall_out) & SE_out_relu1_B4_merge_reg_aunroll_x_wireValid) | SE_out_relu1_B4_merge_reg_aunroll_x_fromReg2;
    assign SE_out_relu1_B4_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_stall_out) & SE_out_relu1_B4_merge_reg_aunroll_x_wireValid) | SE_out_relu1_B4_merge_reg_aunroll_x_fromReg3;
    assign SE_out_relu1_B4_merge_reg_aunroll_x_consumed4 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_relu1_B4_merge_reg_aunroll_x_wireValid) | SE_out_relu1_B4_merge_reg_aunroll_x_fromReg4;
    assign SE_out_relu1_B4_merge_reg_aunroll_x_consumed5 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_relu1_B4_merge_reg_aunroll_x_wireValid) | SE_out_relu1_B4_merge_reg_aunroll_x_fromReg5;
    // Consuming
    assign SE_out_relu1_B4_merge_reg_aunroll_x_StallValid = SE_out_relu1_B4_merge_reg_aunroll_x_backStall & SE_out_relu1_B4_merge_reg_aunroll_x_wireValid;
    assign SE_out_relu1_B4_merge_reg_aunroll_x_toReg0 = SE_out_relu1_B4_merge_reg_aunroll_x_StallValid & SE_out_relu1_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_relu1_B4_merge_reg_aunroll_x_toReg1 = SE_out_relu1_B4_merge_reg_aunroll_x_StallValid & SE_out_relu1_B4_merge_reg_aunroll_x_consumed1;
    assign SE_out_relu1_B4_merge_reg_aunroll_x_toReg2 = SE_out_relu1_B4_merge_reg_aunroll_x_StallValid & SE_out_relu1_B4_merge_reg_aunroll_x_consumed2;
    assign SE_out_relu1_B4_merge_reg_aunroll_x_toReg3 = SE_out_relu1_B4_merge_reg_aunroll_x_StallValid & SE_out_relu1_B4_merge_reg_aunroll_x_consumed3;
    assign SE_out_relu1_B4_merge_reg_aunroll_x_toReg4 = SE_out_relu1_B4_merge_reg_aunroll_x_StallValid & SE_out_relu1_B4_merge_reg_aunroll_x_consumed4;
    assign SE_out_relu1_B4_merge_reg_aunroll_x_toReg5 = SE_out_relu1_B4_merge_reg_aunroll_x_StallValid & SE_out_relu1_B4_merge_reg_aunroll_x_consumed5;
    // Backward Stall generation
    assign SE_out_relu1_B4_merge_reg_aunroll_x_or0 = SE_out_relu1_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_relu1_B4_merge_reg_aunroll_x_or1 = SE_out_relu1_B4_merge_reg_aunroll_x_consumed1 & SE_out_relu1_B4_merge_reg_aunroll_x_or0;
    assign SE_out_relu1_B4_merge_reg_aunroll_x_or2 = SE_out_relu1_B4_merge_reg_aunroll_x_consumed2 & SE_out_relu1_B4_merge_reg_aunroll_x_or1;
    assign SE_out_relu1_B4_merge_reg_aunroll_x_or3 = SE_out_relu1_B4_merge_reg_aunroll_x_consumed3 & SE_out_relu1_B4_merge_reg_aunroll_x_or2;
    assign SE_out_relu1_B4_merge_reg_aunroll_x_or4 = SE_out_relu1_B4_merge_reg_aunroll_x_consumed4 & SE_out_relu1_B4_merge_reg_aunroll_x_or3;
    assign SE_out_relu1_B4_merge_reg_aunroll_x_wireStall = ~ (SE_out_relu1_B4_merge_reg_aunroll_x_consumed5 & SE_out_relu1_B4_merge_reg_aunroll_x_or4);
    assign SE_out_relu1_B4_merge_reg_aunroll_x_backStall = SE_out_relu1_B4_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_relu1_B4_merge_reg_aunroll_x_V0 = SE_out_relu1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_relu1_B4_merge_reg_aunroll_x_fromReg0);
    assign SE_out_relu1_B4_merge_reg_aunroll_x_V1 = SE_out_relu1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_relu1_B4_merge_reg_aunroll_x_fromReg1);
    assign SE_out_relu1_B4_merge_reg_aunroll_x_V2 = SE_out_relu1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_relu1_B4_merge_reg_aunroll_x_fromReg2);
    assign SE_out_relu1_B4_merge_reg_aunroll_x_V3 = SE_out_relu1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_relu1_B4_merge_reg_aunroll_x_fromReg3);
    assign SE_out_relu1_B4_merge_reg_aunroll_x_V4 = SE_out_relu1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_relu1_B4_merge_reg_aunroll_x_fromReg4);
    assign SE_out_relu1_B4_merge_reg_aunroll_x_V5 = SE_out_relu1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_relu1_B4_merge_reg_aunroll_x_fromReg5);
    // Computing multiple Valid(s)
    assign SE_out_relu1_B4_merge_reg_aunroll_x_wireValid = relu1_B4_merge_reg_aunroll_x_out_valid_out;

    // coalesced_delay_1_fifo(STALLFIFO,1661)
    assign coalesced_delay_1_fifo_valid_in = SE_out_relu1_B4_merge_reg_aunroll_x_V5;
    assign coalesced_delay_1_fifo_stall_in = SR_SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(141),
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

    // SR_SE_out_coalesced_delay_1_fifo(STALLREG,2218)
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
                SR_SE_out_coalesced_delay_1_fifo_r_data0 <= $unsigned(sel_for_coalesced_delay_1_b);
                SR_SE_out_coalesced_delay_1_fifo_r_data1 <= $unsigned(redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data2 <= $unsigned(redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data3 <= $unsigned(redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data4 <= $unsigned(redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data5 <= $unsigned(sel_for_coalesced_delay_1_d);
                SR_SE_out_coalesced_delay_1_fifo_r_data6 <= $unsigned(sel_for_coalesced_delay_1_c);
                SR_SE_out_coalesced_delay_1_fifo_r_data7 <= $unsigned(sel_for_coalesced_delay_1_e);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SR_SE_out_coalesced_delay_1_fifo_i_valid = SE_redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_V0 & SR_SE_out_coalesced_delay_1_fifo_and0;
    // Stall signal propagation
    assign SR_SE_out_coalesced_delay_1_fifo_backStall = SR_SE_out_coalesced_delay_1_fifo_r_valid | ~ (SR_SE_out_coalesced_delay_1_fifo_i_valid);

    // Valid
    assign SR_SE_out_coalesced_delay_1_fifo_V = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_valid : SR_SE_out_coalesced_delay_1_fifo_i_valid;

    // Data0
    assign SR_SE_out_coalesced_delay_1_fifo_D0 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data0 : sel_for_coalesced_delay_1_b;
    // Data1
    assign SR_SE_out_coalesced_delay_1_fifo_D1 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data1 : redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q;
    // Data2
    assign SR_SE_out_coalesced_delay_1_fifo_D2 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data2 : redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q;
    // Data3
    assign SR_SE_out_coalesced_delay_1_fifo_D3 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data3 : redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q;
    // Data4
    assign SR_SE_out_coalesced_delay_1_fifo_D4 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data4 : redist37_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q;
    // Data5
    assign SR_SE_out_coalesced_delay_1_fifo_D5 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data5 : sel_for_coalesced_delay_1_d;
    // Data6
    assign SR_SE_out_coalesced_delay_1_fifo_D6 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data6 : sel_for_coalesced_delay_1_c;
    // Data7
    assign SR_SE_out_coalesced_delay_1_fifo_D7 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data7 : sel_for_coalesced_delay_1_e;

    // i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113(BLACKBOX,122)@141
    // in in_stall_in@20000000
    // out out_data_out@142
    // out out_feedback_stall_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@142
    relu1_i_llvm_fpga_pop_i1_notcmp1630_pop26_0 thei_llvm_fpga_pop_i1_notcmp1630_pop26_relu113 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D7),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D4),
        .in_feedback_in_26(i_llvm_fpga_push_i1_notcmp1630_push26_relu130_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i1_notcmp1630_push26_relu130_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V3),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_out_feedback_stall_out_26),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113(BITJOIN,1711)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_q = i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113(BITSELECT,1712)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_q[0:0]);

    // SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113(STALLENABLE,1806)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_wireValid = i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_out_valid_out;

    // SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130(STALLENABLE,1833)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_V0 = SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_backStall = i_llvm_fpga_push_i1_notcmp1630_push26_relu130_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_wireValid = SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_V;

    // SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130(STALLREG,2247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_r_valid <= SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_backStall & (SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_r_valid | SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_b);
                SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_r_data1 <= $unsigned(redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_and0 = SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_V4;
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_i_valid = SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_V1 & SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_backStall = SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_V = SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_r_valid : SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_D0 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_r_data0 : bubble_select_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_D1 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_r_data1 : redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_q;

    // bubble_join_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19(BITJOIN,1707)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_q = i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19(BITSELECT,1708)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_q[0:0]);

    // SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125(STALLREG,2246)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_r_valid <= SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_backStall & (SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_r_valid | SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_b);
                SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_r_data1 <= $unsigned(redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_and0 = SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_V3;
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_i_valid = SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_V1 & SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_backStall = SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_V = SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_r_valid : SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_D0 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_r_data0 : bubble_select_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_D1 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_r_data1 : redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_q;

    // bubble_join_i_llvm_fpga_mem_memdep_relu154(BITJOIN,1679)
    assign bubble_join_i_llvm_fpga_mem_memdep_relu154_q = i_llvm_fpga_mem_memdep_relu154_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_relu154(BITSELECT,1680)
    assign bubble_select_i_llvm_fpga_mem_memdep_relu154_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_relu154_q[0:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_relu155(STALLENABLE,1830)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_wireValid = i_llvm_fpga_push_i1_memdep_phi_push22_relu155_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi_push22_relu155(BLACKBOX,134)@142
    // in in_stall_in@20000000
    // out out_data_out@143
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@143
    relu1_i_llvm_fpga_push_i1_memdep_phi_push22_0 thei_llvm_fpga_push_i1_memdep_phi_push22_relu155 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_D0),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_out_feedback_stall_out_22),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_V0),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i1_memdep_phi_push22_relu155_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i1_memdep_phi_push22_relu155_out_feedback_valid_out_22),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push22_relu155_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push22_relu155_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155(STALLENABLE,1829)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_backStall = i_llvm_fpga_push_i1_memdep_phi_push22_relu155_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_wireValid = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_V;

    // SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155(STALLREG,2245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_r_valid <= SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_backStall & (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_r_valid | SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_mem_memdep_relu154_b);
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_r_data1 <= $unsigned(redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_and0 = SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_V2;
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_i_valid = SE_out_i_llvm_fpga_mem_memdep_relu154_V1 & SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_backStall = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_V = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_r_valid : SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_D0 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_r_data0 : bubble_select_i_llvm_fpga_mem_memdep_relu154_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_D1 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_r_data1 : redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_q;

    // bubble_join_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112(BITJOIN,1694)
    assign bubble_join_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_q = i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112(BITSELECT,1695)
    assign bubble_select_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_q[0:0]);

    // SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129(STALLREG,2243)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_r_valid <= SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_backStall & (SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_r_valid | SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_b);
                SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_r_data1 <= $unsigned(redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_and0 = SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_V1;
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_i_valid = SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_V1 & SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_backStall = SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_V = SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_r_valid : SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_D0 = SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_r_data0 : bubble_select_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_D1 = SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_r_data1 : redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_q;

    // bubble_join_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18(BITJOIN,1690)
    assign bubble_join_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_q = i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18(BITSELECT,1691)
    assign bubble_select_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_q[0:0]);

    // SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124(STALLREG,2242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_r_valid <= SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_backStall & (SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_r_valid | SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_b);
                SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_r_data1 <= $unsigned(redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_and0 = SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_V0;
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_i_valid = SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_V1 & SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_backStall = SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_V = SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_r_valid : SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_D0 = SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_r_data0 : bubble_select_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_D1 = SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_r_data1 : redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_q;

    // SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1(STALLENABLE,2055)
    // Valid signal propagation
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_V0 = SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_0;
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_V1 = SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_1;
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_V2 = SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_2;
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_V3 = SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_3;
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_V4 = SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_4;
    // Stall signal propagation
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_s_tv_0 = SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu124_backStall & SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_0;
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_s_tv_1 = SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu129_backStall & SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_1;
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_s_tv_2 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu155_backStall & SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_2;
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_s_tv_3 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu125_backStall & SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_3;
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_s_tv_4 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu130_backStall & SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_4;
    // Backward Enable generation
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_or0 = SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_s_tv_0;
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_or1 = SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_s_tv_1 | SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_or0;
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_or2 = SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_s_tv_2 | SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_or1;
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_or3 = SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_s_tv_3 | SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_or2;
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_backEN = ~ (SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_s_tv_4 | SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_or3);
    // Determine whether to write valid data into the first register stage
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_v_s_0 = SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_backEN & SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_V;
    // Backward Stall generation
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_backStall = ~ (SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_0 <= 1'b0;
            SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_1 <= 1'b0;
            SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_2 <= 1'b0;
            SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_3 <= 1'b0;
            SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_4 <= 1'b0;
        end
        else
        begin
            if (SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_backEN == 1'b0)
            begin
                SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_0 <= SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_0 & SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_s_tv_0;
            end
            else
            begin
                SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_0 <= SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_v_s_0;
            end

            if (SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_backEN == 1'b0)
            begin
                SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_1 <= SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_1 & SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_s_tv_1;
            end
            else
            begin
                SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_1 <= SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_v_s_0;
            end

            if (SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_backEN == 1'b0)
            begin
                SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_2 <= SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_2 & SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_s_tv_2;
            end
            else
            begin
                SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_2 <= SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_v_s_0;
            end

            if (SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_backEN == 1'b0)
            begin
                SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_3 <= SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_3 & SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_s_tv_3;
            end
            else
            begin
                SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_3 <= SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_v_s_0;
            end

            if (SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_backEN == 1'b0)
            begin
                SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_4 <= SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_4 & SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_s_tv_4;
            end
            else
            begin
                SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_R_v_4 <= SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_v_s_0;
            end

        end
    end

    // SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1(STALLREG,2241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_r_valid <= 1'b0;
            SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_r_valid <= SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_backStall & (SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_r_valid | SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_i_valid);

            if (SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_r_data0 <= $unsigned(redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_i_valid = SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_V0;
    // Stall signal propagation
    assign SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_backStall = SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_r_valid | ~ (SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_i_valid);

    // Valid
    assign SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_V = SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_r_valid == 1'b1 ? SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_r_valid : SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_i_valid;

    assign SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_D0 = SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_r_valid == 1'b1 ? SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_r_data0 : redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_q;

    // SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0(STALLENABLE,2054)
    // Valid signal propagation
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_V0 = SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_R_v_0;
    // Stall signal propagation
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_s_tv_0 = SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_1_backStall & SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_R_v_0;
    // Backward Enable generation
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_backEN = ~ (SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_v_s_0 = SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_backEN & SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_V;
    // Backward Stall generation
    assign SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_backStall = ~ (SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_backEN == 1'b0)
            begin
                SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_R_v_0 <= SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_R_v_0 & SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_s_tv_0;
            end
            else
            begin
                SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_R_v_0 <= SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_v_s_0;
            end

        end
    end

    // SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0(STALLREG,2240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_r_valid <= 1'b0;
            SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_r_valid <= SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_backStall & (SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_r_valid | SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_i_valid);

            if (SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_r_data0 <= $unsigned(bubble_select_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_i_valid = SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_V1;
    // Stall signal propagation
    assign SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_backStall = SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_r_valid | ~ (SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_i_valid);

    // Valid
    assign SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_V = SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_r_valid == 1'b1 ? SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_r_valid : SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_i_valid;

    assign SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_D0 = SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_r_valid == 1'b1 ? SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_r_data0 : bubble_select_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_b;

    // rightShiftStage0Idx1Rng1_uid326_i_next_initerations_relu10_shift_x(BITSELECT,325)@140
    assign rightShiftStage0Idx1Rng1_uid326_i_next_initerations_relu10_shift_x_b = bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_relu14_b[1:1];

    // rightShiftStage0Idx1_uid328_i_next_initerations_relu10_shift_x(BITJOIN,327)@140
    assign rightShiftStage0Idx1_uid328_i_next_initerations_relu10_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid326_i_next_initerations_relu10_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i2_initerations_pop23_relu14(BITJOIN,1718)
    assign bubble_join_i_llvm_fpga_pop_i2_initerations_pop23_relu14_q = i_llvm_fpga_pop_i2_initerations_pop23_relu14_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_relu14(BITSELECT,1719)
    assign bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_relu14_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_initerations_pop23_relu14_q[1:0]);

    // rightShiftStage0_uid330_i_next_initerations_relu10_shift_x(MUX,329)@140
    assign rightShiftStage0_uid330_i_next_initerations_relu10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid330_i_next_initerations_relu10_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_relu14_b or rightShiftStage0Idx1_uid328_i_next_initerations_relu10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid330_i_next_initerations_relu10_shift_x_s)
            1'b0 : rightShiftStage0_uid330_i_next_initerations_relu10_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_relu14_b;
            1'b1 : rightShiftStage0_uid330_i_next_initerations_relu10_shift_x_q = rightShiftStage0Idx1_uid328_i_next_initerations_relu10_shift_x_q;
            default : rightShiftStage0_uid330_i_next_initerations_relu10_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_relu118_vt_select_0(BITSELECT,148)@140
    assign i_next_initerations_relu118_vt_select_0_b = rightShiftStage0_uid330_i_next_initerations_relu10_shift_x_q[0:0];

    // i_next_initerations_relu118_vt_join(BITJOIN,147)@140
    assign i_next_initerations_relu118_vt_join_q = {GND_q, i_next_initerations_relu118_vt_select_0_b};

    // i_last_initeration_relu137_sel_x(BITSELECT,70)@140
    assign i_last_initeration_relu137_sel_x_b = i_next_initerations_relu118_vt_join_q[0:0];

    // SR_SE_i_next_initerations_relu118_vt_select_0(STALLREG,2244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_next_initerations_relu118_vt_select_0_r_valid <= 1'b0;
            SR_SE_i_next_initerations_relu118_vt_select_0_r_data0 <= 1'bx;
            SR_SE_i_next_initerations_relu118_vt_select_0_r_data1 <= 1'bx;
            SR_SE_i_next_initerations_relu118_vt_select_0_r_data2 <= 1'bx;
            SR_SE_i_next_initerations_relu118_vt_select_0_r_data3 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_i_next_initerations_relu118_vt_select_0_r_valid <= SE_i_next_initerations_relu118_vt_select_0_backStall & (SR_SE_i_next_initerations_relu118_vt_select_0_r_valid | SR_SE_i_next_initerations_relu118_vt_select_0_i_valid);

            if (SR_SE_i_next_initerations_relu118_vt_select_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_next_initerations_relu118_vt_select_0_r_data0 <= i_last_initeration_relu137_sel_x_b;
                SR_SE_i_next_initerations_relu118_vt_select_0_r_data1 <= $unsigned(bubble_select_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_b);
                SR_SE_i_next_initerations_relu118_vt_select_0_r_data2 <= $unsigned(bubble_select_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_b);
                SR_SE_i_next_initerations_relu118_vt_select_0_r_data3 <= i_next_initerations_relu118_vt_join_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_next_initerations_relu118_vt_select_0_and0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu14_V1;
    assign SR_SE_i_next_initerations_relu118_vt_select_0_i_valid = SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_V0 & SR_SE_i_next_initerations_relu118_vt_select_0_and0;
    // Stall signal propagation
    assign SR_SE_i_next_initerations_relu118_vt_select_0_backStall = SR_SE_i_next_initerations_relu118_vt_select_0_r_valid | ~ (SR_SE_i_next_initerations_relu118_vt_select_0_i_valid);

    // Valid
    assign SR_SE_i_next_initerations_relu118_vt_select_0_V = SR_SE_i_next_initerations_relu118_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_relu118_vt_select_0_r_valid : SR_SE_i_next_initerations_relu118_vt_select_0_i_valid;

    // Data0
    assign SR_SE_i_next_initerations_relu118_vt_select_0_D0 = SR_SE_i_next_initerations_relu118_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_relu118_vt_select_0_r_data0 : i_last_initeration_relu137_sel_x_b;
    // Data1
    assign SR_SE_i_next_initerations_relu118_vt_select_0_D1 = SR_SE_i_next_initerations_relu118_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_relu118_vt_select_0_r_data1 : bubble_select_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_b;
    // Data2
    assign SR_SE_i_next_initerations_relu118_vt_select_0_D2 = SR_SE_i_next_initerations_relu118_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_relu118_vt_select_0_r_data2 : bubble_select_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_b;
    // Data3
    assign SR_SE_i_next_initerations_relu118_vt_select_0_D3 = SR_SE_i_next_initerations_relu118_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_relu118_vt_select_0_r_data3 : i_next_initerations_relu118_vt_join_q;

    // SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo(STALLENABLE,2053)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_fromReg0 <= '0;
            SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_fromReg0 <= SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_toReg0;
            // Successor 1
            SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_fromReg1 <= SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_consumed0 = (~ (SR_SE_i_next_initerations_relu118_vt_select_0_backStall) & SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_wireValid) | SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_fromReg0;
    assign SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_consumed1 = (~ (SR_SE_redist32_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_71_0_backStall) & SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_wireValid) | SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_fromReg1;
    // Consuming
    assign SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_StallValid = SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_backStall & SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_wireValid;
    assign SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_toReg0 = SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_StallValid & SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_consumed0;
    assign SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_toReg1 = SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_StallValid & SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_or0 = SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_consumed0;
    assign SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_wireStall = ~ (SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_consumed1 & SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_or0);
    assign SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_backStall = SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_V0 = SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_wireValid & ~ (SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_fromReg0);
    assign SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_V1 = SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_wireValid & ~ (SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_wireValid = redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_valid_out;

    // redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo(STALLFIFO,1652)
    assign redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_valid_in = SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_V2;
    assign redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_stall_in = SE_out_redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_backStall;
    assign redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_data_in = redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_q;
    assign redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_valid_in_bitsignaltemp = redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_valid_in[0];
    assign redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_stall_in_bitsignaltemp = redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_stall_in[0];
    assign redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_valid_out[0] = redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_valid_out_bitsignaltemp;
    assign redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_stall_out[0] = redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo (
        .valid_in(redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_valid_in_bitsignaltemp),
        .stall_in(redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_stall_in_bitsignaltemp),
        .data_in(redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_q),
        .valid_out(redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_valid_out_bitsignaltemp),
        .stall_out(redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_stall_out_bitsignaltemp),
        .data_out(redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_162(CONSTANT,84)
    assign c_i6_162_q = $unsigned(6'b111111);

    // bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17(BITJOIN,1731)
    assign bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_q = i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17(BITSELECT,1732)
    assign bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_b = $unsigned(bubble_join_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_q[5:0]);

    // i_fpga_indvars_iv_next_relu123(ADD,96)@73
    assign i_fpga_indvars_iv_next_relu123_a = {1'b0, bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_b};
    assign i_fpga_indvars_iv_next_relu123_b = {1'b0, c_i6_162_q};
    assign i_fpga_indvars_iv_next_relu123_o = $unsigned(i_fpga_indvars_iv_next_relu123_a) + $unsigned(i_fpga_indvars_iv_next_relu123_b);
    assign i_fpga_indvars_iv_next_relu123_q = i_fpga_indvars_iv_next_relu123_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_relu123_sel_x(BITSELECT,2)@73
    assign bgTrunc_i_fpga_indvars_iv_next_relu123_sel_x_b = i_fpga_indvars_iv_next_relu123_q[5:0];

    // SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141(STALLREG,2251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_r_data0 <= 6'bxxxxxx;
            SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_r_valid <= SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_backStall & (SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_r_valid | SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_r_data0 <= bgTrunc_i_fpga_indvars_iv_next_relu123_sel_x_b;
                SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_r_data1 <= $unsigned(redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_and0 = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_V2;
    assign SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_i_valid = SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_V1 & SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_backStall = SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_V = SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_r_valid : SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_D0 = SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_r_data0 : bgTrunc_i_fpga_indvars_iv_next_relu123_sel_x_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_D1 = SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_r_data1 : redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_q;

    // SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1(STALLENABLE,2051)
    // Valid signal propagation
    assign SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_V0 = SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_0;
    assign SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_V1 = SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_1;
    assign SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_V2 = SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_2;
    // Stall signal propagation
    assign SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_s_tv_0 = SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_backStall & SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_0;
    assign SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_s_tv_1 = SR_SE_in_i_llvm_fpga_push_i6_fpga_indvars_iv_push20_relu141_backStall & SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_1;
    assign SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_s_tv_2 = redist31_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_69_fifo_stall_out & SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_2;
    // Backward Enable generation
    assign SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_or0 = SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_s_tv_0;
    assign SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_or1 = SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_s_tv_1 | SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_or0;
    assign SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_backEN = ~ (SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_s_tv_2 | SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_v_s_0 = SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_backEN & SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_V;
    // Backward Stall generation
    assign SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_backStall = ~ (SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_0 <= 1'b0;
            SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_1 <= 1'b0;
            SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_0 <= SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_0 & SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_s_tv_0;
            end
            else
            begin
                SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_0 <= SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_v_s_0;
            end

            if (SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_1 <= SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_1 & SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_s_tv_1;
            end
            else
            begin
                SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_1 <= SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_v_s_0;
            end

            if (SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_2 <= SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_2 & SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_s_tv_2;
            end
            else
            begin
                SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_R_v_2 <= SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_v_s_0;
            end

        end
    end

    // SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1(STALLREG,2239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_r_valid <= 1'b0;
            SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_r_valid <= SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_backStall & (SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_r_valid | SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_i_valid);

            if (SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_r_data0 <= $unsigned(redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_i_valid = SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_V0;
    // Stall signal propagation
    assign SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_backStall = SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_r_valid | ~ (SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_i_valid);

    // Valid
    assign SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_V = SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_r_valid == 1'b1 ? SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_r_valid : SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_i_valid;

    assign SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_D0 = SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_r_valid == 1'b1 ? SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_r_data0 : redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_q;

    // SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0(STALLENABLE,2050)
    // Valid signal propagation
    assign SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_V0 = SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_s_tv_0 = SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_backStall & SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_backEN = ~ (SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_v_s_0 = SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_backEN & SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_V;
    // Backward Stall generation
    assign SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_backStall = ~ (SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_backEN == 1'b0)
            begin
                SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_R_v_0 <= SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_R_v_0 & SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_s_tv_0;
            end
            else
            begin
                SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_R_v_0 <= SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_v_s_0;
            end

        end
    end

    // SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0(STALLREG,2238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_r_valid <= 1'b0;
            SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_r_valid <= SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_backStall & (SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_r_valid | SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_i_valid);

            if (SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_relu13_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V6;
    // Stall signal propagation
    assign SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_backStall = SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_r_valid | ~ (SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_i_valid);

    // Valid
    assign SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_V = SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_r_valid == 1'b1 ? SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_r_valid : SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_i_valid;

    assign SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_D0 = SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_r_valid == 1'b1 ? SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_r_data0 : bubble_select_i_llvm_fpga_pipeline_keep_going_relu13_b;

    // SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131(STALLENABLE,1845)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_V0 = SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_backStall = i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_and0 = SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu114_out_data_out_69_2_V0;
    assign SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V5 & SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_and0;

    // SE_bgTrunc_i_inc_relu120_sel_x(STALLENABLE,1763)
    // Valid signal propagation
    assign SE_bgTrunc_i_inc_relu120_sel_x_V0 = SE_bgTrunc_i_inc_relu120_sel_x_wireValid;
    // Backward Stall generation
    assign SE_bgTrunc_i_inc_relu120_sel_x_backStall = i_llvm_fpga_push_i32_j_017_push21_relu138_out_stall_out | ~ (SE_bgTrunc_i_inc_relu120_sel_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_bgTrunc_i_inc_relu120_sel_x_and0 = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_V0;
    assign SE_bgTrunc_i_inc_relu120_sel_x_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V4 & SE_bgTrunc_i_inc_relu120_sel_x_and0;

    // redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_69_2(REG,1649)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_69_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_69_2_q <= $unsigned(SR_SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D6);
        end
    end

    // SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126(STALLREG,2249)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_r_valid <= SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_backStall & (SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_r_valid | SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_r_data0 <= $unsigned(redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_69_2_q);
                SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_relu13_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_and0 = SE_i_arrayidx10_relu10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V2;
    assign SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V3 & SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_backStall = SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_V = SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_r_valid : SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_D0 = SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_r_data0 : redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu110_out_data_out_69_2_q;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_D1 = SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_r_data1 : bubble_select_i_llvm_fpga_pipeline_keep_going_relu13_b;

    // bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg(STALLFIFO,2209)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(72),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pipeline_keep_going_relu13(STALLENABLE,1792)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg5 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg5 <= SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg5;
            // Successor 6
            SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg6 <= SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_relu13_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed2 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed3 = (~ (SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu126_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed4 = (~ (SE_bgTrunc_i_inc_relu120_sel_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed5 = (~ (SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu131_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed6 = (~ (SR_SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_0_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg6;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg5 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_toReg6 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed6;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_or3 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_or4 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_or3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_or5 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed5 & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_or4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu13_consumed6 & SE_out_i_llvm_fpga_pipeline_keep_going_relu13_or5);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V4 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg4);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V5 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg5);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V6 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu13_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu13_wireValid = i_llvm_fpga_pipeline_keep_going_relu13_out_valid_out;

    // SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128(STALLENABLE,1825)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_backStall = i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_and0 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_and0;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111(STALLENABLE,1798)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_consumed1 = (~ (SE_i_reduction_relu1_0_relu134_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_wireValid = i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_out_valid_out;

    // SE_i_reduction_relu1_0_relu134(STALLENABLE,1855)
    // Valid signal propagation
    assign SE_i_reduction_relu1_0_relu134_V0 = SE_i_reduction_relu1_0_relu134_R_v_0;
    // Stall signal propagation
    assign SE_i_reduction_relu1_0_relu134_s_tv_0 = SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_backStall & SE_i_reduction_relu1_0_relu134_R_v_0;
    // Backward Enable generation
    assign SE_i_reduction_relu1_0_relu134_backEN = ~ (SE_i_reduction_relu1_0_relu134_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_reduction_relu1_0_relu134_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_V1 & SE_i_reduction_relu1_0_relu134_backEN;
    assign SE_i_reduction_relu1_0_relu134_v_s_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_V1 & SE_i_reduction_relu1_0_relu134_and0;
    // Backward Stall generation
    assign SE_i_reduction_relu1_0_relu134_backStall = ~ (SE_i_reduction_relu1_0_relu134_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_relu1_0_relu134_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_reduction_relu1_0_relu134_backEN == 1'b0)
            begin
                SE_i_reduction_relu1_0_relu134_R_v_0 <= SE_i_reduction_relu1_0_relu134_R_v_0 & SE_i_reduction_relu1_0_relu134_s_tv_0;
            end
            else
            begin
                SE_i_reduction_relu1_0_relu134_R_v_0 <= SE_i_reduction_relu1_0_relu134_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133(STALLENABLE,1827)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_backStall = i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_and0 = SE_out_i_llvm_fpga_pipeline_keep_going_relu13_V2;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_and0;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115(STALLENABLE,1800)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_consumed1 = (~ (SE_i_reduction_relu1_0_relu134_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_wireValid = i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133(STALLENABLE,1828)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_wireValid = i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133(BLACKBOX,133)@71
    // in in_stall_in@20000000
    // out out_data_out@72
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@72
    relu1_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_0 thei_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_b),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_out_feedback_stall_out_28),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_relu13_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_V0),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_out_feedback_valid_out_28),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115(BLACKBOX,119)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_stall_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    relu1_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D6),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D2),
        .in_feedback_in_28(i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu133_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V3),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_out_feedback_stall_out_28),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111(BLACKBOX,118)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_stall_out_32@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    relu1_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_0 thei_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D5),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D1),
        .in_feedback_in_32(i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu128_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_out_feedback_stall_out_32),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_notexitcond_relu140(STALLENABLE,1836)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_relu140_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_relu140_wireValid = i_llvm_fpga_push_i1_notexitcond_relu140_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i2_cleanups_pop24_relu12(BITJOIN,1715)
    assign bubble_join_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_q = i_llvm_fpga_pop_i2_cleanups_pop24_relu12_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_relu12(BITSELECT,1716)
    assign bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_q[1:0]);

    // i_first_cleanup_relu116_sel_x(BITSELECT,66)@73
    assign i_first_cleanup_relu116_sel_x_b = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_b[0:0];

    // i_exitcond_relu121_cmp_nsign(LOGICAL,332)@73
    assign i_exitcond_relu121_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_b[5:5]));

    // i_llvm_fpga_push_i1_notexitcond_relu140(BLACKBOX,137)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    relu1_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_relu140 (
        .in_data_in(i_exitcond_relu121_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_relu13_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_relu116_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_relu140_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_relu140_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_relu140_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_relu140_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_relu140_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_relu13(BLACKBOX,115)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    relu1_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_relu13 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D0),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_relu145_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_relu145_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_relu140_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_relu140_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_relu13_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_relu13_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_relu13_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_relu13_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_relu13_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_relu13_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_relu13_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_relu13_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_relu13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0(STALLREG,2213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid <= 1'b0;
            SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid <= SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall & (SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid | SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_i_valid);

            if (SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_data0 <= $unsigned(SR_SE_out_coalesced_delay_0_fifo_D4);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_i_valid = SE_out_coalesced_delay_0_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall = SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid | ~ (SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_i_valid);

    // Valid
    assign SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V = SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid == 1'b1 ? SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid : SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_i_valid;

    assign SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_D0 = SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid == 1'b1 ? SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_data0 : SR_SE_out_coalesced_delay_0_fifo_D4;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,2063)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg2 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg3 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_0_fifo_fromReg0 <= SE_out_coalesced_delay_0_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_0_fifo_fromReg1 <= SE_out_coalesced_delay_0_fifo_toReg1;
            // Successor 2
            SE_out_coalesced_delay_0_fifo_fromReg2 <= SE_out_coalesced_delay_0_fifo_toReg2;
            // Successor 3
            SE_out_coalesced_delay_0_fifo_fromReg3 <= SE_out_coalesced_delay_0_fifo_toReg3;
            // Successor 4
            SE_out_coalesced_delay_0_fifo_fromReg4 <= SE_out_coalesced_delay_0_fifo_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (SR_SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (i_llvm_fpga_pipeline_keep_going_relu13_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    assign SE_out_coalesced_delay_0_fifo_consumed2 = (~ (i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu111_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg2;
    assign SE_out_coalesced_delay_0_fifo_consumed3 = (~ (i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu115_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg3;
    assign SE_out_coalesced_delay_0_fifo_consumed4 = (~ (i_llvm_fpga_pop_i32_j_017_pop21_relu15_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg4;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    assign SE_out_coalesced_delay_0_fifo_toReg2 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed2;
    assign SE_out_coalesced_delay_0_fifo_toReg3 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed3;
    assign SE_out_coalesced_delay_0_fifo_toReg4 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed4;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_or1 = SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0;
    assign SE_out_coalesced_delay_0_fifo_or2 = SE_out_coalesced_delay_0_fifo_consumed2 & SE_out_coalesced_delay_0_fifo_or1;
    assign SE_out_coalesced_delay_0_fifo_or3 = SE_out_coalesced_delay_0_fifo_consumed3 & SE_out_coalesced_delay_0_fifo_or2;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed4 & SE_out_coalesced_delay_0_fifo_or3);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    assign SE_out_coalesced_delay_0_fifo_V2 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg2);
    assign SE_out_coalesced_delay_0_fifo_V3 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg3);
    assign SE_out_coalesced_delay_0_fifo_V4 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = SR_SE_out_coalesced_delay_0_fifo_V;

    // SE_out_i_llvm_fpga_push_i32_j_017_push21_relu138(STALLENABLE,1844)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_j_017_push21_relu138_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_j_017_push21_relu138_wireValid = i_llvm_fpga_push_i32_j_017_push21_relu138_out_valid_out;

    // c_i32_160(CONSTANT,83)
    assign c_i32_160_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_relu120(ADD,109)@71
    assign i_inc_relu120_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_j_017_pop21_relu15_b};
    assign i_inc_relu120_b = {1'b0, c_i32_160_q};
    assign i_inc_relu120_o = $unsigned(i_inc_relu120_a) + $unsigned(i_inc_relu120_b);
    assign i_inc_relu120_q = i_inc_relu120_o[32:0];

    // bgTrunc_i_inc_relu120_sel_x(BITSELECT,3)@71
    assign bgTrunc_i_inc_relu120_sel_x_b = i_inc_relu120_q[31:0];

    // i_llvm_fpga_push_i32_j_017_push21_relu138(BLACKBOX,141)@71
    // in in_stall_in@20000000
    // out out_data_out@72
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@72
    relu1_i_llvm_fpga_push_i32_j_017_push21_0 thei_llvm_fpga_push_i32_j_017_push21_relu138 (
        .in_data_in(bgTrunc_i_inc_relu120_sel_x_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i32_j_017_pop21_relu15_out_feedback_stall_out_21),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_relu13_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_j_017_push21_relu138_backStall),
        .in_valid_in(SE_bgTrunc_i_inc_relu120_sel_x_V0),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_j_017_push21_relu138_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_j_017_push21_relu138_out_feedback_valid_out_21),
        .out_stall_out(i_llvm_fpga_push_i32_j_017_push21_relu138_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_j_017_push21_relu138_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,1754)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,1755)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[2:0]);

    // sel_for_coalesced_delay_0(BITSELECT,1608)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[2:2]);

    // SR_SE_out_coalesced_delay_0_fifo(STALLREG,2212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_coalesced_delay_0_fifo_r_valid <= 1'b0;
            SR_SE_out_coalesced_delay_0_fifo_r_data0 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data1 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data2 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data3 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data4 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data5 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data6 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_coalesced_delay_0_fifo_r_valid <= SE_out_coalesced_delay_0_fifo_backStall & (SR_SE_out_coalesced_delay_0_fifo_r_valid | SR_SE_out_coalesced_delay_0_fifo_i_valid);

            if (SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_coalesced_delay_0_fifo_r_data0 <= $unsigned(sel_for_coalesced_delay_0_b);
                SR_SE_out_coalesced_delay_0_fifo_r_data1 <= $unsigned(sel_for_coalesced_delay_0_b);
                SR_SE_out_coalesced_delay_0_fifo_r_data2 <= $unsigned(sel_for_coalesced_delay_0_b);
                SR_SE_out_coalesced_delay_0_fifo_r_data3 <= $unsigned(sel_for_coalesced_delay_0_b);
                SR_SE_out_coalesced_delay_0_fifo_r_data4 <= $unsigned(sel_for_coalesced_delay_0_b);
                SR_SE_out_coalesced_delay_0_fifo_r_data5 <= $unsigned(sel_for_coalesced_delay_0_c);
                SR_SE_out_coalesced_delay_0_fifo_r_data6 <= $unsigned(sel_for_coalesced_delay_0_d);
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
    assign SR_SE_out_coalesced_delay_0_fifo_D1 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data1 : sel_for_coalesced_delay_0_b;
    // Data2
    assign SR_SE_out_coalesced_delay_0_fifo_D2 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data2 : sel_for_coalesced_delay_0_b;
    // Data3
    assign SR_SE_out_coalesced_delay_0_fifo_D3 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data3 : sel_for_coalesced_delay_0_b;
    // Data4
    assign SR_SE_out_coalesced_delay_0_fifo_D4 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data4 : sel_for_coalesced_delay_0_b;
    // Data5
    assign SR_SE_out_coalesced_delay_0_fifo_D5 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data5 : sel_for_coalesced_delay_0_c;
    // Data6
    assign SR_SE_out_coalesced_delay_0_fifo_D6 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data6 : sel_for_coalesced_delay_0_d;

    // i_llvm_fpga_pop_i32_j_017_pop21_relu15(BLACKBOX,126)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_stall_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    relu1_i_llvm_fpga_pop_i32_j_017_pop21_0 thei_llvm_fpga_pop_i32_j_017_pop21_relu15 (
        .in_data_in(c_i32_058_q),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D3),
        .in_feedback_in_21(i_llvm_fpga_push_i32_j_017_push21_relu138_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_j_017_push21_relu138_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V4),
        .out_data_out(i_llvm_fpga_pop_i32_j_017_pop21_relu15_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_j_017_pop21_relu15_out_feedback_stall_out_21),
        .out_stall_out(i_llvm_fpga_pop_i32_j_017_pop21_relu15_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_j_017_pop21_relu15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i32_j_017_pop21_relu15(BITJOIN,1725)
    assign bubble_join_i_llvm_fpga_pop_i32_j_017_pop21_relu15_q = i_llvm_fpga_pop_i32_j_017_pop21_relu15_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_j_017_pop21_relu15(BITSELECT,1726)
    assign bubble_select_i_llvm_fpga_pop_i32_j_017_pop21_relu15_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_j_017_pop21_relu15_q[31:0]);

    // i_arrayidx10_relu10_c_i2_03_x(CONSTANT,29)
    assign i_arrayidx10_relu10_c_i2_03_x_q = $unsigned(2'b00);

    // i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,1449)@71
    assign i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_tessel0_2_b, bubble_select_i_llvm_fpga_pop_i32_j_017_pop21_relu15_b, i_arrayidx10_relu10_c_i2_03_x_q};

    // i_arrayidx23_relu10_dupName_0_add_x_p1_of_2(ADD,1374)@70 + 1
    assign i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_D0};
    assign i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_o <= $unsigned(i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_a) + $unsigned(i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_c[0] = i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_o[52];
    assign i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_q = i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_o[51:0];

    // SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15(STALLENABLE,1814)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_fromReg2 <= SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_consumed0 = (~ (SE_bgTrunc_i_inc_relu120_sel_x_backStall) & SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_consumed1 = (~ (SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_consumed2 = (~ (SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_StallValid = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_backStall & SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_toReg0 = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_StallValid & SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_toReg1 = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_StallValid & SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_consumed1;
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_toReg2 = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_StallValid & SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_or0 = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_or1 = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_consumed1 & SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_or0;
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_consumed2 & SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_or1);
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_backStall = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_V0 = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_V1 = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_V2 = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_wireValid = i_llvm_fpga_pop_i32_j_017_pop21_relu15_out_valid_out;

    // SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2(STALLENABLE,1939)
    // Valid signal propagation
    assign SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_V0 = SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_V1 = SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_backStall & SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_or0 = SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_v_s_0 = SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_backEN & SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_R_v_0 & SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_R_v_1 & SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2(STALLREG,2223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_r_valid <= SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_q);
                SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_and0 = SE_i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu15_V2 & SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_backStall = SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_V = SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_D0 = SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_r_data0 : i_arrayidx23_relu10_dupName_0_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_D1 = SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_r_data1 : i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // i_arrayidx23_relu10_dupName_1_add_x_p1_of_2(ADD,1383)@71 + 1
    assign i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_D0};
    assign i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_o <= $unsigned(i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_a) + $unsigned(i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_c[0] = i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_o[52];
    assign i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q = i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_o[51:0];

    // i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_tessel1_0(BITSELECT,1450)
    assign i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_tessel1_0_b = c_i32_058_q[29:18];

    // i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,1452)@72
    assign i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx23_relu10_dupName_0_add_x_p2_of_2(ADD,1375)@71 + 1
    assign i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_cin = SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_D2;
    assign i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_D1}, i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_o <= $unsigned(i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_a) + $unsigned(i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_q = i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_o[13:1];

    // i_arrayidx23_relu10_dupName_1_add_x_BitSelect_for_a_tessel1_0(BITSELECT,1475)@72
    assign i_arrayidx23_relu10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_q[11:0]);

    // i_arrayidx23_relu10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,1477)@72
    assign i_arrayidx23_relu10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx23_relu10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b};

    // SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2(STALLENABLE,1940)
    // Valid signal propagation
    assign SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_V0 = SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_backStall & SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_v_s_0 = SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_backEN & SR_SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_R_v_0 & SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_tessel1_0(STALLENABLE,1962)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_tessel1_0_V0 = 1'b1;
    assign SE_i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_tessel1_0_V1 = 1'b1;

    // SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0(STALLREG,2229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_valid <= SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_V = SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q;

    // SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2(STALLENABLE,1941)
    // Valid signal propagation
    assign SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_V0 = SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_V1 = SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_backStall & SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_s_tv_1 = SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_or0 = SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_v_s_0 = SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_backEN & SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_R_v_0 & SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_R_v_1 & SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2(STALLREG,2228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_valid <= SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx23_relu10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_and0 = SE_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_and1 = SE_i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_tessel1_0_V1 & SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_i_valid = SE_i_arrayidx23_relu10_dupName_0_add_x_p2_of_2_V0 & SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_backStall = SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_V = SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_D0 = SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_data0 : i_arrayidx23_relu10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_D1 = SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_data1 : i_arrayidx10_relu10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_D2 = SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_r_data2 : i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_c;

    // i_arrayidx23_relu10_dupName_1_add_x_p2_of_2(ADD,1384)@72 + 1
    assign i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_cin = SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_D2;
    assign i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_D1}, i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_o <= $unsigned(i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_a) + $unsigned(i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_q = i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_o[13:1];

    // redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0(REG,1628)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q(BITJOIN,1385)@73
    assign i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_q = {i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_q, redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx23_relu10_dupName_4_trunc_sel_x(BITSELECT,41)@73
    assign i_arrayidx23_relu10_dupName_4_trunc_sel_x_b = i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_q[63:0];

    // join_for_coalesced_delay_3(BITJOIN,1616)
    assign join_for_coalesced_delay_3_q = {i_first_cleanup_xor_relu135_q, i_arrayidx23_relu10_dupName_4_trunc_sel_x_b};

    // SE_out_coalesced_delay_3_fifo(STALLENABLE,2068)
    // Valid signal propagation
    assign SE_out_coalesced_delay_3_fifo_V0 = SE_out_coalesced_delay_3_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_3_fifo_backStall = i_llvm_fpga_mem_memdep_relu154_out_o_stall | ~ (SE_out_coalesced_delay_3_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_3_fifo_and0 = coalesced_delay_3_fifo_valid_out;
    assign SE_out_coalesced_delay_3_fifo_wireValid = i_sfc_s_c0_in_for_body6_relu1s_c0_enter8412_relu151_aunroll_x_out_o_valid & SE_out_coalesced_delay_3_fifo_and0;

    // coalesced_delay_3_fifo(STALLFIFO,1663)
    assign coalesced_delay_3_fifo_valid_in = SE_i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_V0;
    assign coalesced_delay_3_fifo_stall_in = SE_out_coalesced_delay_3_fifo_backStall;
    assign coalesced_delay_3_fifo_data_in = join_for_coalesced_delay_3_q;
    assign coalesced_delay_3_fifo_valid_in_bitsignaltemp = coalesced_delay_3_fifo_valid_in[0];
    assign coalesced_delay_3_fifo_stall_in_bitsignaltemp = coalesced_delay_3_fifo_stall_in[0];
    assign coalesced_delay_3_fifo_valid_out[0] = coalesced_delay_3_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_3_fifo_stall_out[0] = coalesced_delay_3_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(39),
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

    // SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0(STALLENABLE,2025)
    // Valid signal propagation
    assign SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_V0 = SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_backStall & SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2(STALLENABLE,1942)
    // Valid signal propagation
    assign SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_V0 = SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_s_tv_0 = SE_i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_backStall & SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_v_s_0 = SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_backEN & SR_SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_R_v_0 & SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q(STALLENABLE,1943)
    // Valid signal propagation
    assign SE_i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_V0 = SE_i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_backStall = coalesced_delay_3_fifo_stall_out | ~ (SE_i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_and0 = SE_i_arrayidx23_relu10_dupName_1_add_x_p2_of_2_V0;
    assign SE_i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_and1 = SE_redist13_i_arrayidx23_relu10_dupName_1_add_x_p1_of_2_q_1_0_V0 & SE_i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_and0;
    assign SE_i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_wireValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_V4 & SE_i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_and1;

    // i_notcmp_relu139(LOGICAL,149)@73
    assign i_notcmp_relu139_q = i_exitcond_relu121_cmp_nsign_q ^ VCC_q;

    // SR_SE_i_masked_relu147(STALLREG,2215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_masked_relu147_r_valid <= 1'b0;
            SR_SE_i_masked_relu147_r_data0 <= 1'bx;
            SR_SE_i_masked_relu147_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_masked_relu147_r_valid <= SE_i_masked_relu147_backStall & (SR_SE_i_masked_relu147_r_valid | SR_SE_i_masked_relu147_i_valid);

            if (SR_SE_i_masked_relu147_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_masked_relu147_r_data0 <= i_notcmp_relu139_q;
                SR_SE_i_masked_relu147_r_data1 <= i_first_cleanup_relu116_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_masked_relu147_and0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_V2;
    assign SR_SE_i_masked_relu147_i_valid = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_V3 & SR_SE_i_masked_relu147_and0;
    // Stall signal propagation
    assign SR_SE_i_masked_relu147_backStall = SR_SE_i_masked_relu147_r_valid | ~ (SR_SE_i_masked_relu147_i_valid);

    // Valid
    assign SR_SE_i_masked_relu147_V = SR_SE_i_masked_relu147_r_valid == 1'b1 ? SR_SE_i_masked_relu147_r_valid : SR_SE_i_masked_relu147_i_valid;

    // Data0
    assign SR_SE_i_masked_relu147_D0 = SR_SE_i_masked_relu147_r_valid == 1'b1 ? SR_SE_i_masked_relu147_r_data0 : i_notcmp_relu139_q;
    // Data1
    assign SR_SE_i_masked_relu147_D1 = SR_SE_i_masked_relu147_r_valid == 1'b1 ? SR_SE_i_masked_relu147_r_data1 : i_first_cleanup_relu116_sel_x_b;

    // SE_in_i_llvm_fpga_push_i1_notexitcond_relu140(STALLENABLE,1835)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_fromReg0 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_fromReg0 <= SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_fromReg1 <= SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond_relu140_out_stall_out) & SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_fromReg0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_consumed1 = (~ (SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_StallValid = SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_backStall & SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_wireValid;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_toReg0 = SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_toReg1 = SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_or0 = SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_wireStall = ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_consumed1 & SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_or0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_backStall = SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_fromReg0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_V1 = SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_and0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_V1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_wireValid = SE_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_V1 & SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_and0;

    // leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl_relu10_shift_x(BITSELECT,318)@73
    assign leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl_relu10_shift_x_in = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_b[0:0];
    assign leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl_relu10_shift_x_b = leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl_relu10_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid320_i_cleanups_shl_relu10_shift_x(BITJOIN,319)@73
    assign leftShiftStage0Idx1_uid320_i_cleanups_shl_relu10_shift_x_q = {leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl_relu10_shift_x_b, GND_q};

    // leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x(MUX,321)@73
    assign leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_b or leftShiftStage0Idx1_uid320_i_cleanups_shl_relu10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_s)
            1'b0 : leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_b;
            1'b1 : leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_q = leftShiftStage0Idx1_uid320_i_cleanups_shl_relu10_shift_x_q;
            default : leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_relu117_vt_select_1(BITSELECT,92)@73
    assign i_cleanups_shl_relu117_vt_select_1_b = leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_q[1:1];

    // i_cleanups_shl_relu117_vt_join(BITJOIN,91)@73
    assign i_cleanups_shl_relu117_vt_join_q = {i_cleanups_shl_relu117_vt_select_1_b, GND_q};

    // i_or_relu146(LOGICAL,150)@73
    assign i_or_relu146_q = i_notcmp_relu139_q | i_first_cleanup_xor_relu135_q;

    // i_next_cleanups_relu149(MUX,145)@73
    assign i_next_cleanups_relu149_s = i_or_relu146_q;
    always @(i_next_cleanups_relu149_s or bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_b or i_cleanups_shl_relu117_vt_join_q)
    begin
        unique case (i_next_cleanups_relu149_s)
            1'b0 : i_next_cleanups_relu149_q = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_b;
            1'b1 : i_next_cleanups_relu149_q = i_cleanups_shl_relu117_vt_join_q;
            default : i_next_cleanups_relu149_q = 2'b0;
        endcase
    end

    // SE_out_i_llvm_fpga_push_i2_cleanups_push24_relu153(STALLENABLE,1838)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push24_relu153_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push24_relu153_wireValid = i_llvm_fpga_push_i2_cleanups_push24_relu153_out_valid_out;

    // i_llvm_fpga_push_i2_cleanups_push24_relu153(BLACKBOX,138)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    relu1_i_llvm_fpga_push_i2_cleanups_push24_0 thei_llvm_fpga_push_i2_cleanups_push24_relu153 (
        .in_data_in(SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_D0),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i2_cleanups_pop24_relu12_out_feedback_stall_out_24),
        .in_keep_going(SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_cleanups_push24_relu153_backStall),
        .in_valid_in(SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_V0),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i2_cleanups_push24_relu153_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i2_cleanups_push24_relu153_out_feedback_valid_out_24),
        .out_stall_out(i_llvm_fpga_push_i2_cleanups_push24_relu153_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_cleanups_push24_relu153_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x(STALLENABLE,1873)
    // Valid signal propagation
    assign SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_V0 = SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_wireValid;
    // Backward Stall generation
    assign SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_backStall = i_llvm_fpga_push_i2_cleanups_push24_relu153_out_stall_out | ~ (SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_wireValid = SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_V;

    // SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x(STALLREG,2248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_r_valid <= 1'b0;
            SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_r_data0 <= 2'bxx;
            SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_r_valid <= SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_backStall & (SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_r_valid | SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_i_valid);

            if (SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_r_data0 <= i_next_cleanups_relu149_q;
                SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_r_data1 <= $unsigned(redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_and0 = SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_V1;
    assign SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_and1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_V0 & SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_and0;
    assign SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_i_valid = SE_redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_V0 & SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_and1;
    // Stall signal propagation
    assign SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_backStall = SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_r_valid | ~ (SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_i_valid);

    // Valid
    assign SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_V = SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_r_valid : SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_i_valid;

    // Data0
    assign SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_D0 = SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_r_data0 : i_next_cleanups_relu149_q;
    // Data1
    assign SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_D1 = SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_r_data1 : redist30_i_llvm_fpga_pipeline_keep_going_relu13_out_data_out_2_1_q;

    // i_llvm_fpga_pop_i2_cleanups_pop24_relu12(BLACKBOX,123)@72
    // in in_stall_in@20000000
    // out out_data_out@73
    // out out_feedback_stall_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@73
    relu1_i_llvm_fpga_pop_i2_cleanups_pop24_0 thei_llvm_fpga_pop_i2_cleanups_pop24_relu12 (
        .in_data_in(c_i2_156_q),
        .in_dir(redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i2_cleanups_push24_relu153_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i2_cleanups_push24_relu153_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_backStall),
        .in_valid_in(SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V1),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop24_relu12_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i2_cleanups_pop24_relu12_out_feedback_stall_out_24),
        .out_stall_out(i_llvm_fpga_pop_i2_cleanups_pop24_relu12_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_cleanups_pop24_relu12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12(STALLENABLE,1808)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg2 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg3 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg4 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_consumed0 = (~ (SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu10_shift_x_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_relu140_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_consumed2 = (~ (SR_SE_i_masked_relu147_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_consumed3 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_consumed4 = (~ (SE_i_arrayidx23_relu10_dupName_1_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_StallValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_backStall & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_toReg0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_toReg1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_consumed1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_toReg2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_consumed2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_toReg3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_consumed3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_toReg4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_or0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_or1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_consumed1 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_or0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_or2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_consumed2 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_or1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_or3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_consumed3 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_or2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_consumed4 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_or3);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_backStall = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_V0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_V1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_V2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_V3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_V4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_wireValid = i_llvm_fpga_pop_i2_cleanups_pop24_relu12_out_valid_out;

    // SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0(STALLENABLE,2026)
    // Valid signal propagation
    assign SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_V0 = SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_backStall & SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2(STALLENABLE,1935)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_V0 = SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_backStall & SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_v_s_0 = SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_backEN & SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_R_v_0 & SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_redist23_i_reduction_relu1_0_relu134_q_2_0(STALLENABLE,2035)
    // Valid signal propagation
    assign SE_redist23_i_reduction_relu1_0_relu134_q_2_0_V0 = SE_redist23_i_reduction_relu1_0_relu134_q_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_reduction_relu1_0_relu134_q_2_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_backStall & SE_redist23_i_reduction_relu1_0_relu134_q_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_reduction_relu1_0_relu134_q_2_0_backEN = ~ (SE_redist23_i_reduction_relu1_0_relu134_q_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_reduction_relu1_0_relu134_q_2_0_v_s_0 = SE_redist23_i_reduction_relu1_0_relu134_q_2_0_backEN & SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_V;
    // Backward Stall generation
    assign SE_redist23_i_reduction_relu1_0_relu134_q_2_0_backStall = ~ (SE_redist23_i_reduction_relu1_0_relu134_q_2_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_reduction_relu1_0_relu134_q_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_reduction_relu1_0_relu134_q_2_0_backEN == 1'b0)
            begin
                SE_redist23_i_reduction_relu1_0_relu134_q_2_0_R_v_0 <= SE_redist23_i_reduction_relu1_0_relu134_q_2_0_R_v_0 & SE_redist23_i_reduction_relu1_0_relu134_q_2_0_s_tv_0;
            end
            else
            begin
                SE_redist23_i_reduction_relu1_0_relu134_q_2_0_R_v_0 <= SE_redist23_i_reduction_relu1_0_relu134_q_2_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16(BLACKBOX,120)@72
    // in in_stall_in@20000000
    // out out_data_out@73
    // out out_feedback_stall_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@73
    relu1_i_llvm_fpga_pop_i1_memdep_phi_pop22_0 thei_llvm_fpga_pop_i1_memdep_phi_pop22_relu16 (
        .in_data_in(GND_q),
        .in_dir(redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i1_memdep_phi_push22_relu155_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i1_memdep_phi_push22_relu155_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_backStall),
        .in_valid_in(SE_redist35_relu1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_out_feedback_stall_out_22),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16(STALLENABLE,1802)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_backStall = i_llvm_fpga_mem_unnamed_relu15_relu148_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_and1 = SE_redist23_i_reduction_relu1_0_relu134_q_2_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_and0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_and2 = SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_and1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_and3 = SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_and2;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_wireValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu12_V3 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_and3;

    // SE_out_i_llvm_fpga_mem_unnamed_relu15_relu148(STALLENABLE,1790)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_relu15_relu148_V0 = SE_out_i_llvm_fpga_mem_unnamed_relu15_relu148_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_relu15_relu148_backStall = i_sfc_s_c0_in_for_body6_relu1s_c0_enter8412_relu151_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_relu15_relu148_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_relu15_relu148_wireValid = i_llvm_fpga_mem_unnamed_relu15_relu148_out_o_valid;

    // i_first_cleanup_xor_relu135(LOGICAL,95)@73
    assign i_first_cleanup_xor_relu135_q = i_first_cleanup_relu116_sel_x_b ^ VCC_q;

    // redist23_i_reduction_relu1_0_relu134_q_2_0(REG,1638)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_reduction_relu1_0_relu134_q_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist23_i_reduction_relu1_0_relu134_q_2_0_backEN == 1'b1)
        begin
            redist23_i_reduction_relu1_0_relu134_q_2_0_q <= $unsigned(SR_SE_redist23_i_reduction_relu1_0_relu134_q_2_0_D0);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16(BITJOIN,1704)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_q = i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16(BITSELECT,1705)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_q[0:0]);

    // i_reduction_relu1_1_relu144(LOGICAL,152)@73
    assign i_reduction_relu1_1_relu144_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_b | redist23_i_reduction_relu1_0_relu134_q_2_0_q;

    // i_arrayidx10_relu10_dupName_1_add_x_p2_of_2(ADD,1357)@72 + 1
    assign i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_D2;
    assign i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_D1}, i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_o <= $unsigned(i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_a) + $unsigned(i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_q = i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_o[13:1];

    // redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0(REG,1629)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx10_relu10_dupName_1_add_x_BitJoin_for_q(BITJOIN,1358)@73
    assign i_arrayidx10_relu10_dupName_1_add_x_BitJoin_for_q_q = {i_arrayidx10_relu10_dupName_1_add_x_p2_of_2_q, redist14_i_arrayidx10_relu10_dupName_1_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx10_relu10_dupName_4_trunc_sel_x(BITSELECT,15)@73
    assign i_arrayidx10_relu10_dupName_4_trunc_sel_x_b = i_arrayidx10_relu10_dupName_1_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_unnamed_relu15_relu148(BLACKBOX,114)@73
    // in in_i_stall@20000000
    // out out_o_readdata@105
    // out out_o_stall@20000000
    // out out_o_valid@105
    // out out_unnamed_relu15_relu1_avm_address@20000000
    // out out_unnamed_relu15_relu1_avm_burstcount@20000000
    // out out_unnamed_relu15_relu1_avm_byteenable@20000000
    // out out_unnamed_relu15_relu1_avm_enable@20000000
    // out out_unnamed_relu15_relu1_avm_read@20000000
    // out out_unnamed_relu15_relu1_avm_write@20000000
    // out out_unnamed_relu15_relu1_avm_writedata@20000000
    relu1_i_llvm_fpga_mem_unnamed_5_relu10 thei_llvm_fpga_mem_unnamed_relu15_relu148 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx10_relu10_dupName_4_trunc_sel_x_b),
        .in_i_dependence(i_reduction_relu1_1_relu144_q),
        .in_i_predicate(i_first_cleanup_xor_relu135_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_relu15_relu148_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu16_V0),
        .in_unnamed_relu15_relu1_avm_readdata(in_unnamed_relu15_relu1_avm_readdata),
        .in_unnamed_relu15_relu1_avm_readdatavalid(in_unnamed_relu15_relu1_avm_readdatavalid),
        .in_unnamed_relu15_relu1_avm_waitrequest(in_unnamed_relu15_relu1_avm_waitrequest),
        .in_unnamed_relu15_relu1_avm_writeack(in_unnamed_relu15_relu1_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_relu15_relu148_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_relu15_relu148_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_relu15_relu148_out_o_valid),
        .out_unnamed_relu15_relu1_avm_address(i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_address),
        .out_unnamed_relu15_relu1_avm_burstcount(i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_burstcount),
        .out_unnamed_relu15_relu1_avm_byteenable(i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_byteenable),
        .out_unnamed_relu15_relu1_avm_enable(i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_enable),
        .out_unnamed_relu15_relu1_avm_read(i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_read),
        .out_unnamed_relu15_relu1_avm_write(i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_write),
        .out_unnamed_relu15_relu1_avm_writedata(i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,6)
    assign out_unnamed_relu15_relu1_avm_address = i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_address;
    assign out_unnamed_relu15_relu1_avm_enable = i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_enable;
    assign out_unnamed_relu15_relu1_avm_read = i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_read;
    assign out_unnamed_relu15_relu1_avm_write = i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_write;
    assign out_unnamed_relu15_relu1_avm_writedata = i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_writedata;
    assign out_unnamed_relu15_relu1_avm_byteenable = i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_byteenable;
    assign out_unnamed_relu15_relu1_avm_burstcount = i_llvm_fpga_mem_unnamed_relu15_relu148_out_unnamed_relu15_relu1_avm_burstcount;

    // bubble_join_redist24_i_masked_relu147_q_69_fifo(BITJOIN,1739)
    assign bubble_join_redist24_i_masked_relu147_q_69_fifo_q = redist24_i_masked_relu147_q_69_fifo_data_out;

    // bubble_select_redist24_i_masked_relu147_q_69_fifo(BITSELECT,1740)
    assign bubble_select_redist24_i_masked_relu147_q_69_fifo_b = $unsigned(bubble_join_redist24_i_masked_relu147_q_69_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,7)@142
    assign out_exitcond535_pop29 = bubble_select_i_llvm_fpga_pop_i1_exitcond535_pop29_relu18_b;
    assign out_exitcond828_pop25 = bubble_select_i_llvm_fpga_pop_i1_exitcond828_pop25_relu112_b;
    assign out_masked = bubble_select_redist24_i_masked_relu147_q_69_fifo_b;
    assign out_memdep = bubble_select_i_llvm_fpga_mem_memdep_relu154_b;
    assign out_notcmp1136_pop30 = bubble_select_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu19_b;
    assign out_notcmp1630_pop26 = bubble_select_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu113_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop20_relu17_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,8)
    assign out_memdep_relu1_avm_address = i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_address;
    assign out_memdep_relu1_avm_enable = i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_enable;
    assign out_memdep_relu1_avm_read = i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_read;
    assign out_memdep_relu1_avm_write = i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_write;
    assign out_memdep_relu1_avm_writedata = i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_writedata;
    assign out_memdep_relu1_avm_byteenable = i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_byteenable;
    assign out_memdep_relu1_avm_burstcount = i_llvm_fpga_mem_memdep_relu154_out_memdep_relu1_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,9)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_relu154_out_lsu_memdep_o_active;

    // ext_sig_sync_out(GPOUT,89)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_relu13_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_relu13_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_relu13_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_relu13_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,225)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_relu13_out_pipeline_valid_out;

    // sync_out(GPOUT,232)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
