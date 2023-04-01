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

// SystemVerilog created from bb_relu2_B4_stall_region
// Created for function/kernel relu2
// SystemVerilog created on Sat Apr  1 13:10:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module relu2_bb_B4_stall_region (
    input wire [63:0] in_memdep_relu2_avm_readdata,
    input wire [0:0] in_memdep_relu2_avm_writeack,
    input wire [0:0] in_memdep_relu2_avm_waitrequest,
    input wire [0:0] in_memdep_relu2_avm_readdatavalid,
    output wire [63:0] out_unnamed_relu25_relu2_avm_address,
    output wire [0:0] out_unnamed_relu25_relu2_avm_enable,
    output wire [0:0] out_unnamed_relu25_relu2_avm_read,
    output wire [0:0] out_unnamed_relu25_relu2_avm_write,
    output wire [63:0] out_unnamed_relu25_relu2_avm_writedata,
    output wire [7:0] out_unnamed_relu25_relu2_avm_byteenable,
    output wire [0:0] out_unnamed_relu25_relu2_avm_burstcount,
    output wire [0:0] out_exitcond535_pop29,
    output wire [0:0] out_exitcond828_pop25,
    output wire [0:0] out_masked,
    output wire [0:0] out_memdep,
    output wire [0:0] out_notcmp1136_pop30,
    output wire [0:0] out_notcmp1630_pop26,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_memdep_relu2_avm_address,
    output wire [0:0] out_memdep_relu2_avm_enable,
    output wire [0:0] out_memdep_relu2_avm_read,
    output wire [0:0] out_memdep_relu2_avm_write,
    output wire [63:0] out_memdep_relu2_avm_writedata,
    output wire [7:0] out_memdep_relu2_avm_byteenable,
    output wire [0:0] out_memdep_relu2_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire [63:0] in_unnamed_relu25_relu2_avm_readdata,
    input wire [0:0] in_unnamed_relu25_relu2_avm_writeack,
    input wire [0:0] in_unnamed_relu25_relu2_avm_waitrequest,
    input wire [0:0] in_unnamed_relu25_relu2_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_relu23_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_relu23_exiting_stall_out,
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
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next_relu223_sel_x_b;
    wire [31:0] bgTrunc_i_inc_relu220_sel_x_b;
    wire [63:0] i_arrayidx10_relu20_dupName_4_trunc_sel_x_b;
    wire [1:0] i_arrayidx10_relu20_c_i2_03_x_q;
    wire [63:0] i_arrayidx23_relu20_dupName_4_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_relu216_sel_x_b;
    wire [63:0] i_idxprom7_relu227_sel_x_b;
    wire [63:0] i_idxprom_relu232_sel_x_b;
    wire [0:0] i_last_initeration_relu237_sel_x_b;
    wire [31:0] i_sfc_s_c0_in_for_body6_relu2s_c0_enter8412_relu251_aunroll_x_out_c0_exit87_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_relu2s_c0_enter8412_relu251_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body6_relu2s_c0_enter8412_relu251_aunroll_x_out_o_valid;
    wire [0:0] relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] relu2_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] relu2_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] relu2_B4_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] relu2_B4_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] relu2_B4_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] relu2_B4_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] relu2_B4_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] relu2_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] relu2_B4_merge_reg_aunroll_x_out_valid_out;
    wire [1:0] c_i2_156_q;
    wire [31:0] c_i32_058_q;
    wire [31:0] c_i32_160_q;
    wire [4:0] c_i5_162_q;
    wire [4:0] c_i5_859_q;
    wire [1:0] i_cleanups_shl_relu217_vt_join_q;
    wire [0:0] i_cleanups_shl_relu217_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_relu235_q;
    wire [5:0] i_fpga_indvars_iv_next_relu223_a;
    wire [5:0] i_fpga_indvars_iv_next_relu223_b;
    logic [5:0] i_fpga_indvars_iv_next_relu223_o;
    wire [5:0] i_fpga_indvars_iv_next_relu223_q;
    wire [63:0] i_idxprom7_relu227_vt_join_q;
    wire [31:0] i_idxprom7_relu227_vt_select_31_b;
    wire [63:0] i_idxprom_relu232_vt_join_q;
    wire [31:0] i_idxprom_relu232_vt_select_31_b;
    wire [32:0] i_inc_relu220_a;
    wire [32:0] i_inc_relu220_b;
    logic [32:0] i_inc_relu220_o;
    wire [32:0] i_inc_relu220_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_relu254_out_lsu_memdep_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_relu254_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_relu254_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_relu254_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_relu25_relu248_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_relu25_relu248_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_relu25_relu248_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu23_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu23_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu23_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu23_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu23_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu23_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu23_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu23_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_out_feedback_stall_out_25;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_out_feedback_stall_out_32;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_out_feedback_stall_out_30;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop24_relu22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop24_relu22_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop24_relu22_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop24_relu22_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop23_relu24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop23_relu24_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop23_relu24_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop23_relu24_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_j_017_pop21_relu25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_017_pop21_relu25_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i32_j_017_pop21_relu25_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_017_pop21_relu25_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_valid_out;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond535_push29_relu224_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i1_exitcond535_push29_relu224_out_feedback_valid_out_29;
    wire [0:0] i_llvm_fpga_push_i1_exitcond535_push29_relu224_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond535_push29_relu224_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond828_push25_relu229_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i1_exitcond828_push25_relu229_out_feedback_valid_out_25;
    wire [0:0] i_llvm_fpga_push_i1_exitcond828_push25_relu229_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond828_push25_relu229_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_relu245_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_relu245_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_relu245_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_relu245_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_out_feedback_valid_out_32;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_out_feedback_valid_out_28;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_relu255_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_relu255_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_relu255_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_relu255_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1136_push30_relu225_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1136_push30_relu225_out_feedback_valid_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1136_push30_relu225_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1136_push30_relu225_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1630_push26_relu230_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1630_push26_relu230_out_feedback_valid_out_26;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1630_push26_relu230_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1630_push26_relu230_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_relu240_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_relu240_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_relu240_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_relu240_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push24_relu253_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push24_relu253_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push24_relu253_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push24_relu253_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push23_relu236_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push23_relu236_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push23_relu236_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push23_relu236_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_j_017_push21_relu238_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_j_017_push21_relu238_out_feedback_valid_out_21;
    wire [0:0] i_llvm_fpga_push_i32_j_017_push21_relu238_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_j_017_push21_relu238_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_out_valid_out;
    wire [0:0] i_masked_relu247_qi;
    reg [0:0] i_masked_relu247_q;
    wire [0:0] i_next_cleanups_relu249_s;
    reg [1:0] i_next_cleanups_relu249_q;
    wire [1:0] i_next_initerations_relu218_vt_join_q;
    wire [0:0] i_next_initerations_relu218_vt_select_0_b;
    wire [0:0] i_notcmp_relu239_q;
    wire [0:0] i_or_relu246_q;
    wire [0:0] i_reduction_relu2_0_relu234_qi;
    reg [0:0] i_reduction_relu2_0_relu234_q;
    wire [0:0] i_reduction_relu2_1_relu244_q;
    wire [35:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_align_0_qint;
    wire [41:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_align_3_qint;
    wire [35:0] i_arrayidx10_relu20_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx10_relu20_mult_x_sums_align_0_qint;
    wire [44:0] i_arrayidx10_relu20_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx10_relu20_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx10_relu20_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx10_relu20_mult_x_sums_align_3_qint;
    wire [35:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_align_0_qint;
    wire [41:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_align_3_qint;
    wire [35:0] i_arrayidx23_relu20_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx23_relu20_mult_x_sums_align_0_qint;
    wire [44:0] i_arrayidx23_relu20_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx23_relu20_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx23_relu20_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx23_relu20_mult_x_sums_align_3_qint;
    wire [0:0] leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl_relu20_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl_relu20_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid320_i_cleanups_shl_relu20_shift_x_q;
    wire [0:0] leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_s;
    reg [1:0] leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid326_i_next_initerations_relu20_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid328_i_next_initerations_relu20_shift_x_q;
    wire [0:0] rightShiftStage0_uid330_i_next_initerations_relu20_shift_x_s;
    reg [1:0] rightShiftStage0_uid330_i_next_initerations_relu20_shift_x_q;
    wire [0:0] i_exitcond_relu221_cmp_nsign_q;
    wire [15:0] highBBits_uid342_i_arrayidx10_relu20_dupName_0_mult_x_im0_b;
    wire [18:0] addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_a;
    wire [18:0] addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_b;
    logic [18:0] addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_o;
    wire [18:0] addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_q;
    wire [2:0] sR_bottomExtension_uid347_i_arrayidx10_relu20_dupName_0_mult_x_im0_q;
    wire [18:0] addsumAHighB_uid401_i_arrayidx10_relu20_dupName_0_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid401_i_arrayidx10_relu20_dupName_0_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid401_i_arrayidx10_relu20_dupName_0_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid401_i_arrayidx10_relu20_dupName_0_mult_x_im3_q;
    wire [20:0] add_uid402_i_arrayidx10_relu20_dupName_0_mult_x_im3_q;
    wire [23:0] sR_mergedSignalTM_uid407_i_arrayidx10_relu20_dupName_0_mult_x_im3_q;
    wire [18:0] addsumAHighB_uid459_i_arrayidx10_relu20_dupName_0_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid459_i_arrayidx10_relu20_dupName_0_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid459_i_arrayidx10_relu20_dupName_0_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid459_i_arrayidx10_relu20_dupName_0_mult_x_im6_q;
    wire [20:0] add_uid460_i_arrayidx10_relu20_dupName_0_mult_x_im6_q;
    wire [23:0] sR_mergedSignalTM_uid465_i_arrayidx10_relu20_dupName_0_mult_x_im6_q;
    wire [10:0] addsumAHighB_uid517_i_arrayidx10_relu20_dupName_0_mult_x_im9_a;
    wire [10:0] addsumAHighB_uid517_i_arrayidx10_relu20_dupName_0_mult_x_im9_b;
    logic [10:0] addsumAHighB_uid517_i_arrayidx10_relu20_dupName_0_mult_x_im9_o;
    wire [10:0] addsumAHighB_uid517_i_arrayidx10_relu20_dupName_0_mult_x_im9_q;
    wire [12:0] add_uid518_i_arrayidx10_relu20_dupName_0_mult_x_im9_q;
    wire [15:0] sR_mergedSignalTM_uid523_i_arrayidx10_relu20_dupName_0_mult_x_im9_q;
    wire [0:0] lowRangeB_uid562_i_arrayidx10_relu20_mult_x_im0_in;
    wire [0:0] lowRangeB_uid562_i_arrayidx10_relu20_mult_x_im0_b;
    wire [16:0] highBBits_uid563_i_arrayidx10_relu20_mult_x_im0_b;
    wire [18:0] addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_a;
    wire [18:0] addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_b;
    logic [18:0] addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_o;
    wire [18:0] addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_q;
    wire [19:0] add_uid565_i_arrayidx10_relu20_mult_x_im0_q;
    wire [14:0] highBBits_uid568_i_arrayidx10_relu20_mult_x_im0_b;
    wire [20:0] a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_a;
    wire [20:0] a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_b;
    logic [20:0] a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_o;
    wire [20:0] a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_q;
    wire [3:0] sR_bottomExtension_uid573_i_arrayidx10_relu20_mult_x_im0_q;
    wire [0:0] lowRangeB_uid631_i_arrayidx10_relu20_mult_x_im3_in;
    wire [0:0] lowRangeB_uid631_i_arrayidx10_relu20_mult_x_im3_b;
    wire [16:0] highBBits_uid632_i_arrayidx10_relu20_mult_x_im3_b;
    wire [18:0] addsumAHighB_uid633_i_arrayidx10_relu20_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid633_i_arrayidx10_relu20_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid633_i_arrayidx10_relu20_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid633_i_arrayidx10_relu20_mult_x_im3_q;
    wire [19:0] add_uid634_i_arrayidx10_relu20_mult_x_im3_q;
    wire [2:0] lowRangeB_uid636_i_arrayidx10_relu20_mult_x_im3_in;
    wire [2:0] lowRangeB_uid636_i_arrayidx10_relu20_mult_x_im3_b;
    wire [14:0] highBBits_uid637_i_arrayidx10_relu20_mult_x_im3_b;
    wire [20:0] a_subconst_25_sumAHighB_uid638_i_arrayidx10_relu20_mult_x_im3_a;
    wire [20:0] a_subconst_25_sumAHighB_uid638_i_arrayidx10_relu20_mult_x_im3_b;
    logic [20:0] a_subconst_25_sumAHighB_uid638_i_arrayidx10_relu20_mult_x_im3_o;
    wire [20:0] a_subconst_25_sumAHighB_uid638_i_arrayidx10_relu20_mult_x_im3_q;
    wire [23:0] a_subconst_25_uid639_i_arrayidx10_relu20_mult_x_im3_q;
    wire [22:0] sR_bottomRange_uid643_i_arrayidx10_relu20_mult_x_im3_in;
    wire [22:0] sR_bottomRange_uid643_i_arrayidx10_relu20_mult_x_im3_b;
    wire [26:0] sR_mergedSignalTM_uid644_i_arrayidx10_relu20_mult_x_im3_q;
    wire [0:0] lowRangeB_uid700_i_arrayidx10_relu20_mult_x_im6_in;
    wire [0:0] lowRangeB_uid700_i_arrayidx10_relu20_mult_x_im6_b;
    wire [16:0] highBBits_uid701_i_arrayidx10_relu20_mult_x_im6_b;
    wire [18:0] addsumAHighB_uid702_i_arrayidx10_relu20_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid702_i_arrayidx10_relu20_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid702_i_arrayidx10_relu20_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid702_i_arrayidx10_relu20_mult_x_im6_q;
    wire [19:0] add_uid703_i_arrayidx10_relu20_mult_x_im6_q;
    wire [2:0] lowRangeB_uid705_i_arrayidx10_relu20_mult_x_im6_in;
    wire [2:0] lowRangeB_uid705_i_arrayidx10_relu20_mult_x_im6_b;
    wire [14:0] highBBits_uid706_i_arrayidx10_relu20_mult_x_im6_b;
    wire [20:0] a_subconst_25_sumAHighB_uid707_i_arrayidx10_relu20_mult_x_im6_a;
    wire [20:0] a_subconst_25_sumAHighB_uid707_i_arrayidx10_relu20_mult_x_im6_b;
    logic [20:0] a_subconst_25_sumAHighB_uid707_i_arrayidx10_relu20_mult_x_im6_o;
    wire [20:0] a_subconst_25_sumAHighB_uid707_i_arrayidx10_relu20_mult_x_im6_q;
    wire [23:0] a_subconst_25_uid708_i_arrayidx10_relu20_mult_x_im6_q;
    wire [22:0] sR_bottomRange_uid712_i_arrayidx10_relu20_mult_x_im6_in;
    wire [22:0] sR_bottomRange_uid712_i_arrayidx10_relu20_mult_x_im6_b;
    wire [26:0] sR_mergedSignalTM_uid713_i_arrayidx10_relu20_mult_x_im6_q;
    wire [0:0] lowRangeB_uid769_i_arrayidx10_relu20_mult_x_im9_in;
    wire [0:0] lowRangeB_uid769_i_arrayidx10_relu20_mult_x_im9_b;
    wire [8:0] highBBits_uid770_i_arrayidx10_relu20_mult_x_im9_b;
    wire [10:0] addsumAHighB_uid771_i_arrayidx10_relu20_mult_x_im9_a;
    wire [10:0] addsumAHighB_uid771_i_arrayidx10_relu20_mult_x_im9_b;
    logic [10:0] addsumAHighB_uid771_i_arrayidx10_relu20_mult_x_im9_o;
    wire [10:0] addsumAHighB_uid771_i_arrayidx10_relu20_mult_x_im9_q;
    wire [11:0] add_uid772_i_arrayidx10_relu20_mult_x_im9_q;
    wire [2:0] lowRangeB_uid774_i_arrayidx10_relu20_mult_x_im9_in;
    wire [2:0] lowRangeB_uid774_i_arrayidx10_relu20_mult_x_im9_b;
    wire [6:0] highBBits_uid775_i_arrayidx10_relu20_mult_x_im9_b;
    wire [12:0] a_subconst_25_sumAHighB_uid776_i_arrayidx10_relu20_mult_x_im9_a;
    wire [12:0] a_subconst_25_sumAHighB_uid776_i_arrayidx10_relu20_mult_x_im9_b;
    logic [12:0] a_subconst_25_sumAHighB_uid776_i_arrayidx10_relu20_mult_x_im9_o;
    wire [12:0] a_subconst_25_sumAHighB_uid776_i_arrayidx10_relu20_mult_x_im9_q;
    wire [15:0] a_subconst_25_uid777_i_arrayidx10_relu20_mult_x_im9_q;
    wire [14:0] sR_bottomRange_uid781_i_arrayidx10_relu20_mult_x_im9_in;
    wire [14:0] sR_bottomRange_uid781_i_arrayidx10_relu20_mult_x_im9_b;
    wire [18:0] sR_mergedSignalTM_uid782_i_arrayidx10_relu20_mult_x_im9_q;
    wire [52:0] i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx10_relu20_dupName_1_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx10_relu20_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx10_relu20_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx10_relu20_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx10_relu20_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx10_relu20_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx10_relu20_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx10_relu20_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx10_relu20_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx10_relu20_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx10_relu20_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx23_relu20_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx23_relu20_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx23_relu20_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx23_relu20_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx23_relu20_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx23_relu20_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx23_relu20_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx23_relu20_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx23_relu20_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx23_relu20_add_x_p2_of_2_q;
    wire [10:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q;
    wire [52:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [20:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [20:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [20:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [18:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [52:0] i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [23:0] i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [23:0] i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [23:0] i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [21:0] i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [52:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [20:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [20:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [20:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [18:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [52:0] i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [23:0] i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [23:0] i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [23:0] i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [21:0] i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [11:0] i_arrayidx10_relu20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx10_relu20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx10_relu20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx10_relu20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [17:0] i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_tessel0_2_b;
    wire [51:0] i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [11:0] i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [12:0] i_arrayidx10_relu20_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx10_relu20_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx10_relu20_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx23_relu20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx23_relu20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx23_relu20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx23_relu20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx23_relu20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx23_relu20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [12:0] i_arrayidx23_relu20_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx23_relu20_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx23_relu20_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [1:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b;
    wire [51:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [18:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [18:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    wire [2:0] i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b;
    wire [19:0] i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b;
    wire [51:0] i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [21:0] i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [21:0] i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    wire [51:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [18:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [18:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    wire [51:0] i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [21:0] i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [21:0] i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    wire [17:0] i_arrayidx10_relu20_dupName_0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx10_relu20_dupName_0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx10_relu20_dupName_0_mult_x_bs1_merged_bit_select_d;
    wire [9:0] i_arrayidx10_relu20_dupName_0_mult_x_bs1_merged_bit_select_e;
    wire [17:0] i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_d;
    wire [9:0] i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_e;
    wire [51:0] i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [51:0] i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [27:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b;
    wire [7:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c;
    wire [9:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [17:0] i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    wire [24:0] i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b;
    wire [10:0] i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c;
    wire [6:0] i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [20:0] i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    wire [27:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b;
    wire [7:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c;
    wire [9:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [17:0] i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    wire [24:0] i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b;
    wire [10:0] i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c;
    wire [6:0] i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [20:0] i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    wire [1:0] lowRangeB_uid399_i_arrayidx10_relu20_dupName_0_mult_x_im3_merged_bit_select_b;
    wire [15:0] lowRangeB_uid399_i_arrayidx10_relu20_dupName_0_mult_x_im3_merged_bit_select_c;
    wire [1:0] lowRangeB_uid457_i_arrayidx10_relu20_dupName_0_mult_x_im6_merged_bit_select_b;
    wire [15:0] lowRangeB_uid457_i_arrayidx10_relu20_dupName_0_mult_x_im6_merged_bit_select_c;
    wire [1:0] lowRangeB_uid515_i_arrayidx10_relu20_dupName_0_mult_x_im9_merged_bit_select_b;
    wire [7:0] lowRangeB_uid515_i_arrayidx10_relu20_dupName_0_mult_x_im9_merged_bit_select_c;
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
    reg [1:0] redist0_lowRangeB_uid515_i_arrayidx10_relu20_dupName_0_mult_x_im9_merged_bit_select_b_1_0_q;
    reg [1:0] redist1_lowRangeB_uid457_i_arrayidx10_relu20_dupName_0_mult_x_im6_merged_bit_select_b_1_0_q;
    reg [1:0] redist2_lowRangeB_uid399_i_arrayidx10_relu20_dupName_0_mult_x_im3_merged_bit_select_b_1_0_q;
    reg [20:0] redist3_i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q;
    reg [10:0] redist4_i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q;
    reg [17:0] redist5_i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q;
    reg [7:0] redist6_i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q;
    reg [20:0] redist7_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q;
    reg [10:0] redist8_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q;
    reg [17:0] redist9_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q;
    reg [7:0] redist10_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q;
    reg [11:0] redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [11:0] redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [51:0] redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_q;
    reg [51:0] redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_q;
    reg [2:0] redist18_lowRangeB_uid774_i_arrayidx10_relu20_mult_x_im9_b_1_0_q;
    reg [22:0] redist19_sR_bottomRange_uid712_i_arrayidx10_relu20_mult_x_im6_b_1_0_q;
    reg [22:0] redist20_sR_bottomRange_uid643_i_arrayidx10_relu20_mult_x_im3_b_1_0_q;
    reg [14:0] redist21_highBBits_uid568_i_arrayidx10_relu20_mult_x_im0_b_1_0_q;
    reg [0:0] redist22_lowRangeB_uid562_i_arrayidx10_relu20_mult_x_im0_b_1_0_q;
    reg [0:0] redist23_i_reduction_relu2_0_relu234_q_2_0_q;
    wire [0:0] redist24_i_masked_relu247_q_69_fifo_valid_in;
    wire redist24_i_masked_relu247_q_69_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist24_i_masked_relu247_q_69_fifo_stall_in;
    wire redist24_i_masked_relu247_q_69_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist24_i_masked_relu247_q_69_fifo_data_in;
    wire [0:0] redist24_i_masked_relu247_q_69_fifo_valid_out;
    wire redist24_i_masked_relu247_q_69_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist24_i_masked_relu247_q_69_fifo_stall_out;
    wire redist24_i_masked_relu247_q_69_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist24_i_masked_relu247_q_69_fifo_data_out;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_valid_in;
    wire redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_stall_in;
    wire redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_data_in;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_valid_out;
    wire redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_stall_out;
    wire redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_data_out;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_66_0_q;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_66_1_q;
    reg [31:0] redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_0_q;
    reg [31:0] redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_1_q;
    reg [31:0] redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_q;
    reg [31:0] redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out_1_0_q;
    reg [31:0] redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out_3_0_q;
    reg [31:0] redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out_3_1_q;
    wire [0:0] redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_valid_in;
    wire redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_stall_in;
    wire redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_data_in;
    wire [0:0] redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_valid_out;
    wire redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_stall_out;
    wire redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_data_out;
    reg [0:0] redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_q;
    reg [0:0] redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_q;
    wire [0:0] redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_valid_in;
    wire redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_stall_in;
    wire redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_data_in;
    wire [0:0] redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_valid_out;
    wire redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_stall_out;
    wire redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_data_out;
    reg [0:0] redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_q;
    reg [0:0] redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_q;
    reg [0:0] redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_q;
    reg [0:0] redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_q;
    reg [0:0] redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_q;
    reg [0:0] redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q;
    reg [0:0] redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q;
    wire [0:0] redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_in;
    wire redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_in;
    wire redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_data_in;
    wire [0:0] redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_out;
    wire redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_out;
    wire redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_data_out;
    reg [0:0] redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_q;
    reg [0:0] redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q;
    wire [0:0] redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_valid_in;
    wire redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_stall_in;
    wire redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_data_in;
    wire [0:0] redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_valid_out;
    wire redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_stall_out;
    wire redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_data_out;
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
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_body6_relu2s_c0_enter8412_relu251_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_relu2s_c0_enter8412_relu251_aunroll_x_b;
    wire [70:0] bubble_join_relu2_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_relu2_B4_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_relu2_B4_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_relu2_B4_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_relu2_B4_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_relu2_B4_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_relu2_B4_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_relu2_B4_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_relu2_B4_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_relu2_B4_merge_reg_aunroll_x_j;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_relu254_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_relu254_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_relu25_relu248_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_relu25_relu248_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_relu23_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_relu23_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_initerations_pop23_relu24_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_relu24_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_j_017_pop21_relu25_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_j_017_pop21_relu25_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_b;
    wire [4:0] bubble_join_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_q;
    wire [4:0] bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_b;
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
    wire [0:0] bubble_join_redist24_i_masked_relu247_q_69_fifo_q;
    wire [0:0] bubble_select_redist24_i_masked_relu247_q_69_fifo_b;
    wire [31:0] bubble_join_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_q;
    wire [31:0] bubble_select_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_b;
    wire [0:0] bubble_join_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_q;
    wire [0:0] bubble_select_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_b;
    wire [0:0] bubble_join_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_q;
    wire [0:0] bubble_select_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_b;
    wire [0:0] bubble_join_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_q;
    wire [0:0] bubble_select_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_b;
    wire [0:0] bubble_join_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_q;
    wire [0:0] bubble_select_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_b;
    wire [32:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [32:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [3:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [3:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [64:0] bubble_join_coalesced_delay_3_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_3_fifo_b;
    wire [0:0] SE_bgTrunc_i_inc_relu220_sel_x_wireValid;
    wire [0:0] SE_bgTrunc_i_inc_relu220_sel_x_and0;
    wire [0:0] SE_bgTrunc_i_inc_relu220_sel_x_backStall;
    wire [0:0] SE_bgTrunc_i_inc_relu220_sel_x_V0;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_relu2_B4_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu254_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu254_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu254_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu254_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_relu254_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu254_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu254_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_relu254_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu254_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu254_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu254_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu254_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_relu254_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_relu25_relu248_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_relu25_relu248_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_relu25_relu248_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg6;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_or4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_or5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_and2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_and3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_V3;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond535_push29_relu224_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond535_push29_relu224_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond828_push25_relu229_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond828_push25_relu229_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_relu245_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_relu245_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_or0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_relu240_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_relu240_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push24_relu253_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push24_relu253_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push23_relu236_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push23_relu236_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_017_push21_relu238_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_017_push21_relu238_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_backStall;
    reg [0:0] SE_i_masked_relu247_R_v_0;
    wire [0:0] SE_i_masked_relu247_v_s_0;
    wire [0:0] SE_i_masked_relu247_s_tv_0;
    wire [0:0] SE_i_masked_relu247_backEN;
    wire [0:0] SE_i_masked_relu247_backStall;
    wire [0:0] SE_i_masked_relu247_V0;
    wire [0:0] SE_i_next_initerations_relu218_vt_select_0_wireValid;
    wire [0:0] SE_i_next_initerations_relu218_vt_select_0_wireStall;
    wire [0:0] SE_i_next_initerations_relu218_vt_select_0_StallValid;
    wire [0:0] SE_i_next_initerations_relu218_vt_select_0_toReg0;
    reg [0:0] SE_i_next_initerations_relu218_vt_select_0_fromReg0;
    wire [0:0] SE_i_next_initerations_relu218_vt_select_0_consumed0;
    wire [0:0] SE_i_next_initerations_relu218_vt_select_0_toReg1;
    reg [0:0] SE_i_next_initerations_relu218_vt_select_0_fromReg1;
    wire [0:0] SE_i_next_initerations_relu218_vt_select_0_consumed1;
    wire [0:0] SE_i_next_initerations_relu218_vt_select_0_or0;
    wire [0:0] SE_i_next_initerations_relu218_vt_select_0_backStall;
    wire [0:0] SE_i_next_initerations_relu218_vt_select_0_V0;
    wire [0:0] SE_i_next_initerations_relu218_vt_select_0_V1;
    reg [0:0] SE_i_reduction_relu2_0_relu234_R_v_0;
    wire [0:0] SE_i_reduction_relu2_0_relu234_v_s_0;
    wire [0:0] SE_i_reduction_relu2_0_relu234_s_tv_0;
    wire [0:0] SE_i_reduction_relu2_0_relu234_backEN;
    wire [0:0] SE_i_reduction_relu2_0_relu234_and0;
    wire [0:0] SE_i_reduction_relu2_0_relu234_backStall;
    wire [0:0] SE_i_reduction_relu2_0_relu234_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_wireValid;
    wire [0:0] SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_backStall;
    wire [0:0] SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_V0;
    reg [0:0] SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_R_v_0;
    wire [0:0] SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_v_s_0;
    wire [0:0] SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_s_tv_0;
    wire [0:0] SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_backEN;
    wire [0:0] SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_backStall;
    wire [0:0] SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_V0;
    reg [0:0] SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_R_v_0;
    wire [0:0] SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_v_s_0;
    wire [0:0] SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_s_tv_0;
    wire [0:0] SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_backEN;
    wire [0:0] SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_backStall;
    wire [0:0] SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_V0;
    reg [0:0] SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_R_v_0;
    wire [0:0] SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_v_s_0;
    wire [0:0] SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_s_tv_0;
    wire [0:0] SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_backEN;
    wire [0:0] SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_backStall;
    wire [0:0] SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_V0;
    reg [0:0] SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx10_relu20_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_relu20_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx10_relu20_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_relu20_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_relu20_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_relu20_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_relu20_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_relu20_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_relu20_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_relu20_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx10_relu20_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx10_relu20_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_relu20_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_relu20_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_relu20_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_relu20_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_and1;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_arrayidx23_relu20_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx23_relu20_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx23_relu20_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx23_relu20_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx23_relu20_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx23_relu20_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx23_relu20_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx23_relu20_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx23_relu20_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx23_relu20_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx23_relu20_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx23_relu20_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx23_relu20_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx23_relu20_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx23_relu20_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx23_relu20_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    reg [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or1;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V1;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V2;
    reg [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    reg [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or1;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V1;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V2;
    reg [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    reg [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_or1;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_V1;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_V2;
    reg [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    reg [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_or0;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_or1;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_V1;
    wire [0:0] SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_V2;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_tessel1_0_V0;
    wire [0:0] SE_i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_tessel1_0_V1;
    reg [0:0] SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist23_i_reduction_relu2_0_relu234_q_2_0_R_v_0;
    wire [0:0] SE_redist23_i_reduction_relu2_0_relu234_q_2_0_v_s_0;
    wire [0:0] SE_redist23_i_reduction_relu2_0_relu234_q_2_0_s_tv_0;
    wire [0:0] SE_redist23_i_reduction_relu2_0_relu234_q_2_0_backEN;
    wire [0:0] SE_redist23_i_reduction_relu2_0_relu234_q_2_0_backStall;
    wire [0:0] SE_redist23_i_reduction_relu2_0_relu234_q_2_0_V0;
    wire [0:0] SE_in_redist24_i_masked_relu247_q_69_fifo_wireValid;
    wire [0:0] SE_in_redist24_i_masked_relu247_q_69_fifo_backStall;
    wire [0:0] SE_in_redist24_i_masked_relu247_q_69_fifo_V0;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_wireValid;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_backStall;
    wire [0:0] SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_V0;
    reg [0:0] SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_R_v_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_v_s_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_s_tv_0;
    wire [0:0] SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_backEN;
    wire [0:0] SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_backStall;
    wire [0:0] SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_V0;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_wireValid;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_wireStall;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_StallValid;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_toReg0;
    reg [0:0] SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_fromReg0;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_consumed0;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_toReg1;
    reg [0:0] SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_fromReg1;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_consumed1;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_or0;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_backStall;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_V0;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_V1;
    reg [0:0] SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_R_v_0;
    wire [0:0] SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_v_s_0;
    wire [0:0] SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_s_tv_0;
    wire [0:0] SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_backEN;
    wire [0:0] SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_backStall;
    wire [0:0] SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_V0;
    reg [0:0] SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_0;
    reg [0:0] SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_1;
    reg [0:0] SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_2;
    wire [0:0] SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_v_s_0;
    wire [0:0] SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_s_tv_0;
    wire [0:0] SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_s_tv_1;
    wire [0:0] SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_s_tv_2;
    wire [0:0] SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_backEN;
    wire [0:0] SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_or0;
    wire [0:0] SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_or1;
    wire [0:0] SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_backStall;
    wire [0:0] SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_V0;
    wire [0:0] SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_V1;
    wire [0:0] SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_V2;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_wireValid;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_wireStall;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_StallValid;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_toReg0;
    reg [0:0] SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_fromReg0;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_consumed0;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_toReg1;
    reg [0:0] SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_fromReg1;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_consumed1;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_or0;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_backStall;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_V0;
    wire [0:0] SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_V1;
    reg [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_R_v_0;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_v_s_0;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_s_tv_0;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_backEN;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_backStall;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_V0;
    reg [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_0;
    reg [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_1;
    reg [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_2;
    reg [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_3;
    reg [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_4;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_v_s_0;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_s_tv_0;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_s_tv_1;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_s_tv_2;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_s_tv_3;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_s_tv_4;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_backEN;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_or0;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_or1;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_or2;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_or3;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_backStall;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_V0;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_V1;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_V2;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_V3;
    wire [0:0] SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_V4;
    reg [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_R_v_0;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_v_s_0;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_s_tv_0;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_backEN;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_backStall;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_V0;
    reg [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_R_v_0;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_v_s_0;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_s_tv_0;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_backEN;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_backStall;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_V0;
    reg [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_0;
    reg [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_1;
    reg [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_2;
    reg [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_3;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_v_s_0;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_s_tv_0;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_s_tv_1;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_s_tv_2;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_s_tv_3;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_backEN;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_or0;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_or1;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_or2;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_backStall;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_V0;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_V1;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_V2;
    wire [0:0] SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_V3;
    reg [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0;
    wire [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_v_s_0;
    wire [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_0;
    wire [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN;
    wire [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall;
    wire [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V0;
    reg [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0;
    reg [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1;
    reg [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2;
    reg [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_3;
    wire [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_v_s_0;
    wire [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_0;
    wire [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_1;
    wire [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_2;
    wire [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_3;
    wire [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN;
    wire [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or0;
    wire [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or1;
    wire [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or2;
    wire [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall;
    wire [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V0;
    wire [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V1;
    wire [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V2;
    wire [0:0] SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V3;
    wire [0:0] SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_wireValid;
    wire [0:0] SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_wireStall;
    wire [0:0] SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_StallValid;
    wire [0:0] SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_toReg0;
    reg [0:0] SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_fromReg0;
    wire [0:0] SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_consumed0;
    wire [0:0] SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_toReg1;
    reg [0:0] SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_fromReg1;
    wire [0:0] SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_consumed1;
    wire [0:0] SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_or0;
    wire [0:0] SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_backStall;
    wire [0:0] SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_V0;
    wire [0:0] SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_V1;
    reg [0:0] SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_R_v_0;
    wire [0:0] SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_v_s_0;
    wire [0:0] SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_s_tv_0;
    wire [0:0] SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backEN;
    wire [0:0] SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backStall;
    wire [0:0] SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_V0;
    reg [0:0] SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_R_v_0;
    wire [0:0] SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_v_s_0;
    wire [0:0] SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_s_tv_0;
    wire [0:0] SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backEN;
    wire [0:0] SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backStall;
    wire [0:0] SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_V0;
    wire [0:0] SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_wireValid;
    wire [0:0] SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_backStall;
    wire [0:0] SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_V0;
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
    wire [0:0] SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and7;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_V0;
    wire [0:0] bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_stall_out_bitsignaltemp;
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
    wire [0:0] SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_i_valid;
    reg [0:0] SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_r_valid;
    reg [0:0] SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_r_data0;
    wire [0:0] SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_backStall;
    wire [0:0] SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_V;
    wire [0:0] SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_D0;
    wire [0:0] SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_i_valid;
    reg [0:0] SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_r_valid;
    reg [0:0] SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_r_data0;
    wire [0:0] SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_backStall;
    wire [0:0] SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_V;
    wire [0:0] SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_D0;
    wire [0:0] SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_i_valid;
    reg [0:0] SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_r_valid;
    reg [0:0] SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_r_data0;
    wire [0:0] SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_backStall;
    wire [0:0] SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_V;
    wire [0:0] SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_D0;
    wire [0:0] SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_i_valid;
    reg [0:0] SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid;
    reg [0:0] SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_data0;
    wire [0:0] SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall;
    wire [0:0] SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V;
    wire [0:0] SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_D0;
    wire [0:0] SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_i_valid;
    reg [0:0] SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid;
    reg [0:0] SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_data0;
    wire [0:0] SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall;
    wire [0:0] SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V;
    wire [0:0] SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_D0;
    wire [0:0] SR_SE_i_masked_relu247_i_valid;
    reg [0:0] SR_SE_i_masked_relu247_r_valid;
    wire [0:0] SR_SE_i_masked_relu247_and0;
    reg [0:0] SR_SE_i_masked_relu247_r_data0;
    reg [0:0] SR_SE_i_masked_relu247_r_data1;
    wire [0:0] SR_SE_i_masked_relu247_backStall;
    wire [0:0] SR_SE_i_masked_relu247_V;
    wire [0:0] SR_SE_i_masked_relu247_D0;
    wire [0:0] SR_SE_i_masked_relu247_D1;
    wire [0:0] SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_i_valid;
    reg [0:0] SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_valid;
    reg [0:0] SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_data0;
    wire [0:0] SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backStall;
    wire [0:0] SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_V;
    wire [0:0] SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_D0;
    wire [0:0] SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_i_valid;
    reg [0:0] SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_valid;
    reg [0:0] SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_data0;
    wire [0:0] SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backStall;
    wire [0:0] SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_V;
    wire [0:0] SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_D0;
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
    wire [0:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_valid;
    reg [51:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data1;
    reg [51:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data2;
    reg [51:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data3;
    reg [20:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data4;
    reg [20:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data5;
    reg [31:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data6;
    reg [10:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data7;
    reg [10:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data8;
    wire [0:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D1;
    wire [51:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D2;
    wire [51:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D3;
    wire [20:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D4;
    wire [20:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D5;
    wire [31:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D6;
    wire [10:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D7;
    wire [10:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D8;
    wire [0:0] SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid;
    reg [51:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data1;
    reg [51:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data2;
    reg [51:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data3;
    reg [17:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data4;
    reg [17:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data5;
    reg [7:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data6;
    reg [7:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data7;
    reg [31:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data8;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D1;
    wire [51:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D2;
    wire [51:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D3;
    wire [17:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D4;
    wire [17:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D5;
    wire [7:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D6;
    wire [7:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D7;
    wire [31:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D8;
    wire [0:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_valid;
    reg [21:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data0;
    reg [21:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data2;
    reg [21:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data3;
    reg [21:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data4;
    reg [0:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data5;
    reg [31:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data6;
    wire [0:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_V;
    wire [21:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D0;
    wire [21:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D2;
    wire [21:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D3;
    wire [21:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D4;
    wire [0:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D5;
    wire [31:0] SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D6;
    wire [0:0] SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid;
    reg [18:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data0;
    reg [18:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data2;
    reg [18:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data3;
    reg [18:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data4;
    reg [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data5;
    reg [31:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data6;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V;
    wire [18:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D0;
    wire [18:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D2;
    wire [18:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D3;
    wire [18:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D4;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D5;
    wire [31:0] SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D6;
    wire [0:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_i_valid;
    reg [0:0] SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_r_valid;
    wire [0:0] SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_and0;
    reg [0:0] SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_r_data0;
    reg [0:0] SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_r_data1;
    wire [0:0] SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_backStall;
    wire [0:0] SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_V;
    wire [0:0] SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_D0;
    wire [0:0] SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_D1;
    wire [0:0] SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_i_valid;
    reg [0:0] SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_r_valid;
    reg [0:0] SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_r_data0;
    wire [0:0] SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_backStall;
    wire [0:0] SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_V;
    wire [0:0] SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_D0;
    wire [0:0] SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_i_valid;
    reg [0:0] SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_r_valid;
    reg [0:0] SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_r_data0;
    wire [0:0] SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_backStall;
    wire [0:0] SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_V;
    wire [0:0] SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_D0;
    wire [0:0] SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_i_valid;
    reg [0:0] SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_r_valid;
    reg [0:0] SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_r_data0;
    wire [0:0] SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_backStall;
    wire [0:0] SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_V;
    wire [0:0] SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_D0;
    wire [0:0] SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_i_valid;
    reg [0:0] SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_r_valid;
    reg [0:0] SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_r_data0;
    wire [0:0] SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_backStall;
    wire [0:0] SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_V;
    wire [0:0] SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_D0;
    wire [0:0] SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_i_valid;
    reg [0:0] SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_r_valid;
    reg [0:0] SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_r_data0;
    wire [0:0] SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_backStall;
    wire [0:0] SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_V;
    wire [0:0] SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_D1;
    wire [0:0] SR_SE_i_next_initerations_relu218_vt_select_0_i_valid;
    reg [0:0] SR_SE_i_next_initerations_relu218_vt_select_0_r_valid;
    wire [0:0] SR_SE_i_next_initerations_relu218_vt_select_0_and0;
    reg [0:0] SR_SE_i_next_initerations_relu218_vt_select_0_r_data0;
    reg [0:0] SR_SE_i_next_initerations_relu218_vt_select_0_r_data1;
    reg [0:0] SR_SE_i_next_initerations_relu218_vt_select_0_r_data2;
    reg [1:0] SR_SE_i_next_initerations_relu218_vt_select_0_r_data3;
    wire [0:0] SR_SE_i_next_initerations_relu218_vt_select_0_backStall;
    wire [0:0] SR_SE_i_next_initerations_relu218_vt_select_0_V;
    wire [0:0] SR_SE_i_next_initerations_relu218_vt_select_0_D0;
    wire [0:0] SR_SE_i_next_initerations_relu218_vt_select_0_D1;
    wire [0:0] SR_SE_i_next_initerations_relu218_vt_select_0_D2;
    wire [1:0] SR_SE_i_next_initerations_relu218_vt_select_0_D3;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_D1;
    wire [0:0] SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_i_valid;
    reg [0:0] SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_r_valid;
    wire [0:0] SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_and0;
    wire [0:0] SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_and1;
    reg [1:0] SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_r_data0;
    reg [0:0] SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_r_data1;
    wire [0:0] SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_backStall;
    wire [0:0] SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_V;
    wire [1:0] SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_D0;
    wire [0:0] SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_and0;
    reg [31:0] SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_V;
    wire [31:0] SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_D1;
    wire [0:0] SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_i_valid;
    reg [0:0] SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_r_valid;
    reg [31:0] SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_r_data0;
    wire [0:0] SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_backStall;
    wire [0:0] SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_V;
    wire [31:0] SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_and0;
    reg [4:0] SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_V;
    wire [4:0] SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_D1;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i32_058(CONSTANT,82)
    assign c_i32_058_q = $unsigned(32'b00000000000000000000000000000000);

    // i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_tessel0_2(BITSELECT,1408)
    assign i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_tessel0_2_b = c_i32_058_q[17:0];

    // bubble_join_i_llvm_fpga_pipeline_keep_going_relu23(BITJOIN,1657)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_relu23_q = i_llvm_fpga_pipeline_keep_going_relu23_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_relu23(BITSELECT,1658)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_relu23_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_relu23_q[0:0]);

    // redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0(REG,1617)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_backEN == 1'b1)
        begin
            redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_q <= $unsigned(SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_D0);
        end
    end

    // redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1(REG,1618)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_backEN == 1'b1)
        begin
            redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_q <= $unsigned(SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_D0);
        end
    end

    // bubble_join_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo(BITJOIN,1719)
    assign bubble_join_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_q = redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_data_out;

    // bubble_select_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo(BITSELECT,1720)
    assign bubble_select_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_b = $unsigned(bubble_join_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_q[0:0]);

    // redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0(REG,1620)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_backEN == 1'b1)
        begin
            redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_q <= $unsigned(SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_D0);
        end
    end

    // redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1(REG,1621)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_backEN == 1'b1)
        begin
            redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_q <= $unsigned(SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_D0);
        end
    end

    // bubble_join_i_llvm_fpga_mem_unnamed_relu25_relu248(BITJOIN,1654)
    assign bubble_join_i_llvm_fpga_mem_unnamed_relu25_relu248_q = i_llvm_fpga_mem_unnamed_relu25_relu248_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_relu25_relu248(BITSELECT,1655)
    assign bubble_select_i_llvm_fpga_mem_unnamed_relu25_relu248_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_relu25_relu248_q[31:0]);

    // i_sfc_s_c0_in_for_body6_relu2s_c0_enter8412_relu251_aunroll_x(BLACKBOX,75)@105
    // in in_i_stall@20000000
    // out out_c0_exit87_0_tpl@111
    // out out_c0_exit87_1_tpl@111
    // out out_o_stall@20000000
    // out out_o_valid@111
    relu2_i_sfc_s_c0_in_for_body6_s_c0_enter8412_relu251 thei_sfc_s_c0_in_for_body6_relu2s_c0_enter8412_relu251_aunroll_x (
        .in_c0_eni183_0_tpl(GND_q),
        .in_c0_eni183_1_tpl(bubble_select_i_llvm_fpga_mem_unnamed_relu25_relu248_b),
        .in_i_stall(SE_out_coalesced_delay_3_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_relu25_relu248_V0),
        .out_c0_exit87_0_tpl(),
        .out_c0_exit87_1_tpl(i_sfc_s_c0_in_for_body6_relu2s_c0_enter8412_relu251_aunroll_x_out_c0_exit87_1_tpl),
        .out_o_stall(i_sfc_s_c0_in_for_body6_relu2s_c0_enter8412_relu251_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body6_relu2s_c0_enter8412_relu251_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_for_body6_relu2s_c0_enter8412_relu251_aunroll_x(BITJOIN,1636)
    assign bubble_join_i_sfc_s_c0_in_for_body6_relu2s_c0_enter8412_relu251_aunroll_x_q = i_sfc_s_c0_in_for_body6_relu2s_c0_enter8412_relu251_aunroll_x_out_c0_exit87_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_body6_relu2s_c0_enter8412_relu251_aunroll_x(BITSELECT,1637)
    assign bubble_select_i_sfc_s_c0_in_for_body6_relu2s_c0_enter8412_relu251_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_relu2s_c0_enter8412_relu251_aunroll_x_q[31:0]);

    // bubble_join_coalesced_delay_3_fifo(BITJOIN,1734)
    assign bubble_join_coalesced_delay_3_fifo_q = coalesced_delay_3_fifo_data_out;

    // bubble_select_coalesced_delay_3_fifo(BITSELECT,1735)
    assign bubble_select_coalesced_delay_3_fifo_b = $unsigned(bubble_join_coalesced_delay_3_fifo_q[64:0]);

    // sel_for_coalesced_delay_3(BITSELECT,1584)
    assign sel_for_coalesced_delay_3_b = $unsigned(bubble_select_coalesced_delay_3_fifo_b[63:0]);
    assign sel_for_coalesced_delay_3_c = $unsigned(bubble_select_coalesced_delay_3_fifo_b[64:64]);

    // i_llvm_fpga_mem_memdep_relu254(BLACKBOX,113)@111
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_relu2_avm_address@20000000
    // out out_memdep_relu2_avm_burstcount@20000000
    // out out_memdep_relu2_avm_byteenable@20000000
    // out out_memdep_relu2_avm_enable@20000000
    // out out_memdep_relu2_avm_read@20000000
    // out out_memdep_relu2_avm_write@20000000
    // out out_memdep_relu2_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@142
    // out out_o_writeack@142
    relu2_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_relu254 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_3_b),
        .in_i_predicate(sel_for_coalesced_delay_3_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_relu254_backStall),
        .in_i_valid(SE_out_coalesced_delay_3_fifo_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_body6_relu2s_c0_enter8412_relu251_aunroll_x_b),
        .in_memdep_relu2_avm_readdata(in_memdep_relu2_avm_readdata),
        .in_memdep_relu2_avm_readdatavalid(in_memdep_relu2_avm_readdatavalid),
        .in_memdep_relu2_avm_waitrequest(in_memdep_relu2_avm_waitrequest),
        .in_memdep_relu2_avm_writeack(in_memdep_relu2_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_relu254_out_lsu_memdep_o_active),
        .out_memdep_relu2_avm_address(i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_address),
        .out_memdep_relu2_avm_burstcount(i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_burstcount),
        .out_memdep_relu2_avm_byteenable(i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_byteenable),
        .out_memdep_relu2_avm_enable(i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_enable),
        .out_memdep_relu2_avm_read(i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_read),
        .out_memdep_relu2_avm_write(i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_write),
        .out_memdep_relu2_avm_writedata(i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_relu254_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_relu254_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_relu254_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_relu254(STALLENABLE,1762)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_relu254_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_relu254_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_relu254_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_relu254_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_relu254_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_relu254_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_relu254_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_backStall) & SE_out_i_llvm_fpga_mem_memdep_relu254_wireValid) | SE_out_i_llvm_fpga_mem_memdep_relu254_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_relu254_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_backStall) & SE_out_i_llvm_fpga_mem_memdep_relu254_wireValid) | SE_out_i_llvm_fpga_mem_memdep_relu254_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_relu254_StallValid = SE_out_i_llvm_fpga_mem_memdep_relu254_backStall & SE_out_i_llvm_fpga_mem_memdep_relu254_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_relu254_toReg0 = SE_out_i_llvm_fpga_mem_memdep_relu254_StallValid & SE_out_i_llvm_fpga_mem_memdep_relu254_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_relu254_toReg1 = SE_out_i_llvm_fpga_mem_memdep_relu254_StallValid & SE_out_i_llvm_fpga_mem_memdep_relu254_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_relu254_or0 = SE_out_i_llvm_fpga_mem_memdep_relu254_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_relu254_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_relu254_consumed1 & SE_out_i_llvm_fpga_mem_memdep_relu254_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_relu254_backStall = SE_out_i_llvm_fpga_mem_memdep_relu254_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_relu254_V0 = SE_out_i_llvm_fpga_mem_memdep_relu254_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_relu254_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_relu254_V1 = SE_out_i_llvm_fpga_mem_memdep_relu254_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_relu254_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_relu254_wireValid = i_llvm_fpga_mem_memdep_relu254_out_o_valid;

    // SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212(STALLENABLE,1770)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_StallValid = SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_backStall & SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_toReg0 = SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_toReg1 = SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_or0 = SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_consumed1 & SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_or0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_backStall = SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_V0 = SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_V1 = SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_wireValid = i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28(STALLENABLE,1768)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_StallValid = SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_backStall & SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_toReg0 = SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_toReg1 = SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_or0 = SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_consumed1 & SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_or0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_backStall = SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_V0 = SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_V1 = SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_wireValid = i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_out_valid_out;

    // redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0(REG,1628)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backEN == 1'b1)
        begin
            redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_q <= $unsigned(SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_D0);
        end
    end

    // SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1(STALLENABLE,2034)
    // Valid signal propagation
    assign SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_V0 = SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_R_v_0;
    // Stall signal propagation
    assign SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_s_tv_0 = SR_SE_out_coalesced_delay_1_fifo_backStall & SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_R_v_0;
    // Backward Enable generation
    assign SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backEN = ~ (SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_v_s_0 = SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backEN & SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_V;
    // Backward Stall generation
    assign SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backStall = ~ (SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backEN == 1'b0)
            begin
                SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_R_v_0 <= SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_R_v_0 & SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_s_tv_0;
            end
            else
            begin
                SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_R_v_0 <= SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_v_s_0;
            end

        end
    end

    // SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1(STALLREG,2199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_valid <= 1'b0;
            SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_valid <= SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backStall & (SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_valid | SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_i_valid);

            if (SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_data0 <= $unsigned(redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_i_valid = SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_V0;
    // Stall signal propagation
    assign SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backStall = SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_valid | ~ (SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_i_valid);

    // Valid
    assign SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_V = SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_valid == 1'b1 ? SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_valid : SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_i_valid;

    assign SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_D0 = SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_valid == 1'b1 ? SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_r_data0 : redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_q;

    // SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0(STALLENABLE,2033)
    // Valid signal propagation
    assign SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_V0 = SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_R_v_0;
    // Stall signal propagation
    assign SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_s_tv_0 = SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backStall & SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_R_v_0;
    // Backward Enable generation
    assign SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backEN = ~ (SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_v_s_0 = SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backEN & SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_V;
    // Backward Stall generation
    assign SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backStall = ~ (SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backEN == 1'b0)
            begin
                SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_R_v_0 <= SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_R_v_0 & SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_s_tv_0;
            end
            else
            begin
                SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_R_v_0 <= SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_v_s_0;
            end

        end
    end

    // SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0(STALLREG,2198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_valid <= 1'b0;
            SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_valid <= SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backStall & (SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_valid | SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_i_valid);

            if (SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_data0 <= $unsigned(bubble_select_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_i_valid = SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backStall = SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_valid | ~ (SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_i_valid);

    // Valid
    assign SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_V = SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_valid == 1'b1 ? SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_valid : SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_i_valid;

    assign SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_D0 = SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_valid == 1'b1 ? SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_r_data0 : bubble_select_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_b;

    // redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0(REG,1625)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN == 1'b1)
        begin
            redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q <= $unsigned(SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_D0);
        end
    end

    // SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0(STALLENABLE,2029)
    // Valid signal propagation
    assign SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V0 = SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0;
    // Stall signal propagation
    assign SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_0 = SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall & SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0;
    // Backward Enable generation
    assign SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN = ~ (SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_v_s_0 = SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN & SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V;
    // Backward Stall generation
    assign SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall = ~ (SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backEN == 1'b0)
            begin
                SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0 <= SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0 & SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_s_tv_0;
            end
            else
            begin
                SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_R_v_0 <= SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_v_s_0;
            end

        end
    end

    // SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1(STALLREG,2196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid <= 1'b0;
            SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid <= SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall & (SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid | SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_i_valid);

            if (SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_data0 <= $unsigned(redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_i_valid = SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V0;
    // Stall signal propagation
    assign SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall = SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid | ~ (SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_i_valid);

    // Valid
    assign SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V = SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid == 1'b1 ? SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid : SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_i_valid;

    assign SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_D0 = SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_valid == 1'b1 ? SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_r_data0 : redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_q;

    // redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1(REG,1626)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN == 1'b1)
        begin
            redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q <= $unsigned(SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_D0);
        end
    end

    // SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27(STALLENABLE,1792)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_fromReg0 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_fromReg1 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_fromReg2 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_fromReg3 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_backStall) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_consumed2 = (~ (SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_backStall) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_consumed3 = (~ (SR_SE_i_masked_relu247_backStall) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_StallValid = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_backStall & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_wireValid;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_toReg0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_consumed0;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_toReg1 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_consumed1;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_toReg2 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_consumed2;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_toReg3 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_or0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_consumed0;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_or1 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_consumed1 & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_or0;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_or2 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_consumed2 & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_or1;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_wireStall = ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_consumed3 & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_or2);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_backStall = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_V0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_V1 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_V2 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_V3 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_wireValid = i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_out_valid_out;

    // SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241(STALLENABLE,1821)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_V0 = SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_backStall = i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_wireValid = SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_V;

    // SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241(STALLENABLE,1822)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_wireValid = i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_out_valid_out;

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241(BLACKBOX,143)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    relu2_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_0 thei_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_D0),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_out_feedback_stall_out_20),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_V0),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_out_feedback_valid_out_20),
        .out_stall_out(i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_859(CONSTANT,85)
    assign c_i5_859_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27(BLACKBOX,128)@72
    // in in_stall_in@20000000
    // out out_data_out@73
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@73
    relu2_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27 (
        .in_data_in(c_i5_859_q),
        .in_dir(redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_backStall),
        .in_valid_in(SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V2),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1(STALLENABLE,2030)
    // Valid signal propagation
    assign SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V0 = SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0;
    assign SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V1 = SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1;
    assign SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V2 = SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2;
    assign SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V3 = SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_3;
    // Stall signal propagation
    assign SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_out_stall_out & SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0;
    assign SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_1 = i_llvm_fpga_pop_i2_cleanups_pop24_relu22_out_stall_out & SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1;
    assign SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_2 = i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_out_stall_out & SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2;
    assign SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_3 = redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_out & SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_3;
    // Backward Enable generation
    assign SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or0 = SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_0;
    assign SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or1 = SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_1 | SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or0;
    assign SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or2 = SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_2 | SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or1;
    assign SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN = ~ (SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_3 | SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_v_s_0 = SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN & SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V;
    // Backward Stall generation
    assign SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backStall = ~ (SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0 <= 1'b0;
            SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1 <= 1'b0;
            SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2 <= 1'b0;
            SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN == 1'b0)
            begin
                SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0 <= SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0 & SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_0;
            end
            else
            begin
                SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_0 <= SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_v_s_0;
            end

            if (SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN == 1'b0)
            begin
                SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1 <= SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1 & SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_1;
            end
            else
            begin
                SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_1 <= SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_v_s_0;
            end

            if (SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN == 1'b0)
            begin
                SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2 <= SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2 & SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_2;
            end
            else
            begin
                SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_2 <= SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_v_s_0;
            end

            if (SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_backEN == 1'b0)
            begin
                SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_3 <= SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_3 & SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_s_tv_3;
            end
            else
            begin
                SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_R_v_3 <= SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_v_s_0;
            end

        end
    end

    // redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo(STALLFIFO,1627)
    assign redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_in = SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V3;
    assign redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_in = SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_backStall;
    assign redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_data_in = redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q;
    assign redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_in_bitsignaltemp = redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_in[0];
    assign redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_in_bitsignaltemp = redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_in[0];
    assign redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_out[0] = redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_out_bitsignaltemp;
    assign redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_out[0] = redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo (
        .valid_in(redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_in_bitsignaltemp),
        .stall_in(redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_in_bitsignaltemp),
        .data_in(redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q),
        .valid_out(redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_out_bitsignaltemp),
        .stall_out(redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_stall_out_bitsignaltemp),
        .data_out(redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo(STALLENABLE,2032)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_fromReg0 <= '0;
            SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_fromReg0 <= SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_toReg0;
            // Successor 1
            SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_fromReg1 <= SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_consumed0 = (~ (SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_0_backStall) & SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_wireValid) | SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_fromReg0;
    assign SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_consumed1 = (~ (i_llvm_fpga_pop_i2_initerations_pop23_relu24_out_stall_out) & SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_wireValid) | SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_fromReg1;
    // Consuming
    assign SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_StallValid = SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_backStall & SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_wireValid;
    assign SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_toReg0 = SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_StallValid & SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_consumed0;
    assign SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_toReg1 = SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_StallValid & SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_or0 = SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_consumed0;
    assign SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_wireStall = ~ (SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_consumed1 & SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_or0);
    assign SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_backStall = SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_V0 = SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_wireValid & ~ (SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_fromReg0);
    assign SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_V1 = SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_wireValid & ~ (SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_wireValid = redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_valid_out;

    // SE_i_next_initerations_relu218_vt_select_0(STALLENABLE,1826)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_relu218_vt_select_0_fromReg0 <= '0;
            SE_i_next_initerations_relu218_vt_select_0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_relu218_vt_select_0_fromReg0 <= SE_i_next_initerations_relu218_vt_select_0_toReg0;
            // Successor 1
            SE_i_next_initerations_relu218_vt_select_0_fromReg1 <= SE_i_next_initerations_relu218_vt_select_0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_relu218_vt_select_0_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_relu245_out_stall_out) & SE_i_next_initerations_relu218_vt_select_0_wireValid) | SE_i_next_initerations_relu218_vt_select_0_fromReg0;
    assign SE_i_next_initerations_relu218_vt_select_0_consumed1 = (~ (i_llvm_fpga_push_i2_initerations_push23_relu236_out_stall_out) & SE_i_next_initerations_relu218_vt_select_0_wireValid) | SE_i_next_initerations_relu218_vt_select_0_fromReg1;
    // Consuming
    assign SE_i_next_initerations_relu218_vt_select_0_StallValid = SE_i_next_initerations_relu218_vt_select_0_backStall & SE_i_next_initerations_relu218_vt_select_0_wireValid;
    assign SE_i_next_initerations_relu218_vt_select_0_toReg0 = SE_i_next_initerations_relu218_vt_select_0_StallValid & SE_i_next_initerations_relu218_vt_select_0_consumed0;
    assign SE_i_next_initerations_relu218_vt_select_0_toReg1 = SE_i_next_initerations_relu218_vt_select_0_StallValid & SE_i_next_initerations_relu218_vt_select_0_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_relu218_vt_select_0_or0 = SE_i_next_initerations_relu218_vt_select_0_consumed0;
    assign SE_i_next_initerations_relu218_vt_select_0_wireStall = ~ (SE_i_next_initerations_relu218_vt_select_0_consumed1 & SE_i_next_initerations_relu218_vt_select_0_or0);
    assign SE_i_next_initerations_relu218_vt_select_0_backStall = SE_i_next_initerations_relu218_vt_select_0_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_relu218_vt_select_0_V0 = SE_i_next_initerations_relu218_vt_select_0_wireValid & ~ (SE_i_next_initerations_relu218_vt_select_0_fromReg0);
    assign SE_i_next_initerations_relu218_vt_select_0_V1 = SE_i_next_initerations_relu218_vt_select_0_wireValid & ~ (SE_i_next_initerations_relu218_vt_select_0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_relu218_vt_select_0_wireValid = SR_SE_i_next_initerations_relu218_vt_select_0_V;

    // SE_out_i_llvm_fpga_push_i2_initerations_push23_relu236(STALLENABLE,1814)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_initerations_push23_relu236_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_initerations_push23_relu236_wireValid = i_llvm_fpga_push_i2_initerations_push23_relu236_out_valid_out;

    // i_llvm_fpga_push_i2_initerations_push23_relu236(BLACKBOX,139)@140
    // in in_stall_in@20000000
    // out out_data_out@141
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@141
    relu2_i_llvm_fpga_push_i2_initerations_push23_0 thei_llvm_fpga_push_i2_initerations_push23_relu236 (
        .in_data_in(SR_SE_i_next_initerations_relu218_vt_select_0_D3),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i2_initerations_pop23_relu24_out_feedback_stall_out_23),
        .in_keep_going(SR_SE_i_next_initerations_relu218_vt_select_0_D2),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_initerations_push23_relu236_backStall),
        .in_valid_in(SE_i_next_initerations_relu218_vt_select_0_V1),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i2_initerations_push23_relu236_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i2_initerations_push23_relu236_out_feedback_valid_out_23),
        .out_stall_out(i_llvm_fpga_push_i2_initerations_push23_relu236_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_initerations_push23_relu236_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo(BITJOIN,1722)
    assign bubble_join_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_q = redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_data_out;

    // bubble_select_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo(BITSELECT,1723)
    assign bubble_select_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_b = $unsigned(bubble_join_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_q[0:0]);

    // c_i2_156(CONSTANT,81)
    assign c_i2_156_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_initerations_pop23_relu24(BLACKBOX,124)@139
    // in in_stall_in@20000000
    // out out_data_out@140
    // out out_feedback_stall_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@140
    relu2_i_llvm_fpga_pop_i2_initerations_pop23_0 thei_llvm_fpga_pop_i2_initerations_pop23_relu24 (
        .in_data_in(c_i2_156_q),
        .in_dir(bubble_select_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_b),
        .in_feedback_in_23(i_llvm_fpga_push_i2_initerations_push23_relu236_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i2_initerations_push23_relu236_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_backStall),
        .in_valid_in(SE_out_redist38_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop23_relu24_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i2_initerations_pop23_relu24_out_feedback_stall_out_23),
        .out_stall_out(i_llvm_fpga_pop_i2_initerations_pop23_relu24_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_initerations_pop23_relu24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24(STALLENABLE,1784)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_consumed1 = (~ (SR_SE_i_next_initerations_relu218_vt_select_0_backStall) & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_StallValid = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_backStall & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_toReg0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_toReg1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_or0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_consumed1 & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_or0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_backStall = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_V0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_V1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_wireValid = i_llvm_fpga_pop_i2_initerations_pop23_relu24_out_valid_out;

    // bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg(STALLFIFO,2189)
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_V0;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_masked_relu247(STALLENABLE,1823)
    // Valid signal propagation
    assign SE_i_masked_relu247_V0 = SE_i_masked_relu247_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_relu247_s_tv_0 = SE_in_redist24_i_masked_relu247_q_69_fifo_backStall & SE_i_masked_relu247_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_relu247_backEN = ~ (SE_i_masked_relu247_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_relu247_v_s_0 = SE_i_masked_relu247_backEN & SR_SE_i_masked_relu247_V;
    // Backward Stall generation
    assign SE_i_masked_relu247_backStall = ~ (SE_i_masked_relu247_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_relu247_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_relu247_backEN == 1'b0)
            begin
                SE_i_masked_relu247_R_v_0 <= SE_i_masked_relu247_R_v_0 & SE_i_masked_relu247_s_tv_0;
            end
            else
            begin
                SE_i_masked_relu247_R_v_0 <= SE_i_masked_relu247_v_s_0;
            end

        end
    end

    // i_masked_relu247(LOGICAL,144)@73 + 1
    assign i_masked_relu247_qi = SR_SE_i_masked_relu247_D0 & SR_SE_i_masked_relu247_D1;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_relu247_delay ( .xin(i_masked_relu247_qi), .xout(i_masked_relu247_q), .ena(SE_i_masked_relu247_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_in_redist24_i_masked_relu247_q_69_fifo(STALLENABLE,2006)
    // Valid signal propagation
    assign SE_in_redist24_i_masked_relu247_q_69_fifo_V0 = SE_in_redist24_i_masked_relu247_q_69_fifo_wireValid;
    // Backward Stall generation
    assign SE_in_redist24_i_masked_relu247_q_69_fifo_backStall = redist24_i_masked_relu247_q_69_fifo_stall_out | ~ (SE_in_redist24_i_masked_relu247_q_69_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_redist24_i_masked_relu247_q_69_fifo_wireValid = SE_i_masked_relu247_V0;

    // redist24_i_masked_relu247_q_69_fifo(STALLFIFO,1606)
    assign redist24_i_masked_relu247_q_69_fifo_valid_in = SE_in_redist24_i_masked_relu247_q_69_fifo_V0;
    assign redist24_i_masked_relu247_q_69_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_backStall;
    assign redist24_i_masked_relu247_q_69_fifo_data_in = i_masked_relu247_q;
    assign redist24_i_masked_relu247_q_69_fifo_valid_in_bitsignaltemp = redist24_i_masked_relu247_q_69_fifo_valid_in[0];
    assign redist24_i_masked_relu247_q_69_fifo_stall_in_bitsignaltemp = redist24_i_masked_relu247_q_69_fifo_stall_in[0];
    assign redist24_i_masked_relu247_q_69_fifo_valid_out[0] = redist24_i_masked_relu247_q_69_fifo_valid_out_bitsignaltemp;
    assign redist24_i_masked_relu247_q_69_fifo_stall_out[0] = redist24_i_masked_relu247_q_69_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(69),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist24_i_masked_relu247_q_69_fifo (
        .valid_in(redist24_i_masked_relu247_q_69_fifo_valid_in_bitsignaltemp),
        .stall_in(redist24_i_masked_relu247_q_69_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_relu247_q),
        .valid_out(redist24_i_masked_relu247_q_69_fifo_valid_out_bitsignaltemp),
        .stall_out(redist24_i_masked_relu247_q_69_fifo_stall_out_bitsignaltemp),
        .data_out(redist24_i_masked_relu247_q_69_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg(STALLFIFO,2190)
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_V0;
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(70),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1(STALLENABLE,2143)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and0 = bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and1 = redist24_i_masked_relu247_q_69_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and2 = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and3 = bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and4 = SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and5 = SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and6 = SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and7 = SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and6;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_relu254_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_and7;

    // SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29(STALLENABLE,1778)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_wireValid = i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_out_valid_out;

    // SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225(STALLENABLE,1805)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_V0 = SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_backStall = i_llvm_fpga_push_i1_notcmp1136_push30_relu225_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_wireValid = SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_V;

    // SE_out_i_llvm_fpga_push_i1_notcmp1136_push30_relu225(STALLENABLE,1806)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_wireValid = i_llvm_fpga_push_i1_notcmp1136_push30_relu225_out_valid_out;

    // i_llvm_fpga_push_i1_notcmp1136_push30_relu225(BLACKBOX,135)@142
    // in in_stall_in@20000000
    // out out_data_out@143
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    // out out_stall_out@20000000
    // out out_valid_out@143
    relu2_i_llvm_fpga_push_i1_notcmp1136_push30_0 thei_llvm_fpga_push_i1_notcmp1136_push30_relu225 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_D0),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_out_feedback_stall_out_30),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_V0),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i1_notcmp1136_push30_relu225_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i1_notcmp1136_push30_relu225_out_feedback_valid_out_30),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp1136_push30_relu225_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp1136_push30_relu225_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29(BLACKBOX,121)@141
    // in in_stall_in@20000000
    // out out_data_out@142
    // out out_feedback_stall_out_30@20000000
    // out out_stall_out@20000000
    // out out_valid_out@142
    relu2_i_llvm_fpga_pop_i1_notcmp1136_pop30_0 thei_llvm_fpga_pop_i1_notcmp1136_pop30_relu29 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D6),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D3),
        .in_feedback_in_30(i_llvm_fpga_push_i1_notcmp1136_push30_relu225_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i1_notcmp1136_push30_relu225_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V2),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_out_feedback_stall_out_30),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229(STALLENABLE,1795)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_V0 = SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_backStall = i_llvm_fpga_push_i1_exitcond828_push25_relu229_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_wireValid = SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_V;

    // SE_out_i_llvm_fpga_push_i1_exitcond828_push25_relu229(STALLENABLE,1796)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_exitcond828_push25_relu229_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_exitcond828_push25_relu229_wireValid = i_llvm_fpga_push_i1_exitcond828_push25_relu229_out_valid_out;

    // i_llvm_fpga_push_i1_exitcond828_push25_relu229(BLACKBOX,130)@142
    // in in_stall_in@20000000
    // out out_data_out@143
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@143
    relu2_i_llvm_fpga_push_i1_exitcond828_push25_0 thei_llvm_fpga_push_i1_exitcond828_push25_relu229 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_D0),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_out_feedback_stall_out_25),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_exitcond828_push25_relu229_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_V0),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i1_exitcond828_push25_relu229_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i1_exitcond828_push25_relu229_out_feedback_valid_out_25),
        .out_stall_out(i_llvm_fpga_push_i1_exitcond828_push25_relu229_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_exitcond828_push25_relu229_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond828_pop25_relu212(BLACKBOX,117)@141
    // in in_stall_in@20000000
    // out out_data_out@142
    // out out_feedback_stall_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@142
    relu2_i_llvm_fpga_pop_i1_exitcond828_pop25_0 thei_llvm_fpga_pop_i1_exitcond828_pop25_relu212 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D5),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D2),
        .in_feedback_in_25(i_llvm_fpga_push_i1_exitcond828_push25_relu229_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i1_exitcond828_push25_relu229_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_out_feedback_stall_out_25),
        .out_stall_out(i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224(STALLENABLE,1793)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_V0 = SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_backStall = i_llvm_fpga_push_i1_exitcond535_push29_relu224_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_wireValid = SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_V;

    // SE_out_i_llvm_fpga_push_i1_exitcond535_push29_relu224(STALLENABLE,1794)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_exitcond535_push29_relu224_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_exitcond535_push29_relu224_wireValid = i_llvm_fpga_push_i1_exitcond535_push29_relu224_out_valid_out;

    // i_llvm_fpga_push_i1_exitcond535_push29_relu224(BLACKBOX,129)@142
    // in in_stall_in@20000000
    // out out_data_out@143
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    // out out_stall_out@20000000
    // out out_valid_out@143
    relu2_i_llvm_fpga_push_i1_exitcond535_push29_0 thei_llvm_fpga_push_i1_exitcond535_push29_relu224 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_D0),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_out_feedback_stall_out_29),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_exitcond535_push29_relu224_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_V0),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i1_exitcond535_push29_relu224_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i1_exitcond535_push29_relu224_out_feedback_valid_out_29),
        .out_stall_out(i_llvm_fpga_push_i1_exitcond535_push29_relu224_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_exitcond535_push29_relu224_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond535_pop29_relu28(BLACKBOX,116)@141
    // in in_stall_in@20000000
    // out out_data_out@142
    // out out_feedback_stall_out_29@20000000
    // out out_stall_out@20000000
    // out out_valid_out@142
    relu2_i_llvm_fpga_pop_i1_exitcond535_pop29_0 thei_llvm_fpga_pop_i1_exitcond535_pop29_relu28 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D0),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D1),
        .in_feedback_in_29(i_llvm_fpga_push_i1_exitcond535_push29_relu224_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i1_exitcond535_push29_relu224_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_out_feedback_stall_out_29),
        .out_stall_out(i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,2040)
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
    assign SE_out_coalesced_delay_1_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg0;
    assign SE_out_coalesced_delay_1_fifo_consumed1 = (~ (i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg1;
    assign SE_out_coalesced_delay_1_fifo_consumed2 = (~ (i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg2;
    assign SE_out_coalesced_delay_1_fifo_consumed3 = (~ (i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg3;
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

    // SE_out_i_llvm_fpga_push_i1_notcmp1630_push26_relu230(STALLENABLE,1808)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_wireValid = i_llvm_fpga_push_i1_notcmp1630_push26_relu230_out_valid_out;

    // i_llvm_fpga_push_i1_notcmp1630_push26_relu230(BLACKBOX,136)@142
    // in in_stall_in@20000000
    // out out_data_out@143
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@143
    relu2_i_llvm_fpga_push_i1_notcmp1630_push26_0 thei_llvm_fpga_push_i1_notcmp1630_push26_relu230 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_D0),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_out_feedback_stall_out_26),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_V0),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i1_notcmp1630_push26_relu230_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i1_notcmp1630_push26_relu230_out_feedback_valid_out_26),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp1630_push26_relu230_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp1630_push26_relu230_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1(REG,1629)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_backEN == 1'b1)
        begin
            redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q <= $unsigned(SR_SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_D0);
        end
    end

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,1731)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,1732)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[3:0]);

    // sel_for_coalesced_delay_1(BITSELECT,1578)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1:1]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[2:2]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[3:3]);

    // SE_stall_entry(STALLENABLE,1831)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = relu2_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,1706)
    assign bubble_join_stall_entry_q = {in_notcmp1629_pop1756, in_notcmp1152, in_memdep_phi2_pop1233_pop1958, in_memdep_phi1_pop1554, in_k_019_pop1131_pop1857, in_i_018_pop1453, in_forked, in_exitcond827_pop1655, in_exitcond551};

    // bubble_select_stall_entry(BITSELECT,1707)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[66:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[67:67]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[68:68]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[69:69]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[70:70]);

    // relu2_B4_merge_reg_aunroll_x(BLACKBOX,76)@0
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
    relu2_B4_merge_reg therelu2_B4_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_d),
        .in_data_in_1_tpl(bubble_select_stall_entry_b),
        .in_data_in_2_tpl(bubble_select_stall_entry_i),
        .in_data_in_3_tpl(bubble_select_stall_entry_e),
        .in_data_in_4_tpl(bubble_select_stall_entry_g),
        .in_data_in_5_tpl(bubble_select_stall_entry_c),
        .in_data_in_6_tpl(bubble_select_stall_entry_j),
        .in_data_in_7_tpl(bubble_select_stall_entry_f),
        .in_data_in_8_tpl(bubble_select_stall_entry_h),
        .in_stall_in(SE_out_relu2_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(relu2_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(relu2_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(relu2_B4_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(relu2_B4_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(relu2_B4_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(relu2_B4_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(relu2_B4_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_stall_out(relu2_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(relu2_B4_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_relu2_B4_merge_reg_aunroll_x(BITJOIN,1639)
    assign bubble_join_relu2_B4_merge_reg_aunroll_x_q = {relu2_B4_merge_reg_aunroll_x_out_data_out_8_tpl, relu2_B4_merge_reg_aunroll_x_out_data_out_7_tpl, relu2_B4_merge_reg_aunroll_x_out_data_out_6_tpl, relu2_B4_merge_reg_aunroll_x_out_data_out_5_tpl, relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl, relu2_B4_merge_reg_aunroll_x_out_data_out_3_tpl, relu2_B4_merge_reg_aunroll_x_out_data_out_2_tpl, relu2_B4_merge_reg_aunroll_x_out_data_out_1_tpl, relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_relu2_B4_merge_reg_aunroll_x(BITSELECT,1640)
    assign bubble_select_relu2_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_relu2_B4_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_relu2_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_relu2_B4_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_relu2_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_relu2_B4_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_relu2_B4_merge_reg_aunroll_x_e = $unsigned(bubble_join_relu2_B4_merge_reg_aunroll_x_q[34:3]);
    assign bubble_select_relu2_B4_merge_reg_aunroll_x_f = $unsigned(bubble_join_relu2_B4_merge_reg_aunroll_x_q[35:35]);
    assign bubble_select_relu2_B4_merge_reg_aunroll_x_g = $unsigned(bubble_join_relu2_B4_merge_reg_aunroll_x_q[36:36]);
    assign bubble_select_relu2_B4_merge_reg_aunroll_x_h = $unsigned(bubble_join_relu2_B4_merge_reg_aunroll_x_q[37:37]);
    assign bubble_select_relu2_B4_merge_reg_aunroll_x_i = $unsigned(bubble_join_relu2_B4_merge_reg_aunroll_x_q[69:38]);
    assign bubble_select_relu2_B4_merge_reg_aunroll_x_j = $unsigned(bubble_join_relu2_B4_merge_reg_aunroll_x_q[70:70]);

    // join_for_coalesced_delay_1(BITJOIN,1577)
    assign join_for_coalesced_delay_1_q = {bubble_select_relu2_B4_merge_reg_aunroll_x_h, bubble_select_relu2_B4_merge_reg_aunroll_x_g, bubble_select_relu2_B4_merge_reg_aunroll_x_d, bubble_select_relu2_B4_merge_reg_aunroll_x_c};

    // join_for_coalesced_delay_0(BITJOIN,1574)
    assign join_for_coalesced_delay_0_q = {bubble_select_relu2_B4_merge_reg_aunroll_x_b, bubble_select_relu2_B4_merge_reg_aunroll_x_e};

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,1728)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,1729)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[32:0]);

    // sel_for_coalesced_delay_0(BITSELECT,1575)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[32:32]);

    // bubble_join_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210(BITJOIN,1693)
    assign bubble_join_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_q = i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210(BITSELECT,1694)
    assign bubble_select_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_q[31:0]);

    // redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out_1_0(REG,1613)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_b);
        end
    end

    // lowRangeB_uid457_i_arrayidx10_relu20_dupName_0_mult_x_im6_merged_bit_select(BITSELECT,1524)@68
    assign lowRangeB_uid457_i_arrayidx10_relu20_dupName_0_mult_x_im6_merged_bit_select_b = i_arrayidx10_relu20_dupName_0_mult_x_bs1_merged_bit_select_d[1:0];
    assign lowRangeB_uid457_i_arrayidx10_relu20_dupName_0_mult_x_im6_merged_bit_select_c = i_arrayidx10_relu20_dupName_0_mult_x_bs1_merged_bit_select_d[17:2];

    // i_idxprom7_relu227_sel_x(BITSELECT,67)@68
    assign i_idxprom7_relu227_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_b[31:0]};

    // i_idxprom7_relu227_vt_select_31(BITSELECT,100)@68
    assign i_idxprom7_relu227_vt_select_31_b = i_idxprom7_relu227_sel_x_b[31:0];

    // i_idxprom7_relu227_vt_join(BITJOIN,99)@68
    assign i_idxprom7_relu227_vt_join_q = {c_i32_058_q, i_idxprom7_relu227_vt_select_31_b};

    // i_arrayidx10_relu20_dupName_0_mult_x_bs1_merged_bit_select(BITSELECT,1511)@68
    assign i_arrayidx10_relu20_dupName_0_mult_x_bs1_merged_bit_select_b = i_idxprom7_relu227_vt_join_q[17:0];
    assign i_arrayidx10_relu20_dupName_0_mult_x_bs1_merged_bit_select_c = i_idxprom7_relu227_vt_join_q[35:18];
    assign i_arrayidx10_relu20_dupName_0_mult_x_bs1_merged_bit_select_d = i_idxprom7_relu227_vt_join_q[53:36];
    assign i_arrayidx10_relu20_dupName_0_mult_x_bs1_merged_bit_select_e = i_idxprom7_relu227_vt_join_q[63:54];

    // addsumAHighB_uid459_i_arrayidx10_relu20_dupName_0_mult_x_im6(ADD,458)@68 + 1
    assign addsumAHighB_uid459_i_arrayidx10_relu20_dupName_0_mult_x_im6_a = {1'b0, i_arrayidx10_relu20_dupName_0_mult_x_bs1_merged_bit_select_d};
    assign addsumAHighB_uid459_i_arrayidx10_relu20_dupName_0_mult_x_im6_b = {3'b000, lowRangeB_uid457_i_arrayidx10_relu20_dupName_0_mult_x_im6_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid459_i_arrayidx10_relu20_dupName_0_mult_x_im6_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid459_i_arrayidx10_relu20_dupName_0_mult_x_im6_o <= $unsigned(addsumAHighB_uid459_i_arrayidx10_relu20_dupName_0_mult_x_im6_a) + $unsigned(addsumAHighB_uid459_i_arrayidx10_relu20_dupName_0_mult_x_im6_b);
        end
    end
    assign addsumAHighB_uid459_i_arrayidx10_relu20_dupName_0_mult_x_im6_q = addsumAHighB_uid459_i_arrayidx10_relu20_dupName_0_mult_x_im6_o[18:0];

    // redist1_lowRangeB_uid457_i_arrayidx10_relu20_dupName_0_mult_x_im6_merged_bit_select_b_1_0(REG,1586)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_lowRangeB_uid457_i_arrayidx10_relu20_dupName_0_mult_x_im6_merged_bit_select_b_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist1_lowRangeB_uid457_i_arrayidx10_relu20_dupName_0_mult_x_im6_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid457_i_arrayidx10_relu20_dupName_0_mult_x_im6_merged_bit_select_b);
        end
    end

    // add_uid460_i_arrayidx10_relu20_dupName_0_mult_x_im6(BITJOIN,459)@69
    assign add_uid460_i_arrayidx10_relu20_dupName_0_mult_x_im6_q = {addsumAHighB_uid459_i_arrayidx10_relu20_dupName_0_mult_x_im6_q, redist1_lowRangeB_uid457_i_arrayidx10_relu20_dupName_0_mult_x_im6_merged_bit_select_b_1_0_q};

    // sR_bottomExtension_uid347_i_arrayidx10_relu20_dupName_0_mult_x_im0(CONSTANT,346)
    assign sR_bottomExtension_uid347_i_arrayidx10_relu20_dupName_0_mult_x_im0_q = $unsigned(3'b000);

    // sR_mergedSignalTM_uid465_i_arrayidx10_relu20_dupName_0_mult_x_im6(BITJOIN,464)@69
    assign sR_mergedSignalTM_uid465_i_arrayidx10_relu20_dupName_0_mult_x_im6_q = {add_uid460_i_arrayidx10_relu20_dupName_0_mult_x_im6_q, sR_bottomExtension_uid347_i_arrayidx10_relu20_dupName_0_mult_x_im0_q};

    // i_arrayidx10_relu20_dupName_0_mult_x_sums_align_0(BITSHIFT,255)@69
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid465_i_arrayidx10_relu20_dupName_0_mult_x_im6_q, 12'b000000000000 };
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_align_0_q = i_arrayidx10_relu20_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select(BITSELECT,1515)@69
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b = $unsigned(i_arrayidx10_relu20_dupName_0_mult_x_sums_align_0_q[27:0]);
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c = $unsigned(i_arrayidx10_relu20_dupName_0_mult_x_sums_align_0_q[35:28]);

    // i_arrayidx23_relu20_dupName_0_mult_x_sums_align_0(BITSHIFT,291)@69
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid465_i_arrayidx10_relu20_dupName_0_mult_x_im6_q, 12'b000000000000 };
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_align_0_q = i_arrayidx23_relu20_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select(BITSELECT,1519)@69
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b = $unsigned(i_arrayidx23_relu20_dupName_0_mult_x_sums_align_0_q[27:0]);
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c = $unsigned(i_arrayidx23_relu20_dupName_0_mult_x_sums_align_0_q[35:28]);

    // lowRangeB_uid515_i_arrayidx10_relu20_dupName_0_mult_x_im9_merged_bit_select(BITSELECT,1525)@68
    assign lowRangeB_uid515_i_arrayidx10_relu20_dupName_0_mult_x_im9_merged_bit_select_b = i_arrayidx10_relu20_dupName_0_mult_x_bs1_merged_bit_select_e[1:0];
    assign lowRangeB_uid515_i_arrayidx10_relu20_dupName_0_mult_x_im9_merged_bit_select_c = i_arrayidx10_relu20_dupName_0_mult_x_bs1_merged_bit_select_e[9:2];

    // addsumAHighB_uid517_i_arrayidx10_relu20_dupName_0_mult_x_im9(ADD,516)@68 + 1
    assign addsumAHighB_uid517_i_arrayidx10_relu20_dupName_0_mult_x_im9_a = {1'b0, i_arrayidx10_relu20_dupName_0_mult_x_bs1_merged_bit_select_e};
    assign addsumAHighB_uid517_i_arrayidx10_relu20_dupName_0_mult_x_im9_b = {3'b000, lowRangeB_uid515_i_arrayidx10_relu20_dupName_0_mult_x_im9_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid517_i_arrayidx10_relu20_dupName_0_mult_x_im9_o <= 11'b0;
        end
        else if (SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid517_i_arrayidx10_relu20_dupName_0_mult_x_im9_o <= $unsigned(addsumAHighB_uid517_i_arrayidx10_relu20_dupName_0_mult_x_im9_a) + $unsigned(addsumAHighB_uid517_i_arrayidx10_relu20_dupName_0_mult_x_im9_b);
        end
    end
    assign addsumAHighB_uid517_i_arrayidx10_relu20_dupName_0_mult_x_im9_q = addsumAHighB_uid517_i_arrayidx10_relu20_dupName_0_mult_x_im9_o[10:0];

    // redist0_lowRangeB_uid515_i_arrayidx10_relu20_dupName_0_mult_x_im9_merged_bit_select_b_1_0(REG,1585)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_lowRangeB_uid515_i_arrayidx10_relu20_dupName_0_mult_x_im9_merged_bit_select_b_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist0_lowRangeB_uid515_i_arrayidx10_relu20_dupName_0_mult_x_im9_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid515_i_arrayidx10_relu20_dupName_0_mult_x_im9_merged_bit_select_b);
        end
    end

    // add_uid518_i_arrayidx10_relu20_dupName_0_mult_x_im9(BITJOIN,517)@69
    assign add_uid518_i_arrayidx10_relu20_dupName_0_mult_x_im9_q = {addsumAHighB_uid517_i_arrayidx10_relu20_dupName_0_mult_x_im9_q, redist0_lowRangeB_uid515_i_arrayidx10_relu20_dupName_0_mult_x_im9_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid523_i_arrayidx10_relu20_dupName_0_mult_x_im9(BITJOIN,522)@69
    assign sR_mergedSignalTM_uid523_i_arrayidx10_relu20_dupName_0_mult_x_im9_q = {add_uid518_i_arrayidx10_relu20_dupName_0_mult_x_im9_q, sR_bottomExtension_uid347_i_arrayidx10_relu20_dupName_0_mult_x_im0_q};

    // i_arrayidx10_relu20_dupName_0_mult_x_sums_align_3(BITSHIFT,258)@69
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid523_i_arrayidx10_relu20_dupName_0_mult_x_im9_q, 12'b000000000000 };
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_align_3_q = i_arrayidx10_relu20_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,1516)@69
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_arrayidx10_relu20_dupName_0_mult_x_sums_align_3_q[9:0]);
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_arrayidx10_relu20_dupName_0_mult_x_sums_align_3_q[27:10]);

    // i_arrayidx23_relu20_dupName_0_mult_x_sums_align_3(BITSHIFT,294)@69
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid523_i_arrayidx10_relu20_dupName_0_mult_x_im9_q, 12'b000000000000 };
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_align_3_q = i_arrayidx23_relu20_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,1520)@69
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_arrayidx23_relu20_dupName_0_mult_x_sums_align_3_q[9:0]);
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_arrayidx23_relu20_dupName_0_mult_x_sums_align_3_q[27:10]);

    // lowRangeB_uid399_i_arrayidx10_relu20_dupName_0_mult_x_im3_merged_bit_select(BITSELECT,1523)@68
    assign lowRangeB_uid399_i_arrayidx10_relu20_dupName_0_mult_x_im3_merged_bit_select_b = i_arrayidx10_relu20_dupName_0_mult_x_bs1_merged_bit_select_c[1:0];
    assign lowRangeB_uid399_i_arrayidx10_relu20_dupName_0_mult_x_im3_merged_bit_select_c = i_arrayidx10_relu20_dupName_0_mult_x_bs1_merged_bit_select_c[17:2];

    // addsumAHighB_uid401_i_arrayidx10_relu20_dupName_0_mult_x_im3(ADD,400)@68 + 1
    assign addsumAHighB_uid401_i_arrayidx10_relu20_dupName_0_mult_x_im3_a = {1'b0, i_arrayidx10_relu20_dupName_0_mult_x_bs1_merged_bit_select_c};
    assign addsumAHighB_uid401_i_arrayidx10_relu20_dupName_0_mult_x_im3_b = {3'b000, lowRangeB_uid399_i_arrayidx10_relu20_dupName_0_mult_x_im3_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid401_i_arrayidx10_relu20_dupName_0_mult_x_im3_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid401_i_arrayidx10_relu20_dupName_0_mult_x_im3_o <= $unsigned(addsumAHighB_uid401_i_arrayidx10_relu20_dupName_0_mult_x_im3_a) + $unsigned(addsumAHighB_uid401_i_arrayidx10_relu20_dupName_0_mult_x_im3_b);
        end
    end
    assign addsumAHighB_uid401_i_arrayidx10_relu20_dupName_0_mult_x_im3_q = addsumAHighB_uid401_i_arrayidx10_relu20_dupName_0_mult_x_im3_o[18:0];

    // redist2_lowRangeB_uid399_i_arrayidx10_relu20_dupName_0_mult_x_im3_merged_bit_select_b_1_0(REG,1587)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_lowRangeB_uid399_i_arrayidx10_relu20_dupName_0_mult_x_im3_merged_bit_select_b_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist2_lowRangeB_uid399_i_arrayidx10_relu20_dupName_0_mult_x_im3_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid399_i_arrayidx10_relu20_dupName_0_mult_x_im3_merged_bit_select_b);
        end
    end

    // add_uid402_i_arrayidx10_relu20_dupName_0_mult_x_im3(BITJOIN,401)@69
    assign add_uid402_i_arrayidx10_relu20_dupName_0_mult_x_im3_q = {addsumAHighB_uid401_i_arrayidx10_relu20_dupName_0_mult_x_im3_q, redist2_lowRangeB_uid399_i_arrayidx10_relu20_dupName_0_mult_x_im3_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid407_i_arrayidx10_relu20_dupName_0_mult_x_im3(BITJOIN,406)@69
    assign sR_mergedSignalTM_uid407_i_arrayidx10_relu20_dupName_0_mult_x_im3_q = {add_uid402_i_arrayidx10_relu20_dupName_0_mult_x_im3_q, sR_bottomExtension_uid347_i_arrayidx10_relu20_dupName_0_mult_x_im0_q};

    // i_arrayidx23_relu20_dupName_0_mult_x_sums_align_2(BITSHIFT,293)@69
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid407_i_arrayidx10_relu20_dupName_0_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_align_2_q = i_arrayidx23_relu20_dupName_0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,1493)@69
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_arrayidx23_relu20_dupName_0_mult_x_sums_align_2_q};

    // highBBits_uid342_i_arrayidx10_relu20_dupName_0_mult_x_im0(BITSELECT,341)@68
    assign highBBits_uid342_i_arrayidx10_relu20_dupName_0_mult_x_im0_b = i_arrayidx10_relu20_dupName_0_mult_x_bs1_merged_bit_select_b[17:2];

    // addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0(ADD,342)@68 + 1
    assign addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_a = {1'b0, i_arrayidx10_relu20_dupName_0_mult_x_bs1_merged_bit_select_b};
    assign addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_b = {3'b000, highBBits_uid342_i_arrayidx10_relu20_dupName_0_mult_x_im0_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_o <= $unsigned(addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_a) + $unsigned(addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_b);
        end
    end
    assign addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_q = addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_o[18:0];

    // i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1(BITSELECT,1456)@69
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b = $unsigned(redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out_1_0_q[1:0]);

    // i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,1487)@69
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b, addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_q, i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b, sR_bottomExtension_uid347_i_arrayidx10_relu20_dupName_0_mult_x_im0_q};

    // i_arrayidx10_relu20_dupName_0_mult_x_sums_align_2(BITSHIFT,257)@69
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid407_i_arrayidx10_relu20_dupName_0_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_align_2_q = i_arrayidx10_relu20_dupName_0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,1465)@69
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_arrayidx10_relu20_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,1459)@69
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b, addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_q, i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b, sR_bottomExtension_uid347_i_arrayidx10_relu20_dupName_0_mult_x_im0_q};

    // i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(ADD,1379)@69 + 1
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D2};
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D3};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bubble_join_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214(BITJOIN,1699)
    assign bubble_join_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_q = i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214(BITSELECT,1700)
    assign bubble_select_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_q[31:0]);

    // SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214(STALLENABLE,1790)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_V0 = SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_backStall = redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_wireValid = i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_valid_out;

    // redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo(STALLFIFO,1607)
    assign redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_V0;
    assign redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_stall_in = SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_backStall;
    assign redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_data_in = bubble_select_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_b;
    assign redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_valid_in_bitsignaltemp = redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_valid_in[0];
    assign redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_stall_in_bitsignaltemp = redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_stall_in[0];
    assign redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_valid_out[0] = redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_valid_out_bitsignaltemp;
    assign redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_stall_out[0] = redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo (
        .valid_in(redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_b),
        .valid_out(redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo(STALLENABLE,2009)
    // Valid signal propagation
    assign SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_V0 = SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_backStall = SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_backStall | ~ (SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_wireValid = redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_valid_out;

    // SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0(STALLENABLE,1865)
    // Valid signal propagation
    assign SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_V0 = SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_R_v_0;
    // Stall signal propagation
    assign SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_s_tv_0 = SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_backStall & SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_R_v_0;
    // Backward Enable generation
    assign SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_backEN = ~ (SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_v_s_0 = SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_backEN & SE_out_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_V0;
    // Backward Stall generation
    assign SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_backStall = ~ (SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_backEN == 1'b0)
            begin
                SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_R_v_0 <= SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_R_v_0 & SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_s_tv_0;
            end
            else
            begin
                SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_R_v_0 <= SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_v_s_0;
            end

        end
    end

    // bubble_join_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo(BITJOIN,1713)
    assign bubble_join_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_q = redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_data_out;

    // bubble_select_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo(BITSELECT,1714)
    assign bubble_select_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_b = $unsigned(bubble_join_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_q[31:0]);

    // i_idxprom_relu232_sel_x(BITSELECT,69)@66
    assign i_idxprom_relu232_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_b[31:0]};

    // i_idxprom_relu232_vt_select_31(BITSELECT,108)@66
    assign i_idxprom_relu232_vt_select_31_b = i_idxprom_relu232_sel_x_b[31:0];

    // i_idxprom_relu232_vt_join(BITJOIN,107)@66
    assign i_idxprom_relu232_vt_join_q = {c_i32_058_q, i_idxprom_relu232_vt_select_31_b};

    // i_arrayidx10_relu20_mult_x_bs1_merged_bit_select(BITSELECT,1512)@66
    assign i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_b = i_idxprom_relu232_vt_join_q[17:0];
    assign i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_c = i_idxprom_relu232_vt_join_q[35:18];
    assign i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_d = i_idxprom_relu232_vt_join_q[53:36];
    assign i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_e = i_idxprom_relu232_vt_join_q[63:54];

    // join_for_coalesced_delay_2(BITJOIN,1580)
    assign join_for_coalesced_delay_2_q = {i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_e, i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_d, i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_c};

    // coalesced_delay_2_0(REG,1633)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_2_0_q <= $unsigned(46'b0000000000000000000000000000000000000000000000);
        end
        else if (SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_backEN == 1'b1)
        begin
            coalesced_delay_2_0_q <= $unsigned(join_for_coalesced_delay_2_q);
        end
    end

    // sel_for_coalesced_delay_2(BITSELECT,1581)
    assign sel_for_coalesced_delay_2_b = $unsigned(coalesced_delay_2_0_q[17:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(coalesced_delay_2_0_q[35:18]);
    assign sel_for_coalesced_delay_2_d = $unsigned(coalesced_delay_2_0_q[45:36]);

    // highBBits_uid706_i_arrayidx10_relu20_mult_x_im6(BITSELECT,705)@67
    assign highBBits_uid706_i_arrayidx10_relu20_mult_x_im6_b = sel_for_coalesced_delay_2_c[17:3];

    // highBBits_uid701_i_arrayidx10_relu20_mult_x_im6(BITSELECT,700)@66
    assign highBBits_uid701_i_arrayidx10_relu20_mult_x_im6_b = i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_d[17:1];

    // addsumAHighB_uid702_i_arrayidx10_relu20_mult_x_im6(ADD,701)@66 + 1
    assign addsumAHighB_uid702_i_arrayidx10_relu20_mult_x_im6_a = {1'b0, i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_d};
    assign addsumAHighB_uid702_i_arrayidx10_relu20_mult_x_im6_b = {2'b00, highBBits_uid701_i_arrayidx10_relu20_mult_x_im6_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid702_i_arrayidx10_relu20_mult_x_im6_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid702_i_arrayidx10_relu20_mult_x_im6_o <= $unsigned(addsumAHighB_uid702_i_arrayidx10_relu20_mult_x_im6_a) + $unsigned(addsumAHighB_uid702_i_arrayidx10_relu20_mult_x_im6_b);
        end
    end
    assign addsumAHighB_uid702_i_arrayidx10_relu20_mult_x_im6_q = addsumAHighB_uid702_i_arrayidx10_relu20_mult_x_im6_o[18:0];

    // lowRangeB_uid700_i_arrayidx10_relu20_mult_x_im6(BITSELECT,699)@67
    assign lowRangeB_uid700_i_arrayidx10_relu20_mult_x_im6_in = sel_for_coalesced_delay_2_c[0:0];
    assign lowRangeB_uid700_i_arrayidx10_relu20_mult_x_im6_b = lowRangeB_uid700_i_arrayidx10_relu20_mult_x_im6_in[0:0];

    // add_uid703_i_arrayidx10_relu20_mult_x_im6(BITJOIN,702)@67
    assign add_uid703_i_arrayidx10_relu20_mult_x_im6_q = {addsumAHighB_uid702_i_arrayidx10_relu20_mult_x_im6_q, lowRangeB_uid700_i_arrayidx10_relu20_mult_x_im6_b};

    // a_subconst_25_sumAHighB_uid707_i_arrayidx10_relu20_mult_x_im6(ADD,706)@67
    assign a_subconst_25_sumAHighB_uid707_i_arrayidx10_relu20_mult_x_im6_a = {1'b0, add_uid703_i_arrayidx10_relu20_mult_x_im6_q};
    assign a_subconst_25_sumAHighB_uid707_i_arrayidx10_relu20_mult_x_im6_b = {6'b000000, highBBits_uid706_i_arrayidx10_relu20_mult_x_im6_b};
    assign a_subconst_25_sumAHighB_uid707_i_arrayidx10_relu20_mult_x_im6_o = $unsigned(a_subconst_25_sumAHighB_uid707_i_arrayidx10_relu20_mult_x_im6_a) + $unsigned(a_subconst_25_sumAHighB_uid707_i_arrayidx10_relu20_mult_x_im6_b);
    assign a_subconst_25_sumAHighB_uid707_i_arrayidx10_relu20_mult_x_im6_q = a_subconst_25_sumAHighB_uid707_i_arrayidx10_relu20_mult_x_im6_o[20:0];

    // lowRangeB_uid705_i_arrayidx10_relu20_mult_x_im6(BITSELECT,704)@67
    assign lowRangeB_uid705_i_arrayidx10_relu20_mult_x_im6_in = sel_for_coalesced_delay_2_c[2:0];
    assign lowRangeB_uid705_i_arrayidx10_relu20_mult_x_im6_b = lowRangeB_uid705_i_arrayidx10_relu20_mult_x_im6_in[2:0];

    // a_subconst_25_uid708_i_arrayidx10_relu20_mult_x_im6(BITJOIN,707)@67
    assign a_subconst_25_uid708_i_arrayidx10_relu20_mult_x_im6_q = {a_subconst_25_sumAHighB_uid707_i_arrayidx10_relu20_mult_x_im6_q, lowRangeB_uid705_i_arrayidx10_relu20_mult_x_im6_b};

    // sR_bottomRange_uid712_i_arrayidx10_relu20_mult_x_im6(BITSELECT,711)@67
    assign sR_bottomRange_uid712_i_arrayidx10_relu20_mult_x_im6_in = a_subconst_25_uid708_i_arrayidx10_relu20_mult_x_im6_q[22:0];
    assign sR_bottomRange_uid712_i_arrayidx10_relu20_mult_x_im6_b = sR_bottomRange_uid712_i_arrayidx10_relu20_mult_x_im6_in[22:0];

    // redist19_sR_bottomRange_uid712_i_arrayidx10_relu20_mult_x_im6_b_1_0(REG,1601)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sR_bottomRange_uid712_i_arrayidx10_relu20_mult_x_im6_b_1_0_q <= $unsigned(23'b00000000000000000000000);
        end
        else if (SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_backEN == 1'b1)
        begin
            redist19_sR_bottomRange_uid712_i_arrayidx10_relu20_mult_x_im6_b_1_0_q <= $unsigned(sR_bottomRange_uid712_i_arrayidx10_relu20_mult_x_im6_b);
        end
    end

    // sR_bottomExtension_uid573_i_arrayidx10_relu20_mult_x_im0(CONSTANT,572)
    assign sR_bottomExtension_uid573_i_arrayidx10_relu20_mult_x_im0_q = $unsigned(4'b0000);

    // sR_mergedSignalTM_uid713_i_arrayidx10_relu20_mult_x_im6(BITJOIN,712)@68
    assign sR_mergedSignalTM_uid713_i_arrayidx10_relu20_mult_x_im6_q = {redist19_sR_bottomRange_uid712_i_arrayidx10_relu20_mult_x_im6_b_1_0_q, sR_bottomExtension_uid573_i_arrayidx10_relu20_mult_x_im0_q};

    // i_arrayidx10_relu20_mult_x_sums_align_0(BITSHIFT,273)@68
    assign i_arrayidx10_relu20_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid713_i_arrayidx10_relu20_mult_x_im6_q, 9'b000000000 };
    assign i_arrayidx10_relu20_mult_x_sums_align_0_q = i_arrayidx10_relu20_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select(BITSELECT,1517)@68
    assign i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b = $unsigned(i_arrayidx10_relu20_mult_x_sums_align_0_q[24:0]);
    assign i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c = $unsigned(i_arrayidx10_relu20_mult_x_sums_align_0_q[35:25]);

    // i_arrayidx23_relu20_mult_x_sums_align_0(BITSHIFT,309)@68
    assign i_arrayidx23_relu20_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid713_i_arrayidx10_relu20_mult_x_im6_q, 9'b000000000 };
    assign i_arrayidx23_relu20_mult_x_sums_align_0_q = i_arrayidx23_relu20_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select(BITSELECT,1521)@68
    assign i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b = $unsigned(i_arrayidx23_relu20_mult_x_sums_align_0_q[24:0]);
    assign i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c = $unsigned(i_arrayidx23_relu20_mult_x_sums_align_0_q[35:25]);

    // redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_66_0(REG,1608)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_66_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_backEN == 1'b1)
        begin
            redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_66_0_q <= $unsigned(bubble_select_redist25_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_64_fifo_b);
        end
    end

    // redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_66_1(REG,1609)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_66_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_backEN == 1'b1)
        begin
            redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_66_1_q <= $unsigned(redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_66_0_q);
        end
    end

    // highBBits_uid775_i_arrayidx10_relu20_mult_x_im9(BITSELECT,774)@67
    assign highBBits_uid775_i_arrayidx10_relu20_mult_x_im9_b = sel_for_coalesced_delay_2_d[9:3];

    // highBBits_uid770_i_arrayidx10_relu20_mult_x_im9(BITSELECT,769)@66
    assign highBBits_uid770_i_arrayidx10_relu20_mult_x_im9_b = i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_e[9:1];

    // addsumAHighB_uid771_i_arrayidx10_relu20_mult_x_im9(ADD,770)@66 + 1
    assign addsumAHighB_uid771_i_arrayidx10_relu20_mult_x_im9_a = {1'b0, i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_e};
    assign addsumAHighB_uid771_i_arrayidx10_relu20_mult_x_im9_b = {2'b00, highBBits_uid770_i_arrayidx10_relu20_mult_x_im9_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid771_i_arrayidx10_relu20_mult_x_im9_o <= 11'b0;
        end
        else if (SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid771_i_arrayidx10_relu20_mult_x_im9_o <= $unsigned(addsumAHighB_uid771_i_arrayidx10_relu20_mult_x_im9_a) + $unsigned(addsumAHighB_uid771_i_arrayidx10_relu20_mult_x_im9_b);
        end
    end
    assign addsumAHighB_uid771_i_arrayidx10_relu20_mult_x_im9_q = addsumAHighB_uid771_i_arrayidx10_relu20_mult_x_im9_o[10:0];

    // lowRangeB_uid769_i_arrayidx10_relu20_mult_x_im9(BITSELECT,768)@67
    assign lowRangeB_uid769_i_arrayidx10_relu20_mult_x_im9_in = sel_for_coalesced_delay_2_d[0:0];
    assign lowRangeB_uid769_i_arrayidx10_relu20_mult_x_im9_b = lowRangeB_uid769_i_arrayidx10_relu20_mult_x_im9_in[0:0];

    // add_uid772_i_arrayidx10_relu20_mult_x_im9(BITJOIN,771)@67
    assign add_uid772_i_arrayidx10_relu20_mult_x_im9_q = {addsumAHighB_uid771_i_arrayidx10_relu20_mult_x_im9_q, lowRangeB_uid769_i_arrayidx10_relu20_mult_x_im9_b};

    // a_subconst_25_sumAHighB_uid776_i_arrayidx10_relu20_mult_x_im9(ADD,775)@67 + 1
    assign a_subconst_25_sumAHighB_uid776_i_arrayidx10_relu20_mult_x_im9_a = {1'b0, add_uid772_i_arrayidx10_relu20_mult_x_im9_q};
    assign a_subconst_25_sumAHighB_uid776_i_arrayidx10_relu20_mult_x_im9_b = {6'b000000, highBBits_uid775_i_arrayidx10_relu20_mult_x_im9_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            a_subconst_25_sumAHighB_uid776_i_arrayidx10_relu20_mult_x_im9_o <= 13'b0;
        end
        else if (SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_backEN == 1'b1)
        begin
            a_subconst_25_sumAHighB_uid776_i_arrayidx10_relu20_mult_x_im9_o <= $unsigned(a_subconst_25_sumAHighB_uid776_i_arrayidx10_relu20_mult_x_im9_a) + $unsigned(a_subconst_25_sumAHighB_uid776_i_arrayidx10_relu20_mult_x_im9_b);
        end
    end
    assign a_subconst_25_sumAHighB_uid776_i_arrayidx10_relu20_mult_x_im9_q = a_subconst_25_sumAHighB_uid776_i_arrayidx10_relu20_mult_x_im9_o[12:0];

    // lowRangeB_uid774_i_arrayidx10_relu20_mult_x_im9(BITSELECT,773)@67
    assign lowRangeB_uid774_i_arrayidx10_relu20_mult_x_im9_in = sel_for_coalesced_delay_2_d[2:0];
    assign lowRangeB_uid774_i_arrayidx10_relu20_mult_x_im9_b = lowRangeB_uid774_i_arrayidx10_relu20_mult_x_im9_in[2:0];

    // redist18_lowRangeB_uid774_i_arrayidx10_relu20_mult_x_im9_b_1_0(REG,1600)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_lowRangeB_uid774_i_arrayidx10_relu20_mult_x_im9_b_1_0_q <= $unsigned(3'b000);
        end
        else if (SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_backEN == 1'b1)
        begin
            redist18_lowRangeB_uid774_i_arrayidx10_relu20_mult_x_im9_b_1_0_q <= $unsigned(lowRangeB_uid774_i_arrayidx10_relu20_mult_x_im9_b);
        end
    end

    // a_subconst_25_uid777_i_arrayidx10_relu20_mult_x_im9(BITJOIN,776)@68
    assign a_subconst_25_uid777_i_arrayidx10_relu20_mult_x_im9_q = {a_subconst_25_sumAHighB_uid776_i_arrayidx10_relu20_mult_x_im9_q, redist18_lowRangeB_uid774_i_arrayidx10_relu20_mult_x_im9_b_1_0_q};

    // sR_bottomRange_uid781_i_arrayidx10_relu20_mult_x_im9(BITSELECT,780)@68
    assign sR_bottomRange_uid781_i_arrayidx10_relu20_mult_x_im9_in = a_subconst_25_uid777_i_arrayidx10_relu20_mult_x_im9_q[14:0];
    assign sR_bottomRange_uid781_i_arrayidx10_relu20_mult_x_im9_b = sR_bottomRange_uid781_i_arrayidx10_relu20_mult_x_im9_in[14:0];

    // sR_mergedSignalTM_uid782_i_arrayidx10_relu20_mult_x_im9(BITJOIN,781)@68
    assign sR_mergedSignalTM_uid782_i_arrayidx10_relu20_mult_x_im9_q = {sR_bottomRange_uid781_i_arrayidx10_relu20_mult_x_im9_b, sR_bottomExtension_uid573_i_arrayidx10_relu20_mult_x_im0_q};

    // i_arrayidx10_relu20_mult_x_sums_align_3(BITSHIFT,276)@68
    assign i_arrayidx10_relu20_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid782_i_arrayidx10_relu20_mult_x_im9_q, 9'b000000000 };
    assign i_arrayidx10_relu20_mult_x_sums_align_3_q = i_arrayidx10_relu20_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,1518)@68
    assign i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_arrayidx10_relu20_mult_x_sums_align_3_q[6:0]);
    assign i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_arrayidx10_relu20_mult_x_sums_align_3_q[27:7]);

    // i_arrayidx23_relu20_mult_x_sums_align_3(BITSHIFT,312)@68
    assign i_arrayidx23_relu20_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid782_i_arrayidx10_relu20_mult_x_im9_q, 9'b000000000 };
    assign i_arrayidx23_relu20_mult_x_sums_align_3_q = i_arrayidx23_relu20_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,1522)@68
    assign i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_arrayidx23_relu20_mult_x_sums_align_3_q[6:0]);
    assign i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_arrayidx23_relu20_mult_x_sums_align_3_q[27:7]);

    // highBBits_uid637_i_arrayidx10_relu20_mult_x_im3(BITSELECT,636)@67
    assign highBBits_uid637_i_arrayidx10_relu20_mult_x_im3_b = sel_for_coalesced_delay_2_b[17:3];

    // highBBits_uid632_i_arrayidx10_relu20_mult_x_im3(BITSELECT,631)@66
    assign highBBits_uid632_i_arrayidx10_relu20_mult_x_im3_b = i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_c[17:1];

    // addsumAHighB_uid633_i_arrayidx10_relu20_mult_x_im3(ADD,632)@66 + 1
    assign addsumAHighB_uid633_i_arrayidx10_relu20_mult_x_im3_a = {1'b0, i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_c};
    assign addsumAHighB_uid633_i_arrayidx10_relu20_mult_x_im3_b = {2'b00, highBBits_uid632_i_arrayidx10_relu20_mult_x_im3_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid633_i_arrayidx10_relu20_mult_x_im3_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid633_i_arrayidx10_relu20_mult_x_im3_o <= $unsigned(addsumAHighB_uid633_i_arrayidx10_relu20_mult_x_im3_a) + $unsigned(addsumAHighB_uid633_i_arrayidx10_relu20_mult_x_im3_b);
        end
    end
    assign addsumAHighB_uid633_i_arrayidx10_relu20_mult_x_im3_q = addsumAHighB_uid633_i_arrayidx10_relu20_mult_x_im3_o[18:0];

    // lowRangeB_uid631_i_arrayidx10_relu20_mult_x_im3(BITSELECT,630)@67
    assign lowRangeB_uid631_i_arrayidx10_relu20_mult_x_im3_in = sel_for_coalesced_delay_2_b[0:0];
    assign lowRangeB_uid631_i_arrayidx10_relu20_mult_x_im3_b = lowRangeB_uid631_i_arrayidx10_relu20_mult_x_im3_in[0:0];

    // add_uid634_i_arrayidx10_relu20_mult_x_im3(BITJOIN,633)@67
    assign add_uid634_i_arrayidx10_relu20_mult_x_im3_q = {addsumAHighB_uid633_i_arrayidx10_relu20_mult_x_im3_q, lowRangeB_uid631_i_arrayidx10_relu20_mult_x_im3_b};

    // a_subconst_25_sumAHighB_uid638_i_arrayidx10_relu20_mult_x_im3(ADD,637)@67
    assign a_subconst_25_sumAHighB_uid638_i_arrayidx10_relu20_mult_x_im3_a = {1'b0, add_uid634_i_arrayidx10_relu20_mult_x_im3_q};
    assign a_subconst_25_sumAHighB_uid638_i_arrayidx10_relu20_mult_x_im3_b = {6'b000000, highBBits_uid637_i_arrayidx10_relu20_mult_x_im3_b};
    assign a_subconst_25_sumAHighB_uid638_i_arrayidx10_relu20_mult_x_im3_o = $unsigned(a_subconst_25_sumAHighB_uid638_i_arrayidx10_relu20_mult_x_im3_a) + $unsigned(a_subconst_25_sumAHighB_uid638_i_arrayidx10_relu20_mult_x_im3_b);
    assign a_subconst_25_sumAHighB_uid638_i_arrayidx10_relu20_mult_x_im3_q = a_subconst_25_sumAHighB_uid638_i_arrayidx10_relu20_mult_x_im3_o[20:0];

    // lowRangeB_uid636_i_arrayidx10_relu20_mult_x_im3(BITSELECT,635)@67
    assign lowRangeB_uid636_i_arrayidx10_relu20_mult_x_im3_in = sel_for_coalesced_delay_2_b[2:0];
    assign lowRangeB_uid636_i_arrayidx10_relu20_mult_x_im3_b = lowRangeB_uid636_i_arrayidx10_relu20_mult_x_im3_in[2:0];

    // a_subconst_25_uid639_i_arrayidx10_relu20_mult_x_im3(BITJOIN,638)@67
    assign a_subconst_25_uid639_i_arrayidx10_relu20_mult_x_im3_q = {a_subconst_25_sumAHighB_uid638_i_arrayidx10_relu20_mult_x_im3_q, lowRangeB_uid636_i_arrayidx10_relu20_mult_x_im3_b};

    // sR_bottomRange_uid643_i_arrayidx10_relu20_mult_x_im3(BITSELECT,642)@67
    assign sR_bottomRange_uid643_i_arrayidx10_relu20_mult_x_im3_in = a_subconst_25_uid639_i_arrayidx10_relu20_mult_x_im3_q[22:0];
    assign sR_bottomRange_uid643_i_arrayidx10_relu20_mult_x_im3_b = sR_bottomRange_uid643_i_arrayidx10_relu20_mult_x_im3_in[22:0];

    // redist20_sR_bottomRange_uid643_i_arrayidx10_relu20_mult_x_im3_b_1_0(REG,1602)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sR_bottomRange_uid643_i_arrayidx10_relu20_mult_x_im3_b_1_0_q <= $unsigned(23'b00000000000000000000000);
        end
        else if (SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_backEN == 1'b1)
        begin
            redist20_sR_bottomRange_uid643_i_arrayidx10_relu20_mult_x_im3_b_1_0_q <= $unsigned(sR_bottomRange_uid643_i_arrayidx10_relu20_mult_x_im3_b);
        end
    end

    // sR_mergedSignalTM_uid644_i_arrayidx10_relu20_mult_x_im3(BITJOIN,643)@68
    assign sR_mergedSignalTM_uid644_i_arrayidx10_relu20_mult_x_im3_q = {redist20_sR_bottomRange_uid643_i_arrayidx10_relu20_mult_x_im3_b_1_0_q, sR_bottomExtension_uid573_i_arrayidx10_relu20_mult_x_im0_q};

    // i_arrayidx23_relu20_mult_x_sums_align_2(BITSHIFT,311)@68
    assign i_arrayidx23_relu20_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid644_i_arrayidx10_relu20_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx23_relu20_mult_x_sums_align_2_q = i_arrayidx23_relu20_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,1507)@68
    assign i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_arrayidx23_relu20_mult_x_sums_align_2_q};

    // highBBits_uid568_i_arrayidx10_relu20_mult_x_im0(BITSELECT,567)@66
    assign highBBits_uid568_i_arrayidx10_relu20_mult_x_im0_b = i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_b[17:3];

    // redist21_highBBits_uid568_i_arrayidx10_relu20_mult_x_im0_b_1_0(REG,1603)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_highBBits_uid568_i_arrayidx10_relu20_mult_x_im0_b_1_0_q <= $unsigned(15'b000000000000000);
        end
        else if (SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_backEN == 1'b1)
        begin
            redist21_highBBits_uid568_i_arrayidx10_relu20_mult_x_im0_b_1_0_q <= $unsigned(highBBits_uid568_i_arrayidx10_relu20_mult_x_im0_b);
        end
    end

    // highBBits_uid563_i_arrayidx10_relu20_mult_x_im0(BITSELECT,562)@66
    assign highBBits_uid563_i_arrayidx10_relu20_mult_x_im0_b = i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_b[17:1];

    // addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0(ADD,563)@66 + 1
    assign addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_a = {1'b0, i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_b};
    assign addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_b = {2'b00, highBBits_uid563_i_arrayidx10_relu20_mult_x_im0_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_o <= $unsigned(addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_a) + $unsigned(addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_b);
        end
    end
    assign addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_q = addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_o[18:0];

    // lowRangeB_uid562_i_arrayidx10_relu20_mult_x_im0(BITSELECT,561)@66
    assign lowRangeB_uid562_i_arrayidx10_relu20_mult_x_im0_in = i_arrayidx10_relu20_mult_x_bs1_merged_bit_select_b[0:0];
    assign lowRangeB_uid562_i_arrayidx10_relu20_mult_x_im0_b = lowRangeB_uid562_i_arrayidx10_relu20_mult_x_im0_in[0:0];

    // redist22_lowRangeB_uid562_i_arrayidx10_relu20_mult_x_im0_b_1_0(REG,1604)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_lowRangeB_uid562_i_arrayidx10_relu20_mult_x_im0_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_backEN == 1'b1)
        begin
            redist22_lowRangeB_uid562_i_arrayidx10_relu20_mult_x_im0_b_1_0_q <= $unsigned(lowRangeB_uid562_i_arrayidx10_relu20_mult_x_im0_b);
        end
    end

    // add_uid565_i_arrayidx10_relu20_mult_x_im0(BITJOIN,564)@67
    assign add_uid565_i_arrayidx10_relu20_mult_x_im0_q = {addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_q, redist22_lowRangeB_uid562_i_arrayidx10_relu20_mult_x_im0_b_1_0_q};

    // a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0(ADD,568)@67 + 1
    assign a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_a = {1'b0, add_uid565_i_arrayidx10_relu20_mult_x_im0_q};
    assign a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_b = {6'b000000, redist21_highBBits_uid568_i_arrayidx10_relu20_mult_x_im0_b_1_0_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_o <= 21'b0;
        end
        else if (SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_backEN == 1'b1)
        begin
            a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_o <= $unsigned(a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_a) + $unsigned(a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_b);
        end
    end
    assign a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_q = a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_o[20:0];

    // i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2(BITSELECT,1471)@68
    assign i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b = $unsigned(a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_q[19:0]);

    // i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1(BITSELECT,1470)@68
    assign i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b = $unsigned(redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_66_1_q[2:0]);

    // i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,1501)@68
    assign i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b, i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b, i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b, sR_bottomExtension_uid573_i_arrayidx10_relu20_mult_x_im0_q};

    // i_arrayidx10_relu20_mult_x_sums_align_2(BITSHIFT,275)@68
    assign i_arrayidx10_relu20_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid644_i_arrayidx10_relu20_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx10_relu20_mult_x_sums_align_2_q = i_arrayidx10_relu20_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,1479)@68
    assign i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_arrayidx10_relu20_mult_x_sums_align_2_q};

    // i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,1473)@68
    assign i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b, i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b, i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b, sR_bottomExtension_uid573_i_arrayidx10_relu20_mult_x_im0_q};

    // SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0(STALLENABLE,1868)
    // Valid signal propagation
    assign SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_V0 = SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_R_v_0;
    // Stall signal propagation
    assign SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_s_tv_0 = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_backStall & SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_R_v_0;
    // Backward Enable generation
    assign SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_backEN = ~ (SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_v_s_0 = SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_backEN & SE_addsumAHighB_uid564_i_arrayidx10_relu20_mult_x_im0_V0;
    // Backward Stall generation
    assign SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_backStall = ~ (SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_backEN == 1'b0)
            begin
                SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_R_v_0 <= SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_R_v_0 & SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_s_tv_0;
            end
            else
            begin
                SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_R_v_0 <= SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2(STALLREG,2201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= 21'bxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data5 <= 21'bxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data6 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data7 <= 11'bxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data8 <= 11'bxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_backStall & (SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_valid | SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
                SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q);
                SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= $unsigned(i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
                SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= $unsigned(i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q);
                SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= $unsigned(i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
                SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data5 <= $unsigned(i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
                SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data6 <= $unsigned(redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_66_1_q);
                SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data7 <= $unsigned(i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c);
                SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data8 <= $unsigned(i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_i_valid = SE_a_subconst_25_sumAHighB_uid569_i_arrayidx10_relu20_mult_x_im0_V0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_backStall = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_V = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_valid : SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D0 = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data0 : i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    // Data1
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D1 = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data1 : i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    // Data2
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D2 = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data2 : i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    // Data3
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D3 = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data3 : i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    // Data4
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D4 = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data4 : i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    // Data5
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D5 = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data5 : i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    // Data6
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D6 = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data6 : redist26_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_66_1_q;
    // Data7
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D7 = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data7 : i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c;
    // Data8
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D8 = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_r_data8 : i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c;

    // i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p1_of_2(ADD,1388)@68 + 1
    assign i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D2};
    assign i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D3};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_2(STALLENABLE,2055)
    // Valid signal propagation
    assign SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_out_stall_out | ~ (SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_2_wireValid = bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21(BLACKBOX,112)@68
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@69
    // out out_stall_out@20000000
    // out out_valid_out@69
    relu2_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_0 thei_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_backStall),
        .in_valid_in(SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21(BITJOIN,1647)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_q = i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21(BITSELECT,1648)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_q[63:0]);

    // i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,1514)@69
    assign i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_b[51:0]);
    assign i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_b[63:52]);

    // redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_0(REG,1610)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_0_q <= $unsigned(SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D6);
        end
    end

    // redist3_i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0(REG,1588)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(21'b000000000000000000000);
        end
        else if (SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist3_i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D4);
        end
    end

    // i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,1510)@69
    assign i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist3_i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q};

    // i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a(CONSTANT,1356)
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q = $unsigned(11'b00000000000);

    // redist4_i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0(REG,1589)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q <= $unsigned(11'b00000000000);
        end
        else if (SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist4_i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D7);
        end
    end

    // i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,1504)@69
    assign i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, redist4_i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q};

    // i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2(ADD,1370)@68 + 1
    assign i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D0};
    assign i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // redist7_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0(REG,1592)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(21'b000000000000000000000);
        end
        else if (SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist7_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D5);
        end
    end

    // i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,1482)@69
    assign i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist7_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q};

    // redist8_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0(REG,1593)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q <= $unsigned(11'b00000000000);
        end
        else if (SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist8_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_D8);
        end
    end

    // i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,1476)@69
    assign i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, redist8_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q};

    // SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2(STALLREG,2206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= 22'bxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= 22'bxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= 1'bx;
            SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= 22'bxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data4 <= 22'bxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data5 <= 1'bx;
            SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data6 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_backStall & (SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_valid | SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= $unsigned(i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= $unsigned(i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= $unsigned(i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data4 <= $unsigned(i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data5 <= $unsigned(i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data6 <= $unsigned(redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_i_valid = SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_backStall = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_V = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_valid : SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D0 = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data0 : i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D1 = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data1 : i_arrayidx10_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D2 = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data2 : i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data3
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D3 = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data3 : i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    // Data4
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D4 = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data4 : i_arrayidx23_relu20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    // Data5
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D5 = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data5 : i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data6
    assign SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D6 = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_r_data6 : redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_0_q;

    // i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p2_of_2(ADD,1389)@69 + 1
    assign i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D5;
    assign i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D3}, 1'b1 };
    assign i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D4}, i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p2_of_2_o <= 24'b0;
        end
        else if (SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p2_of_2_o[22:1];

    // i_arrayidx23_relu20_add_x_BitSelect_for_b_tessel1_0(BITSELECT,1452)@70
    assign i_arrayidx23_relu20_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx23_relu20_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,1454)@70
    assign i_arrayidx23_relu20_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx23_relu20_add_x_BitSelect_for_b_tessel1_0_b};

    // redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,1596)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(12'b000000000000);
        end
        else if (SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx23_relu20_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,1449)@70
    assign i_arrayidx23_relu20_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_1(REG,1611)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_1_q <= $unsigned(SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D6);
        end
    end

    // SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2(STALLENABLE,2014)
    // Valid signal propagation
    assign SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_V0 = SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_R_v_0;
    // Stall signal propagation
    assign SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_s_tv_0 = SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_backStall & SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_R_v_0;
    // Backward Enable generation
    assign SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_backEN = ~ (SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_v_s_0 = SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_backEN & SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_V;
    // Backward Stall generation
    assign SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_backStall = ~ (SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_backEN == 1'b0)
            begin
                SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_R_v_0 <= SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_R_v_0 & SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_s_tv_0;
            end
            else
            begin
                SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_R_v_0 <= SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_v_s_0;
            end

        end
    end

    // SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2(STALLREG,2233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_r_valid <= 1'b0;
            SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_r_valid <= SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_backStall & (SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_r_valid | SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_i_valid);

            if (SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_r_data0 <= $unsigned(redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_i_valid = SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_V2;
    // Stall signal propagation
    assign SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_backStall = SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_r_valid | ~ (SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_i_valid);

    // Valid
    assign SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_V = SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_r_valid == 1'b1 ? SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_r_valid : SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_i_valid;

    assign SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_D0 = SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_r_valid == 1'b1 ? SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_r_data0 : redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_1_q;

    // SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_1(STALLENABLE,2053)
    // Valid signal propagation
    assign SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_out_stall_out | ~ (SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_1_wireValid = bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20(BLACKBOX,111)@68
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0@69
    // out out_stall_out@20000000
    // out out_valid_out@69
    relu2_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_0 thei_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_backStall),
        .in_valid_in(SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20(BITJOIN,1644)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_q = i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20(BITSELECT,1645)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_q[63:0]);

    // i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,1513)@69
    assign i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_b[51:0]);
    assign i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_b[63:52]);

    // SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20(STALLENABLE,1758)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_consumed0 = (~ (SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_consumed1 = (~ (SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_wireValid = i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_out_valid_out;

    // SR_SE_i_arrayidx10_relu20_add_x_p1_of_2(STALLREG,2214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_r_valid <= SE_i_arrayidx10_relu20_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_and0 = SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_V0;
    assign SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_V0 & SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_backStall = SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_V = SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_D0 = SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_r_data0 : i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_D1 = SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_r_data1 : i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_q;

    // i_arrayidx10_relu20_add_x_p1_of_2(ADD,1325)@69 + 1
    assign i_arrayidx10_relu20_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_D0};
    assign i_arrayidx10_relu20_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_relu20_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_relu20_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_relu20_add_x_p1_of_2_o <= $unsigned(i_arrayidx10_relu20_add_x_p1_of_2_a) + $unsigned(i_arrayidx10_relu20_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx10_relu20_add_x_p1_of_2_c[0] = i_arrayidx10_relu20_add_x_p1_of_2_o[52];
    assign i_arrayidx10_relu20_add_x_p1_of_2_q = i_arrayidx10_relu20_add_x_p1_of_2_o[51:0];

    // i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2(ADD,1371)@69 + 1
    assign i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D2;
    assign i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_D1}, i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_o <= 24'b0;
        end
        else if (SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_o[22:1];

    // i_arrayidx10_relu20_add_x_BitSelect_for_b_tessel1_0(BITSELECT,1420)@70
    assign i_arrayidx10_relu20_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx10_relu20_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,1422)@70
    assign i_arrayidx10_relu20_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx10_relu20_add_x_BitSelect_for_b_tessel1_0_b};

    // redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,1597)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(12'b000000000000);
        end
        else if (SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx10_relu20_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,1417)@70
    assign i_arrayidx10_relu20_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,1997)
    // Valid signal propagation
    assign SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_backStall & SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_in0209_relu20_V1;
    // Backward Stall generation
    assign SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_i_arrayidx10_relu20_add_x_p1_of_2(STALLENABLE,1904)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu20_add_x_p1_of_2_V0 = SE_i_arrayidx10_relu20_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_relu20_add_x_p1_of_2_V1 = SE_i_arrayidx10_relu20_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx10_relu20_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx10_relu20_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_relu20_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_backStall & SE_i_arrayidx10_relu20_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx10_relu20_add_x_p1_of_2_or0 = SE_i_arrayidx10_relu20_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_relu20_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx10_relu20_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx10_relu20_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_relu20_add_x_p1_of_2_v_s_0 = SE_i_arrayidx10_relu20_add_x_p1_of_2_backEN & SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_relu20_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx10_relu20_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_relu20_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_relu20_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_relu20_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_relu20_add_x_p1_of_2_R_v_0 & SE_i_arrayidx10_relu20_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_relu20_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_relu20_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu20_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_relu20_add_x_p1_of_2_R_v_1 & SE_i_arrayidx10_relu20_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_relu20_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_relu20_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // i_arrayidx10_relu20_dupName_0_add_x_p1_of_2(ADD,1307)@70 + 1
    assign i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_D0};
    assign i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_o <= $unsigned(i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_a) + $unsigned(i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_c[0] = i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_o[52];
    assign i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_q = i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_o[51:0];

    // i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(ADD,1362)@70 + 1
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D2;
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D1}, i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= 21'b0;
        end
        else if (SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o[19:1];

    // i_arrayidx10_relu20_dupName_0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,1398)@71
    assign i_arrayidx10_relu20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx10_relu20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,1400)@71
    assign i_arrayidx10_relu20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx10_relu20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx10_relu20_add_x_p2_of_2(ADD,1326)@70 + 1
    assign i_arrayidx10_relu20_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_D2;
    assign i_arrayidx10_relu20_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx10_relu20_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_D1}, i_arrayidx10_relu20_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_relu20_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_relu20_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_relu20_add_x_p2_of_2_o <= $unsigned(i_arrayidx10_relu20_add_x_p2_of_2_a) + $unsigned(i_arrayidx10_relu20_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx10_relu20_add_x_p2_of_2_q = i_arrayidx10_relu20_add_x_p2_of_2_o[13:1];

    // i_arrayidx10_relu20_dupName_0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,1393)@71
    assign i_arrayidx10_relu20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx10_relu20_add_x_p2_of_2_q[11:0]);

    // i_arrayidx10_relu20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,1395)@71
    assign i_arrayidx10_relu20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx10_relu20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b};

    // i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(ADD,1380)@70 + 1
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D5;
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D3}, 1'b1 };
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D4}, i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= 21'b0;
        end
        else if (SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o[19:1];

    // i_arrayidx23_relu20_dupName_0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,1430)@71
    assign i_arrayidx23_relu20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx23_relu20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,1432)@71
    assign i_arrayidx23_relu20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx23_relu20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx23_relu20_add_x_p2_of_2(ADD,1353)@70 + 1
    assign i_arrayidx23_relu20_add_x_p2_of_2_cin = SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_D2;
    assign i_arrayidx23_relu20_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx23_relu20_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_D1}, i_arrayidx23_relu20_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_relu20_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx23_relu20_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_relu20_add_x_p2_of_2_o <= $unsigned(i_arrayidx23_relu20_add_x_p2_of_2_a) + $unsigned(i_arrayidx23_relu20_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx23_relu20_add_x_p2_of_2_q = i_arrayidx23_relu20_add_x_p2_of_2_o[13:1];

    // i_arrayidx23_relu20_dupName_0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,1425)@71
    assign i_arrayidx23_relu20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx23_relu20_add_x_p2_of_2_q[11:0]);

    // i_arrayidx23_relu20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,1427)@71
    assign i_arrayidx23_relu20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx23_relu20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b};

    // SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2(STALLREG,2209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_valid <= SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx23_relu20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx23_relu20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_and0 = SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_and1 = SE_i_arrayidx23_relu20_add_x_p2_of_2_V0 & SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_i_valid = SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V1 & SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_backStall = SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_V = SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_D0 = SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_data0 : i_arrayidx23_relu20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_D1 = SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_data1 : i_arrayidx23_relu20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_D2 = SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_r_data2 : i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_c;

    // SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(STALLENABLE,1914)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V0 = SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V1 = SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V2 = SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0 = SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 = SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 = SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_backStall & SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or0 = SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or1 = SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 | SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or0;
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN = ~ (SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 | SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_v_s_0 = SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN & SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall = ~ (SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= 1'b0;
            SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 & SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 & SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 & SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

        end
    end

    // i_arrayidx10_relu20_dupName_1_add_x_p1_of_2(ADD,1316)@71 + 1
    assign i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_D0};
    assign i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_o <= $unsigned(i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_a) + $unsigned(i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_c[0] = i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_o[52];
    assign i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q = i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_o[51:0];

    // SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0(STALLREG,2220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_valid <= SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_V = SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q;

    // i_arrayidx10_relu20_dupName_0_add_x_p2_of_2(ADD,1308)@71 + 1
    assign i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_D2;
    assign i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_D1}, i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_o <= $unsigned(i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_a) + $unsigned(i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_q = i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_o[13:1];

    // i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_a_tessel1_0(BITSELECT,1403)@72
    assign i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_q[11:0]);

    // i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,1405)@72
    assign i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b};

    // SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2(STALLREG,2219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_valid <= SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_and0 = SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_and1 = SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_V0 & SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_i_valid = SE_i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_tessel1_0_V0 & SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_backStall = SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_V = SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_D0 = SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_data0 : i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_D1 = SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_data1 : i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_D2 = SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_r_data2 : i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_c;

    // SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2(STALLENABLE,1901)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_V0 = SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_V1 = SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_backStall & SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_s_tv_1 = SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_or0 = SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_v_s_0 = SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_backEN & SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_R_v_0 & SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_R_v_1 & SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2(STALLREG,2216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_r_valid <= SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_q);
                SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_and0 = SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_V1 & SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_backStall = SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_V = SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_D0 = SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_r_data0 : i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_D1 = SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_r_data1 : i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2(STALLENABLE,1899)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_V0 = SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_V1 = SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_backStall & SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_or0 = SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_v_s_0 = SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_backEN & SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_R_v_0 & SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_R_v_1 & SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2(STALLENABLE,1900)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_V0 = SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_backStall & SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_v_s_0 = SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_backEN & SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_R_v_0 & SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2(STALLREG,2218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_valid <= SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx10_relu20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_relu20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_and0 = SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_and1 = SE_i_arrayidx10_relu20_add_x_p2_of_2_V0 & SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_i_valid = SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V0 & SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_backStall = SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_V = SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_D0 = SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_data0 : i_arrayidx10_relu20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_D1 = SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_data1 : i_arrayidx10_relu20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_D2 = SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_r_data2 : i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_c;

    // SE_i_arrayidx10_relu20_add_x_p2_of_2(STALLENABLE,1905)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu20_add_x_p2_of_2_V0 = SE_i_arrayidx10_relu20_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx10_relu20_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx10_relu20_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx10_relu20_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx10_relu20_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_relu20_add_x_p2_of_2_v_s_0 = SE_i_arrayidx10_relu20_add_x_p2_of_2_backEN & SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_relu20_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx10_relu20_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_relu20_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_relu20_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_relu20_add_x_p2_of_2_R_v_0 & SE_i_arrayidx10_relu20_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_relu20_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_relu20_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_relu20_add_x_p2_of_2(STALLREG,2217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_valid <= SE_i_arrayidx10_relu20_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx10_relu20_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_relu20_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx10_relu20_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_and0 = SE_i_arrayidx10_relu20_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_and1 = SE_redist12_i_arrayidx10_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_i_valid = SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_V0 & SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_backStall = SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_V = SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_D0 = SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_data0 : i_arrayidx10_relu20_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_D1 = SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_data1 : i_arrayidx10_relu20_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_D2 = SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_r_data2 : i_arrayidx10_relu20_add_x_p1_of_2_c;

    // SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2(STALLENABLE,1916)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_V0 = SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_V1 = SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_V2 = SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0 = SR_SE_i_arrayidx10_relu20_add_x_p2_of_2_backStall & SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 = SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_backStall & SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 = SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_backStall & SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_or0 = SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_or1 = SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 | SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_or0;
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_backEN = ~ (SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 | SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_v_s_0 = SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_backEN & SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_backStall = ~ (SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= 1'b0;
            SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 & SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 & SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 & SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx23_relu20_add_x_p2_of_2(STALLENABLE,1912)
    // Valid signal propagation
    assign SE_i_arrayidx23_relu20_add_x_p2_of_2_V0 = SE_i_arrayidx23_relu20_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx23_relu20_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx23_relu20_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx23_relu20_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx23_relu20_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx23_relu20_add_x_p2_of_2_v_s_0 = SE_i_arrayidx23_relu20_add_x_p2_of_2_backEN & SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx23_relu20_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx23_relu20_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx23_relu20_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx23_relu20_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_relu20_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx23_relu20_add_x_p2_of_2_R_v_0 & SE_i_arrayidx23_relu20_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx23_relu20_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx23_relu20_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx23_relu20_add_x_p2_of_2(STALLREG,2207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_valid <= SE_i_arrayidx23_relu20_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx23_relu20_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx23_relu20_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx23_relu20_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_and0 = SE_i_arrayidx23_relu20_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_and1 = SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_i_valid = SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_V1 & SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_backStall = SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_V = SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_D0 = SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_data0 : i_arrayidx23_relu20_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_D1 = SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_data1 : i_arrayidx23_relu20_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_D2 = SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_r_data2 : i_arrayidx23_relu20_add_x_p1_of_2_c;

    // SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,1996)
    // Valid signal propagation
    assign SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_backStall & SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_V1;
    // Backward Stall generation
    assign SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21(STALLENABLE,1760)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_consumed0 = (~ (SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_consumed1 = (~ (SE_redist11_i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_wireValid = i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_out_valid_out;

    // SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2(STALLENABLE,1915)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_V0 = SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_V1 = SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_V2 = SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_relu20_add_x_p1_of_2_backStall & SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 = SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p2_of_2_backStall & SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2 = SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_backStall & SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_or0 = SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_or1 = SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 | SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_or0;
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_backEN = ~ (SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2 | SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_v_s_0 = SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_backEN & SR_SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_backStall = ~ (SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= 1'b0;
            SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 & SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 & SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 & SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx23_relu20_add_x_p1_of_2(STALLREG,2202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_r_valid <= SE_i_arrayidx23_relu20_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_and0 = SE_i_arrayidx10_relu20_mult_x_sums_result_add_0_0_p1_of_2_V2;
    assign SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out02110_relu21_V0 & SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_backStall = SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_V = SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_D0 = SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_r_data0 : i_arrayidx23_relu20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_D1 = SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_r_data1 : i_arrayidx23_relu20_mult_x_sums_result_add_0_0_p1_of_2_q;

    // i_arrayidx23_relu20_add_x_p1_of_2(ADD,1352)@69 + 1
    assign i_arrayidx23_relu20_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_D0};
    assign i_arrayidx23_relu20_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_relu20_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx23_relu20_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_relu20_add_x_p1_of_2_o <= $unsigned(i_arrayidx23_relu20_add_x_p1_of_2_a) + $unsigned(i_arrayidx23_relu20_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx23_relu20_add_x_p1_of_2_c[0] = i_arrayidx23_relu20_add_x_p1_of_2_o[52];
    assign i_arrayidx23_relu20_add_x_p1_of_2_q = i_arrayidx23_relu20_add_x_p1_of_2_o[51:0];

    // SE_i_arrayidx23_relu20_add_x_p1_of_2(STALLENABLE,1911)
    // Valid signal propagation
    assign SE_i_arrayidx23_relu20_add_x_p1_of_2_V0 = SE_i_arrayidx23_relu20_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx23_relu20_add_x_p1_of_2_V1 = SE_i_arrayidx23_relu20_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx23_relu20_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx23_relu20_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx23_relu20_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx23_relu20_add_x_p2_of_2_backStall & SE_i_arrayidx23_relu20_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx23_relu20_add_x_p1_of_2_or0 = SE_i_arrayidx23_relu20_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx23_relu20_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx23_relu20_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx23_relu20_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx23_relu20_add_x_p1_of_2_v_s_0 = SE_i_arrayidx23_relu20_add_x_p1_of_2_backEN & SR_SE_i_arrayidx23_relu20_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx23_relu20_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx23_relu20_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx23_relu20_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx23_relu20_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx23_relu20_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_relu20_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx23_relu20_add_x_p1_of_2_R_v_0 & SE_i_arrayidx23_relu20_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx23_relu20_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx23_relu20_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx23_relu20_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_relu20_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx23_relu20_add_x_p1_of_2_R_v_1 & SE_i_arrayidx23_relu20_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx23_relu20_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx23_relu20_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2(STALLREG,2204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_r_valid <= SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx23_relu20_add_x_p1_of_2_q);
                SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_and0 = SE_i_arrayidx23_relu20_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_i_valid = SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V2 & SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_backStall = SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_V = SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_D0 = SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_r_data0 : i_arrayidx23_relu20_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_D1 = SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_r_data1 : i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;

    // redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out_3_0(REG,1614)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out_3_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out_3_0_q <= $unsigned(SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D8);
        end
    end

    // redist5_i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0(REG,1590)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(18'b000000000000000000);
        end
        else if (SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist5_i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D4);
        end
    end

    // i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,1496)@70
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist5_i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q};

    // redist6_i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0(REG,1591)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q <= $unsigned(8'b00000000);
        end
        else if (SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist6_i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D6);
        end
    end

    // i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,1490)@70
    assign i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, redist6_i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q};

    // i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(ADD,1361)@69 + 1
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D0};
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // redist9_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0(REG,1594)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(18'b000000000000000000);
        end
        else if (SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist9_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D5);
        end
    end

    // i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,1468)@70
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist9_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_0_q};

    // redist10_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0(REG,1595)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q <= $unsigned(8'b00000000);
        end
        else if (SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist10_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q <= $unsigned(SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D7);
        end
    end

    // i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,1462)@70
    assign i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, redist10_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_0_q};

    // SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(STALLREG,2208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= 19'bxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= 19'bxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= 1'bx;
            SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= 19'bxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data4 <= 19'bxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data5 <= 1'bx;
            SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data6 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall & (SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid | SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= $unsigned(i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= $unsigned(i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= $unsigned(i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data4 <= $unsigned(i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data5 <= $unsigned(i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data6 <= $unsigned(redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out_3_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_i_valid = SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid : SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D0 = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data0 : i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D1 = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data1 : i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D2 = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data2 : i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data3
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D3 = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data3 : i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    // Data4
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D4 = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data4 : i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    // Data5
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D5 = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data5 : i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data6
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D6 = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data6 : redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out_3_0_q;

    // SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2(STALLREG,2215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_r_valid <= SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_relu20_add_x_p1_of_2_q);
                SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_and0 = SE_i_arrayidx10_relu20_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_i_valid = SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V0 & SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_backStall = SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_V = SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_D0 = SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_r_data0 : i_arrayidx10_relu20_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_D1 = SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_r_data1 : i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;

    // SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(STALLENABLE,1913)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V0 = SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V1 = SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V2 = SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_relu20_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall & SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2 = SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or0 = SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or1 = SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 | SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or0;
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN = ~ (SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2 | SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_v_s_0 = SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN & SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall = ~ (SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= 1'b0;
            SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 & SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 & SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 & SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(STALLREG,2203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data5 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data6 <= 8'bxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data7 <= 8'bxxxxxxxx;
            SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data8 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall & (SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid | SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
                SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q);
                SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= $unsigned(i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
                SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= $unsigned(i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q);
                SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= $unsigned(i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
                SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data5 <= $unsigned(i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
                SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data6 <= $unsigned(i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c);
                SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data7 <= $unsigned(i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c);
                SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data8 <= $unsigned(redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out_1_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_i_valid = SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_V0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid : SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D0 = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data0 : i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    // Data1
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D1 = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data1 : i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    // Data2
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D2 = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data2 : i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    // Data3
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D3 = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data3 : i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    // Data4
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D4 = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data4 : i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    // Data5
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D5 = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data5 : i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    // Data6
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D6 = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data6 : i_arrayidx23_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c;
    // Data7
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D7 = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data7 : i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c;
    // Data8
    assign SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D8 = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data8 : redist28_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out_1_0_q;

    // SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0(STALLENABLE,1853)
    // Valid signal propagation
    assign SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_V0 = SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_R_v_0;
    // Stall signal propagation
    assign SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_s_tv_0 = SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall & SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_R_v_0;
    // Backward Enable generation
    assign SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_backEN = ~ (SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_v_s_0 = SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_backEN & SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_V0;
    // Backward Stall generation
    assign SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_backStall = ~ (SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_backEN == 1'b0)
            begin
                SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_R_v_0 <= SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_R_v_0 & SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_s_tv_0;
            end
            else
            begin
                SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_R_v_0 <= SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210(STALLENABLE,1786)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_V0 = SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_backStall = SE_addsumAHighB_uid343_i_arrayidx10_relu20_dupName_0_mult_x_im0_backStall | ~ (SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_wireValid = i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_valid_out;

    // SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226(STALLENABLE,1815)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_V0 = SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_backStall = i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_wireValid = SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_V;

    // SE_out_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226(STALLENABLE,1816)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_wireValid = i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_out_valid_out;

    // i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226(BLACKBOX,140)@71
    // in in_stall_in@20000000
    // out out_data_out@72
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    // out out_stall_out@20000000
    // out out_valid_out@72
    relu2_i_llvm_fpga_push_i32_i_018_pop1437_push31_0 thei_llvm_fpga_push_i32_i_018_pop1437_push31_relu226 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_D0),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_feedback_stall_out_31),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_V0),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_out_feedback_valid_out_31),
        .out_stall_out(i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210(BLACKBOX,125)@67
    // in in_stall_in@20000000
    // out out_data_out@68
    // out out_feedback_stall_out_31@20000000
    // out out_stall_out@20000000
    // out out_valid_out@68
    relu2_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_0 thei_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D0),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D1),
        .in_feedback_in_31(i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_feedback_stall_out_31),
        .out_stall_out(i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0(REG,1622)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_backEN == 1'b1)
        begin
            redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_q <= $unsigned(SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_D0);
        end
    end

    // SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1(STALLENABLE,2027)
    // Valid signal propagation
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_V0 = SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_R_v_0;
    // Stall signal propagation
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_s_tv_0 = SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_backStall & SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_R_v_0;
    // Backward Enable generation
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_backEN = ~ (SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_v_s_0 = SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_backEN & SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_V;
    // Backward Stall generation
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_backStall = ~ (SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_backEN == 1'b0)
            begin
                SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_R_v_0 <= SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_R_v_0 & SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_s_tv_0;
            end
            else
            begin
                SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_R_v_0 <= SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_v_s_0;
            end

        end
    end

    // SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1(STALLREG,2193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_r_valid <= 1'b0;
            SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_r_valid <= SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_backStall & (SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_r_valid | SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_i_valid);

            if (SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_r_data0 <= $unsigned(redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_i_valid = SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_V0;
    // Stall signal propagation
    assign SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_backStall = SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_r_valid | ~ (SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_i_valid);

    // Valid
    assign SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_V = SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_r_valid == 1'b1 ? SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_r_valid : SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_i_valid;

    assign SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_D0 = SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_r_valid == 1'b1 ? SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_r_data0 : redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_q;

    // SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0(STALLENABLE,2026)
    // Valid signal propagation
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_V0 = SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_R_v_0;
    // Stall signal propagation
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_s_tv_0 = SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_backStall & SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_R_v_0;
    // Backward Enable generation
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_backEN = ~ (SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_v_s_0 = SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_backEN & SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_V;
    // Backward Stall generation
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_backStall = ~ (SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_backEN == 1'b0)
            begin
                SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_R_v_0 <= SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_R_v_0 & SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_s_tv_0;
            end
            else
            begin
                SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_R_v_0 <= SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_v_s_0;
            end

        end
    end

    // SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0(STALLREG,2192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_r_valid <= 1'b0;
            SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_r_valid <= SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_backStall & (SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_r_valid | SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_i_valid);

            if (SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_r_data0 <= $unsigned(SR_SE_out_coalesced_delay_0_fifo_D2);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_i_valid = SE_out_coalesced_delay_0_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_backStall = SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_r_valid | ~ (SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_i_valid);

    // Valid
    assign SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_V = SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_r_valid == 1'b1 ? SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_r_valid : SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_i_valid;

    assign SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_D0 = SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_r_valid == 1'b1 ? SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_r_data0 : SR_SE_out_coalesced_delay_0_fifo_D2;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,2038)
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
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_0_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
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

    // SR_SE_out_coalesced_delay_0_fifo(STALLREG,2191)
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

    // coalesced_delay_0_fifo(STALLFIFO,1631)
    assign coalesced_delay_0_fifo_valid_in = SE_out_relu2_B4_merge_reg_aunroll_x_V5;
    assign coalesced_delay_0_fifo_stall_in = SR_SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(67),
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

    // redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo(STALLFIFO,1630)
    assign redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_valid_in = SE_out_relu2_B4_merge_reg_aunroll_x_V4;
    assign redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_stall_in = SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_backStall;
    assign redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_data_in = bubble_select_relu2_B4_merge_reg_aunroll_x_f;
    assign redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_valid_in_bitsignaltemp = redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_valid_in[0];
    assign redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_stall_in_bitsignaltemp = redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_stall_in[0];
    assign redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_valid_out[0] = redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_valid_out_bitsignaltemp;
    assign redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_stall_out[0] = redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(70),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo (
        .valid_in(redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_valid_in_bitsignaltemp),
        .stall_in(redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_relu2_B4_merge_reg_aunroll_x_f),
        .valid_out(redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_valid_out_bitsignaltemp),
        .stall_out(redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_stall_out_bitsignaltemp),
        .data_out(redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231(STALLENABLE,1820)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_wireValid = i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_out_valid_out;

    // redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2(REG,1612)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_backEN == 1'b1)
        begin
            redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_q <= $unsigned(SR_SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_D0);
        end
    end

    // i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231(BLACKBOX,142)@71
    // in in_stall_in@20000000
    // out out_data_out@72
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@72
    relu2_i_llvm_fpga_push_i32_k_019_pop1132_push27_0 thei_llvm_fpga_push_i32_k_019_pop1132_push27_relu231 (
        .in_data_in(redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_feedback_stall_out_27),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_relu23_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_V0),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_out_feedback_valid_out_27),
        .out_stall_out(i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214(BLACKBOX,127)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    relu2_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_0 thei_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214 (
        .in_data_in(bubble_select_relu2_B4_merge_reg_aunroll_x_i),
        .in_dir(bubble_select_relu2_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_27(i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_backStall),
        .in_valid_in(SE_out_relu2_B4_merge_reg_aunroll_x_V3),
        .out_data_out(i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_feedback_stall_out_27),
        .out_stall_out(i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215(BITJOIN,1672)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_q = i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215(BITSELECT,1673)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_q[0:0]);

    // bubble_join_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo(BITJOIN,1716)
    assign bubble_join_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_q = redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_data_out;

    // bubble_select_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo(BITSELECT,1717)
    assign bubble_select_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_b = $unsigned(bubble_join_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_q[0:0]);

    // SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo(STALLENABLE,2036)
    // Valid signal propagation
    assign SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_V0 = SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_backStall = i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_out_stall_out | ~ (SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_wireValid = SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_V;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228(STALLENABLE,1800)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_wireValid = i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228(BLACKBOX,132)@71
    // in in_stall_in@20000000
    // out out_data_out@72
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    // out out_stall_out@20000000
    // out out_valid_out@72
    relu2_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_0 thei_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_b),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_out_feedback_stall_out_32),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_relu23_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_V0),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_out_feedback_valid_out_32),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211(BLACKBOX,118)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_stall_out_32@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    relu2_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_0 thei_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211 (
        .in_data_in(SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_D0),
        .in_dir(SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_D1),
        .in_feedback_in_32(i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_backStall),
        .in_valid_in(SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_out_feedback_stall_out_32),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211(BITJOIN,1669)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_q = i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211(BITSELECT,1670)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_q[0:0]);

    // i_reduction_relu2_0_relu234(LOGICAL,151)@71 + 1
    assign i_reduction_relu2_0_relu234_qi = bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_b | bubble_select_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_relu2_0_relu234_delay ( .xin(i_reduction_relu2_0_relu234_qi), .xout(i_reduction_relu2_0_relu234_q), .ena(SE_i_reduction_relu2_0_relu234_backEN[0]), .clk(clock), .aclr(resetn) );

    // SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0(STALLREG,2213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_r_valid <= 1'b0;
            SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_r_valid <= SE_redist23_i_reduction_relu2_0_relu234_q_2_0_backStall & (SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_r_valid | SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_i_valid);

            if (SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_r_data0 <= i_reduction_relu2_0_relu234_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_i_valid = SE_i_reduction_relu2_0_relu234_V0;
    // Stall signal propagation
    assign SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_backStall = SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_r_valid | ~ (SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_i_valid);

    // Valid
    assign SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_V = SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_r_valid == 1'b1 ? SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_r_valid : SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_i_valid;

    assign SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_D0 = SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_r_valid == 1'b1 ? SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_r_data0 : i_reduction_relu2_0_relu234_q;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211(STALLENABLE,1772)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_consumed1 = (~ (SE_i_reduction_relu2_0_relu234_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_wireValid = i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_out_valid_out;

    // SE_i_reduction_relu2_0_relu234(STALLENABLE,1829)
    // Valid signal propagation
    assign SE_i_reduction_relu2_0_relu234_V0 = SE_i_reduction_relu2_0_relu234_R_v_0;
    // Stall signal propagation
    assign SE_i_reduction_relu2_0_relu234_s_tv_0 = SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_backStall & SE_i_reduction_relu2_0_relu234_R_v_0;
    // Backward Enable generation
    assign SE_i_reduction_relu2_0_relu234_backEN = ~ (SE_i_reduction_relu2_0_relu234_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_reduction_relu2_0_relu234_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_V1 & SE_i_reduction_relu2_0_relu234_backEN;
    assign SE_i_reduction_relu2_0_relu234_v_s_0 = SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_V1 & SE_i_reduction_relu2_0_relu234_and0;
    // Backward Stall generation
    assign SE_i_reduction_relu2_0_relu234_backStall = ~ (SE_i_reduction_relu2_0_relu234_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_relu2_0_relu234_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_reduction_relu2_0_relu234_backEN == 1'b0)
            begin
                SE_i_reduction_relu2_0_relu234_R_v_0 <= SE_i_reduction_relu2_0_relu234_R_v_0 & SE_i_reduction_relu2_0_relu234_s_tv_0;
            end
            else
            begin
                SE_i_reduction_relu2_0_relu234_R_v_0 <= SE_i_reduction_relu2_0_relu234_v_s_0;
            end

        end
    end

    // SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo(STALLENABLE,2019)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_fromReg0 <= '0;
            SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_fromReg0 <= SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_toReg0;
            // Successor 1
            SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_fromReg1 <= SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_backStall) & SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_wireValid) | SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_fromReg0;
    assign SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_consumed1 = (~ (SE_i_reduction_relu2_0_relu234_backStall) & SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_wireValid) | SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_fromReg1;
    // Consuming
    assign SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_StallValid = SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_backStall & SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_wireValid;
    assign SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_toReg0 = SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_StallValid & SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_consumed0;
    assign SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_toReg1 = SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_StallValid & SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_or0 = SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_consumed0;
    assign SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_wireStall = ~ (SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_consumed1 & SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_or0);
    assign SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_backStall = SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_V0 = SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_wireValid & ~ (SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_fromReg0);
    assign SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_V1 = SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_wireValid & ~ (SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_wireValid = redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_valid_out;

    // redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo(STALLFIFO,1616)
    assign redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_V0;
    assign redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_stall_in = SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_backStall;
    assign redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_b;
    assign redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_valid_in_bitsignaltemp = redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_valid_in[0];
    assign redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_stall_in_bitsignaltemp = redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_stall_in[0];
    assign redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_valid_out[0] = redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_valid_out_bitsignaltemp;
    assign redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_stall_out[0] = redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(70),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo (
        .valid_in(redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_valid_in_bitsignaltemp),
        .stall_in(redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_b),
        .valid_out(redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_valid_out_bitsignaltemp),
        .stall_out(redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_stall_out_bitsignaltemp),
        .data_out(redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215(STALLENABLE,1774)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_backStall = redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_wireValid = i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233(STALLENABLE,1802)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_wireValid = i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233(BLACKBOX,133)@71
    // in in_stall_in@20000000
    // out out_data_out@72
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@72
    relu2_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_0 thei_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233 (
        .in_data_in(bubble_select_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_b),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_feedback_stall_out_28),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_relu23_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_V0),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_out_feedback_valid_out_28),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215(BLACKBOX,119)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    relu2_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215 (
        .in_data_in(bubble_select_relu2_B4_merge_reg_aunroll_x_j),
        .in_dir(bubble_select_relu2_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_28(i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_backStall),
        .in_valid_in(SE_out_relu2_B4_merge_reg_aunroll_x_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_feedback_stall_out_28),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg(STALLFIFO,2187)
    assign bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_valid_in = SE_out_relu2_B4_merge_reg_aunroll_x_V1;
    assign bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_relu2_B4_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg(STALLFIFO,2186)
    assign bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_valid_in = SE_out_relu2_B4_merge_reg_aunroll_x_V0;
    assign bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_relu2_B4_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_relu2_B4_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_relu2_B4_merge_reg_aunroll_x(STALLENABLE,1747)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_relu2_B4_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_relu2_B4_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_relu2_B4_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_relu2_B4_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_relu2_B4_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_relu2_B4_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_relu2_B4_merge_reg_aunroll_x_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_relu2_B4_merge_reg_aunroll_x_fromReg0 <= SE_out_relu2_B4_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_relu2_B4_merge_reg_aunroll_x_fromReg1 <= SE_out_relu2_B4_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_relu2_B4_merge_reg_aunroll_x_fromReg2 <= SE_out_relu2_B4_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_relu2_B4_merge_reg_aunroll_x_fromReg3 <= SE_out_relu2_B4_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_relu2_B4_merge_reg_aunroll_x_fromReg4 <= SE_out_relu2_B4_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_relu2_B4_merge_reg_aunroll_x_fromReg5 <= SE_out_relu2_B4_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_relu2_B4_merge_reg_aunroll_x_fromReg6 <= SE_out_relu2_B4_merge_reg_aunroll_x_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_relu2_B4_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_relu2_B4_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_relu2_B4_merge_reg_aunroll_x_wireValid) | SE_out_relu2_B4_merge_reg_aunroll_x_fromReg0;
    assign SE_out_relu2_B4_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_relu2_B4_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_relu2_B4_merge_reg_aunroll_x_wireValid) | SE_out_relu2_B4_merge_reg_aunroll_x_fromReg1;
    assign SE_out_relu2_B4_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_stall_out) & SE_out_relu2_B4_merge_reg_aunroll_x_wireValid) | SE_out_relu2_B4_merge_reg_aunroll_x_fromReg2;
    assign SE_out_relu2_B4_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_stall_out) & SE_out_relu2_B4_merge_reg_aunroll_x_wireValid) | SE_out_relu2_B4_merge_reg_aunroll_x_fromReg3;
    assign SE_out_relu2_B4_merge_reg_aunroll_x_consumed4 = (~ (redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_stall_out) & SE_out_relu2_B4_merge_reg_aunroll_x_wireValid) | SE_out_relu2_B4_merge_reg_aunroll_x_fromReg4;
    assign SE_out_relu2_B4_merge_reg_aunroll_x_consumed5 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_relu2_B4_merge_reg_aunroll_x_wireValid) | SE_out_relu2_B4_merge_reg_aunroll_x_fromReg5;
    assign SE_out_relu2_B4_merge_reg_aunroll_x_consumed6 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_relu2_B4_merge_reg_aunroll_x_wireValid) | SE_out_relu2_B4_merge_reg_aunroll_x_fromReg6;
    // Consuming
    assign SE_out_relu2_B4_merge_reg_aunroll_x_StallValid = SE_out_relu2_B4_merge_reg_aunroll_x_backStall & SE_out_relu2_B4_merge_reg_aunroll_x_wireValid;
    assign SE_out_relu2_B4_merge_reg_aunroll_x_toReg0 = SE_out_relu2_B4_merge_reg_aunroll_x_StallValid & SE_out_relu2_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_relu2_B4_merge_reg_aunroll_x_toReg1 = SE_out_relu2_B4_merge_reg_aunroll_x_StallValid & SE_out_relu2_B4_merge_reg_aunroll_x_consumed1;
    assign SE_out_relu2_B4_merge_reg_aunroll_x_toReg2 = SE_out_relu2_B4_merge_reg_aunroll_x_StallValid & SE_out_relu2_B4_merge_reg_aunroll_x_consumed2;
    assign SE_out_relu2_B4_merge_reg_aunroll_x_toReg3 = SE_out_relu2_B4_merge_reg_aunroll_x_StallValid & SE_out_relu2_B4_merge_reg_aunroll_x_consumed3;
    assign SE_out_relu2_B4_merge_reg_aunroll_x_toReg4 = SE_out_relu2_B4_merge_reg_aunroll_x_StallValid & SE_out_relu2_B4_merge_reg_aunroll_x_consumed4;
    assign SE_out_relu2_B4_merge_reg_aunroll_x_toReg5 = SE_out_relu2_B4_merge_reg_aunroll_x_StallValid & SE_out_relu2_B4_merge_reg_aunroll_x_consumed5;
    assign SE_out_relu2_B4_merge_reg_aunroll_x_toReg6 = SE_out_relu2_B4_merge_reg_aunroll_x_StallValid & SE_out_relu2_B4_merge_reg_aunroll_x_consumed6;
    // Backward Stall generation
    assign SE_out_relu2_B4_merge_reg_aunroll_x_or0 = SE_out_relu2_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_relu2_B4_merge_reg_aunroll_x_or1 = SE_out_relu2_B4_merge_reg_aunroll_x_consumed1 & SE_out_relu2_B4_merge_reg_aunroll_x_or0;
    assign SE_out_relu2_B4_merge_reg_aunroll_x_or2 = SE_out_relu2_B4_merge_reg_aunroll_x_consumed2 & SE_out_relu2_B4_merge_reg_aunroll_x_or1;
    assign SE_out_relu2_B4_merge_reg_aunroll_x_or3 = SE_out_relu2_B4_merge_reg_aunroll_x_consumed3 & SE_out_relu2_B4_merge_reg_aunroll_x_or2;
    assign SE_out_relu2_B4_merge_reg_aunroll_x_or4 = SE_out_relu2_B4_merge_reg_aunroll_x_consumed4 & SE_out_relu2_B4_merge_reg_aunroll_x_or3;
    assign SE_out_relu2_B4_merge_reg_aunroll_x_or5 = SE_out_relu2_B4_merge_reg_aunroll_x_consumed5 & SE_out_relu2_B4_merge_reg_aunroll_x_or4;
    assign SE_out_relu2_B4_merge_reg_aunroll_x_wireStall = ~ (SE_out_relu2_B4_merge_reg_aunroll_x_consumed6 & SE_out_relu2_B4_merge_reg_aunroll_x_or5);
    assign SE_out_relu2_B4_merge_reg_aunroll_x_backStall = SE_out_relu2_B4_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_relu2_B4_merge_reg_aunroll_x_V0 = SE_out_relu2_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_relu2_B4_merge_reg_aunroll_x_fromReg0);
    assign SE_out_relu2_B4_merge_reg_aunroll_x_V1 = SE_out_relu2_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_relu2_B4_merge_reg_aunroll_x_fromReg1);
    assign SE_out_relu2_B4_merge_reg_aunroll_x_V2 = SE_out_relu2_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_relu2_B4_merge_reg_aunroll_x_fromReg2);
    assign SE_out_relu2_B4_merge_reg_aunroll_x_V3 = SE_out_relu2_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_relu2_B4_merge_reg_aunroll_x_fromReg3);
    assign SE_out_relu2_B4_merge_reg_aunroll_x_V4 = SE_out_relu2_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_relu2_B4_merge_reg_aunroll_x_fromReg4);
    assign SE_out_relu2_B4_merge_reg_aunroll_x_V5 = SE_out_relu2_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_relu2_B4_merge_reg_aunroll_x_fromReg5);
    assign SE_out_relu2_B4_merge_reg_aunroll_x_V6 = SE_out_relu2_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_relu2_B4_merge_reg_aunroll_x_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_relu2_B4_merge_reg_aunroll_x_wireValid = relu2_B4_merge_reg_aunroll_x_out_valid_out;

    // coalesced_delay_1_fifo(STALLFIFO,1632)
    assign coalesced_delay_1_fifo_valid_in = SE_out_relu2_B4_merge_reg_aunroll_x_V6;
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

    // SR_SE_out_coalesced_delay_1_fifo(STALLREG,2200)
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
                SR_SE_out_coalesced_delay_1_fifo_r_data1 <= $unsigned(redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data2 <= $unsigned(redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data3 <= $unsigned(redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data4 <= $unsigned(redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data5 <= $unsigned(sel_for_coalesced_delay_1_d);
                SR_SE_out_coalesced_delay_1_fifo_r_data6 <= $unsigned(sel_for_coalesced_delay_1_c);
                SR_SE_out_coalesced_delay_1_fifo_r_data7 <= $unsigned(sel_for_coalesced_delay_1_e);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SR_SE_out_coalesced_delay_1_fifo_i_valid = SE_redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_V0 & SR_SE_out_coalesced_delay_1_fifo_and0;
    // Stall signal propagation
    assign SR_SE_out_coalesced_delay_1_fifo_backStall = SR_SE_out_coalesced_delay_1_fifo_r_valid | ~ (SR_SE_out_coalesced_delay_1_fifo_i_valid);

    // Valid
    assign SR_SE_out_coalesced_delay_1_fifo_V = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_valid : SR_SE_out_coalesced_delay_1_fifo_i_valid;

    // Data0
    assign SR_SE_out_coalesced_delay_1_fifo_D0 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data0 : sel_for_coalesced_delay_1_b;
    // Data1
    assign SR_SE_out_coalesced_delay_1_fifo_D1 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data1 : redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q;
    // Data2
    assign SR_SE_out_coalesced_delay_1_fifo_D2 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data2 : redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q;
    // Data3
    assign SR_SE_out_coalesced_delay_1_fifo_D3 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data3 : redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q;
    // Data4
    assign SR_SE_out_coalesced_delay_1_fifo_D4 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data4 : redist39_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_140_1_q;
    // Data5
    assign SR_SE_out_coalesced_delay_1_fifo_D5 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data5 : sel_for_coalesced_delay_1_d;
    // Data6
    assign SR_SE_out_coalesced_delay_1_fifo_D6 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data6 : sel_for_coalesced_delay_1_c;
    // Data7
    assign SR_SE_out_coalesced_delay_1_fifo_D7 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data7 : sel_for_coalesced_delay_1_e;

    // i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213(BLACKBOX,122)@141
    // in in_stall_in@20000000
    // out out_data_out@142
    // out out_feedback_stall_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@142
    relu2_i_llvm_fpga_pop_i1_notcmp1630_pop26_0 thei_llvm_fpga_pop_i1_notcmp1630_pop26_relu213 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D7),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D4),
        .in_feedback_in_26(i_llvm_fpga_push_i1_notcmp1630_push26_relu230_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i1_notcmp1630_push26_relu230_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V3),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_out_feedback_stall_out_26),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213(BITJOIN,1682)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_q = i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213(BITSELECT,1683)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_q[0:0]);

    // SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213(STALLENABLE,1780)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_wireValid = i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_out_valid_out;

    // SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230(STALLENABLE,1807)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_V0 = SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_backStall = i_llvm_fpga_push_i1_notcmp1630_push26_relu230_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_wireValid = SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_V;

    // SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230(STALLREG,2230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_r_valid <= SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_backStall & (SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_r_valid | SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_b);
                SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_r_data1 <= $unsigned(redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_and0 = SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_V4;
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_i_valid = SE_out_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_V1 & SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_backStall = SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_V = SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_r_valid : SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_D0 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_r_data0 : bubble_select_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_D1 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_r_data1 : redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_q;

    // bubble_join_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29(BITJOIN,1678)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_q = i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29(BITSELECT,1679)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_q[0:0]);

    // SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225(STALLREG,2229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_r_valid <= SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_backStall & (SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_r_valid | SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_b);
                SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_r_data1 <= $unsigned(redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_and0 = SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_V3;
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_i_valid = SE_out_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_V1 & SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_backStall = SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_V = SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_r_valid : SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_D0 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_r_data0 : bubble_select_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_D1 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_r_data1 : redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_q;

    // bubble_join_i_llvm_fpga_mem_memdep_relu254(BITJOIN,1650)
    assign bubble_join_i_llvm_fpga_mem_memdep_relu254_q = i_llvm_fpga_mem_memdep_relu254_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_relu254(BITSELECT,1651)
    assign bubble_select_i_llvm_fpga_mem_memdep_relu254_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_relu254_q[0:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_relu255(STALLENABLE,1804)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_wireValid = i_llvm_fpga_push_i1_memdep_phi_push22_relu255_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi_push22_relu255(BLACKBOX,134)@142
    // in in_stall_in@20000000
    // out out_data_out@143
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@143
    relu2_i_llvm_fpga_push_i1_memdep_phi_push22_0 thei_llvm_fpga_push_i1_memdep_phi_push22_relu255 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_D0),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_out_feedback_stall_out_22),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_V0),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i1_memdep_phi_push22_relu255_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i1_memdep_phi_push22_relu255_out_feedback_valid_out_22),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push22_relu255_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push22_relu255_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255(STALLENABLE,1803)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_backStall = i_llvm_fpga_push_i1_memdep_phi_push22_relu255_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_wireValid = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_V;

    // SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255(STALLREG,2228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_r_valid <= SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_backStall & (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_r_valid | SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_mem_memdep_relu254_b);
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_r_data1 <= $unsigned(redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_and0 = SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_V2;
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_i_valid = SE_out_i_llvm_fpga_mem_memdep_relu254_V1 & SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_backStall = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_V = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_r_valid : SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_D0 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_r_data0 : bubble_select_i_llvm_fpga_mem_memdep_relu254_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_D1 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_r_data1 : redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_q;

    // bubble_join_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212(BITJOIN,1665)
    assign bubble_join_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_q = i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212(BITSELECT,1666)
    assign bubble_select_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_q[0:0]);

    // SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229(STALLREG,2226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_r_valid <= SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_backStall & (SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_r_valid | SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_b);
                SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_r_data1 <= $unsigned(redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_and0 = SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_V1;
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_i_valid = SE_out_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_V1 & SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_backStall = SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_V = SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_r_valid : SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_D0 = SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_r_data0 : bubble_select_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_D1 = SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_r_data1 : redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_q;

    // bubble_join_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28(BITJOIN,1661)
    assign bubble_join_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_q = i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28(BITSELECT,1662)
    assign bubble_select_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_q[0:0]);

    // SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224(STALLREG,2225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_r_valid <= SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_backStall & (SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_r_valid | SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_b);
                SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_r_data1 <= $unsigned(redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_and0 = SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_V0;
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_i_valid = SE_out_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_V1 & SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_backStall = SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_V = SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_r_valid : SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_D0 = SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_r_data0 : bubble_select_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_D1 = SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_r_data1 : redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_q;

    // SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1(STALLENABLE,2025)
    // Valid signal propagation
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_V0 = SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_0;
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_V1 = SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_1;
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_V2 = SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_2;
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_V3 = SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_3;
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_V4 = SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_4;
    // Stall signal propagation
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_s_tv_0 = SR_SE_in_i_llvm_fpga_push_i1_exitcond535_push29_relu224_backStall & SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_0;
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_s_tv_1 = SR_SE_in_i_llvm_fpga_push_i1_exitcond828_push25_relu229_backStall & SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_1;
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_s_tv_2 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_relu255_backStall & SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_2;
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_s_tv_3 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1136_push30_relu225_backStall & SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_3;
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_s_tv_4 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1630_push26_relu230_backStall & SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_4;
    // Backward Enable generation
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_or0 = SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_s_tv_0;
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_or1 = SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_s_tv_1 | SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_or0;
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_or2 = SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_s_tv_2 | SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_or1;
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_or3 = SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_s_tv_3 | SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_or2;
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_backEN = ~ (SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_s_tv_4 | SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_or3);
    // Determine whether to write valid data into the first register stage
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_v_s_0 = SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_backEN & SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_V;
    // Backward Stall generation
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_backStall = ~ (SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_0 <= 1'b0;
            SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_1 <= 1'b0;
            SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_2 <= 1'b0;
            SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_3 <= 1'b0;
            SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_4 <= 1'b0;
        end
        else
        begin
            if (SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_backEN == 1'b0)
            begin
                SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_0 <= SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_0 & SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_s_tv_0;
            end
            else
            begin
                SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_0 <= SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_v_s_0;
            end

            if (SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_backEN == 1'b0)
            begin
                SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_1 <= SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_1 & SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_s_tv_1;
            end
            else
            begin
                SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_1 <= SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_v_s_0;
            end

            if (SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_backEN == 1'b0)
            begin
                SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_2 <= SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_2 & SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_s_tv_2;
            end
            else
            begin
                SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_2 <= SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_v_s_0;
            end

            if (SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_backEN == 1'b0)
            begin
                SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_3 <= SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_3 & SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_s_tv_3;
            end
            else
            begin
                SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_3 <= SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_v_s_0;
            end

            if (SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_backEN == 1'b0)
            begin
                SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_4 <= SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_4 & SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_s_tv_4;
            end
            else
            begin
                SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_R_v_4 <= SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_v_s_0;
            end

        end
    end

    // SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1(STALLREG,2224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_r_valid <= 1'b0;
            SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_r_valid <= SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_backStall & (SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_r_valid | SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_i_valid);

            if (SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_r_data0 <= $unsigned(redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_i_valid = SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_V0;
    // Stall signal propagation
    assign SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_backStall = SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_r_valid | ~ (SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_i_valid);

    // Valid
    assign SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_V = SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_r_valid == 1'b1 ? SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_r_valid : SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_i_valid;

    assign SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_D0 = SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_r_valid == 1'b1 ? SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_r_data0 : redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_q;

    // SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0(STALLENABLE,2024)
    // Valid signal propagation
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_V0 = SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_R_v_0;
    // Stall signal propagation
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_s_tv_0 = SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_1_backStall & SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_R_v_0;
    // Backward Enable generation
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_backEN = ~ (SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_v_s_0 = SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_backEN & SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_V;
    // Backward Stall generation
    assign SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_backStall = ~ (SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_backEN == 1'b0)
            begin
                SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_R_v_0 <= SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_R_v_0 & SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_s_tv_0;
            end
            else
            begin
                SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_R_v_0 <= SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_v_s_0;
            end

        end
    end

    // SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0(STALLREG,2223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_r_valid <= 1'b0;
            SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_r_valid <= SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_backStall & (SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_r_valid | SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_i_valid);

            if (SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_r_data0 <= $unsigned(bubble_select_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_i_valid = SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_V1;
    // Stall signal propagation
    assign SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_backStall = SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_r_valid | ~ (SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_i_valid);

    // Valid
    assign SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_V = SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_r_valid == 1'b1 ? SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_r_valid : SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_i_valid;

    assign SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_D0 = SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_r_valid == 1'b1 ? SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_r_data0 : bubble_select_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_b;

    // rightShiftStage0Idx1Rng1_uid326_i_next_initerations_relu20_shift_x(BITSELECT,325)@140
    assign rightShiftStage0Idx1Rng1_uid326_i_next_initerations_relu20_shift_x_b = bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_relu24_b[1:1];

    // rightShiftStage0Idx1_uid328_i_next_initerations_relu20_shift_x(BITJOIN,327)@140
    assign rightShiftStage0Idx1_uid328_i_next_initerations_relu20_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid326_i_next_initerations_relu20_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i2_initerations_pop23_relu24(BITJOIN,1689)
    assign bubble_join_i_llvm_fpga_pop_i2_initerations_pop23_relu24_q = i_llvm_fpga_pop_i2_initerations_pop23_relu24_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_relu24(BITSELECT,1690)
    assign bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_relu24_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_initerations_pop23_relu24_q[1:0]);

    // rightShiftStage0_uid330_i_next_initerations_relu20_shift_x(MUX,329)@140
    assign rightShiftStage0_uid330_i_next_initerations_relu20_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid330_i_next_initerations_relu20_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_relu24_b or rightShiftStage0Idx1_uid328_i_next_initerations_relu20_shift_x_q)
    begin
        unique case (rightShiftStage0_uid330_i_next_initerations_relu20_shift_x_s)
            1'b0 : rightShiftStage0_uid330_i_next_initerations_relu20_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_relu24_b;
            1'b1 : rightShiftStage0_uid330_i_next_initerations_relu20_shift_x_q = rightShiftStage0Idx1_uid328_i_next_initerations_relu20_shift_x_q;
            default : rightShiftStage0_uid330_i_next_initerations_relu20_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_relu218_vt_select_0(BITSELECT,148)@140
    assign i_next_initerations_relu218_vt_select_0_b = rightShiftStage0_uid330_i_next_initerations_relu20_shift_x_q[0:0];

    // i_next_initerations_relu218_vt_join(BITJOIN,147)@140
    assign i_next_initerations_relu218_vt_join_q = {GND_q, i_next_initerations_relu218_vt_select_0_b};

    // i_last_initeration_relu237_sel_x(BITSELECT,70)@140
    assign i_last_initeration_relu237_sel_x_b = i_next_initerations_relu218_vt_join_q[0:0];

    // SR_SE_i_next_initerations_relu218_vt_select_0(STALLREG,2227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_next_initerations_relu218_vt_select_0_r_valid <= 1'b0;
            SR_SE_i_next_initerations_relu218_vt_select_0_r_data0 <= 1'bx;
            SR_SE_i_next_initerations_relu218_vt_select_0_r_data1 <= 1'bx;
            SR_SE_i_next_initerations_relu218_vt_select_0_r_data2 <= 1'bx;
            SR_SE_i_next_initerations_relu218_vt_select_0_r_data3 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_i_next_initerations_relu218_vt_select_0_r_valid <= SE_i_next_initerations_relu218_vt_select_0_backStall & (SR_SE_i_next_initerations_relu218_vt_select_0_r_valid | SR_SE_i_next_initerations_relu218_vt_select_0_i_valid);

            if (SR_SE_i_next_initerations_relu218_vt_select_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_next_initerations_relu218_vt_select_0_r_data0 <= i_last_initeration_relu237_sel_x_b;
                SR_SE_i_next_initerations_relu218_vt_select_0_r_data1 <= $unsigned(bubble_select_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_b);
                SR_SE_i_next_initerations_relu218_vt_select_0_r_data2 <= $unsigned(bubble_select_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_b);
                SR_SE_i_next_initerations_relu218_vt_select_0_r_data3 <= i_next_initerations_relu218_vt_join_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_next_initerations_relu218_vt_select_0_and0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_relu24_V1;
    assign SR_SE_i_next_initerations_relu218_vt_select_0_i_valid = SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_V0 & SR_SE_i_next_initerations_relu218_vt_select_0_and0;
    // Stall signal propagation
    assign SR_SE_i_next_initerations_relu218_vt_select_0_backStall = SR_SE_i_next_initerations_relu218_vt_select_0_r_valid | ~ (SR_SE_i_next_initerations_relu218_vt_select_0_i_valid);

    // Valid
    assign SR_SE_i_next_initerations_relu218_vt_select_0_V = SR_SE_i_next_initerations_relu218_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_relu218_vt_select_0_r_valid : SR_SE_i_next_initerations_relu218_vt_select_0_i_valid;

    // Data0
    assign SR_SE_i_next_initerations_relu218_vt_select_0_D0 = SR_SE_i_next_initerations_relu218_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_relu218_vt_select_0_r_data0 : i_last_initeration_relu237_sel_x_b;
    // Data1
    assign SR_SE_i_next_initerations_relu218_vt_select_0_D1 = SR_SE_i_next_initerations_relu218_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_relu218_vt_select_0_r_data1 : bubble_select_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_b;
    // Data2
    assign SR_SE_i_next_initerations_relu218_vt_select_0_D2 = SR_SE_i_next_initerations_relu218_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_relu218_vt_select_0_r_data2 : bubble_select_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_b;
    // Data3
    assign SR_SE_i_next_initerations_relu218_vt_select_0_D3 = SR_SE_i_next_initerations_relu218_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_relu218_vt_select_0_r_data3 : i_next_initerations_relu218_vt_join_q;

    // SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo(STALLENABLE,2023)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_fromReg0 <= '0;
            SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_fromReg0 <= SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_toReg0;
            // Successor 1
            SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_fromReg1 <= SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_consumed0 = (~ (SR_SE_i_next_initerations_relu218_vt_select_0_backStall) & SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_wireValid) | SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_fromReg0;
    assign SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_consumed1 = (~ (SR_SE_redist33_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_71_0_backStall) & SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_wireValid) | SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_fromReg1;
    // Consuming
    assign SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_StallValid = SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_backStall & SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_wireValid;
    assign SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_toReg0 = SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_StallValid & SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_consumed0;
    assign SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_toReg1 = SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_StallValid & SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_or0 = SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_consumed0;
    assign SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_wireStall = ~ (SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_consumed1 & SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_or0);
    assign SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_backStall = SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_V0 = SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_wireValid & ~ (SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_fromReg0);
    assign SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_V1 = SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_wireValid & ~ (SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_wireValid = redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_valid_out;

    // redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo(STALLFIFO,1619)
    assign redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_valid_in = SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_V2;
    assign redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_stall_in = SE_out_redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_backStall;
    assign redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_data_in = redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_q;
    assign redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_valid_in_bitsignaltemp = redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_valid_in[0];
    assign redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_stall_in_bitsignaltemp = redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_stall_in[0];
    assign redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_valid_out[0] = redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_valid_out_bitsignaltemp;
    assign redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_stall_out[0] = redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo (
        .valid_in(redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_valid_in_bitsignaltemp),
        .stall_in(redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_stall_in_bitsignaltemp),
        .data_in(redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_q),
        .valid_out(redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_valid_out_bitsignaltemp),
        .stall_out(redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_stall_out_bitsignaltemp),
        .data_out(redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_162(CONSTANT,84)
    assign c_i5_162_q = $unsigned(5'b11111);

    // bubble_join_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27(BITJOIN,1702)
    assign bubble_join_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_q = i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27(BITSELECT,1703)
    assign bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_b = $unsigned(bubble_join_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_q[4:0]);

    // i_fpga_indvars_iv_next_relu223(ADD,96)@73
    assign i_fpga_indvars_iv_next_relu223_a = {1'b0, bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_b};
    assign i_fpga_indvars_iv_next_relu223_b = {1'b0, c_i5_162_q};
    assign i_fpga_indvars_iv_next_relu223_o = $unsigned(i_fpga_indvars_iv_next_relu223_a) + $unsigned(i_fpga_indvars_iv_next_relu223_b);
    assign i_fpga_indvars_iv_next_relu223_q = i_fpga_indvars_iv_next_relu223_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next_relu223_sel_x(BITSELECT,2)@73
    assign bgTrunc_i_fpga_indvars_iv_next_relu223_sel_x_b = i_fpga_indvars_iv_next_relu223_q[4:0];

    // SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241(STALLREG,2234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_r_data0 <= 5'bxxxxx;
            SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_r_valid <= SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_backStall & (SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_r_valid | SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_r_data0 <= bgTrunc_i_fpga_indvars_iv_next_relu223_sel_x_b;
                SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_r_data1 <= $unsigned(redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_and0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_V2;
    assign SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_i_valid = SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_V1 & SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_backStall = SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_V = SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_r_valid : SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_D0 = SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_r_data0 : bgTrunc_i_fpga_indvars_iv_next_relu223_sel_x_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_D1 = SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_r_data1 : redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_q;

    // SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1(STALLENABLE,2021)
    // Valid signal propagation
    assign SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_V0 = SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_0;
    assign SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_V1 = SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_1;
    assign SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_V2 = SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_2;
    // Stall signal propagation
    assign SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_s_tv_0 = SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_backStall & SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_0;
    assign SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_s_tv_1 = SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_relu241_backStall & SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_1;
    assign SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_s_tv_2 = redist32_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_69_fifo_stall_out & SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_2;
    // Backward Enable generation
    assign SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_or0 = SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_s_tv_0;
    assign SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_or1 = SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_s_tv_1 | SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_or0;
    assign SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_backEN = ~ (SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_s_tv_2 | SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_v_s_0 = SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_backEN & SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_V;
    // Backward Stall generation
    assign SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_backStall = ~ (SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_0 <= 1'b0;
            SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_1 <= 1'b0;
            SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_0 <= SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_0 & SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_s_tv_0;
            end
            else
            begin
                SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_0 <= SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_v_s_0;
            end

            if (SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_1 <= SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_1 & SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_s_tv_1;
            end
            else
            begin
                SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_1 <= SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_v_s_0;
            end

            if (SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_2 <= SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_2 & SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_s_tv_2;
            end
            else
            begin
                SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_R_v_2 <= SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_v_s_0;
            end

        end
    end

    // SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1(STALLREG,2222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_r_valid <= 1'b0;
            SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_r_valid <= SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_backStall & (SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_r_valid | SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_i_valid);

            if (SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_r_data0 <= $unsigned(redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_i_valid = SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_V0;
    // Stall signal propagation
    assign SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_backStall = SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_r_valid | ~ (SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_i_valid);

    // Valid
    assign SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_V = SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_r_valid == 1'b1 ? SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_r_valid : SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_i_valid;

    assign SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_D0 = SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_r_valid == 1'b1 ? SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_r_data0 : redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_q;

    // SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0(STALLENABLE,2020)
    // Valid signal propagation
    assign SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_V0 = SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_s_tv_0 = SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_backStall & SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_backEN = ~ (SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_v_s_0 = SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_backEN & SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_V;
    // Backward Stall generation
    assign SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_backStall = ~ (SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_backEN == 1'b0)
            begin
                SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_R_v_0 <= SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_R_v_0 & SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_s_tv_0;
            end
            else
            begin
                SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_R_v_0 <= SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_v_s_0;
            end

        end
    end

    // SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0(STALLREG,2221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_r_valid <= 1'b0;
            SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_r_valid <= SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_backStall & (SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_r_valid | SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_i_valid);

            if (SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_relu23_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V6;
    // Stall signal propagation
    assign SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_backStall = SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_r_valid | ~ (SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_i_valid);

    // Valid
    assign SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_V = SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_r_valid == 1'b1 ? SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_r_valid : SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_i_valid;

    assign SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_D0 = SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_r_valid == 1'b1 ? SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_r_data0 : bubble_select_i_llvm_fpga_pipeline_keep_going_relu23_b;

    // SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231(STALLENABLE,1819)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_V0 = SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_backStall = i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_and0 = SE_redist27_i_llvm_fpga_pop_i32_k_019_pop1132_pop27_relu214_out_data_out_69_2_V0;
    assign SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V5 & SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_and0;

    // SE_bgTrunc_i_inc_relu220_sel_x(STALLENABLE,1737)
    // Valid signal propagation
    assign SE_bgTrunc_i_inc_relu220_sel_x_V0 = SE_bgTrunc_i_inc_relu220_sel_x_wireValid;
    // Backward Stall generation
    assign SE_bgTrunc_i_inc_relu220_sel_x_backStall = i_llvm_fpga_push_i32_j_017_push21_relu238_out_stall_out | ~ (SE_bgTrunc_i_inc_relu220_sel_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_bgTrunc_i_inc_relu220_sel_x_and0 = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_V0;
    assign SE_bgTrunc_i_inc_relu220_sel_x_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V4 & SE_bgTrunc_i_inc_relu220_sel_x_and0;

    // redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out_3_1(REG,1615)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out_3_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out_3_1_q <= $unsigned(SR_SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D6);
        end
    end

    // SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226(STALLREG,2232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_r_valid <= SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_backStall & (SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_r_valid | SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_r_data0 <= $unsigned(redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out_3_1_q);
                SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_relu23_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_and0 = SE_i_arrayidx10_relu20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V2;
    assign SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V3 & SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_backStall = SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_V = SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_r_valid : SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_D0 = SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_r_data0 : redist29_i_llvm_fpga_pop_i32_i_018_pop1437_pop31_relu210_out_data_out_3_1_q;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_D1 = SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_r_data1 : bubble_select_i_llvm_fpga_pipeline_keep_going_relu23_b;

    // SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233(STALLENABLE,1801)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_backStall = i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_and0 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V2;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_wireValid = SE_out_redist30_i_llvm_fpga_pop_i1_memdep_phi2_pop1234_pop28_relu215_out_data_out_69_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_and0;

    // SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228(STALLENABLE,1799)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_backStall = i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_and0 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1538_pop32_relu211_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_and0;

    // bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg(STALLFIFO,2188)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(72),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pipeline_keep_going_relu23(STALLENABLE,1766)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg5 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg5 <= SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg5;
            // Successor 6
            SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg6 <= SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_relu23_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1538_push32_relu228_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed2 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1234_push28_relu233_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed3 = (~ (SR_SE_in_i_llvm_fpga_push_i32_i_018_pop1437_push31_relu226_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed4 = (~ (SE_bgTrunc_i_inc_relu220_sel_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed5 = (~ (SE_in_i_llvm_fpga_push_i32_k_019_pop1132_push27_relu231_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed6 = (~ (SR_SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_0_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg6;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg5 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_toReg6 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed6;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_or3 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_or4 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_or3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_or5 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed5 & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_or4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu23_consumed6 & SE_out_i_llvm_fpga_pipeline_keep_going_relu23_or5);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V4 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg4);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V5 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg5);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_V6 = SE_out_i_llvm_fpga_pipeline_keep_going_relu23_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_relu23_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_relu23_wireValid = i_llvm_fpga_pipeline_keep_going_relu23_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_relu240(STALLENABLE,1810)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_relu240_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_relu240_wireValid = i_llvm_fpga_push_i1_notexitcond_relu240_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i2_cleanups_pop24_relu22(BITJOIN,1686)
    assign bubble_join_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_q = i_llvm_fpga_pop_i2_cleanups_pop24_relu22_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_relu22(BITSELECT,1687)
    assign bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_q[1:0]);

    // i_first_cleanup_relu216_sel_x(BITSELECT,66)@73
    assign i_first_cleanup_relu216_sel_x_b = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_b[0:0];

    // i_exitcond_relu221_cmp_nsign(LOGICAL,332)@73
    assign i_exitcond_relu221_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_b[4:4]));

    // i_llvm_fpga_push_i1_notexitcond_relu240(BLACKBOX,137)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    relu2_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_relu240 (
        .in_data_in(i_exitcond_relu221_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_relu23_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_relu216_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_relu240_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_relu240_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_relu240_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_relu240_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_relu240_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_relu245(STALLENABLE,1798)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_relu245_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_relu245_wireValid = i_llvm_fpga_push_i1_lastiniteration_relu245_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration_relu245(BLACKBOX,131)@140
    // in in_stall_in@20000000
    // out out_data_out@141
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@141
    relu2_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_relu245 (
        .in_data_in(SR_SE_i_next_initerations_relu218_vt_select_0_D0),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_relu23_out_initeration_stall_out),
        .in_keep_going(SR_SE_i_next_initerations_relu218_vt_select_0_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_relu245_backStall),
        .in_valid_in(SE_i_next_initerations_relu218_vt_select_0_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_relu245_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_relu245_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_relu245_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_relu245_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_relu23(BLACKBOX,115)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    relu2_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_relu23 (
        .in_data_in(redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_relu245_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_relu245_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_relu240_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_relu240_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_relu23_backStall),
        .in_valid_in(SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_V2),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_relu23_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_relu23_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_relu23_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_relu23_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_relu23_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_relu23_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_relu23_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_relu23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0(STALLREG,2195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid <= 1'b0;
            SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid <= SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall & (SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid | SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_i_valid);

            if (SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_data0 <= $unsigned(redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_i_valid = SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_V1;
    // Stall signal propagation
    assign SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall = SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid | ~ (SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_i_valid);

    // Valid
    assign SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_V = SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid == 1'b1 ? SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid : SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_i_valid;

    assign SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_D0 = SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_valid == 1'b1 ? SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_r_data0 : redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_q;

    // bubble_join_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo(BITJOIN,1725)
    assign bubble_join_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_q = redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_data_out;

    // bubble_select_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo(BITSELECT,1726)
    assign bubble_select_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_b = $unsigned(bubble_join_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_q[0:0]);

    // SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo(STALLREG,2212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_r_valid <= 1'b0;
            SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_r_data0 <= 1'bx;
            SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_r_valid <= SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_backStall & (SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_r_valid | SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_i_valid);

            if (SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_r_data0 <= $unsigned(bubble_select_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_b);
                SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_r_data1 <= $unsigned(redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_and0 = redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_valid_out;
    assign SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_i_valid = SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_V0 & SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_and0;
    // Stall signal propagation
    assign SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_backStall = SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_r_valid | ~ (SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_i_valid);

    // Valid
    assign SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_V = SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_r_valid == 1'b1 ? SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_r_valid : SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_i_valid;

    // Data0
    assign SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_D0 = SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_r_valid == 1'b1 ? SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_r_data0 : bubble_select_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_b;
    // Data1
    assign SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_D1 = SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_r_valid == 1'b1 ? SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_r_data1 : redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_q;

    // redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1(REG,1623)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_backEN == 1'b1)
        begin
            redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_q <= $unsigned(SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_D0);
        end
    end

    // SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2(STALLREG,2194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_r_valid <= 1'b0;
            SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_r_valid <= SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_backStall & (SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_r_valid | SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_i_valid);

            if (SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_r_data0 <= $unsigned(redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_i_valid = SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_V0;
    // Stall signal propagation
    assign SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_backStall = SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_r_valid | ~ (SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_i_valid);

    // Valid
    assign SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_V = SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_r_valid == 1'b1 ? SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_r_valid : SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_i_valid;

    assign SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_D0 = SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_r_valid == 1'b1 ? SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_r_data0 : redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_1_q;

    // SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2(STALLENABLE,2028)
    // Valid signal propagation
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_V0 = SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_0;
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_V1 = SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_1;
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_V2 = SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_2;
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_V3 = SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_3;
    // Stall signal propagation
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_s_tv_0 = SR_SE_out_redist43_relu2_B4_merge_reg_aunroll_x_out_data_out_4_tpl_69_fifo_backStall & SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_0;
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_s_tv_1 = SR_SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_0_backStall & SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_1;
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_s_tv_2 = i_llvm_fpga_pipeline_keep_going_relu23_out_stall_out & SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_2;
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_s_tv_3 = i_llvm_fpga_pop_i32_j_017_pop21_relu25_out_stall_out & SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_3;
    // Backward Enable generation
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_or0 = SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_s_tv_0;
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_or1 = SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_s_tv_1 | SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_or0;
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_or2 = SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_s_tv_2 | SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_or1;
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_backEN = ~ (SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_s_tv_3 | SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_v_s_0 = SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_backEN & SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_V;
    // Backward Stall generation
    assign SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_backStall = ~ (SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_0 <= 1'b0;
            SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_1 <= 1'b0;
            SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_2 <= 1'b0;
            SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_backEN == 1'b0)
            begin
                SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_0 <= SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_0 & SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_s_tv_0;
            end
            else
            begin
                SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_0 <= SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_v_s_0;
            end

            if (SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_backEN == 1'b0)
            begin
                SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_1 <= SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_1 & SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_s_tv_1;
            end
            else
            begin
                SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_1 <= SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_v_s_0;
            end

            if (SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_backEN == 1'b0)
            begin
                SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_2 <= SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_2 & SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_s_tv_2;
            end
            else
            begin
                SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_2 <= SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_v_s_0;
            end

            if (SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_backEN == 1'b0)
            begin
                SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_3 <= SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_3 & SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_s_tv_3;
            end
            else
            begin
                SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_R_v_3 <= SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i32_j_017_push21_relu238(STALLENABLE,1818)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_j_017_push21_relu238_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_j_017_push21_relu238_wireValid = i_llvm_fpga_push_i32_j_017_push21_relu238_out_valid_out;

    // c_i32_160(CONSTANT,83)
    assign c_i32_160_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_relu220(ADD,109)@71
    assign i_inc_relu220_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_j_017_pop21_relu25_b};
    assign i_inc_relu220_b = {1'b0, c_i32_160_q};
    assign i_inc_relu220_o = $unsigned(i_inc_relu220_a) + $unsigned(i_inc_relu220_b);
    assign i_inc_relu220_q = i_inc_relu220_o[32:0];

    // bgTrunc_i_inc_relu220_sel_x(BITSELECT,3)@71
    assign bgTrunc_i_inc_relu220_sel_x_b = i_inc_relu220_q[31:0];

    // i_llvm_fpga_push_i32_j_017_push21_relu238(BLACKBOX,141)@71
    // in in_stall_in@20000000
    // out out_data_out@72
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@72
    relu2_i_llvm_fpga_push_i32_j_017_push21_0 thei_llvm_fpga_push_i32_j_017_push21_relu238 (
        .in_data_in(bgTrunc_i_inc_relu220_sel_x_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i32_j_017_pop21_relu25_out_feedback_stall_out_21),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_relu23_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_j_017_push21_relu238_backStall),
        .in_valid_in(SE_bgTrunc_i_inc_relu220_sel_x_V0),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_j_017_push21_relu238_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_j_017_push21_relu238_out_feedback_valid_out_21),
        .out_stall_out(i_llvm_fpga_push_i32_j_017_push21_relu238_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_j_017_push21_relu238_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2(REG,1624)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_backEN == 1'b1)
        begin
            redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_q <= $unsigned(SR_SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_D0);
        end
    end

    // i_llvm_fpga_pop_i32_j_017_pop21_relu25(BLACKBOX,126)@70
    // in in_stall_in@20000000
    // out out_data_out@71
    // out out_feedback_stall_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@71
    relu2_i_llvm_fpga_pop_i32_j_017_pop21_0 thei_llvm_fpga_pop_i32_j_017_pop21_relu25 (
        .in_data_in(c_i32_058_q),
        .in_dir(redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_q),
        .in_feedback_in_21(i_llvm_fpga_push_i32_j_017_push21_relu238_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_j_017_push21_relu238_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_backStall),
        .in_valid_in(SE_redist36_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_69_2_V3),
        .out_data_out(i_llvm_fpga_pop_i32_j_017_pop21_relu25_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_j_017_pop21_relu25_out_feedback_stall_out_21),
        .out_stall_out(i_llvm_fpga_pop_i32_j_017_pop21_relu25_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_j_017_pop21_relu25_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i32_j_017_pop21_relu25(BITJOIN,1696)
    assign bubble_join_i_llvm_fpga_pop_i32_j_017_pop21_relu25_q = i_llvm_fpga_pop_i32_j_017_pop21_relu25_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_j_017_pop21_relu25(BITSELECT,1697)
    assign bubble_select_i_llvm_fpga_pop_i32_j_017_pop21_relu25_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_j_017_pop21_relu25_q[31:0]);

    // i_arrayidx10_relu20_c_i2_03_x(CONSTANT,29)
    assign i_arrayidx10_relu20_c_i2_03_x_q = $unsigned(2'b00);

    // i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,1409)@71
    assign i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_tessel0_2_b, bubble_select_i_llvm_fpga_pop_i32_j_017_pop21_relu25_b, i_arrayidx10_relu20_c_i2_03_x_q};

    // i_arrayidx23_relu20_dupName_0_add_x_p1_of_2(ADD,1334)@70 + 1
    assign i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_D0};
    assign i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_o <= $unsigned(i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_a) + $unsigned(i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_c[0] = i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_o[52];
    assign i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_q = i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_o[51:0];

    // SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25(STALLENABLE,1788)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_fromReg2 <= SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_consumed0 = (~ (SE_bgTrunc_i_inc_relu220_sel_x_backStall) & SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_consumed1 = (~ (SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_consumed2 = (~ (SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_StallValid = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_backStall & SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_toReg0 = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_StallValid & SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_toReg1 = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_StallValid & SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_consumed1;
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_toReg2 = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_StallValid & SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_or0 = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_or1 = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_consumed1 & SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_or0;
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_consumed2 & SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_or1);
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_backStall = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_V0 = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_V1 = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_V2 = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_wireValid = i_llvm_fpga_pop_i32_j_017_pop21_relu25_out_valid_out;

    // SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2(STALLENABLE,1906)
    // Valid signal propagation
    assign SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_V0 = SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_V1 = SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_backStall & SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_or0 = SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_v_s_0 = SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_backEN & SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_R_v_0 & SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_R_v_1 & SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2(STALLREG,2205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_r_valid <= SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_q);
                SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_and0 = SE_i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_pop_i32_j_017_pop21_relu25_V2 & SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_backStall = SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_V = SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_D0 = SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_r_data0 : i_arrayidx23_relu20_dupName_0_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_D1 = SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_r_data1 : i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // i_arrayidx23_relu20_dupName_1_add_x_p1_of_2(ADD,1343)@71 + 1
    assign i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_D0};
    assign i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_o <= $unsigned(i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_a) + $unsigned(i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_c[0] = i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_o[52];
    assign i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q = i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_o[51:0];

    // i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_tessel1_0(BITSELECT,1410)
    assign i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_tessel1_0_b = c_i32_058_q[29:18];

    // i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,1412)@72
    assign i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx23_relu20_dupName_0_add_x_p2_of_2(ADD,1335)@71 + 1
    assign i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_cin = SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_D2;
    assign i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_D1}, i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_o <= $unsigned(i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_a) + $unsigned(i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_q = i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_o[13:1];

    // i_arrayidx23_relu20_dupName_1_add_x_BitSelect_for_a_tessel1_0(BITSELECT,1435)@72
    assign i_arrayidx23_relu20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_q[11:0]);

    // i_arrayidx23_relu20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,1437)@72
    assign i_arrayidx23_relu20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx23_relu20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b};

    // SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2(STALLENABLE,1907)
    // Valid signal propagation
    assign SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_V0 = SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_backStall & SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_v_s_0 = SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_backEN & SR_SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_R_v_0 & SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_tessel1_0(STALLENABLE,1929)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_tessel1_0_V0 = 1'b1;
    assign SE_i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_tessel1_0_V1 = 1'b1;

    // SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0(STALLREG,2211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_valid <= SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_V = SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q;

    // SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2(STALLENABLE,1908)
    // Valid signal propagation
    assign SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_V0 = SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_V1 = SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_backStall & SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_s_tv_1 = SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_or0 = SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_v_s_0 = SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_backEN & SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_R_v_0 & SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_R_v_1 & SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2(STALLREG,2210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_valid <= SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx23_relu20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_and0 = SE_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_and1 = SE_i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_tessel1_0_V1 & SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_i_valid = SE_i_arrayidx23_relu20_dupName_0_add_x_p2_of_2_V0 & SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_backStall = SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_V = SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_D0 = SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_data0 : i_arrayidx23_relu20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_D1 = SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_data1 : i_arrayidx10_relu20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_D2 = SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_r_data2 : i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_c;

    // i_arrayidx23_relu20_dupName_1_add_x_p2_of_2(ADD,1344)@72 + 1
    assign i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_cin = SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_D2;
    assign i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_D1}, i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_o <= $unsigned(i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_a) + $unsigned(i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_q = i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_o[13:1];

    // redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0(REG,1598)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q(BITJOIN,1345)@73
    assign i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_q = {i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_q, redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx23_relu20_dupName_4_trunc_sel_x(BITSELECT,41)@73
    assign i_arrayidx23_relu20_dupName_4_trunc_sel_x_b = i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_q[63:0];

    // join_for_coalesced_delay_3(BITJOIN,1583)
    assign join_for_coalesced_delay_3_q = {i_first_cleanup_xor_relu235_q, i_arrayidx23_relu20_dupName_4_trunc_sel_x_b};

    // SE_out_coalesced_delay_3_fifo(STALLENABLE,2043)
    // Valid signal propagation
    assign SE_out_coalesced_delay_3_fifo_V0 = SE_out_coalesced_delay_3_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_3_fifo_backStall = i_llvm_fpga_mem_memdep_relu254_out_o_stall | ~ (SE_out_coalesced_delay_3_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_3_fifo_and0 = coalesced_delay_3_fifo_valid_out;
    assign SE_out_coalesced_delay_3_fifo_wireValid = i_sfc_s_c0_in_for_body6_relu2s_c0_enter8412_relu251_aunroll_x_out_o_valid & SE_out_coalesced_delay_3_fifo_and0;

    // coalesced_delay_3_fifo(STALLFIFO,1634)
    assign coalesced_delay_3_fifo_valid_in = SE_i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_V0;
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

    // SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0(STALLENABLE,1998)
    // Valid signal propagation
    assign SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_V0 = SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_backStall & SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2(STALLENABLE,1909)
    // Valid signal propagation
    assign SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_V0 = SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_s_tv_0 = SE_i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_backStall & SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_v_s_0 = SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_backEN & SR_SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_R_v_0 & SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q(STALLENABLE,1910)
    // Valid signal propagation
    assign SE_i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_V0 = SE_i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_backStall = coalesced_delay_3_fifo_stall_out | ~ (SE_i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_and0 = SE_i_arrayidx23_relu20_dupName_1_add_x_p2_of_2_V0;
    assign SE_i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_and1 = SE_redist16_i_arrayidx23_relu20_dupName_1_add_x_p1_of_2_q_1_0_V0 & SE_i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_and0;
    assign SE_i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_wireValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_V4 & SE_i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_and1;

    // i_notcmp_relu239(LOGICAL,149)@73
    assign i_notcmp_relu239_q = i_exitcond_relu221_cmp_nsign_q ^ VCC_q;

    // SR_SE_i_masked_relu247(STALLREG,2197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_masked_relu247_r_valid <= 1'b0;
            SR_SE_i_masked_relu247_r_data0 <= 1'bx;
            SR_SE_i_masked_relu247_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_masked_relu247_r_valid <= SE_i_masked_relu247_backStall & (SR_SE_i_masked_relu247_r_valid | SR_SE_i_masked_relu247_i_valid);

            if (SR_SE_i_masked_relu247_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_masked_relu247_r_data0 <= i_notcmp_relu239_q;
                SR_SE_i_masked_relu247_r_data1 <= i_first_cleanup_relu216_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_masked_relu247_and0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_V2;
    assign SR_SE_i_masked_relu247_i_valid = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_V3 & SR_SE_i_masked_relu247_and0;
    // Stall signal propagation
    assign SR_SE_i_masked_relu247_backStall = SR_SE_i_masked_relu247_r_valid | ~ (SR_SE_i_masked_relu247_i_valid);

    // Valid
    assign SR_SE_i_masked_relu247_V = SR_SE_i_masked_relu247_r_valid == 1'b1 ? SR_SE_i_masked_relu247_r_valid : SR_SE_i_masked_relu247_i_valid;

    // Data0
    assign SR_SE_i_masked_relu247_D0 = SR_SE_i_masked_relu247_r_valid == 1'b1 ? SR_SE_i_masked_relu247_r_data0 : i_notcmp_relu239_q;
    // Data1
    assign SR_SE_i_masked_relu247_D1 = SR_SE_i_masked_relu247_r_valid == 1'b1 ? SR_SE_i_masked_relu247_r_data1 : i_first_cleanup_relu216_sel_x_b;

    // SE_in_i_llvm_fpga_push_i1_notexitcond_relu240(STALLENABLE,1809)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_fromReg0 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_fromReg0 <= SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_fromReg1 <= SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond_relu240_out_stall_out) & SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_fromReg0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_consumed1 = (~ (SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_StallValid = SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_backStall & SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_wireValid;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_toReg0 = SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_toReg1 = SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_or0 = SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_wireStall = ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_consumed1 & SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_or0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_backStall = SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_fromReg0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_V1 = SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_and0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_V1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_wireValid = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_V1 & SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_and0;

    // leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl_relu20_shift_x(BITSELECT,318)@73
    assign leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl_relu20_shift_x_in = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_b[0:0];
    assign leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl_relu20_shift_x_b = leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl_relu20_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid320_i_cleanups_shl_relu20_shift_x(BITJOIN,319)@73
    assign leftShiftStage0Idx1_uid320_i_cleanups_shl_relu20_shift_x_q = {leftShiftStage0Idx1Rng1_uid319_i_cleanups_shl_relu20_shift_x_b, GND_q};

    // leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x(MUX,321)@73
    assign leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_b or leftShiftStage0Idx1_uid320_i_cleanups_shl_relu20_shift_x_q)
    begin
        unique case (leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_s)
            1'b0 : leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_b;
            1'b1 : leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_q = leftShiftStage0Idx1_uid320_i_cleanups_shl_relu20_shift_x_q;
            default : leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_relu217_vt_select_1(BITSELECT,92)@73
    assign i_cleanups_shl_relu217_vt_select_1_b = leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_q[1:1];

    // i_cleanups_shl_relu217_vt_join(BITJOIN,91)@73
    assign i_cleanups_shl_relu217_vt_join_q = {i_cleanups_shl_relu217_vt_select_1_b, GND_q};

    // i_or_relu246(LOGICAL,150)@73
    assign i_or_relu246_q = i_notcmp_relu239_q | i_first_cleanup_xor_relu235_q;

    // i_next_cleanups_relu249(MUX,145)@73
    assign i_next_cleanups_relu249_s = i_or_relu246_q;
    always @(i_next_cleanups_relu249_s or bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_b or i_cleanups_shl_relu217_vt_join_q)
    begin
        unique case (i_next_cleanups_relu249_s)
            1'b0 : i_next_cleanups_relu249_q = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_b;
            1'b1 : i_next_cleanups_relu249_q = i_cleanups_shl_relu217_vt_join_q;
            default : i_next_cleanups_relu249_q = 2'b0;
        endcase
    end

    // SE_out_i_llvm_fpga_push_i2_cleanups_push24_relu253(STALLENABLE,1812)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push24_relu253_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push24_relu253_wireValid = i_llvm_fpga_push_i2_cleanups_push24_relu253_out_valid_out;

    // i_llvm_fpga_push_i2_cleanups_push24_relu253(BLACKBOX,138)@73
    // in in_stall_in@20000000
    // out out_data_out@74
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@74
    relu2_i_llvm_fpga_push_i2_cleanups_push24_0 thei_llvm_fpga_push_i2_cleanups_push24_relu253 (
        .in_data_in(SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_D0),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i2_cleanups_pop24_relu22_out_feedback_stall_out_24),
        .in_keep_going(SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_cleanups_push24_relu253_backStall),
        .in_valid_in(SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_V0),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i2_cleanups_push24_relu253_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i2_cleanups_push24_relu253_out_feedback_valid_out_24),
        .out_stall_out(i_llvm_fpga_push_i2_cleanups_push24_relu253_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_cleanups_push24_relu253_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x(STALLENABLE,1847)
    // Valid signal propagation
    assign SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_V0 = SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_wireValid;
    // Backward Stall generation
    assign SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_backStall = i_llvm_fpga_push_i2_cleanups_push24_relu253_out_stall_out | ~ (SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_wireValid = SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_V;

    // SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x(STALLREG,2231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_r_valid <= 1'b0;
            SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_r_data0 <= 2'bxx;
            SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_r_valid <= SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_backStall & (SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_r_valid | SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_i_valid);

            if (SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_r_data0 <= i_next_cleanups_relu249_q;
                SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_r_data1 <= $unsigned(redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_and0 = SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_V1;
    assign SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_and1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_V0 & SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_and0;
    assign SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_i_valid = SE_redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_V0 & SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_and1;
    // Stall signal propagation
    assign SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_backStall = SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_r_valid | ~ (SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_i_valid);

    // Valid
    assign SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_V = SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_r_valid : SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_i_valid;

    // Data0
    assign SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_D0 = SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_r_data0 : i_next_cleanups_relu249_q;
    // Data1
    assign SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_D1 = SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_r_data1 : redist31_i_llvm_fpga_pipeline_keep_going_relu23_out_data_out_2_1_q;

    // i_llvm_fpga_pop_i2_cleanups_pop24_relu22(BLACKBOX,123)@72
    // in in_stall_in@20000000
    // out out_data_out@73
    // out out_feedback_stall_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@73
    relu2_i_llvm_fpga_pop_i2_cleanups_pop24_0 thei_llvm_fpga_pop_i2_cleanups_pop24_relu22 (
        .in_data_in(c_i2_156_q),
        .in_dir(redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i2_cleanups_push24_relu253_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i2_cleanups_push24_relu253_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_backStall),
        .in_valid_in(SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V1),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop24_relu22_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i2_cleanups_pop24_relu22_out_feedback_stall_out_24),
        .out_stall_out(i_llvm_fpga_pop_i2_cleanups_pop24_relu22_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_cleanups_pop24_relu22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22(STALLENABLE,1782)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg2 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg3 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg4 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_consumed0 = (~ (SR_SE_leftShiftStage0_uid322_i_cleanups_shl_relu20_shift_x_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_relu240_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_consumed2 = (~ (SR_SE_i_masked_relu247_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_consumed3 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_consumed4 = (~ (SE_i_arrayidx23_relu20_dupName_1_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_StallValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_backStall & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_toReg0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_toReg1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_consumed1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_toReg2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_consumed2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_toReg3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_consumed3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_toReg4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_or0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_or1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_consumed1 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_or0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_or2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_consumed2 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_or1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_or3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_consumed3 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_or2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_consumed4 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_or3);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_backStall = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_V0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_V1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_V2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_V3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_V4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_wireValid = i_llvm_fpga_pop_i2_cleanups_pop24_relu22_out_valid_out;

    // SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0(STALLENABLE,1999)
    // Valid signal propagation
    assign SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_V0 = SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_backStall & SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2(STALLENABLE,1902)
    // Valid signal propagation
    assign SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_V0 = SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_backStall & SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_v_s_0 = SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_backEN & SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_R_v_0 & SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_redist23_i_reduction_relu2_0_relu234_q_2_0(STALLENABLE,2005)
    // Valid signal propagation
    assign SE_redist23_i_reduction_relu2_0_relu234_q_2_0_V0 = SE_redist23_i_reduction_relu2_0_relu234_q_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_reduction_relu2_0_relu234_q_2_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_backStall & SE_redist23_i_reduction_relu2_0_relu234_q_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_reduction_relu2_0_relu234_q_2_0_backEN = ~ (SE_redist23_i_reduction_relu2_0_relu234_q_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_reduction_relu2_0_relu234_q_2_0_v_s_0 = SE_redist23_i_reduction_relu2_0_relu234_q_2_0_backEN & SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_V;
    // Backward Stall generation
    assign SE_redist23_i_reduction_relu2_0_relu234_q_2_0_backStall = ~ (SE_redist23_i_reduction_relu2_0_relu234_q_2_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_reduction_relu2_0_relu234_q_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_reduction_relu2_0_relu234_q_2_0_backEN == 1'b0)
            begin
                SE_redist23_i_reduction_relu2_0_relu234_q_2_0_R_v_0 <= SE_redist23_i_reduction_relu2_0_relu234_q_2_0_R_v_0 & SE_redist23_i_reduction_relu2_0_relu234_q_2_0_s_tv_0;
            end
            else
            begin
                SE_redist23_i_reduction_relu2_0_relu234_q_2_0_R_v_0 <= SE_redist23_i_reduction_relu2_0_relu234_q_2_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26(BLACKBOX,120)@72
    // in in_stall_in@20000000
    // out out_data_out@73
    // out out_feedback_stall_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@73
    relu2_i_llvm_fpga_pop_i1_memdep_phi_pop22_0 thei_llvm_fpga_pop_i1_memdep_phi_pop22_relu26 (
        .in_data_in(GND_q),
        .in_dir(redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i1_memdep_phi_push22_relu255_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i1_memdep_phi_push22_relu255_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_backStall),
        .in_valid_in(SE_redist37_relu2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_71_1_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_out_feedback_stall_out_22),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26(STALLENABLE,1776)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_backStall = i_llvm_fpga_mem_unnamed_relu25_relu248_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_and1 = SE_redist23_i_reduction_relu2_0_relu234_q_2_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_and0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_and2 = SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_and1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_and3 = SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_and2;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_wireValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_relu22_V3 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_and3;

    // SE_out_i_llvm_fpga_mem_unnamed_relu25_relu248(STALLENABLE,1764)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_relu25_relu248_V0 = SE_out_i_llvm_fpga_mem_unnamed_relu25_relu248_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_relu25_relu248_backStall = i_sfc_s_c0_in_for_body6_relu2s_c0_enter8412_relu251_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_relu25_relu248_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_relu25_relu248_wireValid = i_llvm_fpga_mem_unnamed_relu25_relu248_out_o_valid;

    // i_first_cleanup_xor_relu235(LOGICAL,95)@73
    assign i_first_cleanup_xor_relu235_q = i_first_cleanup_relu216_sel_x_b ^ VCC_q;

    // redist23_i_reduction_relu2_0_relu234_q_2_0(REG,1605)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_reduction_relu2_0_relu234_q_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist23_i_reduction_relu2_0_relu234_q_2_0_backEN == 1'b1)
        begin
            redist23_i_reduction_relu2_0_relu234_q_2_0_q <= $unsigned(SR_SE_redist23_i_reduction_relu2_0_relu234_q_2_0_D0);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26(BITJOIN,1675)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_q = i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26(BITSELECT,1676)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_q[0:0]);

    // i_reduction_relu2_1_relu244(LOGICAL,152)@73
    assign i_reduction_relu2_1_relu244_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_b | redist23_i_reduction_relu2_0_relu234_q_2_0_q;

    // i_arrayidx10_relu20_dupName_1_add_x_p2_of_2(ADD,1317)@72 + 1
    assign i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_D2;
    assign i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_D1}, i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_o <= $unsigned(i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_a) + $unsigned(i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_q = i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_o[13:1];

    // redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0(REG,1599)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx10_relu20_dupName_1_add_x_BitJoin_for_q(BITJOIN,1318)@73
    assign i_arrayidx10_relu20_dupName_1_add_x_BitJoin_for_q_q = {i_arrayidx10_relu20_dupName_1_add_x_p2_of_2_q, redist17_i_arrayidx10_relu20_dupName_1_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx10_relu20_dupName_4_trunc_sel_x(BITSELECT,15)@73
    assign i_arrayidx10_relu20_dupName_4_trunc_sel_x_b = i_arrayidx10_relu20_dupName_1_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_unnamed_relu25_relu248(BLACKBOX,114)@73
    // in in_i_stall@20000000
    // out out_o_readdata@105
    // out out_o_stall@20000000
    // out out_o_valid@105
    // out out_unnamed_relu25_relu2_avm_address@20000000
    // out out_unnamed_relu25_relu2_avm_burstcount@20000000
    // out out_unnamed_relu25_relu2_avm_byteenable@20000000
    // out out_unnamed_relu25_relu2_avm_enable@20000000
    // out out_unnamed_relu25_relu2_avm_read@20000000
    // out out_unnamed_relu25_relu2_avm_write@20000000
    // out out_unnamed_relu25_relu2_avm_writedata@20000000
    relu2_i_llvm_fpga_mem_unnamed_5_relu20 thei_llvm_fpga_mem_unnamed_relu25_relu248 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx10_relu20_dupName_4_trunc_sel_x_b),
        .in_i_dependence(i_reduction_relu2_1_relu244_q),
        .in_i_predicate(i_first_cleanup_xor_relu235_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_relu25_relu248_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_relu26_V0),
        .in_unnamed_relu25_relu2_avm_readdata(in_unnamed_relu25_relu2_avm_readdata),
        .in_unnamed_relu25_relu2_avm_readdatavalid(in_unnamed_relu25_relu2_avm_readdatavalid),
        .in_unnamed_relu25_relu2_avm_waitrequest(in_unnamed_relu25_relu2_avm_waitrequest),
        .in_unnamed_relu25_relu2_avm_writeack(in_unnamed_relu25_relu2_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_relu25_relu248_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_relu25_relu248_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_relu25_relu248_out_o_valid),
        .out_unnamed_relu25_relu2_avm_address(i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_address),
        .out_unnamed_relu25_relu2_avm_burstcount(i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_burstcount),
        .out_unnamed_relu25_relu2_avm_byteenable(i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_byteenable),
        .out_unnamed_relu25_relu2_avm_enable(i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_enable),
        .out_unnamed_relu25_relu2_avm_read(i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_read),
        .out_unnamed_relu25_relu2_avm_write(i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_write),
        .out_unnamed_relu25_relu2_avm_writedata(i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,6)
    assign out_unnamed_relu25_relu2_avm_address = i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_address;
    assign out_unnamed_relu25_relu2_avm_enable = i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_enable;
    assign out_unnamed_relu25_relu2_avm_read = i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_read;
    assign out_unnamed_relu25_relu2_avm_write = i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_write;
    assign out_unnamed_relu25_relu2_avm_writedata = i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_writedata;
    assign out_unnamed_relu25_relu2_avm_byteenable = i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_byteenable;
    assign out_unnamed_relu25_relu2_avm_burstcount = i_llvm_fpga_mem_unnamed_relu25_relu248_out_unnamed_relu25_relu2_avm_burstcount;

    // bubble_join_redist24_i_masked_relu247_q_69_fifo(BITJOIN,1710)
    assign bubble_join_redist24_i_masked_relu247_q_69_fifo_q = redist24_i_masked_relu247_q_69_fifo_data_out;

    // bubble_select_redist24_i_masked_relu247_q_69_fifo(BITSELECT,1711)
    assign bubble_select_redist24_i_masked_relu247_q_69_fifo_b = $unsigned(bubble_join_redist24_i_masked_relu247_q_69_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,7)@142
    assign out_exitcond535_pop29 = bubble_select_i_llvm_fpga_pop_i1_exitcond535_pop29_relu28_b;
    assign out_exitcond828_pop25 = bubble_select_i_llvm_fpga_pop_i1_exitcond828_pop25_relu212_b;
    assign out_masked = bubble_select_redist24_i_masked_relu247_q_69_fifo_b;
    assign out_memdep = bubble_select_i_llvm_fpga_mem_memdep_relu254_b;
    assign out_notcmp1136_pop30 = bubble_select_i_llvm_fpga_pop_i1_notcmp1136_pop30_relu29_b;
    assign out_notcmp1630_pop26 = bubble_select_i_llvm_fpga_pop_i1_notcmp1630_pop26_relu213_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_relu27_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,8)
    assign out_memdep_relu2_avm_address = i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_address;
    assign out_memdep_relu2_avm_enable = i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_enable;
    assign out_memdep_relu2_avm_read = i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_read;
    assign out_memdep_relu2_avm_write = i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_write;
    assign out_memdep_relu2_avm_writedata = i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_writedata;
    assign out_memdep_relu2_avm_byteenable = i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_byteenable;
    assign out_memdep_relu2_avm_burstcount = i_llvm_fpga_mem_memdep_relu254_out_memdep_relu2_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,9)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_relu254_out_lsu_memdep_o_active;

    // ext_sig_sync_out(GPOUT,89)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_relu23_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_relu23_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_relu23_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_relu23_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,225)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_relu23_out_pipeline_valid_out;

    // sync_out(GPOUT,232)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
