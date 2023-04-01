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

// SystemVerilog created from bb_avgpooling1_B4_stall_region
// Created for function/kernel avgpooling1
// SystemVerilog created on Sat Apr  1 13:10:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpooling1_bb_B4_stall_region (
    input wire [63:0] in_unnamed_avgpooling17_avgpooling1_avm_readdata,
    input wire [0:0] in_unnamed_avgpooling17_avgpooling1_avm_writeack,
    input wire [0:0] in_unnamed_avgpooling17_avgpooling1_avm_waitrequest,
    input wire [0:0] in_unnamed_avgpooling17_avgpooling1_avm_readdatavalid,
    output wire [63:0] out_unnamed_avgpooling16_avgpooling1_avm_address,
    output wire [0:0] out_unnamed_avgpooling16_avgpooling1_avm_enable,
    output wire [0:0] out_unnamed_avgpooling16_avgpooling1_avm_read,
    output wire [0:0] out_unnamed_avgpooling16_avgpooling1_avm_write,
    output wire [63:0] out_unnamed_avgpooling16_avgpooling1_avm_writedata,
    output wire [7:0] out_unnamed_avgpooling16_avgpooling1_avm_byteenable,
    output wire [0:0] out_unnamed_avgpooling16_avgpooling1_avm_burstcount,
    output wire [0:0] out_exitcond1139_pop29,
    output wire [0:0] out_exitcond1432_pop25,
    output wire [0:0] out_masked,
    output wire [0:0] out_memdep,
    output wire [0:0] out_notcmp1540_pop30,
    output wire [0:0] out_notcmp2034_pop26,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_unnamed_avgpooling18_avgpooling1_avm_readdata,
    input wire [0:0] in_unnamed_avgpooling18_avgpooling1_avm_writeack,
    input wire [0:0] in_unnamed_avgpooling18_avgpooling1_avm_waitrequest,
    input wire [0:0] in_unnamed_avgpooling18_avgpooling1_avm_readdatavalid,
    output wire [63:0] out_unnamed_avgpooling17_avgpooling1_avm_address,
    output wire [0:0] out_unnamed_avgpooling17_avgpooling1_avm_enable,
    output wire [0:0] out_unnamed_avgpooling17_avgpooling1_avm_read,
    output wire [0:0] out_unnamed_avgpooling17_avgpooling1_avm_write,
    output wire [63:0] out_unnamed_avgpooling17_avgpooling1_avm_writedata,
    output wire [7:0] out_unnamed_avgpooling17_avgpooling1_avm_byteenable,
    output wire [0:0] out_unnamed_avgpooling17_avgpooling1_avm_burstcount,
    input wire [63:0] in_unnamed_avgpooling19_avgpooling1_avm_readdata,
    input wire [0:0] in_unnamed_avgpooling19_avgpooling1_avm_writeack,
    input wire [0:0] in_unnamed_avgpooling19_avgpooling1_avm_waitrequest,
    input wire [0:0] in_unnamed_avgpooling19_avgpooling1_avm_readdatavalid,
    output wire [63:0] out_unnamed_avgpooling18_avgpooling1_avm_address,
    output wire [0:0] out_unnamed_avgpooling18_avgpooling1_avm_enable,
    output wire [0:0] out_unnamed_avgpooling18_avgpooling1_avm_read,
    output wire [0:0] out_unnamed_avgpooling18_avgpooling1_avm_write,
    output wire [63:0] out_unnamed_avgpooling18_avgpooling1_avm_writedata,
    output wire [7:0] out_unnamed_avgpooling18_avgpooling1_avm_byteenable,
    output wire [0:0] out_unnamed_avgpooling18_avgpooling1_avm_burstcount,
    input wire [63:0] in_memdep_avgpooling1_avm_readdata,
    input wire [0:0] in_memdep_avgpooling1_avm_writeack,
    input wire [0:0] in_memdep_avgpooling1_avm_waitrequest,
    input wire [0:0] in_memdep_avgpooling1_avm_readdatavalid,
    output wire [63:0] out_unnamed_avgpooling19_avgpooling1_avm_address,
    output wire [0:0] out_unnamed_avgpooling19_avgpooling1_avm_enable,
    output wire [0:0] out_unnamed_avgpooling19_avgpooling1_avm_read,
    output wire [0:0] out_unnamed_avgpooling19_avgpooling1_avm_write,
    output wire [63:0] out_unnamed_avgpooling19_avgpooling1_avm_writedata,
    output wire [7:0] out_unnamed_avgpooling19_avgpooling1_avm_byteenable,
    output wire [0:0] out_unnamed_avgpooling19_avgpooling1_avm_burstcount,
    output wire [63:0] out_memdep_avgpooling1_avm_address,
    output wire [0:0] out_memdep_avgpooling1_avm_enable,
    output wire [0:0] out_memdep_avgpooling1_avm_read,
    output wire [0:0] out_memdep_avgpooling1_avm_write,
    output wire [63:0] out_memdep_avgpooling1_avm_writedata,
    output wire [7:0] out_memdep_avgpooling1_avm_byteenable,
    output wire [0:0] out_memdep_avgpooling1_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [63:0] in_unnamed_avgpooling16_avgpooling1_avm_readdata,
    input wire [0:0] in_unnamed_avgpooling16_avgpooling1_avm_writeack,
    input wire [0:0] in_unnamed_avgpooling16_avgpooling1_avm_waitrequest,
    input wire [0:0] in_unnamed_avgpooling16_avgpooling1_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpooling13_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpooling13_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond1155,
    input wire [0:0] in_exitcond1431_pop1659,
    input wire [0:0] in_forked,
    input wire [31:0] in_i_026_pop1457,
    input wire [0:0] in_memdep_phi1_pop1558,
    input wire [0:0] in_memdep_phi2_pop1237_pop1962,
    input wire [31:0] in_n_channel_027_pop1135_pop1861,
    input wire [0:0] in_notcmp1556,
    input wire [0:0] in_notcmp2033_pop1760,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] avgpooling1_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] avgpooling1_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] avgpooling1_B4_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] avgpooling1_B4_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] avgpooling1_B4_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] avgpooling1_B4_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] avgpooling1_B4_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] avgpooling1_B4_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] avgpooling1_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] avgpooling1_B4_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] bgTrunc_i_add43_avgpooling124_sel_x_b;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next_avgpooling127_sel_x_b;
    wire [63:0] i_arrayidx10_avgpooling10_dupName_4_trunc_sel_x_b;
    wire [1:0] i_arrayidx10_avgpooling10_c_i2_03_x_q;
    wire [61:0] i_arrayidx10_avgpooling10_narrow_x_b;
    wire [63:0] i_arrayidx10_avgpooling10_shift_join_x_q;
    wire [63:0] i_arrayidx16_avgpooling10_dupName_4_trunc_sel_x_b;
    wire [63:0] i_arrayidx24_avgpooling10_dupName_4_trunc_sel_x_b;
    wire [61:0] i_arrayidx24_avgpooling10_narrow_x_b;
    wire [63:0] i_arrayidx24_avgpooling10_shift_join_x_q;
    wire [63:0] i_arrayidx33_avgpooling10_dupName_4_trunc_sel_x_b;
    wire [63:0] i_arrayidx42_avgpooling10_dupName_4_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_avgpooling118_sel_x_b;
    wire [63:0] i_idxprom13_avgpooling151_sel_x_b;
    wire [63:0] i_idxprom23_avgpooling144_sel_x_b;
    wire [63:0] i_idxprom38_avgpooling150_sel_x_b;
    wire [63:0] i_idxprom7_avgpooling133_sel_x_b;
    wire [63:0] i_idxprom9_avgpooling121_sel_x_b;
    wire [63:0] i_idxprom_avgpooling138_sel_x_b;
    wire [0:0] i_last_initeration_avgpooling143_sel_x_b;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_out_dest_data_out_0_0_1_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_out_dest_data_out_0_0_0_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_out_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body6_avgpooling1s_c0_enter9112_avgpooling168_aunroll_x_out_c0_exit97_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_avgpooling1s_c0_enter9112_avgpooling168_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body6_avgpooling1s_c0_enter9112_avgpooling168_aunroll_x_out_o_valid;
    wire [1:0] c_i2_172_q;
    wire [31:0] c_i32_074_q;
    wire [31:0] c_i32_176_q;
    wire [31:0] c_i32_277_q;
    wire [4:0] c_i5_1275_q;
    wire [4:0] c_i5_179_q;
    wire [31:0] i_add22_avgpooling122_q;
    wire [31:0] i_add22_avgpooling122_vt_join_q;
    wire [30:0] i_add22_avgpooling122_vt_select_31_b;
    wire [32:0] i_add43_avgpooling124_a;
    wire [32:0] i_add43_avgpooling124_b;
    logic [32:0] i_add43_avgpooling124_o;
    wire [32:0] i_add43_avgpooling124_q;
    wire [31:0] i_add_avgpooling132_q;
    wire [31:0] i_add_avgpooling132_vt_join_q;
    wire [30:0] i_add_avgpooling132_vt_select_31_b;
    wire [1:0] i_cleanups_shl_avgpooling119_vt_join_q;
    wire [0:0] i_cleanups_shl_avgpooling119_vt_select_1_b;
    wire [31:0] i_div37_avgpooling131_vt_join_q;
    wire [30:0] i_div37_avgpooling131_vt_select_30_b;
    wire [0:0] i_first_cleanup_xor_avgpooling141_q;
    wire [5:0] i_fpga_indvars_iv_next_avgpooling127_a;
    wire [5:0] i_fpga_indvars_iv_next_avgpooling127_b;
    logic [5:0] i_fpga_indvars_iv_next_avgpooling127_o;
    wire [5:0] i_fpga_indvars_iv_next_avgpooling127_q;
    wire [63:0] i_idxprom13_avgpooling151_vt_join_q;
    wire [30:0] i_idxprom13_avgpooling151_vt_select_31_b;
    wire [63:0] i_idxprom23_avgpooling144_vt_join_q;
    wire [30:0] i_idxprom23_avgpooling144_vt_select_31_b;
    wire [32:0] i_idxprom38_avgpooling150_vt_const_63_q;
    wire [63:0] i_idxprom38_avgpooling150_vt_join_q;
    wire [30:0] i_idxprom38_avgpooling150_vt_select_30_b;
    wire [63:0] i_idxprom7_avgpooling133_vt_join_q;
    wire [31:0] i_idxprom7_avgpooling133_vt_select_31_b;
    wire [63:0] i_idxprom9_avgpooling121_vt_join_q;
    wire [31:0] i_idxprom9_avgpooling121_vt_select_31_b;
    wire [63:0] i_idxprom_avgpooling138_vt_join_q;
    wire [31:0] i_idxprom_avgpooling138_vt_select_31_b;
    wire [0:0] i_llvm_fpga_mem_memdep_avgpooling170_out_lsu_memdep_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_avgpooling170_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_avgpooling170_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_avgpooling170_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpooling13_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpooling13_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpooling13_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpooling13_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpooling13_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpooling13_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpooling13_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_out_feedback_stall_out_25;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_feedback_stall_out_32;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_out_feedback_stall_out_30;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_valid_out;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_out_feedback_valid_out_29;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_out_feedback_valid_out_25;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_avgpooling154_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_avgpooling154_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_avgpooling154_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_avgpooling154_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_out_feedback_valid_out_32;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_out_feedback_valid_out_28;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_out_feedback_valid_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_out_feedback_valid_out_26;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_avgpooling148_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_avgpooling148_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_avgpooling148_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_avgpooling148_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push24_avgpooling166_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push24_avgpooling166_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push24_avgpooling166_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push24_avgpooling166_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push23_avgpooling142_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push23_avgpooling142_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push23_avgpooling142_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push23_avgpooling142_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_j_025_push21_avgpooling146_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_j_025_push21_avgpooling146_out_feedback_valid_out_21;
    wire [0:0] i_llvm_fpga_push_i32_j_025_push21_avgpooling146_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_j_025_push21_avgpooling146_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_out_valid_out;
    wire [0:0] i_masked_avgpooling157_qi;
    reg [0:0] i_masked_avgpooling157_q;
    wire [0:0] i_next_cleanups_avgpooling163_s;
    reg [1:0] i_next_cleanups_avgpooling163_q;
    wire [1:0] i_next_initerations_avgpooling120_vt_join_q;
    wire [0:0] i_next_initerations_avgpooling120_vt_select_0_b;
    wire [0:0] i_notcmp_avgpooling147_q;
    wire [0:0] i_or_avgpooling156_q;
    wire [0:0] i_reduction_avgpooling1_0_avgpooling140_qi;
    reg [0:0] i_reduction_avgpooling1_0_avgpooling140_q;
    wire [0:0] i_reduction_avgpooling1_1_avgpooling153_q;
    wire [35:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_0_qint;
    wire [60:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_join_1_q;
    wire [42:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_2_q;
    wire [42:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_3_qint;
    wire [70:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_join_4_q;
    wire [35:0] i_arrayidx10_avgpooling10_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx10_avgpooling10_mult_x_sums_align_0_qint;
    wire [65:0] i_arrayidx10_avgpooling10_mult_x_sums_join_1_q;
    wire [47:0] i_arrayidx10_avgpooling10_mult_x_sums_align_2_q;
    wire [47:0] i_arrayidx10_avgpooling10_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx10_avgpooling10_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx10_avgpooling10_mult_x_sums_align_3_qint;
    wire [75:0] i_arrayidx10_avgpooling10_mult_x_sums_join_4_q;
    wire [35:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_0_qint;
    wire [60:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_join_1_q;
    wire [42:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_2_q;
    wire [42:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_3_qint;
    wire [70:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_join_4_q;
    wire [35:0] i_arrayidx16_avgpooling10_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx16_avgpooling10_mult_x_sums_align_0_qint;
    wire [65:0] i_arrayidx16_avgpooling10_mult_x_sums_join_1_q;
    wire [47:0] i_arrayidx16_avgpooling10_mult_x_sums_align_2_q;
    wire [47:0] i_arrayidx16_avgpooling10_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx16_avgpooling10_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx16_avgpooling10_mult_x_sums_align_3_qint;
    wire [75:0] i_arrayidx16_avgpooling10_mult_x_sums_join_4_q;
    wire [35:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_0_qint;
    wire [60:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_join_1_q;
    wire [42:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_2_q;
    wire [42:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_3_qint;
    wire [70:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_join_4_q;
    wire [35:0] i_arrayidx24_avgpooling10_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx24_avgpooling10_mult_x_sums_align_0_qint;
    wire [65:0] i_arrayidx24_avgpooling10_mult_x_sums_join_1_q;
    wire [47:0] i_arrayidx24_avgpooling10_mult_x_sums_align_2_q;
    wire [47:0] i_arrayidx24_avgpooling10_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx24_avgpooling10_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx24_avgpooling10_mult_x_sums_align_3_qint;
    wire [75:0] i_arrayidx24_avgpooling10_mult_x_sums_join_4_q;
    wire [35:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_0_qint;
    wire [60:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_join_1_q;
    wire [42:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_2_q;
    wire [42:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_3_qint;
    wire [70:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_join_4_q;
    wire [35:0] i_arrayidx33_avgpooling10_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx33_avgpooling10_mult_x_sums_align_0_qint;
    wire [65:0] i_arrayidx33_avgpooling10_mult_x_sums_join_1_q;
    wire [47:0] i_arrayidx33_avgpooling10_mult_x_sums_align_2_q;
    wire [47:0] i_arrayidx33_avgpooling10_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx33_avgpooling10_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx33_avgpooling10_mult_x_sums_align_3_qint;
    wire [75:0] i_arrayidx33_avgpooling10_mult_x_sums_join_4_q;
    wire [35:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_0_qint;
    wire [59:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_join_1_q;
    wire [41:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_3_qint;
    wire [69:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_join_4_q;
    wire [35:0] i_arrayidx42_avgpooling10_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx42_avgpooling10_mult_x_sums_align_0_qint;
    wire [63:0] i_arrayidx42_avgpooling10_mult_x_sums_join_1_q;
    wire [45:0] i_arrayidx42_avgpooling10_mult_x_sums_align_2_q;
    wire [45:0] i_arrayidx42_avgpooling10_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx42_avgpooling10_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx42_avgpooling10_mult_x_sums_align_3_qint;
    wire [73:0] i_arrayidx42_avgpooling10_mult_x_sums_join_4_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid570_i_cleanups_shl_avgpooling10_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid570_i_cleanups_shl_avgpooling10_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid571_i_cleanups_shl_avgpooling10_shift_x_q;
    wire [0:0] leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_s;
    reg [1:0] leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid577_i_div37_avgpooling10_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid579_i_div37_avgpooling10_shift_x_q;
    wire [0:0] rightShiftStage0_uid581_i_div37_avgpooling10_shift_x_s;
    reg [31:0] rightShiftStage0_uid581_i_div37_avgpooling10_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid585_i_div40_avgpooling10_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid587_i_div40_avgpooling10_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid593_i_next_initerations_avgpooling10_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid595_i_next_initerations_avgpooling10_shift_x_q;
    wire [0:0] rightShiftStage0_uid597_i_next_initerations_avgpooling10_shift_x_s;
    reg [1:0] rightShiftStage0_uid597_i_next_initerations_avgpooling10_shift_x_q;
    wire [0:0] i_exitcond_avgpooling125_cmp_nsign_q;
    wire [18:0] xIfSign_mergedSignalTM_uid626_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q;
    wire [2:0] padACst_uid630_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q;
    wire [21:0] aPostPad_uid631_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q;
    wire [22:0] sub_uid632_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_a;
    wire [22:0] sub_uid632_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_b;
    logic [22:0] sub_uid632_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_o;
    wire [22:0] sub_uid632_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q;
    wire [3:0] sR_bottomExtension_uid635_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q;
    wire [20:0] sR_bottomRange_uid636_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_in;
    wire [20:0] sR_bottomRange_uid636_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_b;
    wire [24:0] sR_mergedSignalTM_uid637_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q;
    wire [18:0] xIfSign_mergedSignalTM_uid689_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_q;
    wire [21:0] aPostPad_uid694_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_q;
    wire [22:0] sub_uid695_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_a;
    wire [22:0] sub_uid695_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_b;
    logic [22:0] sub_uid695_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_o;
    wire [22:0] sub_uid695_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_q;
    wire [20:0] sR_bottomRange_uid699_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_in;
    wire [20:0] sR_bottomRange_uid699_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_b;
    wire [24:0] sR_mergedSignalTM_uid700_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_q;
    wire [18:0] xIfSign_mergedSignalTM_uid752_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_q;
    wire [21:0] aPostPad_uid757_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_q;
    wire [22:0] sub_uid758_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_a;
    wire [22:0] sub_uid758_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_b;
    logic [22:0] sub_uid758_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_o;
    wire [22:0] sub_uid758_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_q;
    wire [20:0] sR_bottomRange_uid762_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_in;
    wire [20:0] sR_bottomRange_uid762_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_b;
    wire [24:0] sR_mergedSignalTM_uid763_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_q;
    wire [10:0] xIfSign_mergedSignalTM_uid815_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_q;
    wire [13:0] aPostPad_uid820_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_q;
    wire [14:0] sub_uid821_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_a;
    wire [14:0] sub_uid821_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_b;
    logic [14:0] sub_uid821_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_o;
    wire [14:0] sub_uid821_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_q;
    wire [12:0] sR_bottomRange_uid825_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_in;
    wire [12:0] sR_bottomRange_uid825_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_b;
    wire [16:0] sR_mergedSignalTM_uid826_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_q;
    wire [0:0] lowRangeB_uid849_i_arrayidx10_avgpooling10_mult_x_im0_in;
    wire [0:0] lowRangeB_uid849_i_arrayidx10_avgpooling10_mult_x_im0_b;
    wire [16:0] highBBits_uid850_i_arrayidx10_avgpooling10_mult_x_im0_b;
    wire [18:0] addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_a;
    wire [18:0] addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_b;
    logic [18:0] addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_o;
    wire [18:0] addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_q;
    wire [19:0] add_uid852_i_arrayidx10_avgpooling10_mult_x_im0_q;
    wire [3:0] lowRangeB_uid854_i_arrayidx10_avgpooling10_mult_x_im0_in;
    wire [3:0] lowRangeB_uid854_i_arrayidx10_avgpooling10_mult_x_im0_b;
    wire [13:0] highBBits_uid855_i_arrayidx10_avgpooling10_mult_x_im0_b;
    wire [20:0] a_subconst_49_sumAHighB_uid856_i_arrayidx10_avgpooling10_mult_x_im0_a;
    wire [20:0] a_subconst_49_sumAHighB_uid856_i_arrayidx10_avgpooling10_mult_x_im0_b;
    logic [20:0] a_subconst_49_sumAHighB_uid856_i_arrayidx10_avgpooling10_mult_x_im0_o;
    wire [20:0] a_subconst_49_sumAHighB_uid856_i_arrayidx10_avgpooling10_mult_x_im0_q;
    wire [24:0] a_subconst_49_uid857_i_arrayidx10_avgpooling10_mult_x_im0_q;
    wire [5:0] sR_bottomExtension_uid860_i_arrayidx10_avgpooling10_mult_x_im0_q;
    wire [23:0] sR_bottomRange_uid861_i_arrayidx10_avgpooling10_mult_x_im0_in;
    wire [23:0] sR_bottomRange_uid861_i_arrayidx10_avgpooling10_mult_x_im0_b;
    wire [29:0] sR_mergedSignalTM_uid862_i_arrayidx10_avgpooling10_mult_x_im0_q;
    wire [0:0] lowRangeB_uid918_i_arrayidx10_avgpooling10_mult_x_im3_in;
    wire [0:0] lowRangeB_uid918_i_arrayidx10_avgpooling10_mult_x_im3_b;
    wire [16:0] highBBits_uid919_i_arrayidx10_avgpooling10_mult_x_im3_b;
    wire [18:0] addsumAHighB_uid920_i_arrayidx10_avgpooling10_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid920_i_arrayidx10_avgpooling10_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid920_i_arrayidx10_avgpooling10_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid920_i_arrayidx10_avgpooling10_mult_x_im3_q;
    wire [19:0] add_uid921_i_arrayidx10_avgpooling10_mult_x_im3_q;
    wire [3:0] lowRangeB_uid923_i_arrayidx10_avgpooling10_mult_x_im3_in;
    wire [3:0] lowRangeB_uid923_i_arrayidx10_avgpooling10_mult_x_im3_b;
    wire [13:0] highBBits_uid924_i_arrayidx10_avgpooling10_mult_x_im3_b;
    wire [20:0] a_subconst_49_sumAHighB_uid925_i_arrayidx10_avgpooling10_mult_x_im3_a;
    wire [20:0] a_subconst_49_sumAHighB_uid925_i_arrayidx10_avgpooling10_mult_x_im3_b;
    logic [20:0] a_subconst_49_sumAHighB_uid925_i_arrayidx10_avgpooling10_mult_x_im3_o;
    wire [20:0] a_subconst_49_sumAHighB_uid925_i_arrayidx10_avgpooling10_mult_x_im3_q;
    wire [24:0] a_subconst_49_uid926_i_arrayidx10_avgpooling10_mult_x_im3_q;
    wire [23:0] sR_bottomRange_uid930_i_arrayidx10_avgpooling10_mult_x_im3_in;
    wire [23:0] sR_bottomRange_uid930_i_arrayidx10_avgpooling10_mult_x_im3_b;
    wire [29:0] sR_mergedSignalTM_uid931_i_arrayidx10_avgpooling10_mult_x_im3_q;
    wire [0:0] lowRangeB_uid987_i_arrayidx10_avgpooling10_mult_x_im6_in;
    wire [0:0] lowRangeB_uid987_i_arrayidx10_avgpooling10_mult_x_im6_b;
    wire [16:0] highBBits_uid988_i_arrayidx10_avgpooling10_mult_x_im6_b;
    wire [18:0] addsumAHighB_uid989_i_arrayidx10_avgpooling10_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid989_i_arrayidx10_avgpooling10_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid989_i_arrayidx10_avgpooling10_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid989_i_arrayidx10_avgpooling10_mult_x_im6_q;
    wire [19:0] add_uid990_i_arrayidx10_avgpooling10_mult_x_im6_q;
    wire [3:0] lowRangeB_uid992_i_arrayidx10_avgpooling10_mult_x_im6_in;
    wire [3:0] lowRangeB_uid992_i_arrayidx10_avgpooling10_mult_x_im6_b;
    wire [13:0] highBBits_uid993_i_arrayidx10_avgpooling10_mult_x_im6_b;
    wire [20:0] a_subconst_49_sumAHighB_uid994_i_arrayidx10_avgpooling10_mult_x_im6_a;
    wire [20:0] a_subconst_49_sumAHighB_uid994_i_arrayidx10_avgpooling10_mult_x_im6_b;
    logic [20:0] a_subconst_49_sumAHighB_uid994_i_arrayidx10_avgpooling10_mult_x_im6_o;
    wire [20:0] a_subconst_49_sumAHighB_uid994_i_arrayidx10_avgpooling10_mult_x_im6_q;
    wire [24:0] a_subconst_49_uid995_i_arrayidx10_avgpooling10_mult_x_im6_q;
    wire [23:0] sR_bottomRange_uid999_i_arrayidx10_avgpooling10_mult_x_im6_in;
    wire [23:0] sR_bottomRange_uid999_i_arrayidx10_avgpooling10_mult_x_im6_b;
    wire [29:0] sR_mergedSignalTM_uid1000_i_arrayidx10_avgpooling10_mult_x_im6_q;
    wire [0:0] lowRangeB_uid1056_i_arrayidx10_avgpooling10_mult_x_im9_in;
    wire [0:0] lowRangeB_uid1056_i_arrayidx10_avgpooling10_mult_x_im9_b;
    wire [8:0] highBBits_uid1057_i_arrayidx10_avgpooling10_mult_x_im9_b;
    wire [10:0] addsumAHighB_uid1058_i_arrayidx10_avgpooling10_mult_x_im9_a;
    wire [10:0] addsumAHighB_uid1058_i_arrayidx10_avgpooling10_mult_x_im9_b;
    logic [10:0] addsumAHighB_uid1058_i_arrayidx10_avgpooling10_mult_x_im9_o;
    wire [10:0] addsumAHighB_uid1058_i_arrayidx10_avgpooling10_mult_x_im9_q;
    wire [11:0] add_uid1059_i_arrayidx10_avgpooling10_mult_x_im9_q;
    wire [3:0] lowRangeB_uid1061_i_arrayidx10_avgpooling10_mult_x_im9_in;
    wire [3:0] lowRangeB_uid1061_i_arrayidx10_avgpooling10_mult_x_im9_b;
    wire [5:0] highBBits_uid1062_i_arrayidx10_avgpooling10_mult_x_im9_b;
    wire [12:0] a_subconst_49_sumAHighB_uid1063_i_arrayidx10_avgpooling10_mult_x_im9_a;
    wire [12:0] a_subconst_49_sumAHighB_uid1063_i_arrayidx10_avgpooling10_mult_x_im9_b;
    logic [12:0] a_subconst_49_sumAHighB_uid1063_i_arrayidx10_avgpooling10_mult_x_im9_o;
    wire [12:0] a_subconst_49_sumAHighB_uid1063_i_arrayidx10_avgpooling10_mult_x_im9_q;
    wire [16:0] a_subconst_49_uid1064_i_arrayidx10_avgpooling10_mult_x_im9_q;
    wire [15:0] sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_in;
    wire [15:0] sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b;
    wire [21:0] sR_mergedSignalTM_uid1069_i_arrayidx10_avgpooling10_mult_x_im9_q;
    wire [18:0] xIfSign_mergedSignalTM_uid1130_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_q;
    wire [21:0] aPostPad_uid1135_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_q;
    wire [22:0] sub_uid1136_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_a;
    wire [22:0] sub_uid1136_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_b;
    logic [22:0] sub_uid1136_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_o;
    wire [22:0] sub_uid1136_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_q;
    wire [20:0] sR_bottomRange_uid1140_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_in;
    wire [20:0] sR_bottomRange_uid1140_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_b;
    wire [24:0] sR_mergedSignalTM_uid1141_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_q;
    wire [18:0] xIfSign_mergedSignalTM_uid1193_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_q;
    wire [21:0] aPostPad_uid1198_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_q;
    wire [22:0] sub_uid1199_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_a;
    wire [22:0] sub_uid1199_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_b;
    logic [22:0] sub_uid1199_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_o;
    wire [22:0] sub_uid1199_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_q;
    wire [20:0] sR_bottomRange_uid1203_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_in;
    wire [20:0] sR_bottomRange_uid1203_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_b;
    wire [24:0] sR_mergedSignalTM_uid1204_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_q;
    wire [18:0] xIfSign_mergedSignalTM_uid1256_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_q;
    wire [21:0] aPostPad_uid1261_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_q;
    wire [22:0] sub_uid1262_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_a;
    wire [22:0] sub_uid1262_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_b;
    logic [22:0] sub_uid1262_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_o;
    wire [22:0] sub_uid1262_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_q;
    wire [20:0] sR_bottomRange_uid1266_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_in;
    wire [20:0] sR_bottomRange_uid1266_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_b;
    wire [24:0] sR_mergedSignalTM_uid1267_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_q;
    wire [10:0] xIfSign_mergedSignalTM_uid1319_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_q;
    wire [13:0] aPostPad_uid1324_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_q;
    wire [14:0] sub_uid1325_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_a;
    wire [14:0] sub_uid1325_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_b;
    logic [14:0] sub_uid1325_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_o;
    wire [14:0] sub_uid1325_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_q;
    wire [12:0] sR_bottomRange_uid1329_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_in;
    wire [12:0] sR_bottomRange_uid1329_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_b;
    wire [16:0] sR_mergedSignalTM_uid1330_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_q;
    wire [18:0] xIfSign_mergedSignalTM_uid2642_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_q;
    wire [21:0] aPostPad_uid2647_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_q;
    wire [22:0] sub_uid2648_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_a;
    wire [22:0] sub_uid2648_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_b;
    logic [22:0] sub_uid2648_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_o;
    wire [22:0] sub_uid2648_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_q;
    wire [20:0] sR_bottomRange_uid2652_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_in;
    wire [20:0] sR_bottomRange_uid2652_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_b;
    wire [23:0] sR_mergedSignalTM_uid2653_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_q;
    wire [18:0] xIfSign_mergedSignalTM_uid2705_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_q;
    wire [21:0] aPostPad_uid2710_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_q;
    wire [22:0] sub_uid2711_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_a;
    wire [22:0] sub_uid2711_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_b;
    logic [22:0] sub_uid2711_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_o;
    wire [22:0] sub_uid2711_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_q;
    wire [20:0] sR_bottomRange_uid2715_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_in;
    wire [20:0] sR_bottomRange_uid2715_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_b;
    wire [23:0] sR_mergedSignalTM_uid2716_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_q;
    wire [18:0] xIfSign_mergedSignalTM_uid2768_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_q;
    wire [21:0] aPostPad_uid2773_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_q;
    wire [22:0] sub_uid2774_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_a;
    wire [22:0] sub_uid2774_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_b;
    logic [22:0] sub_uid2774_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_o;
    wire [22:0] sub_uid2774_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_q;
    wire [20:0] sR_bottomRange_uid2778_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_in;
    wire [20:0] sR_bottomRange_uid2778_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_b;
    wire [23:0] sR_mergedSignalTM_uid2779_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_q;
    wire [10:0] xIfSign_mergedSignalTM_uid2831_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_q;
    wire [13:0] aPostPad_uid2836_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_q;
    wire [14:0] sub_uid2837_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_a;
    wire [14:0] sub_uid2837_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b;
    logic [14:0] sub_uid2837_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_o;
    wire [14:0] sub_uid2837_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_q;
    wire [12:0] sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_in;
    wire [12:0] sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b;
    wire [15:0] sR_mergedSignalTM_uid2842_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_q;
    wire [27:0] sR_mergedSignalTM_uid2878_i_arrayidx42_avgpooling10_mult_x_im0_q;
    wire [27:0] sR_mergedSignalTM_uid2947_i_arrayidx42_avgpooling10_mult_x_im3_q;
    wire [27:0] sR_mergedSignalTM_uid3016_i_arrayidx42_avgpooling10_mult_x_im6_q;
    wire [19:0] sR_mergedSignalTM_uid3085_i_arrayidx42_avgpooling10_mult_x_im9_q;
    wire [52:0] i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx10_avgpooling10_dupName_1_add_x_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_b;
    wire [52:0] i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx10_avgpooling10_dupName_1_add_x_BitJoin_for_q_q;
    wire [64:0] i_arrayidx10_avgpooling10_add_x_BitExpansion_for_a_q;
    wire [51:0] i_arrayidx10_avgpooling10_add_x_BitSelect_for_a_b;
    wire [12:0] i_arrayidx10_avgpooling10_add_x_BitSelect_for_a_c;
    wire [52:0] i_arrayidx10_avgpooling10_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx10_avgpooling10_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx10_avgpooling10_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx10_avgpooling10_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx10_avgpooling10_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx10_avgpooling10_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx10_avgpooling10_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx10_avgpooling10_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx10_avgpooling10_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx10_avgpooling10_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx16_avgpooling10_dupName_0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx16_avgpooling10_dupName_0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx16_avgpooling10_dupName_0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx16_avgpooling10_dupName_0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx16_avgpooling10_dupName_0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx16_avgpooling10_dupName_0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx16_avgpooling10_dupName_0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx16_avgpooling10_dupName_0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx16_avgpooling10_dupName_0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx16_avgpooling10_dupName_0_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx16_avgpooling10_dupName_1_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx16_avgpooling10_dupName_1_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx16_avgpooling10_dupName_1_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx16_avgpooling10_dupName_1_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx16_avgpooling10_dupName_1_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx16_avgpooling10_dupName_1_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx16_avgpooling10_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx16_avgpooling10_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx16_avgpooling10_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx16_avgpooling10_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx16_avgpooling10_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx16_avgpooling10_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx16_avgpooling10_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx16_avgpooling10_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx16_avgpooling10_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx16_avgpooling10_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx24_avgpooling10_dupName_0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx24_avgpooling10_dupName_0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx24_avgpooling10_dupName_0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx24_avgpooling10_dupName_0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx24_avgpooling10_dupName_0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx24_avgpooling10_dupName_0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx24_avgpooling10_dupName_0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx24_avgpooling10_dupName_0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx24_avgpooling10_dupName_0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx24_avgpooling10_dupName_0_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx24_avgpooling10_dupName_1_add_x_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx24_avgpooling10_dupName_1_add_x_BitSelect_for_b_b;
    wire [52:0] i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx24_avgpooling10_dupName_1_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx24_avgpooling10_dupName_1_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx24_avgpooling10_dupName_1_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx24_avgpooling10_dupName_1_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx24_avgpooling10_dupName_1_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx24_avgpooling10_dupName_1_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx24_avgpooling10_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx24_avgpooling10_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx24_avgpooling10_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx24_avgpooling10_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx24_avgpooling10_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx24_avgpooling10_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx24_avgpooling10_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx24_avgpooling10_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx24_avgpooling10_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx24_avgpooling10_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx33_avgpooling10_dupName_0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx33_avgpooling10_dupName_0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx33_avgpooling10_dupName_0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx33_avgpooling10_dupName_0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx33_avgpooling10_dupName_0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx33_avgpooling10_dupName_0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx33_avgpooling10_dupName_0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx33_avgpooling10_dupName_0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx33_avgpooling10_dupName_0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx33_avgpooling10_dupName_0_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx33_avgpooling10_dupName_1_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx33_avgpooling10_dupName_1_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx33_avgpooling10_dupName_1_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx33_avgpooling10_dupName_1_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx33_avgpooling10_dupName_1_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx33_avgpooling10_dupName_1_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx33_avgpooling10_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx33_avgpooling10_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx33_avgpooling10_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx33_avgpooling10_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx33_avgpooling10_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx33_avgpooling10_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx33_avgpooling10_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx33_avgpooling10_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx33_avgpooling10_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx33_avgpooling10_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_q;
    wire [64:0] i_arrayidx42_avgpooling10_add_x_BitExpansion_for_a_q;
    wire [51:0] i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_b;
    wire [12:0] i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c;
    wire [52:0] i_arrayidx42_avgpooling10_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx42_avgpooling10_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx42_avgpooling10_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx42_avgpooling10_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx42_avgpooling10_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx42_avgpooling10_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx42_avgpooling10_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx42_avgpooling10_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx42_avgpooling10_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx42_avgpooling10_add_x_p2_of_2_q;
    wire [71:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q;
    wire [10:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q;
    wire [71:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    wire [19:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c;
    wire [51:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    wire [19:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c;
    wire [52:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [21:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [21:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [21:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [19:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [76:0] i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a_q;
    wire [76:0] i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    wire [24:0] i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_c;
    wire [51:0] i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    wire [24:0] i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_c;
    wire [52:0] i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [26:0] i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [26:0] i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [26:0] i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [24:0] i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [71:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q;
    wire [71:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    wire [19:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c;
    wire [51:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    wire [19:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c;
    wire [52:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [21:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [21:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [21:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [19:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [76:0] i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a_q;
    wire [76:0] i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    wire [24:0] i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_c;
    wire [51:0] i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    wire [24:0] i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_c;
    wire [52:0] i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [26:0] i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [26:0] i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [26:0] i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [24:0] i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [71:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q;
    wire [71:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    wire [19:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c;
    wire [51:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    wire [19:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c;
    wire [52:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [21:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [21:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [21:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [19:0] i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [76:0] i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a_q;
    wire [76:0] i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    wire [24:0] i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_c;
    wire [51:0] i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    wire [24:0] i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_c;
    wire [52:0] i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [26:0] i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [26:0] i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [26:0] i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [24:0] i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [71:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q;
    wire [71:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    wire [19:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c;
    wire [51:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    wire [19:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c;
    wire [52:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [21:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [21:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [21:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [19:0] i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [76:0] i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a_q;
    wire [76:0] i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    wire [24:0] i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_c;
    wire [51:0] i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    wire [24:0] i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_c;
    wire [52:0] i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [26:0] i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [26:0] i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [26:0] i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [24:0] i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [70:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q;
    wire [70:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    wire [18:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c;
    wire [51:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    wire [18:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c;
    wire [52:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [20:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [20:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [20:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [18:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [74:0] i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a_q;
    wire [74:0] i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    wire [22:0] i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_c;
    wire [51:0] i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    wire [22:0] i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_c;
    wire [52:0] i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [24:0] i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [24:0] i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [24:0] i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [22:0] i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [30:0] rightShiftStage0_uid589_i_div40_avgpooling10_shift_x_BitSelect_for_b_b;
    wire [30:0] rightShiftStage0_uid589_i_div40_avgpooling10_shift_x_BitSelect_for_a_b;
    wire [0:0] rightShiftStage0_uid589_i_div40_avgpooling10_shift_x_p0_s;
    reg [30:0] rightShiftStage0_uid589_i_div40_avgpooling10_shift_x_p0_q;
    wire [11:0] i_arrayidx10_avgpooling10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx10_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx10_avgpooling10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx10_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx10_avgpooling10_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx10_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx16_avgpooling10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx16_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx16_avgpooling10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx16_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx16_avgpooling10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx16_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx16_avgpooling10_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx16_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx24_avgpooling10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx24_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx24_avgpooling10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx24_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx24_avgpooling10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx24_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx24_avgpooling10_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx24_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx33_avgpooling10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx33_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx33_avgpooling10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx33_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx33_avgpooling10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx33_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx33_avgpooling10_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx33_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx42_avgpooling10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx42_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx42_avgpooling10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx42_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [12:0] i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx42_avgpooling10_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx42_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [17:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_d;
    wire [9:0] i_arrayidx16_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_e;
    wire [30:0] i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in;
    wire [18:0] i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b;
    wire [11:0] i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c;
    wire [17:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_d;
    wire [9:0] i_arrayidx42_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_e;
    wire [17:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_d;
    wire [9:0] i_arrayidx10_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_e;
    wire [17:0] i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select_d;
    wire [9:0] i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select_e;
    wire [3:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [63:0] join_for_coalesced_delay_1_q;
    wire [17:0] sel_for_coalesced_delay_1_b;
    wire [17:0] sel_for_coalesced_delay_1_c;
    wire [17:0] sel_for_coalesced_delay_1_d;
    wire [9:0] sel_for_coalesced_delay_1_e;
    wire [64:0] join_for_coalesced_delay_2_q;
    wire [63:0] sel_for_coalesced_delay_2_b;
    wire [0:0] sel_for_coalesced_delay_2_c;
    wire [39:0] join_for_coalesced_delay_3_q;
    wire [19:0] sel_for_coalesced_delay_3_b;
    wire [19:0] sel_for_coalesced_delay_3_c;
    wire [49:0] join_for_coalesced_delay_4_q;
    wire [24:0] sel_for_coalesced_delay_4_b;
    wire [24:0] sel_for_coalesced_delay_4_c;
    wire [39:0] join_for_coalesced_delay_5_q;
    wire [19:0] sel_for_coalesced_delay_5_b;
    wire [19:0] sel_for_coalesced_delay_5_c;
    wire [49:0] join_for_coalesced_delay_6_q;
    wire [24:0] sel_for_coalesced_delay_6_b;
    wire [24:0] sel_for_coalesced_delay_6_c;
    wire [39:0] join_for_coalesced_delay_7_q;
    wire [19:0] sel_for_coalesced_delay_7_b;
    wire [19:0] sel_for_coalesced_delay_7_c;
    wire [49:0] join_for_coalesced_delay_8_q;
    wire [24:0] sel_for_coalesced_delay_8_b;
    wire [24:0] sel_for_coalesced_delay_8_c;
    wire [39:0] join_for_coalesced_delay_9_q;
    wire [19:0] sel_for_coalesced_delay_9_b;
    wire [19:0] sel_for_coalesced_delay_9_c;
    wire [49:0] join_for_coalesced_delay_10_q;
    wire [24:0] sel_for_coalesced_delay_10_b;
    wire [24:0] sel_for_coalesced_delay_10_c;
    wire [37:0] join_for_coalesced_delay_11_q;
    wire [18:0] sel_for_coalesced_delay_11_b;
    wire [18:0] sel_for_coalesced_delay_11_c;
    wire [45:0] join_for_coalesced_delay_12_q;
    wire [22:0] sel_for_coalesced_delay_12_b;
    wire [22:0] sel_for_coalesced_delay_12_c;
    reg [12:0] redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_q;
    reg [51:0] redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_q;
    reg [12:0] redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_q;
    reg [51:0] redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_q;
    reg [51:0] redist29_i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_q;
    reg [51:0] redist31_i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_q;
    reg [51:0] redist33_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_q;
    reg [12:0] redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_q;
    reg [20:0] redist35_sR_bottomRange_uid2778_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_b_1_0_q;
    reg [20:0] redist36_sR_bottomRange_uid2715_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_b_1_0_q;
    reg [20:0] redist37_sR_bottomRange_uid2652_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_b_1_0_q;
    reg [12:0] redist38_sR_bottomRange_uid1329_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_b_1_0_q;
    reg [20:0] redist39_sR_bottomRange_uid1266_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_b_1_0_q;
    reg [20:0] redist40_sR_bottomRange_uid1203_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_b_1_0_q;
    reg [20:0] redist41_sR_bottomRange_uid1140_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_b_1_0_q;
    reg [15:0] redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_q;
    reg [23:0] redist43_sR_bottomRange_uid999_i_arrayidx10_avgpooling10_mult_x_im6_b_1_0_q;
    reg [23:0] redist44_sR_bottomRange_uid930_i_arrayidx10_avgpooling10_mult_x_im3_b_1_0_q;
    reg [23:0] redist45_sR_bottomRange_uid861_i_arrayidx10_avgpooling10_mult_x_im0_b_1_0_q;
    reg [12:0] redist46_sR_bottomRange_uid825_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_b_1_0_q;
    reg [20:0] redist47_sR_bottomRange_uid762_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_b_1_0_q;
    reg [20:0] redist48_sR_bottomRange_uid699_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_b_1_0_q;
    reg [20:0] redist49_sR_bottomRange_uid636_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_b_1_0_q;
    reg [0:0] redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_q;
    wire [0:0] redist51_i_masked_avgpooling157_q_136_fifo_valid_in;
    wire redist51_i_masked_avgpooling157_q_136_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist51_i_masked_avgpooling157_q_136_fifo_stall_in;
    wire redist51_i_masked_avgpooling157_q_136_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist51_i_masked_avgpooling157_q_136_fifo_data_in;
    wire [0:0] redist51_i_masked_avgpooling157_q_136_fifo_valid_out;
    wire redist51_i_masked_avgpooling157_q_136_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist51_i_masked_avgpooling157_q_136_fifo_stall_out;
    wire redist51_i_masked_avgpooling157_q_136_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist51_i_masked_avgpooling157_q_136_fifo_data_out;
    wire [0:0] redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_valid_in;
    wire redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_stall_in;
    wire redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_data_in;
    wire [0:0] redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_valid_out;
    wire redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_stall_out;
    wire redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_data_out;
    reg [31:0] redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_0_q;
    reg [31:0] redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_1_q;
    reg [31:0] redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_2_q;
    reg [31:0] redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_3_q;
    reg [31:0] redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_q;
    wire [0:0] redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_valid_in;
    wire redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_stall_in;
    wire redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_data_in;
    wire [0:0] redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_valid_out;
    wire redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_stall_out;
    wire redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_data_out;
    reg [31:0] redist55_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_136_0_q;
    reg [31:0] redist55_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_136_1_q;
    reg [31:0] redist55_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_136_2_q;
    wire [0:0] redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_valid_in;
    wire redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_stall_in;
    wire redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_data_in;
    wire [0:0] redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_valid_out;
    wire redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_stall_out;
    wire redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_data_out;
    wire [0:0] redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_valid_in;
    wire redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_stall_in;
    wire redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_data_in;
    wire [0:0] redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_valid_out;
    wire redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_stall_out;
    wire redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_data_out;
    reg [0:0] redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_q;
    reg [0:0] redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_q;
    wire [0:0] redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_valid_in;
    wire redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_stall_in;
    wire redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_data_in;
    wire [0:0] redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_valid_out;
    wire redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_stall_out;
    wire redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_data_out;
    reg [0:0] redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_q;
    reg [0:0] redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_q;
    wire [0:0] redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_valid_in;
    wire redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_stall_in;
    wire redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_data_in;
    wire [0:0] redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_valid_out;
    wire redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_stall_out;
    wire redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_data_out;
    reg [0:0] redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_q;
    reg [0:0] redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_q;
    wire [0:0] redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_in;
    wire redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_in;
    wire redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_data_in;
    wire [0:0] redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_out;
    wire redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_out;
    wire redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_data_out;
    reg [0:0] redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_q;
    reg [0:0] redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [3:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [3:0] coalesced_delay_0_fifo_data_out;
    reg [63:0] coalesced_delay_1_0_q;
    wire [0:0] coalesced_delay_2_fifo_valid_in;
    wire coalesced_delay_2_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_in;
    wire coalesced_delay_2_fifo_stall_in_bitsignaltemp;
    wire [64:0] coalesced_delay_2_fifo_data_in;
    wire [0:0] coalesced_delay_2_fifo_valid_out;
    wire coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_2_fifo_stall_out;
    wire coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    wire [64:0] coalesced_delay_2_fifo_data_out;
    reg [39:0] coalesced_delay_3_0_q;
    reg [49:0] coalesced_delay_4_0_q;
    reg [39:0] coalesced_delay_5_0_q;
    reg [49:0] coalesced_delay_6_0_q;
    reg [39:0] coalesced_delay_7_0_q;
    reg [49:0] coalesced_delay_8_0_q;
    reg [39:0] coalesced_delay_9_0_q;
    reg [49:0] coalesced_delay_10_0_q;
    reg [37:0] coalesced_delay_11_0_q;
    reg [45:0] coalesced_delay_12_0_q;
    wire [70:0] bubble_join_avgpooling1_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_avgpooling1_B4_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_avgpooling1_B4_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_avgpooling1_B4_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_avgpooling1_B4_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_avgpooling1_B4_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_avgpooling1_B4_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_avgpooling1_B4_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_avgpooling1_B4_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_avgpooling1_B4_merge_reg_aunroll_x_j;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_b;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_body6_avgpooling1s_c0_enter9112_avgpooling168_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_avgpooling1s_c0_enter9112_avgpooling168_aunroll_x_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_avgpooling170_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_avgpooling170_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_avgpooling13_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling13_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_b;
    wire [4:0] bubble_join_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_q;
    wire [4:0] bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_b;
    wire [70:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_join_redist51_i_masked_avgpooling157_q_136_fifo_q;
    wire [0:0] bubble_select_redist51_i_masked_avgpooling157_q_136_fifo_b;
    wire [31:0] bubble_join_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_q;
    wire [31:0] bubble_select_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_b;
    wire [31:0] bubble_join_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_q;
    wire [31:0] bubble_select_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_b;
    wire [0:0] bubble_join_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_q;
    wire [0:0] bubble_select_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_b;
    wire [0:0] bubble_join_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_q;
    wire [0:0] bubble_select_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_b;
    wire [0:0] bubble_join_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_q;
    wire [0:0] bubble_select_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_b;
    wire [0:0] bubble_join_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_q;
    wire [0:0] bubble_select_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_b;
    wire [0:0] bubble_join_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_q;
    wire [0:0] bubble_select_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_b;
    wire [3:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [3:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [64:0] bubble_join_coalesced_delay_2_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_2_fifo_b;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_avgpooling1_B4_merge_reg_aunroll_x_V7;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling170_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling170_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling170_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling170_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling170_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling170_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling170_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling170_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling170_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling170_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling170_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling170_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling170_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_and2;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg6;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_or4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_or5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_V3;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_avgpooling154_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_avgpooling154_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_or0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_avgpooling148_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_avgpooling148_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push24_avgpooling166_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push24_avgpooling166_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push23_avgpooling142_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push23_avgpooling142_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling146_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling146_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling146_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling146_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_025_push21_avgpooling146_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_025_push21_avgpooling146_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_backStall;
    reg [0:0] SE_i_masked_avgpooling157_R_v_0;
    wire [0:0] SE_i_masked_avgpooling157_v_s_0;
    wire [0:0] SE_i_masked_avgpooling157_s_tv_0;
    wire [0:0] SE_i_masked_avgpooling157_backEN;
    wire [0:0] SE_i_masked_avgpooling157_backStall;
    wire [0:0] SE_i_masked_avgpooling157_V0;
    wire [0:0] SE_i_next_initerations_avgpooling120_vt_select_0_wireValid;
    wire [0:0] SE_i_next_initerations_avgpooling120_vt_select_0_wireStall;
    wire [0:0] SE_i_next_initerations_avgpooling120_vt_select_0_StallValid;
    wire [0:0] SE_i_next_initerations_avgpooling120_vt_select_0_toReg0;
    reg [0:0] SE_i_next_initerations_avgpooling120_vt_select_0_fromReg0;
    wire [0:0] SE_i_next_initerations_avgpooling120_vt_select_0_consumed0;
    wire [0:0] SE_i_next_initerations_avgpooling120_vt_select_0_toReg1;
    reg [0:0] SE_i_next_initerations_avgpooling120_vt_select_0_fromReg1;
    wire [0:0] SE_i_next_initerations_avgpooling120_vt_select_0_consumed1;
    wire [0:0] SE_i_next_initerations_avgpooling120_vt_select_0_or0;
    wire [0:0] SE_i_next_initerations_avgpooling120_vt_select_0_backStall;
    wire [0:0] SE_i_next_initerations_avgpooling120_vt_select_0_V0;
    wire [0:0] SE_i_next_initerations_avgpooling120_vt_select_0_V1;
    reg [0:0] SE_i_reduction_avgpooling1_0_avgpooling140_R_v_0;
    wire [0:0] SE_i_reduction_avgpooling1_0_avgpooling140_v_s_0;
    wire [0:0] SE_i_reduction_avgpooling1_0_avgpooling140_s_tv_0;
    wire [0:0] SE_i_reduction_avgpooling1_0_avgpooling140_backEN;
    wire [0:0] SE_i_reduction_avgpooling1_0_avgpooling140_and0;
    wire [0:0] SE_i_reduction_avgpooling1_0_avgpooling140_backStall;
    wire [0:0] SE_i_reduction_avgpooling1_0_avgpooling140_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_wireValid;
    wire [0:0] SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_backStall;
    wire [0:0] SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_V0;
    reg [0:0] SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_R_v_0;
    wire [0:0] SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_v_s_0;
    wire [0:0] SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_s_tv_0;
    wire [0:0] SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_backEN;
    wire [0:0] SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_backStall;
    wire [0:0] SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_V0;
    reg [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_and1;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    reg [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or1;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V1;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V2;
    reg [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    reg [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or1;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V1;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V2;
    reg [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    reg [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_or1;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_V1;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_V2;
    reg [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    reg [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_or0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_or1;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_V1;
    wire [0:0] SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_V2;
    wire [0:0] SE_i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel1_0_V0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V0;
    wire [0:0] SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V1;
    reg [0:0] SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_R_v_0;
    wire [0:0] SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_v_s_0;
    wire [0:0] SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_s_tv_0;
    wire [0:0] SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_backEN;
    wire [0:0] SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_backStall;
    wire [0:0] SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_V0;
    reg [0:0] SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_R_v_0;
    wire [0:0] SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_v_s_0;
    wire [0:0] SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_s_tv_0;
    wire [0:0] SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_backEN;
    wire [0:0] SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_backStall;
    wire [0:0] SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_V0;
    reg [0:0] SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_R_v_0;
    wire [0:0] SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_v_s_0;
    wire [0:0] SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_s_tv_0;
    wire [0:0] SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_backEN;
    wire [0:0] SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_backStall;
    wire [0:0] SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_V0;
    reg [0:0] SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_R_v_0;
    wire [0:0] SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_v_s_0;
    wire [0:0] SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_s_tv_0;
    wire [0:0] SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_backEN;
    wire [0:0] SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_backStall;
    wire [0:0] SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_V0;
    reg [0:0] SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_R_v_0;
    wire [0:0] SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_v_s_0;
    wire [0:0] SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_s_tv_0;
    wire [0:0] SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_backEN;
    wire [0:0] SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_backStall;
    wire [0:0] SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_V0;
    wire [0:0] SE_in_redist51_i_masked_avgpooling157_q_136_fifo_wireValid;
    wire [0:0] SE_in_redist51_i_masked_avgpooling157_q_136_fifo_backStall;
    wire [0:0] SE_in_redist51_i_masked_avgpooling157_q_136_fifo_V0;
    wire [0:0] SE_out_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_wireValid;
    wire [0:0] SE_out_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_backStall;
    wire [0:0] SE_out_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_V0;
    reg [0:0] SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_R_v_0;
    wire [0:0] SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_v_s_0;
    wire [0:0] SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_s_tv_0;
    wire [0:0] SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_backEN;
    wire [0:0] SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_backStall;
    wire [0:0] SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_V0;
    wire [0:0] SE_out_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_wireValid;
    wire [0:0] SE_out_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_backStall;
    wire [0:0] SE_out_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_V0;
    wire [0:0] SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_wireValid;
    wire [0:0] SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_wireStall;
    wire [0:0] SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_StallValid;
    wire [0:0] SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_toReg0;
    reg [0:0] SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_fromReg0;
    wire [0:0] SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_consumed0;
    wire [0:0] SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_toReg1;
    reg [0:0] SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_fromReg1;
    wire [0:0] SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_consumed1;
    wire [0:0] SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_or0;
    wire [0:0] SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_backStall;
    wire [0:0] SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_V0;
    wire [0:0] SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_V1;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_wireValid;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_wireStall;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_StallValid;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_toReg0;
    reg [0:0] SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_fromReg0;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_consumed0;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_toReg1;
    reg [0:0] SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_fromReg1;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_consumed1;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_or0;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_backStall;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_V0;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_V1;
    reg [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_R_v_0;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_v_s_0;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_s_tv_0;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_backEN;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_backStall;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_V0;
    reg [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_0;
    reg [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_1;
    reg [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_2;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_v_s_0;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_s_tv_0;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_s_tv_1;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_s_tv_2;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_backEN;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_or0;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_or1;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_backStall;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_V0;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_V1;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_V2;
    wire [0:0] SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_wireValid;
    wire [0:0] SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_wireStall;
    wire [0:0] SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_StallValid;
    wire [0:0] SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_toReg0;
    reg [0:0] SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_fromReg0;
    wire [0:0] SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_consumed0;
    wire [0:0] SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_toReg1;
    reg [0:0] SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_fromReg1;
    wire [0:0] SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_consumed1;
    wire [0:0] SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_or0;
    wire [0:0] SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_backStall;
    wire [0:0] SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_V0;
    wire [0:0] SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_V1;
    reg [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_R_v_0;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_v_s_0;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_s_tv_0;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_backEN;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_backStall;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_V0;
    reg [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_0;
    reg [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_1;
    reg [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_2;
    reg [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_3;
    reg [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_4;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_v_s_0;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_s_tv_0;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_s_tv_1;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_s_tv_2;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_s_tv_3;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_s_tv_4;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_backEN;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_or0;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_or1;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_or2;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_or3;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_backStall;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_V0;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_V1;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_V2;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_V3;
    wire [0:0] SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_V4;
    wire [0:0] SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_wireValid;
    wire [0:0] SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_wireStall;
    wire [0:0] SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_StallValid;
    wire [0:0] SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_toReg0;
    reg [0:0] SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_fromReg0;
    wire [0:0] SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_consumed0;
    wire [0:0] SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_toReg1;
    reg [0:0] SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_fromReg1;
    wire [0:0] SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_consumed1;
    wire [0:0] SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_toReg2;
    reg [0:0] SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_fromReg2;
    wire [0:0] SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_consumed2;
    wire [0:0] SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_or0;
    wire [0:0] SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_or1;
    wire [0:0] SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_backStall;
    wire [0:0] SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_V0;
    wire [0:0] SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_V1;
    wire [0:0] SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_V2;
    reg [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_R_v_0;
    wire [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_v_s_0;
    wire [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_s_tv_0;
    wire [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backEN;
    wire [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backStall;
    wire [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_V0;
    reg [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_0;
    reg [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_1;
    reg [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_2;
    reg [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_3;
    wire [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_v_s_0;
    wire [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_0;
    wire [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_1;
    wire [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_2;
    wire [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_3;
    wire [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backEN;
    wire [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_or0;
    wire [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_or1;
    wire [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_or2;
    wire [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backStall;
    wire [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V0;
    wire [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V1;
    wire [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V2;
    wire [0:0] SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V3;
    wire [0:0] SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_wireValid;
    wire [0:0] SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_wireStall;
    wire [0:0] SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_StallValid;
    wire [0:0] SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_toReg0;
    reg [0:0] SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_fromReg0;
    wire [0:0] SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_consumed0;
    wire [0:0] SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_toReg1;
    reg [0:0] SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_fromReg1;
    wire [0:0] SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_consumed1;
    wire [0:0] SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_or0;
    wire [0:0] SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_backStall;
    wire [0:0] SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_V0;
    wire [0:0] SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_V1;
    reg [0:0] SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_R_v_0;
    wire [0:0] SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_v_s_0;
    wire [0:0] SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_s_tv_0;
    wire [0:0] SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backEN;
    wire [0:0] SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backStall;
    wire [0:0] SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_V0;
    reg [0:0] SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_R_v_0;
    wire [0:0] SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_v_s_0;
    wire [0:0] SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_s_tv_0;
    wire [0:0] SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backEN;
    wire [0:0] SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backStall;
    wire [0:0] SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_V0;
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
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V3;
    wire [0:0] SE_out_coalesced_delay_2_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_2_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_2_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_2_fifo_V0;
    wire [0:0] SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and7;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_V0;
    wire [0:0] bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_i_valid;
    reg [0:0] SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_valid;
    reg [0:0] SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_data0;
    reg [0:0] SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_data1;
    reg [0:0] SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_data2;
    wire [0:0] SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_backStall;
    wire [0:0] SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_V;
    wire [0:0] SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_D0;
    wire [0:0] SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_D1;
    wire [0:0] SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_D2;
    wire [0:0] SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_i_valid;
    reg [0:0] SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_valid;
    reg [0:0] SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_data0;
    wire [0:0] SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backStall;
    wire [0:0] SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_V;
    wire [0:0] SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_D0;
    wire [0:0] SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_i_valid;
    reg [0:0] SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_valid;
    reg [0:0] SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_data0;
    wire [0:0] SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backStall;
    wire [0:0] SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V;
    wire [0:0] SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_D0;
    wire [0:0] SR_SE_i_masked_avgpooling157_i_valid;
    reg [0:0] SR_SE_i_masked_avgpooling157_r_valid;
    wire [0:0] SR_SE_i_masked_avgpooling157_and0;
    reg [0:0] SR_SE_i_masked_avgpooling157_r_data0;
    reg [0:0] SR_SE_i_masked_avgpooling157_r_data1;
    wire [0:0] SR_SE_i_masked_avgpooling157_backStall;
    wire [0:0] SR_SE_i_masked_avgpooling157_V;
    wire [0:0] SR_SE_i_masked_avgpooling157_D0;
    wire [0:0] SR_SE_i_masked_avgpooling157_D1;
    wire [0:0] SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_i_valid;
    reg [0:0] SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_valid;
    reg [0:0] SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_data0;
    wire [0:0] SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backStall;
    wire [0:0] SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_V;
    wire [0:0] SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_D0;
    wire [0:0] SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_i_valid;
    reg [0:0] SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_valid;
    reg [0:0] SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_data0;
    wire [0:0] SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backStall;
    wire [0:0] SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_V;
    wire [0:0] SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_D0;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_i_valid;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_valid;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_and0;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data0;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data1;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data2;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data3;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data4;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data5;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data6;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data7;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_V;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D0;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D1;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D2;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D3;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D4;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D5;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D6;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D7;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data1;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data2;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data3;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data4;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data5;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data6;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data7;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data8;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data9;
    reg [31:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data10;
    reg [49:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data11;
    reg [49:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data12;
    reg [49:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data13;
    reg [49:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data14;
    reg [45:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data15;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D1;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D2;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D3;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D4;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D5;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D6;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D7;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D8;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D9;
    wire [31:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D10;
    wire [49:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D11;
    wire [49:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D12;
    wire [49:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D13;
    wire [49:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D14;
    wire [45:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D15;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data1;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data2;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data3;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data4;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data5;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data6;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data7;
    reg [39:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data8;
    reg [39:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data9;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data10;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data11;
    reg [39:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data12;
    reg [39:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data13;
    reg [37:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data14;
    reg [31:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data15;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D1;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D2;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D3;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D4;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D5;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D6;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D7;
    wire [39:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D8;
    wire [39:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D9;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D10;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D11;
    wire [39:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D12;
    wire [39:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D13;
    wire [37:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D14;
    wire [31:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D15;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid;
    reg [24:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data0;
    reg [24:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data2;
    reg [24:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data3;
    reg [24:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data4;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data5;
    reg [24:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data6;
    reg [24:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data7;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data8;
    reg [24:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data9;
    reg [24:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data10;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data11;
    reg [22:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data12;
    reg [22:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data13;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data14;
    reg [31:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data15;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_V;
    wire [24:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D0;
    wire [24:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D2;
    wire [24:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D3;
    wire [24:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D4;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D5;
    wire [24:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D6;
    wire [24:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D7;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D8;
    wire [24:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D9;
    wire [24:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D10;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D11;
    wire [22:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D12;
    wire [22:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D13;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D14;
    wire [31:0] SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D15;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid;
    reg [19:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data0;
    reg [19:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data2;
    reg [19:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data3;
    reg [19:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data4;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data5;
    reg [19:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data6;
    reg [19:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data7;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data8;
    reg [19:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data9;
    reg [19:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data10;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data11;
    reg [18:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data12;
    reg [18:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data13;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data14;
    reg [31:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data15;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V;
    wire [19:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D0;
    wire [19:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D2;
    wire [19:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D3;
    wire [19:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D4;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D5;
    wire [19:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D6;
    wire [19:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D7;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D8;
    wire [19:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D9;
    wire [19:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D10;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D11;
    wire [18:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D12;
    wire [18:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D13;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D14;
    wire [31:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D15;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_i_valid;
    reg [0:0] SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_r_valid;
    reg [0:0] SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_r_data0;
    wire [0:0] SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_backStall;
    wire [0:0] SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_V;
    wire [0:0] SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_D0;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data1;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data2;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data3;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data4;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data5;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data6;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data7;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D1;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D2;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D3;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D4;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D5;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D6;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D7;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data1;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data2;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data3;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data4;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data5;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data6;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data7;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D1;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D2;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D3;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D4;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D5;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D6;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D7;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data1;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data2;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data3;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data4;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data5;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data6;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data7;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D1;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D2;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D3;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D4;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D5;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D6;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D7;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data1;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data2;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data3;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data4;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data5;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data6;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data7;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data8;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data9;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data10;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data11;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D1;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D2;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D3;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D4;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D5;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D6;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D7;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D8;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D9;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D10;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D11;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data2;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data3;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data4;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data5;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data6;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data7;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data8;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data9;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data10;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data11;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D2;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D3;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D4;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D5;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D6;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D7;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D8;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D9;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D10;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D11;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data1;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data2;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data3;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data4;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data5;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data6;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data7;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data8;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data9;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data10;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data11;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D1;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D2;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D3;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D4;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D5;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D6;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D7;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D8;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D9;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D10;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D11;
    wire [0:0] SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_data0;
    reg [51:0] SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_data1;
    reg [51:0] SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_data2;
    reg [51:0] SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_data3;
    wire [0:0] SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_D0;
    wire [51:0] SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_D1;
    wire [51:0] SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_D2;
    wire [51:0] SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_D3;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_i_valid;
    reg [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_valid;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_and0;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_and1;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_and2;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_and3;
    reg [63:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data0;
    reg [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data1;
    reg [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data2;
    reg [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data3;
    reg [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data4;
    reg [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data5;
    reg [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data6;
    reg [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data7;
    reg [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data8;
    reg [63:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data9;
    reg [63:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data10;
    reg [63:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data11;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_backStall;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_V;
    wire [63:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D0;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D1;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D2;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D3;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D4;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D5;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D6;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D7;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D8;
    wire [63:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D9;
    wire [63:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D10;
    wire [63:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D11;
    wire [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_i_valid;
    reg [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_r_valid;
    reg [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_r_data0;
    wire [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_backStall;
    wire [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_V;
    wire [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_D0;
    wire [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_i_valid;
    reg [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_r_valid;
    reg [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_r_data0;
    wire [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_backStall;
    wire [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_V;
    wire [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_D0;
    wire [0:0] SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_i_valid;
    reg [0:0] SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_r_valid;
    reg [0:0] SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_r_data0;
    wire [0:0] SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_backStall;
    wire [0:0] SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_V;
    wire [0:0] SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_D0;
    wire [0:0] SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_i_valid;
    reg [0:0] SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_r_valid;
    reg [0:0] SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_r_data0;
    wire [0:0] SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_backStall;
    wire [0:0] SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_V;
    wire [0:0] SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_D1;
    wire [0:0] SR_SE_i_next_initerations_avgpooling120_vt_select_0_i_valid;
    reg [0:0] SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_valid;
    wire [0:0] SR_SE_i_next_initerations_avgpooling120_vt_select_0_and0;
    reg [0:0] SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_data0;
    reg [0:0] SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_data1;
    reg [0:0] SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_data2;
    reg [1:0] SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_data3;
    wire [0:0] SR_SE_i_next_initerations_avgpooling120_vt_select_0_backStall;
    wire [0:0] SR_SE_i_next_initerations_avgpooling120_vt_select_0_V;
    wire [0:0] SR_SE_i_next_initerations_avgpooling120_vt_select_0_D0;
    wire [0:0] SR_SE_i_next_initerations_avgpooling120_vt_select_0_D1;
    wire [0:0] SR_SE_i_next_initerations_avgpooling120_vt_select_0_D2;
    wire [1:0] SR_SE_i_next_initerations_avgpooling120_vt_select_0_D3;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_D1;
    wire [0:0] SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_i_valid;
    reg [0:0] SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_r_valid;
    wire [0:0] SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_and0;
    wire [0:0] SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_and1;
    reg [1:0] SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_r_data0;
    reg [0:0] SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_r_data1;
    wire [0:0] SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_backStall;
    wire [0:0] SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_V;
    wire [1:0] SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_D0;
    wire [0:0] SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_and0;
    reg [31:0] SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_V;
    wire [31:0] SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_D1;
    wire [0:0] SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_i_valid;
    reg [0:0] SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_r_valid;
    reg [31:0] SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_r_data0;
    wire [0:0] SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_backStall;
    wire [0:0] SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_V;
    wire [31:0] SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_and0;
    reg [4:0] SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_V;
    wire [4:0] SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_D1;


    // i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165(BLACKBOX,247)@140
    // in in_i_stall@20000000
    // out out_o_readdata@172
    // out out_o_stall@20000000
    // out out_o_valid@172
    // out out_unnamed_avgpooling19_avgpooling1_avm_address@20000000
    // out out_unnamed_avgpooling19_avgpooling1_avm_burstcount@20000000
    // out out_unnamed_avgpooling19_avgpooling1_avm_byteenable@20000000
    // out out_unnamed_avgpooling19_avgpooling1_avm_enable@20000000
    // out out_unnamed_avgpooling19_avgpooling1_avm_read@20000000
    // out out_unnamed_avgpooling19_avgpooling1_avm_write@20000000
    // out out_unnamed_avgpooling19_avgpooling1_avm_writedata@20000000
    avgpooling1_i_llvm_fpga_mem_unnamed_9_avgpooling10 thei_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D11),
        .in_i_dependence(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D4),
        .in_i_predicate(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D8),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_V3),
        .in_unnamed_avgpooling19_avgpooling1_avm_readdata(in_unnamed_avgpooling19_avgpooling1_avm_readdata),
        .in_unnamed_avgpooling19_avgpooling1_avm_readdatavalid(in_unnamed_avgpooling19_avgpooling1_avm_readdatavalid),
        .in_unnamed_avgpooling19_avgpooling1_avm_waitrequest(in_unnamed_avgpooling19_avgpooling1_avm_waitrequest),
        .in_unnamed_avgpooling19_avgpooling1_avm_writeack(in_unnamed_avgpooling19_avgpooling1_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_o_valid),
        .out_unnamed_avgpooling19_avgpooling1_avm_address(i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_address),
        .out_unnamed_avgpooling19_avgpooling1_avm_burstcount(i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_burstcount),
        .out_unnamed_avgpooling19_avgpooling1_avm_byteenable(i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_byteenable),
        .out_unnamed_avgpooling19_avgpooling1_avm_enable(i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_enable),
        .out_unnamed_avgpooling19_avgpooling1_avm_read(i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_read),
        .out_unnamed_avgpooling19_avgpooling1_avm_write(i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_write),
        .out_unnamed_avgpooling19_avgpooling1_avm_writedata(i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164(BLACKBOX,246)@140
    // in in_i_stall@20000000
    // out out_o_readdata@172
    // out out_o_stall@20000000
    // out out_o_valid@172
    // out out_unnamed_avgpooling18_avgpooling1_avm_address@20000000
    // out out_unnamed_avgpooling18_avgpooling1_avm_burstcount@20000000
    // out out_unnamed_avgpooling18_avgpooling1_avm_byteenable@20000000
    // out out_unnamed_avgpooling18_avgpooling1_avm_enable@20000000
    // out out_unnamed_avgpooling18_avgpooling1_avm_read@20000000
    // out out_unnamed_avgpooling18_avgpooling1_avm_write@20000000
    // out out_unnamed_avgpooling18_avgpooling1_avm_writedata@20000000
    avgpooling1_i_llvm_fpga_mem_unnamed_8_avgpooling10 thei_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D10),
        .in_i_dependence(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D3),
        .in_i_predicate(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D7),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_V2),
        .in_unnamed_avgpooling18_avgpooling1_avm_readdata(in_unnamed_avgpooling18_avgpooling1_avm_readdata),
        .in_unnamed_avgpooling18_avgpooling1_avm_readdatavalid(in_unnamed_avgpooling18_avgpooling1_avm_readdatavalid),
        .in_unnamed_avgpooling18_avgpooling1_avm_waitrequest(in_unnamed_avgpooling18_avgpooling1_avm_waitrequest),
        .in_unnamed_avgpooling18_avgpooling1_avm_writeack(in_unnamed_avgpooling18_avgpooling1_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_o_valid),
        .out_unnamed_avgpooling18_avgpooling1_avm_address(i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_address),
        .out_unnamed_avgpooling18_avgpooling1_avm_burstcount(i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_burstcount),
        .out_unnamed_avgpooling18_avgpooling1_avm_byteenable(i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_byteenable),
        .out_unnamed_avgpooling18_avgpooling1_avm_enable(i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_enable),
        .out_unnamed_avgpooling18_avgpooling1_avm_read(i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_read),
        .out_unnamed_avgpooling18_avgpooling1_avm_write(i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_write),
        .out_unnamed_avgpooling18_avgpooling1_avm_writedata(i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162(BLACKBOX,245)@140
    // in in_i_stall@20000000
    // out out_o_readdata@172
    // out out_o_stall@20000000
    // out out_o_valid@172
    // out out_unnamed_avgpooling17_avgpooling1_avm_address@20000000
    // out out_unnamed_avgpooling17_avgpooling1_avm_burstcount@20000000
    // out out_unnamed_avgpooling17_avgpooling1_avm_byteenable@20000000
    // out out_unnamed_avgpooling17_avgpooling1_avm_enable@20000000
    // out out_unnamed_avgpooling17_avgpooling1_avm_read@20000000
    // out out_unnamed_avgpooling17_avgpooling1_avm_write@20000000
    // out out_unnamed_avgpooling17_avgpooling1_avm_writedata@20000000
    avgpooling1_i_llvm_fpga_mem_unnamed_7_avgpooling10 thei_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D9),
        .in_i_dependence(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D2),
        .in_i_predicate(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D6),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_V1),
        .in_unnamed_avgpooling17_avgpooling1_avm_readdata(in_unnamed_avgpooling17_avgpooling1_avm_readdata),
        .in_unnamed_avgpooling17_avgpooling1_avm_readdatavalid(in_unnamed_avgpooling17_avgpooling1_avm_readdatavalid),
        .in_unnamed_avgpooling17_avgpooling1_avm_waitrequest(in_unnamed_avgpooling17_avgpooling1_avm_waitrequest),
        .in_unnamed_avgpooling17_avgpooling1_avm_writeack(in_unnamed_avgpooling17_avgpooling1_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_o_valid),
        .out_unnamed_avgpooling17_avgpooling1_avm_address(i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_address),
        .out_unnamed_avgpooling17_avgpooling1_avm_burstcount(i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_burstcount),
        .out_unnamed_avgpooling17_avgpooling1_avm_byteenable(i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_byteenable),
        .out_unnamed_avgpooling17_avgpooling1_avm_enable(i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_enable),
        .out_unnamed_avgpooling17_avgpooling1_avm_read(i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_read),
        .out_unnamed_avgpooling17_avgpooling1_avm_write(i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_write),
        .out_unnamed_avgpooling17_avgpooling1_avm_writedata(i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16(STALLENABLE,3833)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_fromReg2 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_fromReg3 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_consumed0 = (~ (i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_o_stall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_consumed1 = (~ (i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_o_stall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_consumed2 = (~ (i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_o_stall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_consumed3 = (~ (i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_o_stall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_consumed1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_toReg2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_consumed2;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_toReg3 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_or1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_or0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_or2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_consumed2 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_or1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_consumed3 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_or2);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_V2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_V3 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_wireValid = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_V;

    // bubble_join_i_sfc_s_c0_in_for_body6_avgpooling1s_c0_enter9112_avgpooling168_aunroll_x(BITJOIN,3659)
    assign bubble_join_i_sfc_s_c0_in_for_body6_avgpooling1s_c0_enter9112_avgpooling168_aunroll_x_q = i_sfc_s_c0_in_for_body6_avgpooling1s_c0_enter9112_avgpooling168_aunroll_x_out_c0_exit97_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_body6_avgpooling1s_c0_enter9112_avgpooling168_aunroll_x(BITSELECT,3660)
    assign bubble_select_i_sfc_s_c0_in_for_body6_avgpooling1s_c0_enter9112_avgpooling168_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_avgpooling1s_c0_enter9112_avgpooling168_aunroll_x_q[31:0]);

    // join_for_coalesced_delay_0(BITJOIN,3548)
    assign join_for_coalesced_delay_0_q = {bubble_select_avgpooling1_B4_merge_reg_aunroll_x_h, bubble_select_avgpooling1_B4_merge_reg_aunroll_x_g, bubble_select_avgpooling1_B4_merge_reg_aunroll_x_d, bubble_select_avgpooling1_B4_merge_reg_aunroll_x_c};

    // redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0(REG,3629)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backEN == 1'b1)
        begin
            redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_q <= $unsigned(SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_D0);
        end
    end

    // SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0(STALLENABLE,4287)
    // Valid signal propagation
    assign SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_V0 = SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_R_v_0;
    // Stall signal propagation
    assign SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_s_tv_0 = SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backStall & SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_R_v_0;
    // Backward Enable generation
    assign SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backEN = ~ (SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_v_s_0 = SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backEN & SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_V;
    // Backward Stall generation
    assign SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backStall = ~ (SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backEN == 1'b0)
            begin
                SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_R_v_0 <= SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_R_v_0 & SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_s_tv_0;
            end
            else
            begin
                SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_R_v_0 <= SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_v_s_0;
            end

        end
    end

    // SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1(STALLREG,4473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_valid <= 1'b0;
            SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_valid <= SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backStall & (SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_valid | SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_i_valid);

            if (SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_data0 <= $unsigned(redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_i_valid = SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_V0;
    // Stall signal propagation
    assign SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backStall = SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_valid | ~ (SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_i_valid);

    // Valid
    assign SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V = SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_valid == 1'b1 ? SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_valid : SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_i_valid;

    assign SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_D0 = SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_valid == 1'b1 ? SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_data0 : redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_q;

    // redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1(REG,3630)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backEN == 1'b1)
        begin
            redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_q <= $unsigned(SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_D0);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12(BITJOIN,3707)
    assign bubble_join_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_q = i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12(BITSELECT,3708)
    assign bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_q[1:0]);

    // i_first_cleanup_avgpooling118_sel_x(BITSELECT,159)@140
    assign i_first_cleanup_avgpooling118_sel_x_b = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_b[0:0];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bubble_join_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17(BITJOIN,3723)
    assign bubble_join_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_q = i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17(BITSELECT,3724)
    assign bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_b = $unsigned(bubble_join_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_q[4:0]);

    // i_exitcond_avgpooling125_cmp_nsign(LOGICAL,599)@140
    assign i_exitcond_avgpooling125_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_b[4:4]));

    // i_notcmp_avgpooling147(LOGICAL,282)@140
    assign i_notcmp_avgpooling147_q = i_exitcond_avgpooling125_cmp_nsign_q ^ VCC_q;

    // i_idxprom38_avgpooling150_vt_const_63(CONSTANT,223)
    assign i_idxprom38_avgpooling150_vt_const_63_q = $unsigned(33'b000000000000000000000000000000000);

    // i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(BITSELECT,3472)
    assign i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in = i_idxprom38_avgpooling150_vt_const_63_q[30:0];
    assign i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b = i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[18:0];
    assign i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c = i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[30:19];

    // bubble_join_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15(BITJOIN,3717)
    assign bubble_join_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_q = i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15(BITSELECT,3718)
    assign bubble_select_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_q[31:0]);

    // rightShiftStage0Idx1Rng1_uid585_i_div40_avgpooling10_shift_x(BITSELECT,584)@138
    assign rightShiftStage0Idx1Rng1_uid585_i_div40_avgpooling10_shift_x_b = bubble_select_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_b[31:1];

    // rightShiftStage0Idx1_uid587_i_div40_avgpooling10_shift_x(BITJOIN,586)@138
    assign rightShiftStage0Idx1_uid587_i_div40_avgpooling10_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid585_i_div40_avgpooling10_shift_x_b};

    // rightShiftStage0_uid589_i_div40_avgpooling10_shift_x_BitSelect_for_b(BITSELECT,3345)@138
    assign rightShiftStage0_uid589_i_div40_avgpooling10_shift_x_BitSelect_for_b_b = rightShiftStage0Idx1_uid587_i_div40_avgpooling10_shift_x_q[30:0];

    // rightShiftStage0_uid589_i_div40_avgpooling10_shift_x_BitSelect_for_a(BITSELECT,3346)@138
    assign rightShiftStage0_uid589_i_div40_avgpooling10_shift_x_BitSelect_for_a_b = bubble_select_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_b[30:0];

    // rightShiftStage0_uid589_i_div40_avgpooling10_shift_x_p0(MUX,3347)@138
    assign rightShiftStage0_uid589_i_div40_avgpooling10_shift_x_p0_s = VCC_q;
    always @(rightShiftStage0_uid589_i_div40_avgpooling10_shift_x_p0_s or rightShiftStage0_uid589_i_div40_avgpooling10_shift_x_BitSelect_for_a_b or rightShiftStage0_uid589_i_div40_avgpooling10_shift_x_BitSelect_for_b_b)
    begin
        unique case (rightShiftStage0_uid589_i_div40_avgpooling10_shift_x_p0_s)
            1'b0 : rightShiftStage0_uid589_i_div40_avgpooling10_shift_x_p0_q = rightShiftStage0_uid589_i_div40_avgpooling10_shift_x_BitSelect_for_a_b;
            1'b1 : rightShiftStage0_uid589_i_div40_avgpooling10_shift_x_p0_q = rightShiftStage0_uid589_i_div40_avgpooling10_shift_x_BitSelect_for_b_b;
            default : rightShiftStage0_uid589_i_div40_avgpooling10_shift_x_p0_q = 31'b0;
        endcase
    end

    // i_arrayidx10_avgpooling10_c_i2_03_x(CONSTANT,36)
    assign i_arrayidx10_avgpooling10_c_i2_03_x_q = $unsigned(2'b00);

    // i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,3460)@138
    assign i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b, rightShiftStage0_uid589_i_div40_avgpooling10_shift_x_p0_q, i_arrayidx10_avgpooling10_c_i2_03_x_q};

    // i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(ADD,3333)@136 + 1
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D10};
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D11};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // join_for_coalesced_delay_12(BITJOIN,3584)
    assign join_for_coalesced_delay_12_q = {i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_c, i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_c};

    // join_for_coalesced_delay_10(BITJOIN,3578)
    assign join_for_coalesced_delay_10_q = {i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_c, i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_c};

    // join_for_coalesced_delay_8(BITJOIN,3572)
    assign join_for_coalesced_delay_8_q = {i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_c, i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_c};

    // join_for_coalesced_delay_6(BITJOIN,3566)
    assign join_for_coalesced_delay_6_q = {i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_c, i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_c};

    // join_for_coalesced_delay_4(BITJOIN,3560)
    assign join_for_coalesced_delay_4_q = {i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_c, i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_c};

    // bubble_join_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114(BITJOIN,3720)
    assign bubble_join_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_q = i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114(BITSELECT,3721)
    assign bubble_select_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_q[31:0]);

    // SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114(STALLENABLE,3847)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_V0 = SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_backStall = redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_wireValid = i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_valid_out;

    // redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo(STALLFIFO,3611)
    assign redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_V0;
    assign redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_stall_in = SE_out_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_backStall;
    assign redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_data_in = bubble_select_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_b;
    assign redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_valid_in_bitsignaltemp = redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_valid_in[0];
    assign redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_stall_in_bitsignaltemp = redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_stall_in[0];
    assign redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_valid_out[0] = redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_valid_out_bitsignaltemp;
    assign redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_stall_out[0] = redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(132),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo (
        .valid_in(redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_valid_in_bitsignaltemp),
        .stall_in(redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_b),
        .valid_out(redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_valid_out_bitsignaltemp),
        .stall_out(redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_stall_out_bitsignaltemp),
        .data_out(redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo(STALLENABLE,4264)
    // Valid signal propagation
    assign SE_out_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_V0 = SE_out_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_backStall = SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_backStall | ~ (SE_out_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_wireValid = redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_valid_out;

    // SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0(STALLENABLE,3974)
    // Valid signal propagation
    assign SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_V0 = SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_R_v_0;
    // Stall signal propagation
    assign SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_s_tv_0 = SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_backStall & SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_R_v_0;
    // Backward Enable generation
    assign SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_backEN = ~ (SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_v_s_0 = SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_backEN & SE_out_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_V0;
    // Backward Stall generation
    assign SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_backStall = ~ (SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_backEN == 1'b0)
            begin
                SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_R_v_0 <= SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_R_v_0 & SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_s_tv_0;
            end
            else
            begin
                SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_R_v_0 <= SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_v_s_0;
            end

        end
    end

    // bubble_join_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo(BITJOIN,3734)
    assign bubble_join_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_q = redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_data_out;

    // bubble_select_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo(BITSELECT,3735)
    assign bubble_select_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_b = $unsigned(bubble_join_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_q[31:0]);

    // redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_0(REG,3612)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_backEN == 1'b1)
        begin
            redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_0_q <= $unsigned(bubble_select_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_b);
        end
    end

    // redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_1(REG,3613)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_1_q <= $unsigned(redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_0_q);
        end
    end

    // i_idxprom_avgpooling138_sel_x(BITSELECT,166)@133
    assign i_idxprom_avgpooling138_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_131_fifo_b[31:0]};

    // i_idxprom_avgpooling138_vt_select_31(BITSELECT,241)@133
    assign i_idxprom_avgpooling138_vt_select_31_b = i_idxprom_avgpooling138_sel_x_b[31:0];

    // i_idxprom_avgpooling138_vt_join(BITJOIN,240)@133
    assign i_idxprom_avgpooling138_vt_join_q = {c_i32_074_q, i_idxprom_avgpooling138_vt_select_31_b};

    // i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select(BITSELECT,3475)@133
    assign i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select_b = i_idxprom_avgpooling138_vt_join_q[17:0];
    assign i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select_c = i_idxprom_avgpooling138_vt_join_q[35:18];
    assign i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select_d = i_idxprom_avgpooling138_vt_join_q[53:36];
    assign i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select_e = i_idxprom_avgpooling138_vt_join_q[63:54];

    // join_for_coalesced_delay_1(BITJOIN,3551)
    assign join_for_coalesced_delay_1_q = {i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select_e, i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select_d, i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select_c, i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select_b};

    // coalesced_delay_1_0(REG,3635)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_backEN == 1'b1)
        begin
            coalesced_delay_1_0_q <= $unsigned(join_for_coalesced_delay_1_q);
        end
    end

    // sel_for_coalesced_delay_1(BITSELECT,3552)
    assign sel_for_coalesced_delay_1_b = $unsigned(coalesced_delay_1_0_q[17:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(coalesced_delay_1_0_q[35:18]);
    assign sel_for_coalesced_delay_1_d = $unsigned(coalesced_delay_1_0_q[53:36]);
    assign sel_for_coalesced_delay_1_e = $unsigned(coalesced_delay_1_0_q[63:54]);

    // highBBits_uid1062_i_arrayidx10_avgpooling10_mult_x_im9(BITSELECT,1061)@134
    assign highBBits_uid1062_i_arrayidx10_avgpooling10_mult_x_im9_b = sel_for_coalesced_delay_1_e[9:4];

    // highBBits_uid1057_i_arrayidx10_avgpooling10_mult_x_im9(BITSELECT,1056)@133
    assign highBBits_uid1057_i_arrayidx10_avgpooling10_mult_x_im9_b = i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select_e[9:1];

    // addsumAHighB_uid1058_i_arrayidx10_avgpooling10_mult_x_im9(ADD,1057)@133 + 1
    assign addsumAHighB_uid1058_i_arrayidx10_avgpooling10_mult_x_im9_a = {1'b0, i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select_e};
    assign addsumAHighB_uid1058_i_arrayidx10_avgpooling10_mult_x_im9_b = {2'b00, highBBits_uid1057_i_arrayidx10_avgpooling10_mult_x_im9_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid1058_i_arrayidx10_avgpooling10_mult_x_im9_o <= 11'b0;
        end
        else if (SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid1058_i_arrayidx10_avgpooling10_mult_x_im9_o <= $unsigned(addsumAHighB_uid1058_i_arrayidx10_avgpooling10_mult_x_im9_a) + $unsigned(addsumAHighB_uid1058_i_arrayidx10_avgpooling10_mult_x_im9_b);
        end
    end
    assign addsumAHighB_uid1058_i_arrayidx10_avgpooling10_mult_x_im9_q = addsumAHighB_uid1058_i_arrayidx10_avgpooling10_mult_x_im9_o[10:0];

    // lowRangeB_uid1056_i_arrayidx10_avgpooling10_mult_x_im9(BITSELECT,1055)@134
    assign lowRangeB_uid1056_i_arrayidx10_avgpooling10_mult_x_im9_in = sel_for_coalesced_delay_1_e[0:0];
    assign lowRangeB_uid1056_i_arrayidx10_avgpooling10_mult_x_im9_b = lowRangeB_uid1056_i_arrayidx10_avgpooling10_mult_x_im9_in[0:0];

    // add_uid1059_i_arrayidx10_avgpooling10_mult_x_im9(BITJOIN,1058)@134
    assign add_uid1059_i_arrayidx10_avgpooling10_mult_x_im9_q = {addsumAHighB_uid1058_i_arrayidx10_avgpooling10_mult_x_im9_q, lowRangeB_uid1056_i_arrayidx10_avgpooling10_mult_x_im9_b};

    // a_subconst_49_sumAHighB_uid1063_i_arrayidx10_avgpooling10_mult_x_im9(ADD,1062)@134
    assign a_subconst_49_sumAHighB_uid1063_i_arrayidx10_avgpooling10_mult_x_im9_a = {1'b0, add_uid1059_i_arrayidx10_avgpooling10_mult_x_im9_q};
    assign a_subconst_49_sumAHighB_uid1063_i_arrayidx10_avgpooling10_mult_x_im9_b = {7'b0000000, highBBits_uid1062_i_arrayidx10_avgpooling10_mult_x_im9_b};
    assign a_subconst_49_sumAHighB_uid1063_i_arrayidx10_avgpooling10_mult_x_im9_o = $unsigned(a_subconst_49_sumAHighB_uid1063_i_arrayidx10_avgpooling10_mult_x_im9_a) + $unsigned(a_subconst_49_sumAHighB_uid1063_i_arrayidx10_avgpooling10_mult_x_im9_b);
    assign a_subconst_49_sumAHighB_uid1063_i_arrayidx10_avgpooling10_mult_x_im9_q = a_subconst_49_sumAHighB_uid1063_i_arrayidx10_avgpooling10_mult_x_im9_o[12:0];

    // lowRangeB_uid1061_i_arrayidx10_avgpooling10_mult_x_im9(BITSELECT,1060)@134
    assign lowRangeB_uid1061_i_arrayidx10_avgpooling10_mult_x_im9_in = sel_for_coalesced_delay_1_e[3:0];
    assign lowRangeB_uid1061_i_arrayidx10_avgpooling10_mult_x_im9_b = lowRangeB_uid1061_i_arrayidx10_avgpooling10_mult_x_im9_in[3:0];

    // a_subconst_49_uid1064_i_arrayidx10_avgpooling10_mult_x_im9(BITJOIN,1063)@134
    assign a_subconst_49_uid1064_i_arrayidx10_avgpooling10_mult_x_im9_q = {a_subconst_49_sumAHighB_uid1063_i_arrayidx10_avgpooling10_mult_x_im9_q, lowRangeB_uid1061_i_arrayidx10_avgpooling10_mult_x_im9_b};

    // sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9(BITSELECT,1067)@134
    assign sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_in = a_subconst_49_uid1064_i_arrayidx10_avgpooling10_mult_x_im9_q[15:0];
    assign sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b = sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_in[15:0];

    // redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0(REG,3601)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_q <= $unsigned(16'b0000000000000000);
        end
        else if (SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_q <= $unsigned(sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b);
        end
    end

    // sR_bottomExtension_uid635_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0(CONSTANT,634)
    assign sR_bottomExtension_uid635_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q = $unsigned(4'b0000);

    // sR_mergedSignalTM_uid3085_i_arrayidx42_avgpooling10_mult_x_im9(BITJOIN,3084)@135
    assign sR_mergedSignalTM_uid3085_i_arrayidx42_avgpooling10_mult_x_im9_q = {redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_q, sR_bottomExtension_uid635_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx42_avgpooling10_mult_x_sums_align_3(BITSHIFT,563)@135
    assign i_arrayidx42_avgpooling10_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid3085_i_arrayidx42_avgpooling10_mult_x_im9_q, 8'b00000000 };
    assign i_arrayidx42_avgpooling10_mult_x_sums_align_3_q = i_arrayidx42_avgpooling10_mult_x_sums_align_3_qint[27:0];

    // highBBits_uid924_i_arrayidx10_avgpooling10_mult_x_im3(BITSELECT,923)@134
    assign highBBits_uid924_i_arrayidx10_avgpooling10_mult_x_im3_b = sel_for_coalesced_delay_1_c[17:4];

    // highBBits_uid919_i_arrayidx10_avgpooling10_mult_x_im3(BITSELECT,918)@133
    assign highBBits_uid919_i_arrayidx10_avgpooling10_mult_x_im3_b = i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select_c[17:1];

    // addsumAHighB_uid920_i_arrayidx10_avgpooling10_mult_x_im3(ADD,919)@133 + 1
    assign addsumAHighB_uid920_i_arrayidx10_avgpooling10_mult_x_im3_a = {1'b0, i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select_c};
    assign addsumAHighB_uid920_i_arrayidx10_avgpooling10_mult_x_im3_b = {2'b00, highBBits_uid919_i_arrayidx10_avgpooling10_mult_x_im3_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid920_i_arrayidx10_avgpooling10_mult_x_im3_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid920_i_arrayidx10_avgpooling10_mult_x_im3_o <= $unsigned(addsumAHighB_uid920_i_arrayidx10_avgpooling10_mult_x_im3_a) + $unsigned(addsumAHighB_uid920_i_arrayidx10_avgpooling10_mult_x_im3_b);
        end
    end
    assign addsumAHighB_uid920_i_arrayidx10_avgpooling10_mult_x_im3_q = addsumAHighB_uid920_i_arrayidx10_avgpooling10_mult_x_im3_o[18:0];

    // lowRangeB_uid918_i_arrayidx10_avgpooling10_mult_x_im3(BITSELECT,917)@134
    assign lowRangeB_uid918_i_arrayidx10_avgpooling10_mult_x_im3_in = sel_for_coalesced_delay_1_c[0:0];
    assign lowRangeB_uid918_i_arrayidx10_avgpooling10_mult_x_im3_b = lowRangeB_uid918_i_arrayidx10_avgpooling10_mult_x_im3_in[0:0];

    // add_uid921_i_arrayidx10_avgpooling10_mult_x_im3(BITJOIN,920)@134
    assign add_uid921_i_arrayidx10_avgpooling10_mult_x_im3_q = {addsumAHighB_uid920_i_arrayidx10_avgpooling10_mult_x_im3_q, lowRangeB_uid918_i_arrayidx10_avgpooling10_mult_x_im3_b};

    // a_subconst_49_sumAHighB_uid925_i_arrayidx10_avgpooling10_mult_x_im3(ADD,924)@134
    assign a_subconst_49_sumAHighB_uid925_i_arrayidx10_avgpooling10_mult_x_im3_a = {1'b0, add_uid921_i_arrayidx10_avgpooling10_mult_x_im3_q};
    assign a_subconst_49_sumAHighB_uid925_i_arrayidx10_avgpooling10_mult_x_im3_b = {7'b0000000, highBBits_uid924_i_arrayidx10_avgpooling10_mult_x_im3_b};
    assign a_subconst_49_sumAHighB_uid925_i_arrayidx10_avgpooling10_mult_x_im3_o = $unsigned(a_subconst_49_sumAHighB_uid925_i_arrayidx10_avgpooling10_mult_x_im3_a) + $unsigned(a_subconst_49_sumAHighB_uid925_i_arrayidx10_avgpooling10_mult_x_im3_b);
    assign a_subconst_49_sumAHighB_uid925_i_arrayidx10_avgpooling10_mult_x_im3_q = a_subconst_49_sumAHighB_uid925_i_arrayidx10_avgpooling10_mult_x_im3_o[20:0];

    // lowRangeB_uid923_i_arrayidx10_avgpooling10_mult_x_im3(BITSELECT,922)@134
    assign lowRangeB_uid923_i_arrayidx10_avgpooling10_mult_x_im3_in = sel_for_coalesced_delay_1_c[3:0];
    assign lowRangeB_uid923_i_arrayidx10_avgpooling10_mult_x_im3_b = lowRangeB_uid923_i_arrayidx10_avgpooling10_mult_x_im3_in[3:0];

    // a_subconst_49_uid926_i_arrayidx10_avgpooling10_mult_x_im3(BITJOIN,925)@134
    assign a_subconst_49_uid926_i_arrayidx10_avgpooling10_mult_x_im3_q = {a_subconst_49_sumAHighB_uid925_i_arrayidx10_avgpooling10_mult_x_im3_q, lowRangeB_uid923_i_arrayidx10_avgpooling10_mult_x_im3_b};

    // sR_bottomRange_uid930_i_arrayidx10_avgpooling10_mult_x_im3(BITSELECT,929)@134
    assign sR_bottomRange_uid930_i_arrayidx10_avgpooling10_mult_x_im3_in = a_subconst_49_uid926_i_arrayidx10_avgpooling10_mult_x_im3_q[23:0];
    assign sR_bottomRange_uid930_i_arrayidx10_avgpooling10_mult_x_im3_b = sR_bottomRange_uid930_i_arrayidx10_avgpooling10_mult_x_im3_in[23:0];

    // redist44_sR_bottomRange_uid930_i_arrayidx10_avgpooling10_mult_x_im3_b_1_0(REG,3603)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sR_bottomRange_uid930_i_arrayidx10_avgpooling10_mult_x_im3_b_1_0_q <= $unsigned(24'b000000000000000000000000);
        end
        else if (SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist44_sR_bottomRange_uid930_i_arrayidx10_avgpooling10_mult_x_im3_b_1_0_q <= $unsigned(sR_bottomRange_uid930_i_arrayidx10_avgpooling10_mult_x_im3_b);
        end
    end

    // sR_mergedSignalTM_uid2947_i_arrayidx42_avgpooling10_mult_x_im3(BITJOIN,2946)@135
    assign sR_mergedSignalTM_uid2947_i_arrayidx42_avgpooling10_mult_x_im3_q = {redist44_sR_bottomRange_uid930_i_arrayidx10_avgpooling10_mult_x_im3_b_1_0_q, sR_bottomExtension_uid635_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx42_avgpooling10_mult_x_sums_align_2(BITSHIFT,562)@135
    assign i_arrayidx42_avgpooling10_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid2947_i_arrayidx42_avgpooling10_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx42_avgpooling10_mult_x_sums_align_2_q = i_arrayidx42_avgpooling10_mult_x_sums_align_2_qint[45:0];

    // i_arrayidx42_avgpooling10_mult_x_sums_join_4(BITJOIN,564)@135
    assign i_arrayidx42_avgpooling10_mult_x_sums_join_4_q = {i_arrayidx42_avgpooling10_mult_x_sums_align_3_q, i_arrayidx42_avgpooling10_mult_x_sums_align_2_q};

    // i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b(BITJOIN,3338)@135
    assign i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b_q = {GND_q, i_arrayidx42_avgpooling10_mult_x_sums_join_4_q};

    // i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b(BITSELECT,3341)@135
    assign i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_b = i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[51:0];
    assign i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_c = i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[74:52];

    // i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a(CONSTANT,3256)
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q = $unsigned(11'b00000000000);

    // highBBits_uid993_i_arrayidx10_avgpooling10_mult_x_im6(BITSELECT,992)@134
    assign highBBits_uid993_i_arrayidx10_avgpooling10_mult_x_im6_b = sel_for_coalesced_delay_1_d[17:4];

    // highBBits_uid988_i_arrayidx10_avgpooling10_mult_x_im6(BITSELECT,987)@133
    assign highBBits_uid988_i_arrayidx10_avgpooling10_mult_x_im6_b = i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select_d[17:1];

    // addsumAHighB_uid989_i_arrayidx10_avgpooling10_mult_x_im6(ADD,988)@133 + 1
    assign addsumAHighB_uid989_i_arrayidx10_avgpooling10_mult_x_im6_a = {1'b0, i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select_d};
    assign addsumAHighB_uid989_i_arrayidx10_avgpooling10_mult_x_im6_b = {2'b00, highBBits_uid988_i_arrayidx10_avgpooling10_mult_x_im6_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid989_i_arrayidx10_avgpooling10_mult_x_im6_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid989_i_arrayidx10_avgpooling10_mult_x_im6_o <= $unsigned(addsumAHighB_uid989_i_arrayidx10_avgpooling10_mult_x_im6_a) + $unsigned(addsumAHighB_uid989_i_arrayidx10_avgpooling10_mult_x_im6_b);
        end
    end
    assign addsumAHighB_uid989_i_arrayidx10_avgpooling10_mult_x_im6_q = addsumAHighB_uid989_i_arrayidx10_avgpooling10_mult_x_im6_o[18:0];

    // lowRangeB_uid987_i_arrayidx10_avgpooling10_mult_x_im6(BITSELECT,986)@134
    assign lowRangeB_uid987_i_arrayidx10_avgpooling10_mult_x_im6_in = sel_for_coalesced_delay_1_d[0:0];
    assign lowRangeB_uid987_i_arrayidx10_avgpooling10_mult_x_im6_b = lowRangeB_uid987_i_arrayidx10_avgpooling10_mult_x_im6_in[0:0];

    // add_uid990_i_arrayidx10_avgpooling10_mult_x_im6(BITJOIN,989)@134
    assign add_uid990_i_arrayidx10_avgpooling10_mult_x_im6_q = {addsumAHighB_uid989_i_arrayidx10_avgpooling10_mult_x_im6_q, lowRangeB_uid987_i_arrayidx10_avgpooling10_mult_x_im6_b};

    // a_subconst_49_sumAHighB_uid994_i_arrayidx10_avgpooling10_mult_x_im6(ADD,993)@134
    assign a_subconst_49_sumAHighB_uid994_i_arrayidx10_avgpooling10_mult_x_im6_a = {1'b0, add_uid990_i_arrayidx10_avgpooling10_mult_x_im6_q};
    assign a_subconst_49_sumAHighB_uid994_i_arrayidx10_avgpooling10_mult_x_im6_b = {7'b0000000, highBBits_uid993_i_arrayidx10_avgpooling10_mult_x_im6_b};
    assign a_subconst_49_sumAHighB_uid994_i_arrayidx10_avgpooling10_mult_x_im6_o = $unsigned(a_subconst_49_sumAHighB_uid994_i_arrayidx10_avgpooling10_mult_x_im6_a) + $unsigned(a_subconst_49_sumAHighB_uid994_i_arrayidx10_avgpooling10_mult_x_im6_b);
    assign a_subconst_49_sumAHighB_uid994_i_arrayidx10_avgpooling10_mult_x_im6_q = a_subconst_49_sumAHighB_uid994_i_arrayidx10_avgpooling10_mult_x_im6_o[20:0];

    // lowRangeB_uid992_i_arrayidx10_avgpooling10_mult_x_im6(BITSELECT,991)@134
    assign lowRangeB_uid992_i_arrayidx10_avgpooling10_mult_x_im6_in = sel_for_coalesced_delay_1_d[3:0];
    assign lowRangeB_uid992_i_arrayidx10_avgpooling10_mult_x_im6_b = lowRangeB_uid992_i_arrayidx10_avgpooling10_mult_x_im6_in[3:0];

    // a_subconst_49_uid995_i_arrayidx10_avgpooling10_mult_x_im6(BITJOIN,994)@134
    assign a_subconst_49_uid995_i_arrayidx10_avgpooling10_mult_x_im6_q = {a_subconst_49_sumAHighB_uid994_i_arrayidx10_avgpooling10_mult_x_im6_q, lowRangeB_uid992_i_arrayidx10_avgpooling10_mult_x_im6_b};

    // sR_bottomRange_uid999_i_arrayidx10_avgpooling10_mult_x_im6(BITSELECT,998)@134
    assign sR_bottomRange_uid999_i_arrayidx10_avgpooling10_mult_x_im6_in = a_subconst_49_uid995_i_arrayidx10_avgpooling10_mult_x_im6_q[23:0];
    assign sR_bottomRange_uid999_i_arrayidx10_avgpooling10_mult_x_im6_b = sR_bottomRange_uid999_i_arrayidx10_avgpooling10_mult_x_im6_in[23:0];

    // redist43_sR_bottomRange_uid999_i_arrayidx10_avgpooling10_mult_x_im6_b_1_0(REG,3602)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sR_bottomRange_uid999_i_arrayidx10_avgpooling10_mult_x_im6_b_1_0_q <= $unsigned(24'b000000000000000000000000);
        end
        else if (SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist43_sR_bottomRange_uid999_i_arrayidx10_avgpooling10_mult_x_im6_b_1_0_q <= $unsigned(sR_bottomRange_uid999_i_arrayidx10_avgpooling10_mult_x_im6_b);
        end
    end

    // sR_mergedSignalTM_uid3016_i_arrayidx42_avgpooling10_mult_x_im6(BITJOIN,3015)@135
    assign sR_mergedSignalTM_uid3016_i_arrayidx42_avgpooling10_mult_x_im6_q = {redist43_sR_bottomRange_uid999_i_arrayidx10_avgpooling10_mult_x_im6_b_1_0_q, sR_bottomExtension_uid635_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx42_avgpooling10_mult_x_sums_align_0(BITSHIFT,560)@135
    assign i_arrayidx42_avgpooling10_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid3016_i_arrayidx42_avgpooling10_mult_x_im6_q, 8'b00000000 };
    assign i_arrayidx42_avgpooling10_mult_x_sums_align_0_q = i_arrayidx42_avgpooling10_mult_x_sums_align_0_qint[35:0];

    // highBBits_uid855_i_arrayidx10_avgpooling10_mult_x_im0(BITSELECT,854)@134
    assign highBBits_uid855_i_arrayidx10_avgpooling10_mult_x_im0_b = sel_for_coalesced_delay_1_b[17:4];

    // highBBits_uid850_i_arrayidx10_avgpooling10_mult_x_im0(BITSELECT,849)@133
    assign highBBits_uid850_i_arrayidx10_avgpooling10_mult_x_im0_b = i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select_b[17:1];

    // addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0(ADD,850)@133 + 1
    assign addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_a = {1'b0, i_arrayidx10_avgpooling10_mult_x_bs1_merged_bit_select_b};
    assign addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_b = {2'b00, highBBits_uid850_i_arrayidx10_avgpooling10_mult_x_im0_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_o <= $unsigned(addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_a) + $unsigned(addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_b);
        end
    end
    assign addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_q = addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_o[18:0];

    // lowRangeB_uid849_i_arrayidx10_avgpooling10_mult_x_im0(BITSELECT,848)@134
    assign lowRangeB_uid849_i_arrayidx10_avgpooling10_mult_x_im0_in = sel_for_coalesced_delay_1_b[0:0];
    assign lowRangeB_uid849_i_arrayidx10_avgpooling10_mult_x_im0_b = lowRangeB_uid849_i_arrayidx10_avgpooling10_mult_x_im0_in[0:0];

    // add_uid852_i_arrayidx10_avgpooling10_mult_x_im0(BITJOIN,851)@134
    assign add_uid852_i_arrayidx10_avgpooling10_mult_x_im0_q = {addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_q, lowRangeB_uid849_i_arrayidx10_avgpooling10_mult_x_im0_b};

    // a_subconst_49_sumAHighB_uid856_i_arrayidx10_avgpooling10_mult_x_im0(ADD,855)@134
    assign a_subconst_49_sumAHighB_uid856_i_arrayidx10_avgpooling10_mult_x_im0_a = {1'b0, add_uid852_i_arrayidx10_avgpooling10_mult_x_im0_q};
    assign a_subconst_49_sumAHighB_uid856_i_arrayidx10_avgpooling10_mult_x_im0_b = {7'b0000000, highBBits_uid855_i_arrayidx10_avgpooling10_mult_x_im0_b};
    assign a_subconst_49_sumAHighB_uid856_i_arrayidx10_avgpooling10_mult_x_im0_o = $unsigned(a_subconst_49_sumAHighB_uid856_i_arrayidx10_avgpooling10_mult_x_im0_a) + $unsigned(a_subconst_49_sumAHighB_uid856_i_arrayidx10_avgpooling10_mult_x_im0_b);
    assign a_subconst_49_sumAHighB_uid856_i_arrayidx10_avgpooling10_mult_x_im0_q = a_subconst_49_sumAHighB_uid856_i_arrayidx10_avgpooling10_mult_x_im0_o[20:0];

    // lowRangeB_uid854_i_arrayidx10_avgpooling10_mult_x_im0(BITSELECT,853)@134
    assign lowRangeB_uid854_i_arrayidx10_avgpooling10_mult_x_im0_in = sel_for_coalesced_delay_1_b[3:0];
    assign lowRangeB_uid854_i_arrayidx10_avgpooling10_mult_x_im0_b = lowRangeB_uid854_i_arrayidx10_avgpooling10_mult_x_im0_in[3:0];

    // a_subconst_49_uid857_i_arrayidx10_avgpooling10_mult_x_im0(BITJOIN,856)@134
    assign a_subconst_49_uid857_i_arrayidx10_avgpooling10_mult_x_im0_q = {a_subconst_49_sumAHighB_uid856_i_arrayidx10_avgpooling10_mult_x_im0_q, lowRangeB_uid854_i_arrayidx10_avgpooling10_mult_x_im0_b};

    // sR_bottomRange_uid861_i_arrayidx10_avgpooling10_mult_x_im0(BITSELECT,860)@134
    assign sR_bottomRange_uid861_i_arrayidx10_avgpooling10_mult_x_im0_in = a_subconst_49_uid857_i_arrayidx10_avgpooling10_mult_x_im0_q[23:0];
    assign sR_bottomRange_uid861_i_arrayidx10_avgpooling10_mult_x_im0_b = sR_bottomRange_uid861_i_arrayidx10_avgpooling10_mult_x_im0_in[23:0];

    // redist45_sR_bottomRange_uid861_i_arrayidx10_avgpooling10_mult_x_im0_b_1_0(REG,3604)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sR_bottomRange_uid861_i_arrayidx10_avgpooling10_mult_x_im0_b_1_0_q <= $unsigned(24'b000000000000000000000000);
        end
        else if (SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist45_sR_bottomRange_uid861_i_arrayidx10_avgpooling10_mult_x_im0_b_1_0_q <= $unsigned(sR_bottomRange_uid861_i_arrayidx10_avgpooling10_mult_x_im0_b);
        end
    end

    // sR_mergedSignalTM_uid2878_i_arrayidx42_avgpooling10_mult_x_im0(BITJOIN,2877)@135
    assign sR_mergedSignalTM_uid2878_i_arrayidx42_avgpooling10_mult_x_im0_q = {redist45_sR_bottomRange_uid861_i_arrayidx10_avgpooling10_mult_x_im0_b_1_0_q, sR_bottomExtension_uid635_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx42_avgpooling10_mult_x_sums_join_1(BITJOIN,561)@135
    assign i_arrayidx42_avgpooling10_mult_x_sums_join_1_q = {i_arrayidx42_avgpooling10_mult_x_sums_align_0_q, sR_mergedSignalTM_uid2878_i_arrayidx42_avgpooling10_mult_x_im0_q};

    // i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a(BITJOIN,3336)@135
    assign i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a_q = {i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, i_arrayidx42_avgpooling10_mult_x_sums_join_1_q};

    // i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a(BITSELECT,3340)@135
    assign i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_b = i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[51:0];
    assign i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_c = i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[74:52];

    // sR_bottomExtension_uid860_i_arrayidx10_avgpooling10_mult_x_im0(CONSTANT,859)
    assign sR_bottomExtension_uid860_i_arrayidx10_avgpooling10_mult_x_im0_q = $unsigned(6'b000000);

    // sR_mergedSignalTM_uid1069_i_arrayidx10_avgpooling10_mult_x_im9(BITJOIN,1068)@135
    assign sR_mergedSignalTM_uid1069_i_arrayidx10_avgpooling10_mult_x_im9_q = {redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_q, sR_bottomExtension_uid860_i_arrayidx10_avgpooling10_mult_x_im0_q};

    // i_arrayidx33_avgpooling10_mult_x_sums_align_3(BITSHIFT,527)@135
    assign i_arrayidx33_avgpooling10_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid1069_i_arrayidx10_avgpooling10_mult_x_im9_q, 6'b000000 };
    assign i_arrayidx33_avgpooling10_mult_x_sums_align_3_q = i_arrayidx33_avgpooling10_mult_x_sums_align_3_qint[27:0];

    // sR_mergedSignalTM_uid931_i_arrayidx10_avgpooling10_mult_x_im3(BITJOIN,930)@135
    assign sR_mergedSignalTM_uid931_i_arrayidx10_avgpooling10_mult_x_im3_q = {redist44_sR_bottomRange_uid930_i_arrayidx10_avgpooling10_mult_x_im3_b_1_0_q, sR_bottomExtension_uid860_i_arrayidx10_avgpooling10_mult_x_im0_q};

    // i_arrayidx33_avgpooling10_mult_x_sums_align_2(BITSHIFT,526)@135
    assign i_arrayidx33_avgpooling10_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid931_i_arrayidx10_avgpooling10_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx33_avgpooling10_mult_x_sums_align_2_q = i_arrayidx33_avgpooling10_mult_x_sums_align_2_qint[47:0];

    // i_arrayidx33_avgpooling10_mult_x_sums_join_4(BITJOIN,528)@135
    assign i_arrayidx33_avgpooling10_mult_x_sums_join_4_q = {i_arrayidx33_avgpooling10_mult_x_sums_align_3_q, i_arrayidx33_avgpooling10_mult_x_sums_align_2_q};

    // i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b(BITJOIN,3320)@135
    assign i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b_q = {GND_q, i_arrayidx33_avgpooling10_mult_x_sums_join_4_q};

    // i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b(BITSELECT,3323)@135
    assign i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_b = i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[51:0];
    assign i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_c = i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[76:52];

    // sR_mergedSignalTM_uid1000_i_arrayidx10_avgpooling10_mult_x_im6(BITJOIN,999)@135
    assign sR_mergedSignalTM_uid1000_i_arrayidx10_avgpooling10_mult_x_im6_q = {redist43_sR_bottomRange_uid999_i_arrayidx10_avgpooling10_mult_x_im6_b_1_0_q, sR_bottomExtension_uid860_i_arrayidx10_avgpooling10_mult_x_im0_q};

    // i_arrayidx33_avgpooling10_mult_x_sums_align_0(BITSHIFT,524)@135
    assign i_arrayidx33_avgpooling10_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid1000_i_arrayidx10_avgpooling10_mult_x_im6_q, 6'b000000 };
    assign i_arrayidx33_avgpooling10_mult_x_sums_align_0_q = i_arrayidx33_avgpooling10_mult_x_sums_align_0_qint[35:0];

    // sR_mergedSignalTM_uid862_i_arrayidx10_avgpooling10_mult_x_im0(BITJOIN,861)@135
    assign sR_mergedSignalTM_uid862_i_arrayidx10_avgpooling10_mult_x_im0_q = {redist45_sR_bottomRange_uid861_i_arrayidx10_avgpooling10_mult_x_im0_b_1_0_q, sR_bottomExtension_uid860_i_arrayidx10_avgpooling10_mult_x_im0_q};

    // i_arrayidx33_avgpooling10_mult_x_sums_join_1(BITJOIN,525)@135
    assign i_arrayidx33_avgpooling10_mult_x_sums_join_1_q = {i_arrayidx33_avgpooling10_mult_x_sums_align_0_q, sR_mergedSignalTM_uid862_i_arrayidx10_avgpooling10_mult_x_im0_q};

    // i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a(BITJOIN,3318)@135
    assign i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a_q = {i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, i_arrayidx33_avgpooling10_mult_x_sums_join_1_q};

    // i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a(BITSELECT,3322)@135
    assign i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_b = i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[51:0];
    assign i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_c = i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[76:52];

    // i_arrayidx24_avgpooling10_mult_x_sums_align_3(BITSHIFT,491)@135
    assign i_arrayidx24_avgpooling10_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid1069_i_arrayidx10_avgpooling10_mult_x_im9_q, 6'b000000 };
    assign i_arrayidx24_avgpooling10_mult_x_sums_align_3_q = i_arrayidx24_avgpooling10_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx24_avgpooling10_mult_x_sums_align_2(BITSHIFT,490)@135
    assign i_arrayidx24_avgpooling10_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid931_i_arrayidx10_avgpooling10_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx24_avgpooling10_mult_x_sums_align_2_q = i_arrayidx24_avgpooling10_mult_x_sums_align_2_qint[47:0];

    // i_arrayidx24_avgpooling10_mult_x_sums_join_4(BITJOIN,492)@135
    assign i_arrayidx24_avgpooling10_mult_x_sums_join_4_q = {i_arrayidx24_avgpooling10_mult_x_sums_align_3_q, i_arrayidx24_avgpooling10_mult_x_sums_align_2_q};

    // i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b(BITJOIN,3302)@135
    assign i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b_q = {GND_q, i_arrayidx24_avgpooling10_mult_x_sums_join_4_q};

    // i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b(BITSELECT,3305)@135
    assign i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_b = i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[51:0];
    assign i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_c = i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[76:52];

    // i_arrayidx24_avgpooling10_mult_x_sums_align_0(BITSHIFT,488)@135
    assign i_arrayidx24_avgpooling10_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid1000_i_arrayidx10_avgpooling10_mult_x_im6_q, 6'b000000 };
    assign i_arrayidx24_avgpooling10_mult_x_sums_align_0_q = i_arrayidx24_avgpooling10_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx24_avgpooling10_mult_x_sums_join_1(BITJOIN,489)@135
    assign i_arrayidx24_avgpooling10_mult_x_sums_join_1_q = {i_arrayidx24_avgpooling10_mult_x_sums_align_0_q, sR_mergedSignalTM_uid862_i_arrayidx10_avgpooling10_mult_x_im0_q};

    // i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a(BITJOIN,3300)@135
    assign i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a_q = {i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, i_arrayidx24_avgpooling10_mult_x_sums_join_1_q};

    // i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a(BITSELECT,3304)@135
    assign i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_b = i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[51:0];
    assign i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_c = i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[76:52];

    // i_arrayidx16_avgpooling10_mult_x_sums_align_3(BITSHIFT,455)@135
    assign i_arrayidx16_avgpooling10_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid1069_i_arrayidx10_avgpooling10_mult_x_im9_q, 6'b000000 };
    assign i_arrayidx16_avgpooling10_mult_x_sums_align_3_q = i_arrayidx16_avgpooling10_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx16_avgpooling10_mult_x_sums_align_2(BITSHIFT,454)@135
    assign i_arrayidx16_avgpooling10_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid931_i_arrayidx10_avgpooling10_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx16_avgpooling10_mult_x_sums_align_2_q = i_arrayidx16_avgpooling10_mult_x_sums_align_2_qint[47:0];

    // i_arrayidx16_avgpooling10_mult_x_sums_join_4(BITJOIN,456)@135
    assign i_arrayidx16_avgpooling10_mult_x_sums_join_4_q = {i_arrayidx16_avgpooling10_mult_x_sums_align_3_q, i_arrayidx16_avgpooling10_mult_x_sums_align_2_q};

    // i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b(BITJOIN,3284)@135
    assign i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b_q = {GND_q, i_arrayidx16_avgpooling10_mult_x_sums_join_4_q};

    // i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b(BITSELECT,3287)@135
    assign i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_b = i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[51:0];
    assign i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_c = i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[76:52];

    // i_arrayidx16_avgpooling10_mult_x_sums_align_0(BITSHIFT,452)@135
    assign i_arrayidx16_avgpooling10_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid1000_i_arrayidx10_avgpooling10_mult_x_im6_q, 6'b000000 };
    assign i_arrayidx16_avgpooling10_mult_x_sums_align_0_q = i_arrayidx16_avgpooling10_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx16_avgpooling10_mult_x_sums_join_1(BITJOIN,453)@135
    assign i_arrayidx16_avgpooling10_mult_x_sums_join_1_q = {i_arrayidx16_avgpooling10_mult_x_sums_align_0_q, sR_mergedSignalTM_uid862_i_arrayidx10_avgpooling10_mult_x_im0_q};

    // i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a(BITJOIN,3282)@135
    assign i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a_q = {i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, i_arrayidx16_avgpooling10_mult_x_sums_join_1_q};

    // i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a(BITSELECT,3286)@135
    assign i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_b = i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[51:0];
    assign i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_c = i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[76:52];

    // i_arrayidx10_avgpooling10_mult_x_sums_align_3(BITSHIFT,419)@135
    assign i_arrayidx10_avgpooling10_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid1069_i_arrayidx10_avgpooling10_mult_x_im9_q, 6'b000000 };
    assign i_arrayidx10_avgpooling10_mult_x_sums_align_3_q = i_arrayidx10_avgpooling10_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx10_avgpooling10_mult_x_sums_align_2(BITSHIFT,418)@135
    assign i_arrayidx10_avgpooling10_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid931_i_arrayidx10_avgpooling10_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx10_avgpooling10_mult_x_sums_align_2_q = i_arrayidx10_avgpooling10_mult_x_sums_align_2_qint[47:0];

    // i_arrayidx10_avgpooling10_mult_x_sums_join_4(BITJOIN,420)@135
    assign i_arrayidx10_avgpooling10_mult_x_sums_join_4_q = {i_arrayidx10_avgpooling10_mult_x_sums_align_3_q, i_arrayidx10_avgpooling10_mult_x_sums_align_2_q};

    // i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b(BITJOIN,3266)@135
    assign i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b_q = {GND_q, i_arrayidx10_avgpooling10_mult_x_sums_join_4_q};

    // i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b(BITSELECT,3269)@135
    assign i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_b = i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[51:0];
    assign i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_c = i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[76:52];

    // i_arrayidx10_avgpooling10_mult_x_sums_align_0(BITSHIFT,416)@135
    assign i_arrayidx10_avgpooling10_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid1000_i_arrayidx10_avgpooling10_mult_x_im6_q, 6'b000000 };
    assign i_arrayidx10_avgpooling10_mult_x_sums_align_0_q = i_arrayidx10_avgpooling10_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx10_avgpooling10_mult_x_sums_join_1(BITJOIN,417)@135
    assign i_arrayidx10_avgpooling10_mult_x_sums_join_1_q = {i_arrayidx10_avgpooling10_mult_x_sums_align_0_q, sR_mergedSignalTM_uid862_i_arrayidx10_avgpooling10_mult_x_im0_q};

    // i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a(BITJOIN,3264)@135
    assign i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a_q = {i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, i_arrayidx10_avgpooling10_mult_x_sums_join_1_q};

    // i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a(BITSELECT,3268)@135
    assign i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_b = i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[51:0];
    assign i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_c = i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[76:52];

    // SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0(STALLENABLE,4252)
    // Valid signal propagation
    assign SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_V0 = SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_s_tv_0 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backStall & SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_backEN = ~ (SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_v_s_0 = SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_backEN & SE_addsumAHighB_uid851_i_arrayidx10_avgpooling10_mult_x_im0_V0;
    // Backward Stall generation
    assign SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_backStall = ~ (SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_backEN == 1'b0)
            begin
                SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_R_v_0 <= SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_R_v_0 & SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_R_v_0 <= SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2(STALLREG,4478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data5 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data6 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data7 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data8 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data9 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data10 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data11 <= 50'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data12 <= 50'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data13 <= 50'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data14 <= 50'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data15 <= 46'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backStall & (SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid | SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= $unsigned(i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= $unsigned(i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= $unsigned(i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data5 <= $unsigned(i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data6 <= $unsigned(i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data7 <= $unsigned(i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data8 <= $unsigned(i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data9 <= $unsigned(i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data10 <= $unsigned(redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_1_q);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data11 <= $unsigned(join_for_coalesced_delay_4_q);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data12 <= $unsigned(join_for_coalesced_delay_6_q);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data13 <= $unsigned(join_for_coalesced_delay_8_q);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data14 <= $unsigned(join_for_coalesced_delay_10_q);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data15 <= $unsigned(join_for_coalesced_delay_12_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_i_valid = SE_redist42_sR_bottomRange_uid1068_i_arrayidx10_avgpooling10_mult_x_im9_b_1_0_V0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backStall = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_V = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid : SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D0 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data0 : i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    // Data1
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D1 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data1 : i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    // Data2
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D2 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data2 : i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    // Data3
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D3 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data3 : i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    // Data4
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D4 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data4 : i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    // Data5
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D5 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data5 : i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    // Data6
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D6 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data6 : i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    // Data7
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D7 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data7 : i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    // Data8
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D8 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data8 : i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    // Data9
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D9 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data9 : i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    // Data10
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D10 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data10 : redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_1_q;
    // Data11
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D11 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data11 : join_for_coalesced_delay_4_q;
    // Data12
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D12 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data12 : join_for_coalesced_delay_6_q;
    // Data13
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D13 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data13 : join_for_coalesced_delay_8_q;
    // Data14
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D14 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data14 : join_for_coalesced_delay_10_q;
    // Data15
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D15 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_r_data15 : join_for_coalesced_delay_12_q;

    // i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2(ADD,3342)@135 + 1
    assign i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D8};
    assign i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D9};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1(STALLENABLE,4313)
    // Valid signal propagation
    assign SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_out_stall_out | ~ (SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_wireValid = bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x(BLACKBOX,168)@135
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0_0_tpl@136
    // out out_dest_data_out_0_0_1_tpl@136
    // out out_stall_out@20000000
    // out out_valid_out@136
    avgpooling1_i_llvm_fpga_ffwd_dest_s_stru0000oling14_avgpooling10 thei_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x (
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_backStall),
        .in_valid_in(SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_0_0_0_tpl(),
        .out_dest_data_out_0_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_out_dest_data_out_0_0_1_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x(BITJOIN,3653)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_q = i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_out_dest_data_out_0_0_1_tpl;

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x(BITSELECT,3654)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_q[63:0]);

    // i_arrayidx42_avgpooling10_add_x_BitExpansion_for_a(BITJOIN,3246)@136
    assign i_arrayidx42_avgpooling10_add_x_BitExpansion_for_a_q = {GND_q, bubble_select_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_b};

    // i_arrayidx42_avgpooling10_add_x_BitSelect_for_a(BITSELECT,3250)@136
    assign i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_b = i_arrayidx42_avgpooling10_add_x_BitExpansion_for_a_q[51:0];
    assign i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c = i_arrayidx42_avgpooling10_add_x_BitExpansion_for_a_q[64:52];

    // redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_2(REG,3614)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_2_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D10);
        end
    end

    // coalesced_delay_12_0(REG,3646)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_12_0_q <= $unsigned(46'b0000000000000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            coalesced_delay_12_0_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D15);
        end
    end

    // sel_for_coalesced_delay_12(BITSELECT,3585)
    assign sel_for_coalesced_delay_12_b = $unsigned(coalesced_delay_12_0_q[22:0]);
    assign sel_for_coalesced_delay_12_c = $unsigned(coalesced_delay_12_0_q[45:23]);

    // i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2(ADD,3324)@135 + 1
    assign i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D6};
    assign i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D7};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // coalesced_delay_10_0(REG,3644)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_10_0_q <= $unsigned(50'b00000000000000000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            coalesced_delay_10_0_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D14);
        end
    end

    // sel_for_coalesced_delay_10(BITSELECT,3579)
    assign sel_for_coalesced_delay_10_b = $unsigned(coalesced_delay_10_0_q[24:0]);
    assign sel_for_coalesced_delay_10_c = $unsigned(coalesced_delay_10_0_q[49:25]);

    // i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2(ADD,3306)@135 + 1
    assign i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D4};
    assign i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D5};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // coalesced_delay_8_0(REG,3642)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_8_0_q <= $unsigned(50'b00000000000000000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            coalesced_delay_8_0_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D13);
        end
    end

    // sel_for_coalesced_delay_8(BITSELECT,3573)
    assign sel_for_coalesced_delay_8_b = $unsigned(coalesced_delay_8_0_q[24:0]);
    assign sel_for_coalesced_delay_8_c = $unsigned(coalesced_delay_8_0_q[49:25]);

    // i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2(ADD,3288)@135 + 1
    assign i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D2};
    assign i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D3};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // coalesced_delay_6_0(REG,3640)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_6_0_q <= $unsigned(50'b00000000000000000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            coalesced_delay_6_0_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D12);
        end
    end

    // sel_for_coalesced_delay_6(BITSELECT,3567)
    assign sel_for_coalesced_delay_6_b = $unsigned(coalesced_delay_6_0_q[24:0]);
    assign sel_for_coalesced_delay_6_c = $unsigned(coalesced_delay_6_0_q[49:25]);

    // i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2(ADD,3270)@135 + 1
    assign i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D0};
    assign i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // coalesced_delay_4_0(REG,3638)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_4_0_q <= $unsigned(50'b00000000000000000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            coalesced_delay_4_0_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_D11);
        end
    end

    // sel_for_coalesced_delay_4(BITSELECT,3561)
    assign sel_for_coalesced_delay_4_b = $unsigned(coalesced_delay_4_0_q[24:0]);
    assign sel_for_coalesced_delay_4_c = $unsigned(coalesced_delay_4_0_q[49:25]);

    // redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_3(REG,3615)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_3_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_3_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D15);
        end
    end

    // SE_out_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137(STALLENABLE,3877)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_wireValid = i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_out_valid_out;

    // redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4(REG,3616)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_backEN == 1'b1)
        begin
            redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_q <= $unsigned(SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_D0);
        end
    end

    // i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137(BLACKBOX,275)@138
    // in in_stall_in@20000000
    // out out_data_out@139
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@139
    avgpooling1_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_0 thei_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137 (
        .in_data_in(redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_feedback_stall_out_27),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling13_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_V0),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_out_feedback_valid_out_27),
        .out_stall_out(i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137(STALLENABLE,3876)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_V0 = SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_backStall = i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_and0 = SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_V0;
    assign SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V5 & SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_and0;

    // SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4(STALLENABLE,4269)
    // Valid signal propagation
    assign SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_V0 = SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_R_v_0;
    // Stall signal propagation
    assign SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_s_tv_0 = SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_backStall & SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_R_v_0;
    // Backward Enable generation
    assign SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_backEN = ~ (SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_v_s_0 = SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_backEN & SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_V;
    // Backward Stall generation
    assign SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_backStall = ~ (SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_backEN == 1'b0)
            begin
                SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_R_v_0 <= SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_R_v_0 & SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_s_tv_0;
            end
            else
            begin
                SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_R_v_0 <= SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_v_s_0;
            end

        end
    end

    // SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4(STALLREG,4510)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_r_valid <= 1'b0;
            SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_r_valid <= SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_backStall & (SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_r_valid | SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_i_valid);

            if (SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_r_data0 <= $unsigned(redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_i_valid = SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_V2;
    // Stall signal propagation
    assign SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_backStall = SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_r_valid | ~ (SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_i_valid);

    // Valid
    assign SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_V = SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_r_valid == 1'b1 ? SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_r_valid : SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_i_valid;

    assign SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_D0 = SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_r_valid == 1'b1 ? SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_r_data0 : redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_3_q;

    // i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2(ADD,3343)@136 + 1
    assign i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D14;
    assign i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D12}, 1'b1 };
    assign i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D13}, i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_o <= 25'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_o[23:1];

    // i_arrayidx42_avgpooling10_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3466)@137
    assign i_arrayidx42_avgpooling10_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx42_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3468)@137
    assign i_arrayidx42_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx42_avgpooling10_add_x_BitSelect_for_b_tessel1_0_b};

    // redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0(REG,3586)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_q <= $unsigned(13'b0000000000000);
        end
        else if (SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_backEN == 1'b1)
        begin
            redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_q <= $unsigned(i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c);
        end
    end

    // SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0(STALLENABLE,4237)
    // Valid signal propagation
    assign SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_V0 = SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_s_tv_0 = SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_backStall & SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_backEN = ~ (SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_v_s_0 = SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_V1;
    // Backward Stall generation
    assign SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_backStall = ~ (SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_backEN == 1'b0)
            begin
                SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_R_v_0 <= SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_R_v_0 & SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_R_v_0 <= SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_v_s_0;
            end

        end
    end

    // redist55_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_136_1(REG,3619)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_136_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist55_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_136_1_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D15);
        end
    end

    // coalesced_delay_11_0(REG,3645)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_11_0_q <= $unsigned(38'b00000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            coalesced_delay_11_0_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D14);
        end
    end

    // sel_for_coalesced_delay_11(BITSELECT,3582)
    assign sel_for_coalesced_delay_11_b = $unsigned(coalesced_delay_11_0_q[18:0]);
    assign sel_for_coalesced_delay_11_c = $unsigned(coalesced_delay_11_0_q[37:19]);

    // coalesced_delay_9_0(REG,3643)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_9_0_q <= $unsigned(40'b0000000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            coalesced_delay_9_0_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D9);
        end
    end

    // sel_for_coalesced_delay_9(BITSELECT,3576)
    assign sel_for_coalesced_delay_9_b = $unsigned(coalesced_delay_9_0_q[19:0]);
    assign sel_for_coalesced_delay_9_c = $unsigned(coalesced_delay_9_0_q[39:20]);

    // coalesced_delay_5_0(REG,3639)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_5_0_q <= $unsigned(40'b0000000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            coalesced_delay_5_0_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D8);
        end
    end

    // sel_for_coalesced_delay_5(BITSELECT,3564)
    assign sel_for_coalesced_delay_5_b = $unsigned(coalesced_delay_5_0_q[19:0]);
    assign sel_for_coalesced_delay_5_c = $unsigned(coalesced_delay_5_0_q[39:20]);

    // coalesced_delay_7_0(REG,3641)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_7_0_q <= $unsigned(40'b0000000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            coalesced_delay_7_0_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D13);
        end
    end

    // sel_for_coalesced_delay_7(BITSELECT,3570)
    assign sel_for_coalesced_delay_7_b = $unsigned(coalesced_delay_7_0_q[19:0]);
    assign sel_for_coalesced_delay_7_c = $unsigned(coalesced_delay_7_0_q[39:20]);

    // coalesced_delay_3_0(REG,3637)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_3_0_q <= $unsigned(40'b0000000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            coalesced_delay_3_0_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D12);
        end
    end

    // sel_for_coalesced_delay_3(BITSELECT,3558)
    assign sel_for_coalesced_delay_3_b = $unsigned(coalesced_delay_3_0_q[19:0]);
    assign sel_for_coalesced_delay_3_c = $unsigned(coalesced_delay_3_0_q[39:20]);

    // SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(STALLREG,4485)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= 20'bxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= 20'bxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= 20'bxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data4 <= 20'bxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data5 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data6 <= 20'bxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data7 <= 20'bxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data8 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data9 <= 20'bxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data10 <= 20'bxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data11 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data12 <= 19'bxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data13 <= 19'bxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data14 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data15 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall & (SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid | SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= $unsigned(sel_for_coalesced_delay_3_c);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= $unsigned(sel_for_coalesced_delay_3_b);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= $unsigned(i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= $unsigned(sel_for_coalesced_delay_7_c);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data4 <= $unsigned(sel_for_coalesced_delay_7_b);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data5 <= $unsigned(i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data6 <= $unsigned(sel_for_coalesced_delay_5_c);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data7 <= $unsigned(sel_for_coalesced_delay_5_b);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data8 <= $unsigned(i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data9 <= $unsigned(sel_for_coalesced_delay_9_c);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data10 <= $unsigned(sel_for_coalesced_delay_9_b);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data11 <= $unsigned(i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data12 <= $unsigned(sel_for_coalesced_delay_11_c);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data13 <= $unsigned(sel_for_coalesced_delay_11_b);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data14 <= $unsigned(i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data15 <= $unsigned(redist55_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_136_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_i_valid = SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid : SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D0 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data0 : sel_for_coalesced_delay_3_c;
    // Data1
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D1 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data1 : sel_for_coalesced_delay_3_b;
    // Data2
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D2 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data2 : i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data3
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D3 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data3 : sel_for_coalesced_delay_7_c;
    // Data4
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D4 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data4 : sel_for_coalesced_delay_7_b;
    // Data5
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D5 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data5 : i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data6
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D6 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data6 : sel_for_coalesced_delay_5_c;
    // Data7
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D7 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data7 : sel_for_coalesced_delay_5_b;
    // Data8
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D8 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data8 : i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data9
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D9 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data9 : sel_for_coalesced_delay_9_c;
    // Data10
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D10 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data10 : sel_for_coalesced_delay_9_b;
    // Data11
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D11 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data11 : i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data12
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D12 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data12 : sel_for_coalesced_delay_11_c;
    // Data13
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D13 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data13 : sel_for_coalesced_delay_11_b;
    // Data14
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D14 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data14 : i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data15
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D15 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data15 : redist55_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_136_1_q;

    // i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(ADD,3334)@137 + 1
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D14;
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D12}, 1'b1 };
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D13}, i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= 21'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o[19:1];

    // i_arrayidx42_avgpooling10_dupName_0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3449)@138
    assign i_arrayidx42_avgpooling10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx42_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3451)@138
    assign i_arrayidx42_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx42_avgpooling10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx42_avgpooling10_add_x_p2_of_2(ADD,3253)@137 + 1
    assign i_arrayidx42_avgpooling10_add_x_p2_of_2_cin = SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_D2;
    assign i_arrayidx42_avgpooling10_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx42_avgpooling10_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_D1}, i_arrayidx42_avgpooling10_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx42_avgpooling10_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx42_avgpooling10_add_x_p2_of_2_o <= $unsigned(i_arrayidx42_avgpooling10_add_x_p2_of_2_a) + $unsigned(i_arrayidx42_avgpooling10_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx42_avgpooling10_add_x_p2_of_2_q = i_arrayidx42_avgpooling10_add_x_p2_of_2_o[13:1];

    // i_arrayidx42_avgpooling10_dupName_0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,3444)@138
    assign i_arrayidx42_avgpooling10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx42_avgpooling10_add_x_p2_of_2_q[11:0]);

    // i_arrayidx42_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,3446)@138
    assign i_arrayidx42_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx42_avgpooling10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b};

    // redist55_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_136_2(REG,3620)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_136_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            redist55_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_136_2_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D15);
        end
    end

    // SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130(STALLENABLE,3872)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_V0 = SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_backStall = i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_wireValid = SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_V;

    // SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130(STALLREG,4509)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_r_valid <= SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_backStall & (SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_r_valid | SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_r_data0 <= $unsigned(redist55_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_136_2_q);
                SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling13_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_and0 = SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V2;
    assign SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V3 & SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_backStall = SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_V = SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_r_valid : SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_D0 = SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_r_data0 : redist55_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_136_2_q;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_D1 = SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_r_data1 : bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling13_b;

    // i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(ADD,3316)@137 + 1
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D11;
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D9}, 1'b1 };
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D10}, i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= 22'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o[20:1];

    // i_arrayidx33_avgpooling10_dupName_0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3426)@138
    assign i_arrayidx33_avgpooling10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx33_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3428)@138
    assign i_arrayidx33_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx33_avgpooling10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx33_avgpooling10_add_x_p2_of_2(ADD,3226)@137 + 1
    assign i_arrayidx33_avgpooling10_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D11;
    assign i_arrayidx33_avgpooling10_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx33_avgpooling10_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D10}, i_arrayidx33_avgpooling10_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx33_avgpooling10_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx33_avgpooling10_add_x_p2_of_2_o <= $unsigned(i_arrayidx33_avgpooling10_add_x_p2_of_2_a) + $unsigned(i_arrayidx33_avgpooling10_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx33_avgpooling10_add_x_p2_of_2_q = i_arrayidx33_avgpooling10_add_x_p2_of_2_o[13:1];

    // i_arrayidx33_avgpooling10_dupName_0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,3421)@138
    assign i_arrayidx33_avgpooling10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx33_avgpooling10_add_x_p2_of_2_q[11:0]);

    // i_arrayidx33_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,3423)@138
    assign i_arrayidx33_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx33_avgpooling10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b};

    // i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(ADD,3280)@137 + 1
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D8;
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D6}, 1'b1 };
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D7}, i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= 22'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o[20:1];

    // i_arrayidx16_avgpooling10_dupName_0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3380)@138
    assign i_arrayidx16_avgpooling10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx16_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3382)@138
    assign i_arrayidx16_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx16_avgpooling10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx16_avgpooling10_add_x_p2_of_2(ADD,3172)@137 + 1
    assign i_arrayidx16_avgpooling10_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D7;
    assign i_arrayidx16_avgpooling10_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D2}, 1'b1 };
    assign i_arrayidx16_avgpooling10_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D6}, i_arrayidx16_avgpooling10_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_avgpooling10_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx16_avgpooling10_add_x_p2_of_2_o <= $unsigned(i_arrayidx16_avgpooling10_add_x_p2_of_2_a) + $unsigned(i_arrayidx16_avgpooling10_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx16_avgpooling10_add_x_p2_of_2_q = i_arrayidx16_avgpooling10_add_x_p2_of_2_o[13:1];

    // i_arrayidx16_avgpooling10_dupName_0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,3375)@138
    assign i_arrayidx16_avgpooling10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx16_avgpooling10_add_x_p2_of_2_q[11:0]);

    // i_arrayidx16_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,3377)@138
    assign i_arrayidx16_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx16_avgpooling10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b};

    // i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(ADD,3298)@137 + 1
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D5;
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D3}, 1'b1 };
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D4}, i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= 22'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o[20:1];

    // i_arrayidx24_avgpooling10_dupName_0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3403)@138
    assign i_arrayidx24_avgpooling10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx24_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3405)@138
    assign i_arrayidx24_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx24_avgpooling10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx24_avgpooling10_add_x_p2_of_2(ADD,3199)@137 + 1
    assign i_arrayidx24_avgpooling10_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D9;
    assign i_arrayidx24_avgpooling10_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D1}, 1'b1 };
    assign i_arrayidx24_avgpooling10_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D8}, i_arrayidx24_avgpooling10_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_avgpooling10_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx24_avgpooling10_add_x_p2_of_2_o <= $unsigned(i_arrayidx24_avgpooling10_add_x_p2_of_2_a) + $unsigned(i_arrayidx24_avgpooling10_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx24_avgpooling10_add_x_p2_of_2_q = i_arrayidx24_avgpooling10_add_x_p2_of_2_o[13:1];

    // i_arrayidx24_avgpooling10_dupName_0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,3398)@138
    assign i_arrayidx24_avgpooling10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx24_avgpooling10_add_x_p2_of_2_q[11:0]);

    // i_arrayidx24_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,3400)@138
    assign i_arrayidx24_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx24_avgpooling10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b};

    // i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(ADD,3262)@137 + 1
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D2;
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D1}, i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= 22'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o[20:1];

    // i_arrayidx10_avgpooling10_dupName_0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3357)@138
    assign i_arrayidx10_avgpooling10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx10_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3359)@138
    assign i_arrayidx10_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx10_avgpooling10_dupName_0_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx10_avgpooling10_add_x_p2_of_2(ADD,3145)@137 + 1
    assign i_arrayidx10_avgpooling10_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D5;
    assign i_arrayidx10_avgpooling10_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D3}, 1'b1 };
    assign i_arrayidx10_avgpooling10_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D4}, i_arrayidx10_avgpooling10_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_avgpooling10_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_avgpooling10_add_x_p2_of_2_o <= $unsigned(i_arrayidx10_avgpooling10_add_x_p2_of_2_a) + $unsigned(i_arrayidx10_avgpooling10_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx10_avgpooling10_add_x_p2_of_2_q = i_arrayidx10_avgpooling10_add_x_p2_of_2_o[13:1];

    // i_arrayidx10_avgpooling10_dupName_0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,3352)@138
    assign i_arrayidx10_avgpooling10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx10_avgpooling10_add_x_p2_of_2_q[11:0]);

    // i_arrayidx10_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,3354)@138
    assign i_arrayidx10_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx10_avgpooling10_dupName_0_add_x_BitSelect_for_a_tessel1_0_b};

    // SE_i_arrayidx10_avgpooling10_add_x_p2_of_2(STALLENABLE,4066)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_V0 = SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_v_s_0 = SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_backEN & SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_R_v_0 & SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2(ADD,3216)@138 + 1
    assign i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D7};
    assign i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D5};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_o <= $unsigned(i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_a) + $unsigned(i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_c[0] = i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_o[52];
    assign i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q = i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_o[51:0];

    // i_arrayidx33_avgpooling10_dupName_0_add_x_p2_of_2(ADD,3208)@138 + 1
    assign i_arrayidx33_avgpooling10_dupName_0_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D11;
    assign i_arrayidx33_avgpooling10_dupName_0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D9}, 1'b1 };
    assign i_arrayidx33_avgpooling10_dupName_0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D10}, i_arrayidx33_avgpooling10_dupName_0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx33_avgpooling10_dupName_0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx33_avgpooling10_dupName_0_add_x_p2_of_2_o <= $unsigned(i_arrayidx33_avgpooling10_dupName_0_add_x_p2_of_2_a) + $unsigned(i_arrayidx33_avgpooling10_dupName_0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx33_avgpooling10_dupName_0_add_x_p2_of_2_q = i_arrayidx33_avgpooling10_dupName_0_add_x_p2_of_2_o[13:1];

    // i_arrayidx33_avgpooling10_dupName_1_add_x_BitSelect_for_a_tessel1_0(BITSELECT,3431)@139
    assign i_arrayidx33_avgpooling10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx33_avgpooling10_dupName_0_add_x_p2_of_2_q[11:0]);

    // i_arrayidx33_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,3433)@139
    assign i_arrayidx33_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx33_avgpooling10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b};

    // i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2(ADD,3162)@138 + 1
    assign i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D6};
    assign i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D2};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_o <= $unsigned(i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_a) + $unsigned(i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_c[0] = i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_o[52];
    assign i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_q = i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_o[51:0];

    // i_arrayidx16_avgpooling10_dupName_0_add_x_p2_of_2(ADD,3154)@138 + 1
    assign i_arrayidx16_avgpooling10_dupName_0_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D8;
    assign i_arrayidx16_avgpooling10_dupName_0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D6}, 1'b1 };
    assign i_arrayidx16_avgpooling10_dupName_0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D7}, i_arrayidx16_avgpooling10_dupName_0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_avgpooling10_dupName_0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx16_avgpooling10_dupName_0_add_x_p2_of_2_o <= $unsigned(i_arrayidx16_avgpooling10_dupName_0_add_x_p2_of_2_a) + $unsigned(i_arrayidx16_avgpooling10_dupName_0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx16_avgpooling10_dupName_0_add_x_p2_of_2_q = i_arrayidx16_avgpooling10_dupName_0_add_x_p2_of_2_o[13:1];

    // i_arrayidx16_avgpooling10_dupName_1_add_x_BitSelect_for_a_tessel1_0(BITSELECT,3385)@139
    assign i_arrayidx16_avgpooling10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx16_avgpooling10_dupName_0_add_x_p2_of_2_q[11:0]);

    // i_arrayidx16_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,3387)@139
    assign i_arrayidx16_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx16_avgpooling10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b};

    // i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2(ADD,3189)@138 + 1
    assign i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D3};
    assign i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D4};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_o <= $unsigned(i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_a) + $unsigned(i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_c[0] = i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_o[52];
    assign i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_q = i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_o[51:0];

    // i_arrayidx24_avgpooling10_dupName_0_add_x_p2_of_2(ADD,3181)@138 + 1
    assign i_arrayidx24_avgpooling10_dupName_0_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D5;
    assign i_arrayidx24_avgpooling10_dupName_0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D3}, 1'b1 };
    assign i_arrayidx24_avgpooling10_dupName_0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D4}, i_arrayidx24_avgpooling10_dupName_0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_avgpooling10_dupName_0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx24_avgpooling10_dupName_0_add_x_p2_of_2_o <= $unsigned(i_arrayidx24_avgpooling10_dupName_0_add_x_p2_of_2_a) + $unsigned(i_arrayidx24_avgpooling10_dupName_0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx24_avgpooling10_dupName_0_add_x_p2_of_2_q = i_arrayidx24_avgpooling10_dupName_0_add_x_p2_of_2_o[13:1];

    // i_arrayidx24_avgpooling10_dupName_1_add_x_BitSelect_for_a_tessel1_0(BITSELECT,3408)@139
    assign i_arrayidx24_avgpooling10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx24_avgpooling10_dupName_0_add_x_p2_of_2_q[11:0]);

    // i_arrayidx24_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,3410)@139
    assign i_arrayidx24_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx24_avgpooling10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b};

    // i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2(ADD,3135)@138 + 1
    assign i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D0};
    assign i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_o <= $unsigned(i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_a) + $unsigned(i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_c[0] = i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_o[52];
    assign i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_q = i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_o[51:0];

    // i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3365)
    assign i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel1_0_b = c_i32_074_q[29:18];

    // i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3367)@139
    assign i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2(ADD,3127)@138 + 1
    assign i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D2;
    assign i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D1}, i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_o <= $unsigned(i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_a) + $unsigned(i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_q = i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_o[13:1];

    // i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_a_tessel1_0(BITSELECT,3362)@139
    assign i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_q[11:0]);

    // i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,3364)@139
    assign i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b};

    // SE_i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel1_0(STALLENABLE,4168)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel1_0_V0 = 1'b1;

    // SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2(STALLENABLE,4061)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_V0 = SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_s_tv_0 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_backStall & SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_v_s_0 = SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_backEN & SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_R_v_0 & SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2(STALLREG,4495)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data2 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data3 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data4 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data5 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data6 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data7 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data8 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data9 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data10 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data11 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_valid <= SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data3 <= $unsigned(i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data4 <= $unsigned(i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data5 <= $unsigned(i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data6 <= $unsigned(i_arrayidx24_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data7 <= $unsigned(i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data8 <= $unsigned(i_arrayidx16_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data9 <= $unsigned(i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data10 <= $unsigned(i_arrayidx33_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data11 <= $unsigned(i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_and0 = SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_and1 = SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_V0 & SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_i_valid = SE_i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel1_0_V0 & SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_backStall = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_V = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D0 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data0 : i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D1 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data1 : i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D2 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data2 : i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data3
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D3 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data3 : i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data4
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D4 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data4 : i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data5
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D5 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data5 : i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_c;
    // Data6
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D6 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data6 : i_arrayidx24_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data7
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D7 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data7 : i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_c;
    // Data8
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D8 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data8 : i_arrayidx16_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data9
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D9 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data9 : i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_c;
    // Data10
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D10 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data10 : i_arrayidx33_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data11
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D11 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_r_data11 : i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_c;

    // SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2(STALLENABLE,4057)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_V0 = SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_backStall & SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_v_s_0 = SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_backEN & SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_R_v_0 & SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2(STALLREG,4494)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data2 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data3 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data4 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data5 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data6 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data7 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data8 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data9 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data10 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data11 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_valid <= SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx10_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data3 <= $unsigned(i_arrayidx24_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data4 <= $unsigned(i_arrayidx24_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data5 <= $unsigned(i_arrayidx24_avgpooling10_dupName_0_add_x_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data6 <= $unsigned(i_arrayidx16_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data7 <= $unsigned(i_arrayidx16_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data8 <= $unsigned(i_arrayidx16_avgpooling10_dupName_0_add_x_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data9 <= $unsigned(i_arrayidx33_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data10 <= $unsigned(i_arrayidx33_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data11 <= $unsigned(i_arrayidx33_avgpooling10_dupName_0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_and0 = SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_and1 = SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_V0 & SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_i_valid = SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V0 & SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_backStall = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_V = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D0 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data0 : i_arrayidx10_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D1 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data1 : i_arrayidx10_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D2 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data2 : i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_c;
    // Data3
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D3 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data3 : i_arrayidx24_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data4
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D4 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data4 : i_arrayidx24_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data5
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D5 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data5 : i_arrayidx24_avgpooling10_dupName_0_add_x_p1_of_2_c;
    // Data6
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D6 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data6 : i_arrayidx16_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data7
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D7 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data7 : i_arrayidx16_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data8
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D8 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data8 : i_arrayidx16_avgpooling10_dupName_0_add_x_p1_of_2_c;
    // Data9
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D9 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data9 : i_arrayidx33_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data10
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D10 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data10 : i_arrayidx33_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data11
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_D11 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_r_data11 : i_arrayidx33_avgpooling10_dupName_0_add_x_p1_of_2_c;

    // SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(STALLENABLE,4104)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V0 = SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V1 = SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V2 = SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 = SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 = SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_backStall & SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or0 = SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or1 = SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 | SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or0;
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN = ~ (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 | SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_v_s_0 = SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN & SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall = ~ (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= 1'b0;
            SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 & SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 & SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 & SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

        end
    end

    // i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3463)@139
    assign i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c};

    // i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2(ADD,3235)@138 + 1
    assign i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_cin = SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_D2;
    assign i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_D1}, i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_o <= $unsigned(i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_a) + $unsigned(i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_q = i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_o[13:1];

    // i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_a_tessel1_0(BITSELECT,3454)@139
    assign i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_q[11:0]);

    // i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,3456)@139
    assign i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_a_tessel1_0_b};

    // SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(STALLENABLE,4207)
    // Valid signal propagation
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V0 = 1'b1;
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V1 = 1'b1;

    // SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2(STALLREG,4487)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_valid <= SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_and0 = SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_and1 = SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_V0 & SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_i_valid = SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V1 & SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_backStall = SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_V = SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_D0 = SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_data0 : i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_D1 = SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_data1 : i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_D2 = SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_r_data2 : i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_c;

    // SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2(STALLENABLE,4091)
    // Valid signal propagation
    assign SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_V0 = SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_backStall & SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_v_s_0 = SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_backEN & SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_R_v_0 & SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2(STALLREG,4486)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_valid <= SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx42_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx42_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_and0 = SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_and1 = SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_V0 & SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_i_valid = SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V1 & SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_backStall = SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_V = SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_D0 = SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_data0 : i_arrayidx42_avgpooling10_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_D1 = SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_data1 : i_arrayidx42_avgpooling10_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_D2 = SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_r_data2 : i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_c;

    // SE_i_arrayidx42_avgpooling10_add_x_p2_of_2(STALLENABLE,4098)
    // Valid signal propagation
    assign SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_V0 = SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_v_s_0 = SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_backEN & SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_R_v_0 & SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2(STALLREG,4484)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_valid <= SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_data0 <= $unsigned(redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_q);
                SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx42_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx42_avgpooling10_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_and0 = SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_and1 = SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_V1 & SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_i_valid = SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_V0 & SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_backStall = SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_V = SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_D0 = SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_data0 : redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_q;
    // Data1
    assign SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_D1 = SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_data1 : i_arrayidx42_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_D2 = SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_r_data2 : i_arrayidx42_avgpooling10_add_x_p1_of_2_c;

    // i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2(ADD,3325)@136 + 1
    assign i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D11;
    assign i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D9}, 1'b1 };
    assign i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D10}, i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_o <= 27'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_o[25:1];

    // i_arrayidx33_avgpooling10_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3439)@137
    assign i_arrayidx33_avgpooling10_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx33_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3441)@137
    assign i_arrayidx33_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx33_avgpooling10_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2(ADD,3307)@136 + 1
    assign i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D8;
    assign i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D6}, 1'b1 };
    assign i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D7}, i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_o <= 27'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_o[25:1];

    // i_arrayidx24_avgpooling10_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3416)@137
    assign i_arrayidx24_avgpooling10_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx24_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3418)@137
    assign i_arrayidx24_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx24_avgpooling10_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2(ADD,3289)@136 + 1
    assign i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D5;
    assign i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D3}, 1'b1 };
    assign i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D4}, i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_o <= 27'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_o[25:1];

    // i_arrayidx16_avgpooling10_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3393)@137
    assign i_arrayidx16_avgpooling10_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx16_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3395)@137
    assign i_arrayidx16_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx16_avgpooling10_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2(ADD,3271)@136 + 1
    assign i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D2;
    assign i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D1}, i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_o <= 27'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_o[25:1];

    // i_arrayidx10_avgpooling10_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3370)@137
    assign i_arrayidx10_avgpooling10_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx10_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3372)@137
    assign i_arrayidx10_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx10_avgpooling10_add_x_BitSelect_for_b_tessel1_0_b};

    // SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2(STALLENABLE,4315)
    // Valid signal propagation
    assign SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_out_stall_out | ~ (SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_wireValid = bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x(STALLENABLE,3784)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_consumed0 = (~ (SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_consumed1 = (~ (SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_StallValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_backStall & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_or0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_backStall = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_V1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_wireValid = i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_out_valid_out;

    // i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x(BLACKBOX,169)@135
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0_0_tpl@136
    // out out_dest_data_out_0_0_1_tpl@136
    // out out_stall_out@20000000
    // out out_valid_out@136
    avgpooling1_i_llvm_fpga_ffwd_dest_s_stru0000oling15_avgpooling10 thei_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x (
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_backStall),
        .in_valid_in(SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_0_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_out_dest_data_out_0_0_0_tpl),
        .out_dest_data_out_0_0_1_tpl(),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x(BITJOIN,3656)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_q = i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_out_dest_data_out_0_0_0_tpl;

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x(BITSELECT,3657)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_q[63:0]);

    // i_arrayidx10_avgpooling10_add_x_BitExpansion_for_a(BITJOIN,3138)@136
    assign i_arrayidx10_avgpooling10_add_x_BitExpansion_for_a_q = {GND_q, bubble_select_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_b};

    // i_arrayidx10_avgpooling10_add_x_BitSelect_for_a(BITSELECT,3142)@136
    assign i_arrayidx10_avgpooling10_add_x_BitSelect_for_a_b = i_arrayidx10_avgpooling10_add_x_BitExpansion_for_a_q[51:0];
    assign i_arrayidx10_avgpooling10_add_x_BitSelect_for_a_c = i_arrayidx10_avgpooling10_add_x_BitExpansion_for_a_q[64:52];

    // redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0(REG,3588)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_q <= $unsigned(13'b0000000000000);
        end
        else if (SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_backEN == 1'b1)
        begin
            redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_q <= $unsigned(i_arrayidx10_avgpooling10_add_x_BitSelect_for_a_c);
        end
    end

    // SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0(STALLENABLE,4239)
    // Valid signal propagation
    assign SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_V0 = SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_s_tv_0 = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_backStall & SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_backEN = ~ (SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_v_s_0 = SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_V1;
    // Backward Stall generation
    assign SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_backStall = ~ (SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_backEN == 1'b0)
            begin
                SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_R_v_0 <= SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_R_v_0 & SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_R_v_0 <= SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2(STALLREG,4493)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data2 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data3 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data4 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data5 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data6 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data7 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data8 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data9 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data10 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data11 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_valid <= SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data0 <= $unsigned(redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_q);
                SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data1 <= $unsigned(redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_q);
                SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data2 <= $unsigned(redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_q);
                SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data3 <= $unsigned(redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_q);
                SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data4 <= $unsigned(i_arrayidx10_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data5 <= $unsigned(i_arrayidx10_avgpooling10_add_x_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data6 <= $unsigned(i_arrayidx16_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data7 <= $unsigned(i_arrayidx16_avgpooling10_add_x_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data8 <= $unsigned(i_arrayidx24_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data9 <= $unsigned(i_arrayidx24_avgpooling10_add_x_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data10 <= $unsigned(i_arrayidx33_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data11 <= $unsigned(i_arrayidx33_avgpooling10_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_and0 = SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_and1 = SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_V0 & SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_i_valid = SE_redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_V0 & SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_backStall = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_V = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D0 = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data0 : redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_q;
    // Data1
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D1 = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data1 : redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_q;
    // Data2
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D2 = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data2 : redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_q;
    // Data3
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D3 = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data3 : redist26_i_arrayidx33_avgpooling10_add_x_BitSelect_for_a_c_1_0_q;
    // Data4
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D4 = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data4 : i_arrayidx10_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data5
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D5 = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data5 : i_arrayidx10_avgpooling10_add_x_p1_of_2_c;
    // Data6
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D6 = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data6 : i_arrayidx16_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data7
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D7 = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data7 : i_arrayidx16_avgpooling10_add_x_p1_of_2_c;
    // Data8
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D8 = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data8 : i_arrayidx24_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data9
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D9 = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data9 : i_arrayidx24_avgpooling10_add_x_p1_of_2_c;
    // Data10
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D10 = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data10 : i_arrayidx33_avgpooling10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data11
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_D11 = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_r_data11 : i_arrayidx33_avgpooling10_add_x_p1_of_2_c;

    // SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2(STALLENABLE,4110)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_V0 = SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_V1 = SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_V2 = SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0 = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_backStall & SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 = SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_backStall & SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 = SR_SE_redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_4_backStall & SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_or0 = SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_or1 = SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 | SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_or0;
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_backEN = ~ (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 | SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0 = SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_backEN & SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_backStall = ~ (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= 1'b0;
            SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 & SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 & SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 & SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2(STALLREG,4483)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= 25'bxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= 25'bxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= 25'bxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data4 <= 25'bxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data5 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data6 <= 25'bxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data7 <= 25'bxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data8 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data9 <= 25'bxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data10 <= 25'bxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data11 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data12 <= 23'bxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data13 <= 23'bxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data14 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data15 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_backStall & (SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid | SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= $unsigned(sel_for_coalesced_delay_4_c);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= $unsigned(sel_for_coalesced_delay_4_b);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= $unsigned(i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= $unsigned(sel_for_coalesced_delay_6_c);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data4 <= $unsigned(sel_for_coalesced_delay_6_b);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data5 <= $unsigned(i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data6 <= $unsigned(sel_for_coalesced_delay_8_c);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data7 <= $unsigned(sel_for_coalesced_delay_8_b);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data8 <= $unsigned(i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data9 <= $unsigned(sel_for_coalesced_delay_10_c);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data10 <= $unsigned(sel_for_coalesced_delay_10_b);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data11 <= $unsigned(i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data12 <= $unsigned(sel_for_coalesced_delay_12_c);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data13 <= $unsigned(sel_for_coalesced_delay_12_b);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data14 <= $unsigned(i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data15 <= $unsigned(redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_i_valid = SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_backStall = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_V = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid : SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D0 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data0 : sel_for_coalesced_delay_4_c;
    // Data1
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D1 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data1 : sel_for_coalesced_delay_4_b;
    // Data2
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D2 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data2 : i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data3
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D3 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data3 : sel_for_coalesced_delay_6_c;
    // Data4
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D4 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data4 : sel_for_coalesced_delay_6_b;
    // Data5
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D5 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data5 : i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data6
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D6 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data6 : sel_for_coalesced_delay_8_c;
    // Data7
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D7 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data7 : sel_for_coalesced_delay_8_b;
    // Data8
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D8 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data8 : i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data9
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D9 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data9 : sel_for_coalesced_delay_10_c;
    // Data10
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D10 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data10 : sel_for_coalesced_delay_10_b;
    // Data11
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D11 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data11 : i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data12
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D12 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data12 : sel_for_coalesced_delay_12_c;
    // Data13
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D13 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data13 : sel_for_coalesced_delay_12_b;
    // Data14
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D14 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data14 : i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data15
    assign SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_D15 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_r_data15 : redist53_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out_136_2_q;

    // SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2(STALLREG,4490)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data2 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data3 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data4 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data5 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data6 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data7 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_valid <= SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_avgpooling10_add_x_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_avgpooling10_add_x_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data2 <= $unsigned(i_arrayidx10_avgpooling10_add_x_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data3 <= $unsigned(i_arrayidx10_avgpooling10_add_x_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data4 <= $unsigned(i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data5 <= $unsigned(i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data6 <= $unsigned(i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data7 <= $unsigned(i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_and0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling15_avgpooling11_aunroll_x_V0;
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_i_valid = SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_V0 & SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_backStall = SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_V = SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D0 = SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data0 : i_arrayidx10_avgpooling10_add_x_BitSelect_for_a_b;
    // Data1
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D1 = SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data1 : i_arrayidx10_avgpooling10_add_x_BitSelect_for_a_b;
    // Data2
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D2 = SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data2 : i_arrayidx10_avgpooling10_add_x_BitSelect_for_a_b;
    // Data3
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D3 = SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data3 : i_arrayidx10_avgpooling10_add_x_BitSelect_for_a_b;
    // Data4
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D4 = SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data4 : i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_q;
    // Data5
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D5 = SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data5 : i_arrayidx16_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_q;
    // Data6
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D6 = SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data6 : i_arrayidx24_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_q;
    // Data7
    assign SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D7 = SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_r_data7 : i_arrayidx33_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_q;

    // SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2(STALLENABLE,4109)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_V0 = SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_V1 = SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_V2 = SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_backStall & SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 = SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p2_of_2_backStall & SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2 = SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_backStall & SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_or0 = SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_or1 = SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 | SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_or0;
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backEN = ~ (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2 | SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0 = SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backEN & SR_SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backStall = ~ (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= 1'b0;
            SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 & SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 & SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 & SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x(STALLENABLE,3782)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_consumed0 = (~ (SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_consumed1 = (~ (SE_redist24_i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_StallValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_backStall & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_or0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_backStall = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_V1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_wireValid = i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_out_valid_out;

    // SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2(STALLREG,4479)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_r_valid <= SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_b);
                SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_and0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling1_yaxqeay1bm_bm_mqeay1o_o_m_z_inputss_unnamed_avgpooling14_avgpooling10_aunroll_x_V0;
    assign SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_i_valid = SE_i_arrayidx10_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_V2 & SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_backStall = SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_V = SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_D0 = SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_r_data0 : i_arrayidx42_avgpooling10_add_x_BitSelect_for_a_b;
    // Data1
    assign SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_D1 = SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_r_data1 : i_arrayidx42_avgpooling10_mult_x_sums_result_add_0_0_p1_of_2_q;

    // i_arrayidx42_avgpooling10_add_x_p1_of_2(ADD,3252)@136 + 1
    assign i_arrayidx42_avgpooling10_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_D0};
    assign i_arrayidx42_avgpooling10_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx42_avgpooling10_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx42_avgpooling10_add_x_p1_of_2_o <= $unsigned(i_arrayidx42_avgpooling10_add_x_p1_of_2_a) + $unsigned(i_arrayidx42_avgpooling10_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx42_avgpooling10_add_x_p1_of_2_c[0] = i_arrayidx42_avgpooling10_add_x_p1_of_2_o[52];
    assign i_arrayidx42_avgpooling10_add_x_p1_of_2_q = i_arrayidx42_avgpooling10_add_x_p1_of_2_o[51:0];

    // SE_i_arrayidx42_avgpooling10_add_x_p1_of_2(STALLENABLE,4097)
    // Valid signal propagation
    assign SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_V0 = SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_V1 = SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx42_avgpooling10_add_x_p2_of_2_backStall & SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_or0 = SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_v_s_0 = SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_backEN & SR_SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_R_v_0 & SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_R_v_1 & SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2(STALLREG,4481)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_r_valid <= SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx42_avgpooling10_add_x_p1_of_2_q);
                SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_and0 = SE_i_arrayidx42_avgpooling10_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_i_valid = SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V2 & SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_backStall = SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_V = SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_D0 = SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_r_data0 : i_arrayidx42_avgpooling10_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_D1 = SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_r_data1 : i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;

    // i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2(ADD,3234)@137 + 1
    assign i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_D0};
    assign i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_o <= $unsigned(i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_a) + $unsigned(i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_c[0] = i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_o[52];
    assign i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_q = i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_o[51:0];

    // SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2(STALLENABLE,4090)
    // Valid signal propagation
    assign SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_V0 = SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_V1 = SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_backStall & SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_or0 = SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_v_s_0 = SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_backEN & SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_R_v_0 & SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_R_v_1 & SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2(STALLREG,4482)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_r_valid <= SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_q);
                SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_and0 = SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_i_valid = SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_V0 & SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_backStall = SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_V = SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_D0 = SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_r_data0 : i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_D1 = SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_r_data1 : i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2(ADD,3243)@138 + 1
    assign i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_D0};
    assign i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_o <= $unsigned(i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_a) + $unsigned(i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_c[0] = i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_o[52];
    assign i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q = i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_o[51:0];

    // SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2(STALLENABLE,4092)
    // Valid signal propagation
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_V0 = SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_V1 = SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_backStall & SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_s_tv_1 = SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_or0 = SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_v_s_0 = SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_backEN & SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_R_v_0 & SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_R_v_1 & SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0(STALLREG,4488)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid <= SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_V = SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q;

    // SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0(STALLENABLE,4238)
    // Valid signal propagation
    assign SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_V0 = SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_backStall & SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2(STALLENABLE,4093)
    // Valid signal propagation
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_V0 = SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_s_tv_0 = SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_backStall & SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_v_s_0 = SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_backEN & SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_R_v_0 & SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q(STALLENABLE,4094)
    // Valid signal propagation
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_V0 = SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_backStall = coalesced_delay_2_fifo_stall_out | ~ (SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_and0 = SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_V0;
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_and1 = SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_V0 & SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_and0;
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_wireValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_V4 & SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_and1;

    // leftShiftStage0Idx1Rng1_uid570_i_cleanups_shl_avgpooling10_shift_x(BITSELECT,569)@140
    assign leftShiftStage0Idx1Rng1_uid570_i_cleanups_shl_avgpooling10_shift_x_in = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_b[0:0];
    assign leftShiftStage0Idx1Rng1_uid570_i_cleanups_shl_avgpooling10_shift_x_b = leftShiftStage0Idx1Rng1_uid570_i_cleanups_shl_avgpooling10_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid571_i_cleanups_shl_avgpooling10_shift_x(BITJOIN,570)@140
    assign leftShiftStage0Idx1_uid571_i_cleanups_shl_avgpooling10_shift_x_q = {leftShiftStage0Idx1Rng1_uid570_i_cleanups_shl_avgpooling10_shift_x_b, GND_q};

    // leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x(MUX,572)@140
    assign leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_b or leftShiftStage0Idx1_uid571_i_cleanups_shl_avgpooling10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_s)
            1'b0 : leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_b;
            1'b1 : leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_q = leftShiftStage0Idx1_uid571_i_cleanups_shl_avgpooling10_shift_x_q;
            default : leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_avgpooling119_vt_select_1(BITSELECT,201)@140
    assign i_cleanups_shl_avgpooling119_vt_select_1_b = leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_q[1:1];

    // i_cleanups_shl_avgpooling119_vt_join(BITJOIN,200)@140
    assign i_cleanups_shl_avgpooling119_vt_join_q = {i_cleanups_shl_avgpooling119_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_avgpooling141(LOGICAL,210)@140
    assign i_first_cleanup_xor_avgpooling141_q = i_first_cleanup_avgpooling118_sel_x_b ^ VCC_q;

    // i_or_avgpooling156(LOGICAL,283)@140
    assign i_or_avgpooling156_q = i_notcmp_avgpooling147_q | i_first_cleanup_xor_avgpooling141_q;

    // i_next_cleanups_avgpooling163(MUX,278)@140
    assign i_next_cleanups_avgpooling163_s = i_or_avgpooling156_q;
    always @(i_next_cleanups_avgpooling163_s or bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_b or i_cleanups_shl_avgpooling119_vt_join_q)
    begin
        unique case (i_next_cleanups_avgpooling163_s)
            1'b0 : i_next_cleanups_avgpooling163_q = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_b;
            1'b1 : i_next_cleanups_avgpooling163_q = i_cleanups_shl_avgpooling119_vt_join_q;
            default : i_next_cleanups_avgpooling163_q = 2'b0;
        endcase
    end

    // SE_out_i_llvm_fpga_push_i2_cleanups_push24_avgpooling166(STALLENABLE,3869)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push24_avgpooling166_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push24_avgpooling166_wireValid = i_llvm_fpga_push_i2_cleanups_push24_avgpooling166_out_valid_out;

    // i_llvm_fpga_push_i2_cleanups_push24_avgpooling166(BLACKBOX,271)@140
    // in in_stall_in@20000000
    // out out_data_out@141
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@141
    avgpooling1_i_llvm_fpga_push_i2_cleanups_push24_0 thei_llvm_fpga_push_i2_cleanups_push24_avgpooling166 (
        .in_data_in(SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_D0),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_out_feedback_stall_out_24),
        .in_keep_going(SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_cleanups_push24_avgpooling166_backStall),
        .in_valid_in(SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_V0),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i2_cleanups_push24_avgpooling166_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i2_cleanups_push24_avgpooling166_out_feedback_valid_out_24),
        .out_stall_out(i_llvm_fpga_push_i2_cleanups_push24_avgpooling166_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_cleanups_push24_avgpooling166_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x(STALLENABLE,3942)
    // Valid signal propagation
    assign SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_V0 = SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_wireValid;
    // Backward Stall generation
    assign SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_backStall = i_llvm_fpga_push_i2_cleanups_push24_avgpooling166_out_stall_out | ~ (SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_wireValid = SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_V;

    // SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x(STALLREG,4508)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_r_valid <= 1'b0;
            SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_r_data0 <= 2'bxx;
            SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_r_valid <= SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_backStall & (SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_r_valid | SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_i_valid);

            if (SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_r_data0 <= i_next_cleanups_avgpooling163_q;
                SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_r_data1 <= $unsigned(redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_and0 = SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_V1;
    assign SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_and1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_V0 & SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_and0;
    assign SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_i_valid = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_V0 & SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_and1;
    // Stall signal propagation
    assign SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_backStall = SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_r_valid | ~ (SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_i_valid);

    // Valid
    assign SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_V = SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_r_valid : SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_i_valid;

    // Data0
    assign SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_D0 = SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_r_data0 : i_next_cleanups_avgpooling163_q;
    // Data1
    assign SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_D1 = SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_r_data1 : redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_q;

    // SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12(STALLENABLE,3839)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg2 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg3 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg4 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_consumed0 = (~ (SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_consumed2 = (~ (SR_SE_i_masked_avgpooling157_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_consumed3 = (~ (SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_consumed4 = (~ (SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_StallValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_backStall & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_toReg0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_toReg1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_consumed1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_toReg2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_consumed2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_toReg3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_consumed3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_toReg4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_or0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_or1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_consumed1 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_or0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_or2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_consumed2 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_or1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_or3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_consumed3 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_or2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_consumed4 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_or3);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_backStall = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_V0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_V1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_V2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_V3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_V4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_wireValid = i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_out_valid_out;

    // i_masked_avgpooling157(LOGICAL,277)@140 + 1
    assign i_masked_avgpooling157_qi = SR_SE_i_masked_avgpooling157_D0 & SR_SE_i_masked_avgpooling157_D1;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_avgpooling157_delay ( .xin(i_masked_avgpooling157_qi), .xout(i_masked_avgpooling157_q), .ena(SE_i_masked_avgpooling157_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist51_i_masked_avgpooling157_q_136_fifo(STALLFIFO,3610)
    assign redist51_i_masked_avgpooling157_q_136_fifo_valid_in = SE_in_redist51_i_masked_avgpooling157_q_136_fifo_V0;
    assign redist51_i_masked_avgpooling157_q_136_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_backStall;
    assign redist51_i_masked_avgpooling157_q_136_fifo_data_in = i_masked_avgpooling157_q;
    assign redist51_i_masked_avgpooling157_q_136_fifo_valid_in_bitsignaltemp = redist51_i_masked_avgpooling157_q_136_fifo_valid_in[0];
    assign redist51_i_masked_avgpooling157_q_136_fifo_stall_in_bitsignaltemp = redist51_i_masked_avgpooling157_q_136_fifo_stall_in[0];
    assign redist51_i_masked_avgpooling157_q_136_fifo_valid_out[0] = redist51_i_masked_avgpooling157_q_136_fifo_valid_out_bitsignaltemp;
    assign redist51_i_masked_avgpooling157_q_136_fifo_stall_out[0] = redist51_i_masked_avgpooling157_q_136_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(136),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist51_i_masked_avgpooling157_q_136_fifo (
        .valid_in(redist51_i_masked_avgpooling157_q_136_fifo_valid_in_bitsignaltemp),
        .stall_in(redist51_i_masked_avgpooling157_q_136_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_avgpooling157_q),
        .valid_out(redist51_i_masked_avgpooling157_q_136_fifo_valid_out_bitsignaltemp),
        .stall_out(redist51_i_masked_avgpooling157_q_136_fifo_stall_out_bitsignaltemp),
        .data_out(redist51_i_masked_avgpooling157_q_136_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_redist51_i_masked_avgpooling157_q_136_fifo(STALLENABLE,4261)
    // Valid signal propagation
    assign SE_in_redist51_i_masked_avgpooling157_q_136_fifo_V0 = SE_in_redist51_i_masked_avgpooling157_q_136_fifo_wireValid;
    // Backward Stall generation
    assign SE_in_redist51_i_masked_avgpooling157_q_136_fifo_backStall = redist51_i_masked_avgpooling157_q_136_fifo_stall_out | ~ (SE_in_redist51_i_masked_avgpooling157_q_136_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_redist51_i_masked_avgpooling157_q_136_fifo_wireValid = SE_i_masked_avgpooling157_V0;

    // SE_i_masked_avgpooling157(STALLENABLE,3880)
    // Valid signal propagation
    assign SE_i_masked_avgpooling157_V0 = SE_i_masked_avgpooling157_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_avgpooling157_s_tv_0 = SE_in_redist51_i_masked_avgpooling157_q_136_fifo_backStall & SE_i_masked_avgpooling157_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_avgpooling157_backEN = ~ (SE_i_masked_avgpooling157_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_avgpooling157_v_s_0 = SE_i_masked_avgpooling157_backEN & SR_SE_i_masked_avgpooling157_V;
    // Backward Stall generation
    assign SE_i_masked_avgpooling157_backStall = ~ (SE_i_masked_avgpooling157_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_avgpooling157_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_avgpooling157_backEN == 1'b0)
            begin
                SE_i_masked_avgpooling157_R_v_0 <= SE_i_masked_avgpooling157_R_v_0 & SE_i_masked_avgpooling157_s_tv_0;
            end
            else
            begin
                SE_i_masked_avgpooling157_R_v_0 <= SE_i_masked_avgpooling157_v_s_0;
            end

        end
    end

    // SR_SE_i_masked_avgpooling157(STALLREG,4474)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_masked_avgpooling157_r_valid <= 1'b0;
            SR_SE_i_masked_avgpooling157_r_data0 <= 1'bx;
            SR_SE_i_masked_avgpooling157_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_masked_avgpooling157_r_valid <= SE_i_masked_avgpooling157_backStall & (SR_SE_i_masked_avgpooling157_r_valid | SR_SE_i_masked_avgpooling157_i_valid);

            if (SR_SE_i_masked_avgpooling157_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_masked_avgpooling157_r_data0 <= i_notcmp_avgpooling147_q;
                SR_SE_i_masked_avgpooling157_r_data1 <= i_first_cleanup_avgpooling118_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_masked_avgpooling157_and0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_V2;
    assign SR_SE_i_masked_avgpooling157_i_valid = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_V3 & SR_SE_i_masked_avgpooling157_and0;
    // Stall signal propagation
    assign SR_SE_i_masked_avgpooling157_backStall = SR_SE_i_masked_avgpooling157_r_valid | ~ (SR_SE_i_masked_avgpooling157_i_valid);

    // Valid
    assign SR_SE_i_masked_avgpooling157_V = SR_SE_i_masked_avgpooling157_r_valid == 1'b1 ? SR_SE_i_masked_avgpooling157_r_valid : SR_SE_i_masked_avgpooling157_i_valid;

    // Data0
    assign SR_SE_i_masked_avgpooling157_D0 = SR_SE_i_masked_avgpooling157_r_valid == 1'b1 ? SR_SE_i_masked_avgpooling157_r_data0 : i_notcmp_avgpooling147_q;
    // Data1
    assign SR_SE_i_masked_avgpooling157_D1 = SR_SE_i_masked_avgpooling157_r_valid == 1'b1 ? SR_SE_i_masked_avgpooling157_r_data1 : i_first_cleanup_avgpooling118_sel_x_b;

    // c_i5_179(CONSTANT,185)
    assign c_i5_179_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next_avgpooling127(ADD,211)@140
    assign i_fpga_indvars_iv_next_avgpooling127_a = {1'b0, bubble_select_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_b};
    assign i_fpga_indvars_iv_next_avgpooling127_b = {1'b0, c_i5_179_q};
    assign i_fpga_indvars_iv_next_avgpooling127_o = $unsigned(i_fpga_indvars_iv_next_avgpooling127_a) + $unsigned(i_fpga_indvars_iv_next_avgpooling127_b);
    assign i_fpga_indvars_iv_next_avgpooling127_q = i_fpga_indvars_iv_next_avgpooling127_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next_avgpooling127_sel_x(BITSELECT,4)@140
    assign bgTrunc_i_fpga_indvars_iv_next_avgpooling127_sel_x_b = i_fpga_indvars_iv_next_avgpooling127_q[4:0];

    // SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149(STALLENABLE,3878)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_V0 = SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_backStall = i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_wireValid = SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_V;

    // SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149(STALLREG,4511)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_r_data0 <= 5'bxxxxx;
            SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_r_valid <= SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_backStall & (SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_r_valid | SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_r_data0 <= bgTrunc_i_fpga_indvars_iv_next_avgpooling127_sel_x_b;
                SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_r_data1 <= $unsigned(redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_and0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_V2;
    assign SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_i_valid = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_V1 & SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_backStall = SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_V = SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_r_valid : SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_D0 = SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_r_data0 : bgTrunc_i_fpga_indvars_iv_next_avgpooling127_sel_x_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_D1 = SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_r_data1 : redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_q;

    // SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148(STALLENABLE,3866)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_fromReg0 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_fromReg0 <= SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_fromReg1 <= SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond_avgpooling148_out_stall_out) & SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_fromReg0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_consumed1 = (~ (SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_StallValid = SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_backStall & SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_wireValid;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_toReg0 = SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_toReg1 = SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_or0 = SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_wireStall = ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_consumed1 & SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_or0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_backStall = SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_fromReg0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_V1 = SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_and0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_V1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_wireValid = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_V1 & SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_and0;

    // bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg(STALLFIFO,4470)
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_V0;
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(137),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17(STALLENABLE,3849)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_fromReg0 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_fromReg1 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_fromReg2 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_fromReg3 <= SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_backStall) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_consumed2 = (~ (SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_backStall) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_consumed3 = (~ (SR_SE_i_masked_avgpooling157_backStall) & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_wireValid) | SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_StallValid = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_backStall & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_wireValid;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_toReg0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_consumed0;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_toReg1 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_consumed1;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_toReg2 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_consumed2;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_toReg3 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_StallValid & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_or0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_consumed0;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_or1 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_consumed1 & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_or0;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_or2 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_consumed2 & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_or1;
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_wireStall = ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_consumed3 & SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_or2);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_backStall = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_V0 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_V1 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_V2 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_V3 = SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_wireValid & ~ (SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_wireValid = i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_out_valid_out;

    // SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149(STALLENABLE,3879)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_wireValid = i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_out_valid_out;

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149(BLACKBOX,276)@140
    // in in_stall_in@20000000
    // out out_data_out@141
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@141
    avgpooling1_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_0 thei_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_D0),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_out_feedback_stall_out_20),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_V0),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_out_feedback_valid_out_20),
        .out_stall_out(i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_1275(CONSTANT,184)
    assign c_i5_1275_q = $unsigned(5'b01100);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17(BLACKBOX,261)@139
    // in in_stall_in@20000000
    // out out_data_out@140
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@140
    avgpooling1_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17 (
        .in_data_in(c_i5_1275_q),
        .in_dir(redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_backStall),
        .in_valid_in(SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V2),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_172(CONSTANT,180)
    assign c_i2_172_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12(BLACKBOX,256)@139
    // in in_stall_in@20000000
    // out out_data_out@140
    // out out_feedback_stall_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@140
    avgpooling1_i_llvm_fpga_pop_i2_cleanups_pop24_0 thei_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12 (
        .in_data_in(c_i2_172_q),
        .in_dir(redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i2_cleanups_push24_avgpooling166_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i2_cleanups_push24_avgpooling166_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_backStall),
        .in_valid_in(SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V1),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_out_feedback_stall_out_24),
        .out_stall_out(i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171(STALLENABLE,3861)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_wireValid = i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171(BLACKBOX,267)@276
    // in in_stall_in@20000000
    // out out_data_out@277
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@277
    avgpooling1_i_llvm_fpga_push_i1_memdep_phi_push22_0 thei_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_D0),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_out_feedback_stall_out_22),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_V0),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_out_feedback_valid_out_22),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16(BLACKBOX,253)@139
    // in in_stall_in@20000000
    // out out_data_out@140
    // out out_feedback_stall_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@140
    avgpooling1_i_llvm_fpga_pop_i1_memdep_phi_pop22_0 thei_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16 (
        .in_data_in(GND_q),
        .in_dir(redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_backStall),
        .in_valid_in(SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_out_feedback_stall_out_22),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1(STALLENABLE,4288)
    // Valid signal propagation
    assign SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V0 = SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_0;
    assign SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V1 = SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_1;
    assign SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V2 = SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_2;
    assign SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V3 = SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_3;
    // Stall signal propagation
    assign SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_out_stall_out & SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_0;
    assign SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_1 = i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_out_stall_out & SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_1;
    assign SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_2 = i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_out_stall_out & SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_2;
    assign SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_3 = redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_out & SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_3;
    // Backward Enable generation
    assign SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_or0 = SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_0;
    assign SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_or1 = SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_1 | SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_or0;
    assign SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_or2 = SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_2 | SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_or1;
    assign SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backEN = ~ (SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_3 | SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_v_s_0 = SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backEN & SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V;
    // Backward Stall generation
    assign SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backStall = ~ (SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_0 <= 1'b0;
            SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_1 <= 1'b0;
            SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_2 <= 1'b0;
            SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backEN == 1'b0)
            begin
                SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_0 <= SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_0 & SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_0;
            end
            else
            begin
                SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_0 <= SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_v_s_0;
            end

            if (SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backEN == 1'b0)
            begin
                SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_1 <= SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_1 & SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_1;
            end
            else
            begin
                SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_1 <= SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_v_s_0;
            end

            if (SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backEN == 1'b0)
            begin
                SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_2 <= SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_2 & SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_2;
            end
            else
            begin
                SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_2 <= SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_v_s_0;
            end

            if (SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backEN == 1'b0)
            begin
                SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_3 <= SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_3 & SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_3;
            end
            else
            begin
                SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_3 <= SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_v_s_0;
            end

        end
    end

    // redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo(STALLFIFO,3631)
    assign redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_in = SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V3;
    assign redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_in = SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_backStall;
    assign redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_data_in = redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_q;
    assign redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_in_bitsignaltemp = redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_in[0];
    assign redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_in_bitsignaltemp = redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_in[0];
    assign redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_out[0] = redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_out_bitsignaltemp;
    assign redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_out[0] = redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(135),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo (
        .valid_in(redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_in_bitsignaltemp),
        .stall_in(redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_in_bitsignaltemp),
        .data_in(redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_q),
        .valid_out(redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_out_bitsignaltemp),
        .stall_out(redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_out_bitsignaltemp),
        .data_out(redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo(BITJOIN,3752)
    assign bubble_join_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_q = redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_data_out;

    // bubble_select_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo(BITSELECT,3753)
    assign bubble_select_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_b = $unsigned(bubble_join_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_q[0:0]);

    // rightShiftStage0Idx1Rng1_uid593_i_next_initerations_avgpooling10_shift_x(BITSELECT,592)@274
    assign rightShiftStage0Idx1Rng1_uid593_i_next_initerations_avgpooling10_shift_x_b = bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_b[1:1];

    // rightShiftStage0Idx1_uid595_i_next_initerations_avgpooling10_shift_x(BITJOIN,594)@274
    assign rightShiftStage0Idx1_uid595_i_next_initerations_avgpooling10_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid593_i_next_initerations_avgpooling10_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14(BITJOIN,3710)
    assign bubble_join_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_q = i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14(BITSELECT,3711)
    assign bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_q[1:0]);

    // rightShiftStage0_uid597_i_next_initerations_avgpooling10_shift_x(MUX,596)@274
    assign rightShiftStage0_uid597_i_next_initerations_avgpooling10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid597_i_next_initerations_avgpooling10_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_b or rightShiftStage0Idx1_uid595_i_next_initerations_avgpooling10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid597_i_next_initerations_avgpooling10_shift_x_s)
            1'b0 : rightShiftStage0_uid597_i_next_initerations_avgpooling10_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_b;
            1'b1 : rightShiftStage0_uid597_i_next_initerations_avgpooling10_shift_x_q = rightShiftStage0Idx1_uid595_i_next_initerations_avgpooling10_shift_x_q;
            default : rightShiftStage0_uid597_i_next_initerations_avgpooling10_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_avgpooling120_vt_select_0(BITSELECT,281)@274
    assign i_next_initerations_avgpooling120_vt_select_0_b = rightShiftStage0_uid597_i_next_initerations_avgpooling10_shift_x_q[0:0];

    // i_next_initerations_avgpooling120_vt_join(BITJOIN,280)@274
    assign i_next_initerations_avgpooling120_vt_join_q = {GND_q, i_next_initerations_avgpooling120_vt_select_0_b};

    // i_last_initeration_avgpooling143_sel_x(BITSELECT,167)@274
    assign i_last_initeration_avgpooling143_sel_x_b = i_next_initerations_avgpooling120_vt_join_q[0:0];

    // SE_i_next_initerations_avgpooling120_vt_select_0(STALLENABLE,3883)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_avgpooling120_vt_select_0_fromReg0 <= '0;
            SE_i_next_initerations_avgpooling120_vt_select_0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_avgpooling120_vt_select_0_fromReg0 <= SE_i_next_initerations_avgpooling120_vt_select_0_toReg0;
            // Successor 1
            SE_i_next_initerations_avgpooling120_vt_select_0_fromReg1 <= SE_i_next_initerations_avgpooling120_vt_select_0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_avgpooling120_vt_select_0_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_avgpooling154_out_stall_out) & SE_i_next_initerations_avgpooling120_vt_select_0_wireValid) | SE_i_next_initerations_avgpooling120_vt_select_0_fromReg0;
    assign SE_i_next_initerations_avgpooling120_vt_select_0_consumed1 = (~ (i_llvm_fpga_push_i2_initerations_push23_avgpooling142_out_stall_out) & SE_i_next_initerations_avgpooling120_vt_select_0_wireValid) | SE_i_next_initerations_avgpooling120_vt_select_0_fromReg1;
    // Consuming
    assign SE_i_next_initerations_avgpooling120_vt_select_0_StallValid = SE_i_next_initerations_avgpooling120_vt_select_0_backStall & SE_i_next_initerations_avgpooling120_vt_select_0_wireValid;
    assign SE_i_next_initerations_avgpooling120_vt_select_0_toReg0 = SE_i_next_initerations_avgpooling120_vt_select_0_StallValid & SE_i_next_initerations_avgpooling120_vt_select_0_consumed0;
    assign SE_i_next_initerations_avgpooling120_vt_select_0_toReg1 = SE_i_next_initerations_avgpooling120_vt_select_0_StallValid & SE_i_next_initerations_avgpooling120_vt_select_0_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_avgpooling120_vt_select_0_or0 = SE_i_next_initerations_avgpooling120_vt_select_0_consumed0;
    assign SE_i_next_initerations_avgpooling120_vt_select_0_wireStall = ~ (SE_i_next_initerations_avgpooling120_vt_select_0_consumed1 & SE_i_next_initerations_avgpooling120_vt_select_0_or0);
    assign SE_i_next_initerations_avgpooling120_vt_select_0_backStall = SE_i_next_initerations_avgpooling120_vt_select_0_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_avgpooling120_vt_select_0_V0 = SE_i_next_initerations_avgpooling120_vt_select_0_wireValid & ~ (SE_i_next_initerations_avgpooling120_vt_select_0_fromReg0);
    assign SE_i_next_initerations_avgpooling120_vt_select_0_V1 = SE_i_next_initerations_avgpooling120_vt_select_0_wireValid & ~ (SE_i_next_initerations_avgpooling120_vt_select_0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_avgpooling120_vt_select_0_wireValid = SR_SE_i_next_initerations_avgpooling120_vt_select_0_V;

    // SR_SE_i_next_initerations_avgpooling120_vt_select_0(STALLREG,4504)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_valid <= 1'b0;
            SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_data0 <= 1'bx;
            SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_data1 <= 1'bx;
            SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_data2 <= 1'bx;
            SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_data3 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_valid <= SE_i_next_initerations_avgpooling120_vt_select_0_backStall & (SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_valid | SR_SE_i_next_initerations_avgpooling120_vt_select_0_i_valid);

            if (SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_data0 <= i_last_initeration_avgpooling143_sel_x_b;
                SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_data1 <= $unsigned(bubble_select_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_b);
                SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_data2 <= $unsigned(bubble_select_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_b);
                SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_data3 <= i_next_initerations_avgpooling120_vt_join_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_next_initerations_avgpooling120_vt_select_0_and0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_V1;
    assign SR_SE_i_next_initerations_avgpooling120_vt_select_0_i_valid = SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_V0 & SR_SE_i_next_initerations_avgpooling120_vt_select_0_and0;
    // Stall signal propagation
    assign SR_SE_i_next_initerations_avgpooling120_vt_select_0_backStall = SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_valid | ~ (SR_SE_i_next_initerations_avgpooling120_vt_select_0_i_valid);

    // Valid
    assign SR_SE_i_next_initerations_avgpooling120_vt_select_0_V = SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_valid : SR_SE_i_next_initerations_avgpooling120_vt_select_0_i_valid;

    // Data0
    assign SR_SE_i_next_initerations_avgpooling120_vt_select_0_D0 = SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_data0 : i_last_initeration_avgpooling143_sel_x_b;
    // Data1
    assign SR_SE_i_next_initerations_avgpooling120_vt_select_0_D1 = SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_data1 : bubble_select_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_b;
    // Data2
    assign SR_SE_i_next_initerations_avgpooling120_vt_select_0_D2 = SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_data2 : bubble_select_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_b;
    // Data3
    assign SR_SE_i_next_initerations_avgpooling120_vt_select_0_D3 = SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_avgpooling120_vt_select_0_r_data3 : i_next_initerations_avgpooling120_vt_join_q;

    // bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg(STALLFIFO,4469)
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_V0;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14(STALLENABLE,3841)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_consumed1 = (~ (SR_SE_i_next_initerations_avgpooling120_vt_select_0_backStall) & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_StallValid = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_backStall & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_toReg0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_toReg1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_or0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_consumed1 & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_or0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_backStall = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_V0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_V1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_wireValid = i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_out_valid_out;

    // SE_out_i_llvm_fpga_push_i2_initerations_push23_avgpooling142(STALLENABLE,3871)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_initerations_push23_avgpooling142_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_initerations_push23_avgpooling142_wireValid = i_llvm_fpga_push_i2_initerations_push23_avgpooling142_out_valid_out;

    // i_llvm_fpga_push_i2_initerations_push23_avgpooling142(BLACKBOX,272)@274
    // in in_stall_in@20000000
    // out out_data_out@275
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@275
    avgpooling1_i_llvm_fpga_push_i2_initerations_push23_0 thei_llvm_fpga_push_i2_initerations_push23_avgpooling142 (
        .in_data_in(SR_SE_i_next_initerations_avgpooling120_vt_select_0_D3),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_out_feedback_stall_out_23),
        .in_keep_going(SR_SE_i_next_initerations_avgpooling120_vt_select_0_D2),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_initerations_push23_avgpooling142_backStall),
        .in_valid_in(SE_i_next_initerations_avgpooling120_vt_select_0_V1),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i2_initerations_push23_avgpooling142_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i2_initerations_push23_avgpooling142_out_feedback_valid_out_23),
        .out_stall_out(i_llvm_fpga_push_i2_initerations_push23_avgpooling142_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_initerations_push23_avgpooling142_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14(BLACKBOX,257)@273
    // in in_stall_in@20000000
    // out out_data_out@274
    // out out_feedback_stall_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@274
    avgpooling1_i_llvm_fpga_pop_i2_initerations_pop23_0 thei_llvm_fpga_pop_i2_initerations_pop23_avgpooling14 (
        .in_data_in(c_i2_172_q),
        .in_dir(bubble_select_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_b),
        .in_feedback_in_23(i_llvm_fpga_push_i2_initerations_push23_avgpooling142_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i2_initerations_push23_avgpooling142_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_backStall),
        .in_valid_in(SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_out_feedback_stall_out_23),
        .out_stall_out(i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo(STALLENABLE,4290)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_fromReg0 <= '0;
            SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_fromReg0 <= SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_toReg0;
            // Successor 1
            SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_fromReg1 <= SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_consumed0 = (~ (SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backStall) & SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_wireValid) | SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_fromReg0;
    assign SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_consumed1 = (~ (i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_out_stall_out) & SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_wireValid) | SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_fromReg1;
    // Consuming
    assign SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_StallValid = SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_backStall & SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_wireValid;
    assign SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_toReg0 = SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_StallValid & SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_consumed0;
    assign SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_toReg1 = SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_StallValid & SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_or0 = SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_consumed0;
    assign SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_wireStall = ~ (SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_consumed1 & SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_or0);
    assign SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_backStall = SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_V0 = SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_wireValid & ~ (SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_fromReg0);
    assign SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_V1 = SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_wireValid & ~ (SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_wireValid = redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_out;

    // SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0(STALLREG,4475)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_valid <= 1'b0;
            SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_valid <= SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backStall & (SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_valid | SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_i_valid);

            if (SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_data0 <= $unsigned(bubble_select_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_i_valid = SE_out_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backStall = SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_valid | ~ (SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_i_valid);

    // Valid
    assign SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_V = SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_valid == 1'b1 ? SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_valid : SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_i_valid;

    assign SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_D0 = SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_valid == 1'b1 ? SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_data0 : bubble_select_redist65_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_b;

    // redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0(REG,3632)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backEN == 1'b1)
        begin
            redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_q <= $unsigned(SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_D0);
        end
    end

    // SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0(STALLENABLE,4291)
    // Valid signal propagation
    assign SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_V0 = SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_R_v_0;
    // Stall signal propagation
    assign SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_s_tv_0 = SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backStall & SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_R_v_0;
    // Backward Enable generation
    assign SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backEN = ~ (SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_v_s_0 = SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backEN & SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_V;
    // Backward Stall generation
    assign SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backStall = ~ (SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backEN == 1'b0)
            begin
                SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_R_v_0 <= SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_R_v_0 & SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_s_tv_0;
            end
            else
            begin
                SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_R_v_0 <= SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_v_s_0;
            end

        end
    end

    // SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1(STALLREG,4476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_valid <= 1'b0;
            SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_valid <= SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backStall & (SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_valid | SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_i_valid);

            if (SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_data0 <= $unsigned(redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_i_valid = SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_V0;
    // Stall signal propagation
    assign SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backStall = SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_valid | ~ (SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_i_valid);

    // Valid
    assign SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_V = SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_valid == 1'b1 ? SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_valid : SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_i_valid;

    assign SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_D0 = SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_valid == 1'b1 ? SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_data0 : redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_q;

    // redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1(REG,3633)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backEN == 1'b1)
        begin
            redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q <= $unsigned(SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_D0);
        end
    end

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,3755)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,3756)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[3:0]);

    // sel_for_coalesced_delay_0(BITSELECT,3549)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[2:2]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[3:3]);

    // SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1(STALLENABLE,4292)
    // Valid signal propagation
    assign SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_V0 = SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_R_v_0;
    // Stall signal propagation
    assign SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_s_tv_0 = SR_SE_out_coalesced_delay_0_fifo_backStall & SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_R_v_0;
    // Backward Enable generation
    assign SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backEN = ~ (SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_v_s_0 = SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backEN & SR_SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_V;
    // Backward Stall generation
    assign SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backStall = ~ (SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backEN == 1'b0)
            begin
                SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_R_v_0 <= SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_R_v_0 & SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_s_tv_0;
            end
            else
            begin
                SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_R_v_0 <= SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113(BITJOIN,3703)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_q = i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113(BITSELECT,3704)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_q[0:0]);

    // SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136(STALLENABLE,3864)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_V0 = SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_backStall = i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_wireValid = SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_V;

    // SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136(STALLREG,4507)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_r_valid <= SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_backStall & (SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_r_valid | SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_b);
                SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_r_data1 <= $unsigned(redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_and0 = SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_V4;
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_i_valid = SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_V1 & SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_backStall = SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_V = SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_r_valid : SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_D0 = SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_r_data0 : bubble_select_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_D1 = SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_r_data1 : redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_q;

    // SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113(STALLENABLE,3837)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_wireValid = i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136(STALLENABLE,3865)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_wireValid = i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_out_valid_out;

    // i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136(BLACKBOX,269)@276
    // in in_stall_in@20000000
    // out out_data_out@277
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@277
    avgpooling1_i_llvm_fpga_push_i1_notcmp2034_push26_0 thei_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_D0),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_out_feedback_stall_out_26),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_V0),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_out_feedback_valid_out_26),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113(BLACKBOX,255)@275
    // in in_stall_in@20000000
    // out out_data_out@276
    // out out_feedback_stall_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@276
    avgpooling1_i_llvm_fpga_pop_i1_notcmp2034_pop26_0 thei_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D7),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D4),
        .in_feedback_in_26(i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V3),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_out_feedback_stall_out_26),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19(BITJOIN,3699)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_q = i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19(BITSELECT,3700)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_q[0:0]);

    // SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129(STALLENABLE,3862)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_V0 = SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_backStall = i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_wireValid = SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_V;

    // SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129(STALLREG,4506)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_r_valid <= SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_backStall & (SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_r_valid | SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_b);
                SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_r_data1 <= $unsigned(redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_and0 = SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_V3;
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_i_valid = SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_V1 & SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_backStall = SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_V = SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_r_valid : SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_D0 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_r_data0 : bubble_select_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_D1 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_r_data1 : redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_q;

    // SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19(STALLENABLE,3835)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_wireValid = i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129(STALLENABLE,3863)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_wireValid = i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_out_valid_out;

    // i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129(BLACKBOX,268)@276
    // in in_stall_in@20000000
    // out out_data_out@277
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    // out out_stall_out@20000000
    // out out_valid_out@277
    avgpooling1_i_llvm_fpga_push_i1_notcmp1540_push30_0 thei_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_D0),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_out_feedback_stall_out_30),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_V0),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_out_feedback_valid_out_30),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19(BLACKBOX,254)@275
    // in in_stall_in@20000000
    // out out_data_out@276
    // out out_feedback_stall_out_30@20000000
    // out out_stall_out@20000000
    // out out_valid_out@276
    avgpooling1_i_llvm_fpga_pop_i1_notcmp1540_pop30_0 thei_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D6),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D3),
        .in_feedback_in_30(i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V2),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_out_feedback_stall_out_30),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112(BITJOIN,3686)
    assign bubble_join_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_q = i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112(BITSELECT,3687)
    assign bubble_select_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_q[0:0]);

    // SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135(STALLENABLE,3852)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_V0 = SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_backStall = i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_wireValid = SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_V;

    // SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135(STALLREG,4503)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_r_valid <= SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_backStall & (SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_r_valid | SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_b);
                SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_r_data1 <= $unsigned(redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_and0 = SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_V1;
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_i_valid = SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_V1 & SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_backStall = SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_V = SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_r_valid : SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_D0 = SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_r_data0 : bubble_select_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_D1 = SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_r_data1 : redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_q;

    // SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112(STALLENABLE,3827)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_StallValid = SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_backStall & SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_toReg0 = SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_toReg1 = SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_or0 = SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_consumed1 & SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_or0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_backStall = SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_V0 = SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_V1 = SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_wireValid = i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135(STALLENABLE,3853)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_wireValid = i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_out_valid_out;

    // i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135(BLACKBOX,263)@276
    // in in_stall_in@20000000
    // out out_data_out@277
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@277
    avgpooling1_i_llvm_fpga_push_i1_exitcond1432_push25_0 thei_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_D0),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_out_feedback_stall_out_25),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_V0),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_out_feedback_valid_out_25),
        .out_stall_out(i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112(BLACKBOX,250)@275
    // in in_stall_in@20000000
    // out out_data_out@276
    // out out_feedback_stall_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@276
    avgpooling1_i_llvm_fpga_pop_i1_exitcond1432_pop25_0 thei_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D5),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D2),
        .in_feedback_in_25(i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_out_feedback_stall_out_25),
        .out_stall_out(i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18(BITJOIN,3682)
    assign bubble_join_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_q = i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18(BITSELECT,3683)
    assign bubble_select_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_q[0:0]);

    // SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128(STALLENABLE,3850)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_V0 = SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_backStall = i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_wireValid = SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_V;

    // SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128(STALLREG,4502)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_r_valid <= SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_backStall & (SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_r_valid | SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_b);
                SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_r_data1 <= $unsigned(redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_and0 = SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_V0;
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_i_valid = SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_V1 & SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_backStall = SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_V = SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_r_valid : SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_D0 = SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_r_data0 : bubble_select_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_D1 = SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_r_data1 : redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_q;

    // SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18(STALLENABLE,3825)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_StallValid = SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_backStall & SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_toReg0 = SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_toReg1 = SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_or0 = SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_consumed1 & SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_or0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_backStall = SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_V0 = SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_V1 = SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_wireValid = i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128(STALLENABLE,3851)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_wireValid = i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_out_valid_out;

    // i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128(BLACKBOX,262)@276
    // in in_stall_in@20000000
    // out out_data_out@277
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    // out out_stall_out@20000000
    // out out_valid_out@277
    avgpooling1_i_llvm_fpga_push_i1_exitcond1139_push29_0 thei_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_D0),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_out_feedback_stall_out_29),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_V0),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_out_feedback_valid_out_29),
        .out_stall_out(i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18(BLACKBOX,249)@275
    // in in_stall_in@20000000
    // out out_data_out@276
    // out out_feedback_stall_out_29@20000000
    // out out_stall_out@20000000
    // out out_valid_out@276
    avgpooling1_i_llvm_fpga_pop_i1_exitcond1139_pop29_0 thei_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D0),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D1),
        .in_feedback_in_29(i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_out_feedback_stall_out_29),
        .out_stall_out(i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,4294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg2 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg3 <= '0;
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
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    assign SE_out_coalesced_delay_0_fifo_consumed2 = (~ (i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg2;
    assign SE_out_coalesced_delay_0_fifo_consumed3 = (~ (i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg3;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    assign SE_out_coalesced_delay_0_fifo_toReg2 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed2;
    assign SE_out_coalesced_delay_0_fifo_toReg3 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed3;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_or1 = SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0;
    assign SE_out_coalesced_delay_0_fifo_or2 = SE_out_coalesced_delay_0_fifo_consumed2 & SE_out_coalesced_delay_0_fifo_or1;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed3 & SE_out_coalesced_delay_0_fifo_or2);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    assign SE_out_coalesced_delay_0_fifo_V2 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg2);
    assign SE_out_coalesced_delay_0_fifo_V3 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = SR_SE_out_coalesced_delay_0_fifo_V;

    // SR_SE_out_coalesced_delay_0_fifo(STALLREG,4477)
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
            SR_SE_out_coalesced_delay_0_fifo_r_data7 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_coalesced_delay_0_fifo_r_valid <= SE_out_coalesced_delay_0_fifo_backStall & (SR_SE_out_coalesced_delay_0_fifo_r_valid | SR_SE_out_coalesced_delay_0_fifo_i_valid);

            if (SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_coalesced_delay_0_fifo_r_data0 <= $unsigned(sel_for_coalesced_delay_0_b);
                SR_SE_out_coalesced_delay_0_fifo_r_data1 <= $unsigned(redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q);
                SR_SE_out_coalesced_delay_0_fifo_r_data2 <= $unsigned(redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q);
                SR_SE_out_coalesced_delay_0_fifo_r_data3 <= $unsigned(redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q);
                SR_SE_out_coalesced_delay_0_fifo_r_data4 <= $unsigned(redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q);
                SR_SE_out_coalesced_delay_0_fifo_r_data5 <= $unsigned(sel_for_coalesced_delay_0_d);
                SR_SE_out_coalesced_delay_0_fifo_r_data6 <= $unsigned(sel_for_coalesced_delay_0_c);
                SR_SE_out_coalesced_delay_0_fifo_r_data7 <= $unsigned(sel_for_coalesced_delay_0_e);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SR_SE_out_coalesced_delay_0_fifo_i_valid = SE_redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_V0 & SR_SE_out_coalesced_delay_0_fifo_and0;
    // Stall signal propagation
    assign SR_SE_out_coalesced_delay_0_fifo_backStall = SR_SE_out_coalesced_delay_0_fifo_r_valid | ~ (SR_SE_out_coalesced_delay_0_fifo_i_valid);

    // Valid
    assign SR_SE_out_coalesced_delay_0_fifo_V = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_valid : SR_SE_out_coalesced_delay_0_fifo_i_valid;

    // Data0
    assign SR_SE_out_coalesced_delay_0_fifo_D0 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data0 : sel_for_coalesced_delay_0_b;
    // Data1
    assign SR_SE_out_coalesced_delay_0_fifo_D1 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data1 : redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q;
    // Data2
    assign SR_SE_out_coalesced_delay_0_fifo_D2 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data2 : redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q;
    // Data3
    assign SR_SE_out_coalesced_delay_0_fifo_D3 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data3 : redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q;
    // Data4
    assign SR_SE_out_coalesced_delay_0_fifo_D4 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data4 : redist66_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q;
    // Data5
    assign SR_SE_out_coalesced_delay_0_fifo_D5 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data5 : sel_for_coalesced_delay_0_d;
    // Data6
    assign SR_SE_out_coalesced_delay_0_fifo_D6 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data6 : sel_for_coalesced_delay_0_c;
    // Data7
    assign SR_SE_out_coalesced_delay_0_fifo_D7 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data7 : sel_for_coalesced_delay_0_e;

    // coalesced_delay_0_fifo(STALLFIFO,3634)
    assign coalesced_delay_0_fifo_valid_in = SE_out_avgpooling1_B4_merge_reg_aunroll_x_V7;
    assign coalesced_delay_0_fifo_stall_in = SR_SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(275),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(4),
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

    // redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo(STALLFIFO,3628)
    assign redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_valid_in = SE_out_avgpooling1_B4_merge_reg_aunroll_x_V6;
    assign redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_stall_in = SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_backStall;
    assign redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_data_in = bubble_select_avgpooling1_B4_merge_reg_aunroll_x_b;
    assign redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_valid_in_bitsignaltemp = redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_valid_in[0];
    assign redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_stall_in_bitsignaltemp = redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_stall_in[0];
    assign redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_valid_out[0] = redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_valid_out_bitsignaltemp;
    assign redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_stall_out[0] = redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(137),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo (
        .valid_in(redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_valid_in_bitsignaltemp),
        .stall_in(redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_avgpooling1_B4_merge_reg_aunroll_x_b),
        .valid_out(redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_valid_out_bitsignaltemp),
        .stall_out(redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_stall_out_bitsignaltemp),
        .data_out(redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114(BLACKBOX,260)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    avgpooling1_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_0 thei_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114 (
        .in_data_in(bubble_select_avgpooling1_B4_merge_reg_aunroll_x_i),
        .in_dir(bubble_select_avgpooling1_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_27(i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_backStall),
        .in_valid_in(SE_out_avgpooling1_B4_merge_reg_aunroll_x_V5),
        .out_data_out(i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_feedback_stall_out_27),
        .out_stall_out(i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115(BITJOIN,3693)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_q = i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115(BITSELECT,3694)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_q[0:0]);

    // bubble_join_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo(BITJOIN,3740)
    assign bubble_join_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_q = redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_data_out;

    // bubble_select_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo(BITSELECT,3741)
    assign bubble_select_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_b = $unsigned(bubble_join_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111(BITJOIN,3690)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_q = i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111(BITSELECT,3691)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_q[0:0]);

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111(STALLENABLE,3829)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_backStall = redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_wireValid = i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_valid_out;

    // redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo(STALLFIFO,3622)
    assign redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_V0;
    assign redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_stall_in = SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_backStall;
    assign redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_b;
    assign redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_valid_in_bitsignaltemp = redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_valid_in[0];
    assign redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_stall_in_bitsignaltemp = redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_stall_in[0];
    assign redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_valid_out[0] = redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_valid_out_bitsignaltemp;
    assign redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_stall_out[0] = redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(137),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo (
        .valid_in(redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_valid_in_bitsignaltemp),
        .stall_in(redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_b),
        .valid_out(redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_valid_out_bitsignaltemp),
        .stall_out(redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_stall_out_bitsignaltemp),
        .data_out(redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo(BITJOIN,3743)
    assign bubble_join_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_q = redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_data_out;

    // bubble_select_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo(BITSELECT,3744)
    assign bubble_select_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_b = $unsigned(bubble_join_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_q[0:0]);

    // i_reduction_avgpooling1_0_avgpooling140(LOGICAL,284)@138 + 1
    assign i_reduction_avgpooling1_0_avgpooling140_qi = bubble_select_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_b | bubble_select_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_avgpooling1_0_avgpooling140_delay ( .xin(i_reduction_avgpooling1_0_avgpooling140_qi), .xout(i_reduction_avgpooling1_0_avgpooling140_q), .ena(SE_i_reduction_avgpooling1_0_avgpooling140_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0(STALLENABLE,4260)
    // Valid signal propagation
    assign SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_V0 = SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_s_tv_0 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_backStall & SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_backEN = ~ (SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_v_s_0 = SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_backEN & SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_V;
    // Backward Stall generation
    assign SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_backStall = ~ (SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_backEN == 1'b0)
            begin
                SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_R_v_0 <= SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_R_v_0 & SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_s_tv_0;
            end
            else
            begin
                SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_R_v_0 <= SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_v_s_0;
            end

        end
    end

    // SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0(STALLREG,4489)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_r_valid <= 1'b0;
            SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_r_valid <= SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_backStall & (SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_r_valid | SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_i_valid);

            if (SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_r_data0 <= i_reduction_avgpooling1_0_avgpooling140_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_i_valid = SE_i_reduction_avgpooling1_0_avgpooling140_V0;
    // Stall signal propagation
    assign SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_backStall = SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_r_valid | ~ (SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_i_valid);

    // Valid
    assign SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_V = SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_r_valid == 1'b1 ? SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_r_valid : SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_i_valid;

    assign SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_D0 = SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_r_valid == 1'b1 ? SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_r_data0 : i_reduction_avgpooling1_0_avgpooling140_q;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134(STALLENABLE,3857)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_wireValid = i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134(BLACKBOX,265)@138
    // in in_stall_in@20000000
    // out out_data_out@139
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    // out out_stall_out@20000000
    // out out_valid_out@139
    avgpooling1_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_0 thei_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134 (
        .in_data_in(bubble_select_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_b),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_feedback_stall_out_32),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling13_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_V0),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_out_feedback_valid_out_32),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134(STALLENABLE,3856)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_backStall = i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_and0 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_wireValid = SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_and0;

    // SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo(STALLENABLE,4278)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_fromReg0 <= '0;
            SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_fromReg0 <= SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_toReg0;
            // Successor 1
            SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_fromReg1 <= SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_backStall) & SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_wireValid) | SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_fromReg0;
    assign SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_consumed1 = (~ (SE_i_reduction_avgpooling1_0_avgpooling140_backStall) & SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_wireValid) | SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_fromReg1;
    // Consuming
    assign SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_StallValid = SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_backStall & SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_wireValid;
    assign SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_toReg0 = SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_StallValid & SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_consumed0;
    assign SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_toReg1 = SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_StallValid & SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_or0 = SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_consumed0;
    assign SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_wireStall = ~ (SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_consumed1 & SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_or0);
    assign SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_backStall = SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_V0 = SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_wireValid & ~ (SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_fromReg0);
    assign SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_V1 = SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_wireValid & ~ (SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_wireValid = redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_valid_out;

    // SE_i_reduction_avgpooling1_0_avgpooling140(STALLENABLE,3886)
    // Valid signal propagation
    assign SE_i_reduction_avgpooling1_0_avgpooling140_V0 = SE_i_reduction_avgpooling1_0_avgpooling140_R_v_0;
    // Stall signal propagation
    assign SE_i_reduction_avgpooling1_0_avgpooling140_s_tv_0 = SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_backStall & SE_i_reduction_avgpooling1_0_avgpooling140_R_v_0;
    // Backward Enable generation
    assign SE_i_reduction_avgpooling1_0_avgpooling140_backEN = ~ (SE_i_reduction_avgpooling1_0_avgpooling140_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_reduction_avgpooling1_0_avgpooling140_and0 = SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_V1 & SE_i_reduction_avgpooling1_0_avgpooling140_backEN;
    assign SE_i_reduction_avgpooling1_0_avgpooling140_v_s_0 = SE_out_redist57_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out_136_fifo_V1 & SE_i_reduction_avgpooling1_0_avgpooling140_and0;
    // Backward Stall generation
    assign SE_i_reduction_avgpooling1_0_avgpooling140_backStall = ~ (SE_i_reduction_avgpooling1_0_avgpooling140_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_avgpooling1_0_avgpooling140_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_reduction_avgpooling1_0_avgpooling140_backEN == 1'b0)
            begin
                SE_i_reduction_avgpooling1_0_avgpooling140_R_v_0 <= SE_i_reduction_avgpooling1_0_avgpooling140_R_v_0 & SE_i_reduction_avgpooling1_0_avgpooling140_s_tv_0;
            end
            else
            begin
                SE_i_reduction_avgpooling1_0_avgpooling140_R_v_0 <= SE_i_reduction_avgpooling1_0_avgpooling140_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139(STALLENABLE,3858)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_backStall = i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_and0 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V2;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_wireValid = SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_and0;

    // SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo(STALLENABLE,4276)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_fromReg0 <= '0;
            SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_fromReg0 <= SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_toReg0;
            // Successor 1
            SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_fromReg1 <= SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_backStall) & SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_wireValid) | SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_fromReg0;
    assign SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_consumed1 = (~ (SE_i_reduction_avgpooling1_0_avgpooling140_backStall) & SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_wireValid) | SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_fromReg1;
    // Consuming
    assign SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_StallValid = SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_backStall & SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_wireValid;
    assign SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_toReg0 = SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_StallValid & SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_consumed0;
    assign SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_toReg1 = SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_StallValid & SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_or0 = SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_consumed0;
    assign SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_wireStall = ~ (SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_consumed1 & SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_or0);
    assign SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_backStall = SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_V0 = SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_wireValid & ~ (SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_fromReg0);
    assign SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_V1 = SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_wireValid & ~ (SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_wireValid = redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_valid_out;

    // redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo(STALLFIFO,3621)
    assign redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_V0;
    assign redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_stall_in = SE_out_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_backStall;
    assign redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_b;
    assign redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_valid_in_bitsignaltemp = redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_valid_in[0];
    assign redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_stall_in_bitsignaltemp = redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_stall_in[0];
    assign redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_valid_out[0] = redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_valid_out_bitsignaltemp;
    assign redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_stall_out[0] = redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(137),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo (
        .valid_in(redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_valid_in_bitsignaltemp),
        .stall_in(redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_b),
        .valid_out(redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_valid_out_bitsignaltemp),
        .stall_out(redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_stall_out_bitsignaltemp),
        .data_out(redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115(STALLENABLE,3831)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_backStall = redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_wireValid = i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139(STALLENABLE,3859)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_wireValid = i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139(BLACKBOX,266)@138
    // in in_stall_in@20000000
    // out out_data_out@139
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@139
    avgpooling1_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_0 thei_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139 (
        .in_data_in(bubble_select_redist56_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out_136_fifo_b),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_feedback_stall_out_28),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling13_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_V0),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_out_feedback_valid_out_28),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115(BLACKBOX,252)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    avgpooling1_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115 (
        .in_data_in(bubble_select_avgpooling1_B4_merge_reg_aunroll_x_j),
        .in_dir(bubble_select_avgpooling1_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_28(i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_backStall),
        .in_valid_in(SE_out_avgpooling1_B4_merge_reg_aunroll_x_V3),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_feedback_stall_out_28),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111(BLACKBOX,251)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_32@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    avgpooling1_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_0 thei_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111 (
        .in_data_in(bubble_select_avgpooling1_B4_merge_reg_aunroll_x_f),
        .in_dir(bubble_select_avgpooling1_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_32(i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_backStall),
        .in_valid_in(SE_out_avgpooling1_B4_merge_reg_aunroll_x_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_feedback_stall_out_32),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg(STALLFIFO,4467)
    assign bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_valid_in = SE_out_avgpooling1_B4_merge_reg_aunroll_x_V1;
    assign bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(135),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg(STALLFIFO,4466)
    assign bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_valid_in = SE_out_avgpooling1_B4_merge_reg_aunroll_x_V0;
    assign bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(135),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,3888)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = avgpooling1_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,3727)
    assign bubble_join_stall_entry_q = {in_notcmp2033_pop1760, in_notcmp1556, in_n_channel_027_pop1135_pop1861, in_memdep_phi2_pop1237_pop1962, in_memdep_phi1_pop1558, in_i_026_pop1457, in_forked, in_exitcond1431_pop1659, in_exitcond1155};

    // bubble_select_stall_entry(BITSELECT,3728)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[36:36]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[68:37]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[69:69]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[70:70]);

    // avgpooling1_B4_merge_reg_aunroll_x(BLACKBOX,2)@0
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
    avgpooling1_B4_merge_reg theavgpooling1_B4_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_d),
        .in_data_in_1_tpl(bubble_select_stall_entry_b),
        .in_data_in_2_tpl(bubble_select_stall_entry_i),
        .in_data_in_3_tpl(bubble_select_stall_entry_e),
        .in_data_in_4_tpl(bubble_select_stall_entry_f),
        .in_data_in_5_tpl(bubble_select_stall_entry_c),
        .in_data_in_6_tpl(bubble_select_stall_entry_j),
        .in_data_in_7_tpl(bubble_select_stall_entry_h),
        .in_data_in_8_tpl(bubble_select_stall_entry_g),
        .in_stall_in(SE_out_avgpooling1_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(avgpooling1_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(avgpooling1_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(avgpooling1_B4_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(avgpooling1_B4_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(avgpooling1_B4_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(avgpooling1_B4_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(avgpooling1_B4_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(avgpooling1_B4_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_stall_out(avgpooling1_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(avgpooling1_B4_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_avgpooling1_B4_merge_reg_aunroll_x(STALLENABLE,3761)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg7 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg0 <= SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg1 <= SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg2 <= SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg3 <= SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg4 <= SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg5 <= SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg6 <= SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg7 <= SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg7;
        end
    end
    // Input Stall processing
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_avgpooling1_B4_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireValid) | SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg0;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_avgpooling1_B4_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireValid) | SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg1;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling111_out_stall_out) & SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireValid) | SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg2;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling115_out_stall_out) & SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireValid) | SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg3;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed4 = (~ (i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_stall_out) & SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireValid) | SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg4;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed5 = (~ (i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling114_out_stall_out) & SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireValid) | SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg5;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed6 = (~ (redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_stall_out) & SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireValid) | SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg6;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed7 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireValid) | SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg7;
    // Consuming
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_StallValid = SE_out_avgpooling1_B4_merge_reg_aunroll_x_backStall & SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireValid;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg0 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_StallValid & SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg1 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_StallValid & SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed1;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg2 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_StallValid & SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed2;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg3 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_StallValid & SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed3;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg4 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_StallValid & SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed4;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg5 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_StallValid & SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed5;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg6 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_StallValid & SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed6;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_toReg7 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_StallValid & SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed7;
    // Backward Stall generation
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_or0 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_or1 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed1 & SE_out_avgpooling1_B4_merge_reg_aunroll_x_or0;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_or2 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed2 & SE_out_avgpooling1_B4_merge_reg_aunroll_x_or1;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_or3 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed3 & SE_out_avgpooling1_B4_merge_reg_aunroll_x_or2;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_or4 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed4 & SE_out_avgpooling1_B4_merge_reg_aunroll_x_or3;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_or5 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed5 & SE_out_avgpooling1_B4_merge_reg_aunroll_x_or4;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_or6 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed6 & SE_out_avgpooling1_B4_merge_reg_aunroll_x_or5;
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireStall = ~ (SE_out_avgpooling1_B4_merge_reg_aunroll_x_consumed7 & SE_out_avgpooling1_B4_merge_reg_aunroll_x_or6);
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_backStall = SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_V0 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg0);
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_V1 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg1);
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_V2 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg2);
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_V3 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg3);
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_V4 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg4);
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_V5 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg5);
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_V6 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg6);
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_V7 = SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_avgpooling1_B4_merge_reg_aunroll_x_fromReg7);
    // Computing multiple Valid(s)
    assign SE_out_avgpooling1_B4_merge_reg_aunroll_x_wireValid = avgpooling1_B4_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130(STALLENABLE,3873)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_wireValid = i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_out_valid_out;

    // i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130(BLACKBOX,273)@138
    // in in_stall_in@20000000
    // out out_data_out@139
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    // out out_stall_out@20000000
    // out out_valid_out@139
    avgpooling1_i_llvm_fpga_push_i32_i_026_pop1441_push31_0 thei_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_D0),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_feedback_stall_out_31),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_V0),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_out_feedback_valid_out_31),
        .out_stall_out(i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_avgpooling1_B4_merge_reg_aunroll_x(BITJOIN,3648)
    assign bubble_join_avgpooling1_B4_merge_reg_aunroll_x_q = {avgpooling1_B4_merge_reg_aunroll_x_out_data_out_8_tpl, avgpooling1_B4_merge_reg_aunroll_x_out_data_out_7_tpl, avgpooling1_B4_merge_reg_aunroll_x_out_data_out_6_tpl, avgpooling1_B4_merge_reg_aunroll_x_out_data_out_5_tpl, avgpooling1_B4_merge_reg_aunroll_x_out_data_out_4_tpl, avgpooling1_B4_merge_reg_aunroll_x_out_data_out_3_tpl, avgpooling1_B4_merge_reg_aunroll_x_out_data_out_2_tpl, avgpooling1_B4_merge_reg_aunroll_x_out_data_out_1_tpl, avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_avgpooling1_B4_merge_reg_aunroll_x(BITSELECT,3649)
    assign bubble_select_avgpooling1_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_avgpooling1_B4_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_avgpooling1_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_avgpooling1_B4_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_avgpooling1_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_avgpooling1_B4_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_avgpooling1_B4_merge_reg_aunroll_x_e = $unsigned(bubble_join_avgpooling1_B4_merge_reg_aunroll_x_q[34:3]);
    assign bubble_select_avgpooling1_B4_merge_reg_aunroll_x_f = $unsigned(bubble_join_avgpooling1_B4_merge_reg_aunroll_x_q[35:35]);
    assign bubble_select_avgpooling1_B4_merge_reg_aunroll_x_g = $unsigned(bubble_join_avgpooling1_B4_merge_reg_aunroll_x_q[36:36]);
    assign bubble_select_avgpooling1_B4_merge_reg_aunroll_x_h = $unsigned(bubble_join_avgpooling1_B4_merge_reg_aunroll_x_q[37:37]);
    assign bubble_select_avgpooling1_B4_merge_reg_aunroll_x_i = $unsigned(bubble_join_avgpooling1_B4_merge_reg_aunroll_x_q[69:38]);
    assign bubble_select_avgpooling1_B4_merge_reg_aunroll_x_j = $unsigned(bubble_join_avgpooling1_B4_merge_reg_aunroll_x_q[70:70]);

    // i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110(BLACKBOX,258)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_31@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    avgpooling1_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_0 thei_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110 (
        .in_data_in(bubble_select_avgpooling1_B4_merge_reg_aunroll_x_e),
        .in_dir(bubble_select_avgpooling1_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_31(i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_backStall),
        .in_valid_in(SE_out_avgpooling1_B4_merge_reg_aunroll_x_V4),
        .out_data_out(i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_feedback_stall_out_31),
        .out_stall_out(i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110(BITJOIN,3714)
    assign bubble_join_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_q = i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110(BITSELECT,3715)
    assign bubble_select_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_q[31:0]);

    // SE_out_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo(STALLENABLE,4271)
    // Valid signal propagation
    assign SE_out_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_V0 = SE_out_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_backStall = SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_backStall | ~ (SE_out_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_wireValid = redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_valid_out;

    // SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110(STALLENABLE,3843)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_V0 = SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_backStall = redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_wireValid = i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_valid_out;

    // redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo(STALLFIFO,3617)
    assign redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_V0;
    assign redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_stall_in = SE_out_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_backStall;
    assign redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_data_in = bubble_select_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_b;
    assign redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_valid_in_bitsignaltemp = redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_valid_in[0];
    assign redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_stall_in_bitsignaltemp = redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_stall_in[0];
    assign redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_valid_out[0] = redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_valid_out_bitsignaltemp;
    assign redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_stall_out[0] = redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(134),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo (
        .valid_in(redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_valid_in_bitsignaltemp),
        .stall_in(redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_b),
        .valid_out(redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_valid_out_bitsignaltemp),
        .stall_out(redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_stall_out_bitsignaltemp),
        .data_out(redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo(BITJOIN,3737)
    assign bubble_join_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_q = redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_data_out;

    // bubble_select_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo(BITSELECT,3738)
    assign bubble_select_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_b = $unsigned(bubble_join_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_q[31:0]);

    // redist55_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_136_0(REG,3618)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_136_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist55_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_136_0_q <= $unsigned(bubble_select_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_b);
        end
    end

    // join_for_coalesced_delay_11(BITJOIN,3581)
    assign join_for_coalesced_delay_11_q = {i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c, i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c};

    // join_for_coalesced_delay_7(BITJOIN,3569)
    assign join_for_coalesced_delay_7_q = {i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c, i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c};

    // join_for_coalesced_delay_3(BITJOIN,3557)
    assign join_for_coalesced_delay_3_q = {i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c, i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c};

    // rightShiftStage0Idx1Rng1_uid577_i_div37_avgpooling10_shift_x(BITSELECT,576)@135
    assign rightShiftStage0Idx1Rng1_uid577_i_div37_avgpooling10_shift_x_b = bubble_select_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_b[31:1];

    // rightShiftStage0Idx1_uid579_i_div37_avgpooling10_shift_x(BITJOIN,578)@135
    assign rightShiftStage0Idx1_uid579_i_div37_avgpooling10_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid577_i_div37_avgpooling10_shift_x_b};

    // rightShiftStage0_uid581_i_div37_avgpooling10_shift_x(MUX,580)@135
    assign rightShiftStage0_uid581_i_div37_avgpooling10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid581_i_div37_avgpooling10_shift_x_s or bubble_select_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_b or rightShiftStage0Idx1_uid579_i_div37_avgpooling10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid581_i_div37_avgpooling10_shift_x_s)
            1'b0 : rightShiftStage0_uid581_i_div37_avgpooling10_shift_x_q = bubble_select_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_b;
            1'b1 : rightShiftStage0_uid581_i_div37_avgpooling10_shift_x_q = rightShiftStage0Idx1_uid579_i_div37_avgpooling10_shift_x_q;
            default : rightShiftStage0_uid581_i_div37_avgpooling10_shift_x_q = 32'b0;
        endcase
    end

    // i_div37_avgpooling131_vt_select_30(BITSELECT,204)@135
    assign i_div37_avgpooling131_vt_select_30_b = rightShiftStage0_uid581_i_div37_avgpooling10_shift_x_q[30:0];

    // i_div37_avgpooling131_vt_join(BITJOIN,203)@135
    assign i_div37_avgpooling131_vt_join_q = {GND_q, i_div37_avgpooling131_vt_select_30_b};

    // i_idxprom38_avgpooling150_sel_x(BITSELECT,162)@135
    assign i_idxprom38_avgpooling150_sel_x_b = {32'b00000000000000000000000000000000, i_div37_avgpooling131_vt_join_q[31:0]};

    // i_idxprom38_avgpooling150_vt_select_30(BITSELECT,225)@135
    assign i_idxprom38_avgpooling150_vt_select_30_b = i_idxprom38_avgpooling150_sel_x_b[30:0];

    // i_idxprom38_avgpooling150_vt_join(BITJOIN,224)@135
    assign i_idxprom38_avgpooling150_vt_join_q = {i_idxprom38_avgpooling150_vt_const_63_q, i_idxprom38_avgpooling150_vt_select_30_b};

    // i_arrayidx42_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select(BITSELECT,3473)@135
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_b = i_idxprom38_avgpooling150_vt_join_q[17:0];
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_c = i_idxprom38_avgpooling150_vt_join_q[35:18];
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_d = i_idxprom38_avgpooling150_vt_join_q[53:36];
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_e = i_idxprom38_avgpooling150_vt_join_q[63:54];

    // xIfSign_mergedSignalTM_uid2831_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9(BITJOIN,2830)@135
    assign xIfSign_mergedSignalTM_uid2831_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_q = {GND_q, i_arrayidx42_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_e};

    // aPostPad_uid2836_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9(BITJOIN,2835)@135
    assign aPostPad_uid2836_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_q = {xIfSign_mergedSignalTM_uid2831_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_q, padACst_uid630_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // sub_uid2837_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9(SUB,2836)@135
    assign sub_uid2837_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_a = $unsigned({{1{aPostPad_uid2836_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_q[13]}}, aPostPad_uid2836_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_q});
    assign sub_uid2837_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b = $unsigned({{4{xIfSign_mergedSignalTM_uid2831_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_q[10]}}, xIfSign_mergedSignalTM_uid2831_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_q});
    assign sub_uid2837_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_o = $unsigned($signed(sub_uid2837_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_a) - $signed(sub_uid2837_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b));
    assign sub_uid2837_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_q = sub_uid2837_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_o[14:0];

    // sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9(BITSELECT,2840)@135
    assign sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_in = $unsigned(sub_uid2837_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_q[12:0]);
    assign sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b = $unsigned(sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_in[12:0]);

    // redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0(REG,3593)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_q <= $unsigned(13'b0000000000000);
        end
        else if (SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_q <= $unsigned(sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b);
        end
    end

    // padACst_uid630_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0(CONSTANT,629)
    assign padACst_uid630_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q = $unsigned(3'b000);

    // sR_mergedSignalTM_uid2842_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9(BITJOIN,2841)@136
    assign sR_mergedSignalTM_uid2842_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_q = {redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_q, padACst_uid630_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_3(BITSHIFT,545)@136
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid2842_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_q, 12'b000000000000 };
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_3_q = i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_3_qint[27:0];

    // xIfSign_mergedSignalTM_uid2705_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3(BITJOIN,2704)@135
    assign xIfSign_mergedSignalTM_uid2705_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_q = {GND_q, i_arrayidx42_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_c};

    // aPostPad_uid2710_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3(BITJOIN,2709)@135
    assign aPostPad_uid2710_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_q = {xIfSign_mergedSignalTM_uid2705_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_q, padACst_uid630_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // sub_uid2711_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3(SUB,2710)@135
    assign sub_uid2711_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_a = $unsigned({{1{aPostPad_uid2710_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_q[21]}}, aPostPad_uid2710_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_q});
    assign sub_uid2711_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_b = $unsigned({{4{xIfSign_mergedSignalTM_uid2705_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_q[18]}}, xIfSign_mergedSignalTM_uid2705_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_q});
    assign sub_uid2711_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_o = $unsigned($signed(sub_uid2711_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_a) - $signed(sub_uid2711_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_b));
    assign sub_uid2711_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_q = sub_uid2711_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_o[22:0];

    // sR_bottomRange_uid2715_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3(BITSELECT,2714)@135
    assign sR_bottomRange_uid2715_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_in = $unsigned(sub_uid2711_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_q[20:0]);
    assign sR_bottomRange_uid2715_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_b = $unsigned(sR_bottomRange_uid2715_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_in[20:0]);

    // redist36_sR_bottomRange_uid2715_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_b_1_0(REG,3595)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sR_bottomRange_uid2715_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_b_1_0_q <= $unsigned(21'b000000000000000000000);
        end
        else if (SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist36_sR_bottomRange_uid2715_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_b_1_0_q <= $unsigned(sR_bottomRange_uid2715_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_b);
        end
    end

    // sR_mergedSignalTM_uid2716_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3(BITJOIN,2715)@136
    assign sR_mergedSignalTM_uid2716_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_q = {redist36_sR_bottomRange_uid2715_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_b_1_0_q, padACst_uid630_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_2(BITSHIFT,544)@136
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid2716_i_arrayidx42_avgpooling10_dupName_0_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_2_q = i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_join_4(BITJOIN,546)@136
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_join_4_q = {i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_3_q, i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b(BITJOIN,3329)@136
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q = {GND_q, i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_join_4_q};

    // i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b(BITSELECT,3332)@136
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b = i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[51:0];
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c = i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[70:52];

    // xIfSign_mergedSignalTM_uid2768_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6(BITJOIN,2767)@135
    assign xIfSign_mergedSignalTM_uid2768_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_q = {GND_q, i_arrayidx42_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_d};

    // aPostPad_uid2773_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6(BITJOIN,2772)@135
    assign aPostPad_uid2773_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_q = {xIfSign_mergedSignalTM_uid2768_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_q, padACst_uid630_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // sub_uid2774_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6(SUB,2773)@135
    assign sub_uid2774_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_a = $unsigned({{1{aPostPad_uid2773_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_q[21]}}, aPostPad_uid2773_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_q});
    assign sub_uid2774_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_b = $unsigned({{4{xIfSign_mergedSignalTM_uid2768_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_q[18]}}, xIfSign_mergedSignalTM_uid2768_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_q});
    assign sub_uid2774_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_o = $unsigned($signed(sub_uid2774_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_a) - $signed(sub_uid2774_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_b));
    assign sub_uid2774_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_q = sub_uid2774_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_o[22:0];

    // sR_bottomRange_uid2778_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6(BITSELECT,2777)@135
    assign sR_bottomRange_uid2778_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_in = $unsigned(sub_uid2774_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_q[20:0]);
    assign sR_bottomRange_uid2778_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_b = $unsigned(sR_bottomRange_uid2778_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_in[20:0]);

    // redist35_sR_bottomRange_uid2778_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_b_1_0(REG,3594)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sR_bottomRange_uid2778_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_b_1_0_q <= $unsigned(21'b000000000000000000000);
        end
        else if (SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist35_sR_bottomRange_uid2778_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_b_1_0_q <= $unsigned(sR_bottomRange_uid2778_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_b);
        end
    end

    // sR_mergedSignalTM_uid2779_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6(BITJOIN,2778)@136
    assign sR_mergedSignalTM_uid2779_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_q = {redist35_sR_bottomRange_uid2778_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_b_1_0_q, padACst_uid630_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_0(BITSHIFT,542)@136
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid2779_i_arrayidx42_avgpooling10_dupName_0_mult_x_im6_q, 12'b000000000000 };
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_0_q = i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_0_qint[35:0];

    // xIfSign_mergedSignalTM_uid2642_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0(BITJOIN,2641)@135
    assign xIfSign_mergedSignalTM_uid2642_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_q = {GND_q, i_arrayidx42_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_b};

    // aPostPad_uid2647_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0(BITJOIN,2646)@135
    assign aPostPad_uid2647_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_q = {xIfSign_mergedSignalTM_uid2642_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_q, padACst_uid630_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // sub_uid2648_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0(SUB,2647)@135
    assign sub_uid2648_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_a = $unsigned({{1{aPostPad_uid2647_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_q[21]}}, aPostPad_uid2647_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_q});
    assign sub_uid2648_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_b = $unsigned({{4{xIfSign_mergedSignalTM_uid2642_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_q[18]}}, xIfSign_mergedSignalTM_uid2642_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_q});
    assign sub_uid2648_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_o = $unsigned($signed(sub_uid2648_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_a) - $signed(sub_uid2648_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_b));
    assign sub_uid2648_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_q = sub_uid2648_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_o[22:0];

    // sR_bottomRange_uid2652_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0(BITSELECT,2651)@135
    assign sR_bottomRange_uid2652_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_in = $unsigned(sub_uid2648_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_q[20:0]);
    assign sR_bottomRange_uid2652_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_b = $unsigned(sR_bottomRange_uid2652_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_in[20:0]);

    // redist37_sR_bottomRange_uid2652_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_b_1_0(REG,3596)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sR_bottomRange_uid2652_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_b_1_0_q <= $unsigned(21'b000000000000000000000);
        end
        else if (SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist37_sR_bottomRange_uid2652_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_b_1_0_q <= $unsigned(sR_bottomRange_uid2652_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_b);
        end
    end

    // sR_mergedSignalTM_uid2653_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0(BITJOIN,2652)@136
    assign sR_mergedSignalTM_uid2653_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_q = {redist37_sR_bottomRange_uid2652_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_b_1_0_q, padACst_uid630_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_join_1(BITJOIN,543)@136
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_join_1_q = {i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid2653_i_arrayidx42_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a(BITJOIN,3327)@136
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q = {i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_join_1_q};

    // i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a(BITSELECT,3331)@136
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b = i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[51:0];
    assign i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c = i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[70:52];

    // join_for_coalesced_delay_9(BITJOIN,3575)
    assign join_for_coalesced_delay_9_q = {i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c, i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c};

    // join_for_coalesced_delay_5(BITJOIN,3563)
    assign join_for_coalesced_delay_5_q = {i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c, i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c};

    // c_i32_176(CONSTANT,182)
    assign c_i32_176_q = $unsigned(32'b00000000000000000000000000000001);

    // i_add_avgpooling132(LOGICAL,195)@135
    assign i_add_avgpooling132_q = bubble_select_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_b | c_i32_176_q;

    // i_add_avgpooling132_vt_select_31(BITSELECT,198)@135
    assign i_add_avgpooling132_vt_select_31_b = i_add_avgpooling132_q[31:1];

    // i_add_avgpooling132_vt_join(BITJOIN,197)@135
    assign i_add_avgpooling132_vt_join_q = {i_add_avgpooling132_vt_select_31_b, VCC_q};

    // i_idxprom13_avgpooling151_sel_x(BITSELECT,160)@135
    assign i_idxprom13_avgpooling151_sel_x_b = {32'b00000000000000000000000000000000, i_add_avgpooling132_vt_join_q[31:0]};

    // i_idxprom13_avgpooling151_vt_select_31(BITSELECT,216)@135
    assign i_idxprom13_avgpooling151_vt_select_31_b = i_idxprom13_avgpooling151_sel_x_b[31:1];

    // i_idxprom13_avgpooling151_vt_join(BITJOIN,215)@135
    assign i_idxprom13_avgpooling151_vt_join_q = {c_i32_074_q, i_idxprom13_avgpooling151_vt_select_31_b, VCC_q};

    // i_arrayidx16_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select(BITSELECT,3471)@135
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_b = i_idxprom13_avgpooling151_vt_join_q[17:0];
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_c = i_idxprom13_avgpooling151_vt_join_q[35:18];
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_d = i_idxprom13_avgpooling151_vt_join_q[53:36];
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_e = i_idxprom13_avgpooling151_vt_join_q[63:54];

    // xIfSign_mergedSignalTM_uid1319_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9(BITJOIN,1318)@135
    assign xIfSign_mergedSignalTM_uid1319_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_q = {GND_q, i_arrayidx16_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_e};

    // aPostPad_uid1324_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9(BITJOIN,1323)@135
    assign aPostPad_uid1324_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_q = {xIfSign_mergedSignalTM_uid1319_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_q, padACst_uid630_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // sub_uid1325_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9(SUB,1324)@135
    assign sub_uid1325_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_a = $unsigned({{1{aPostPad_uid1324_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_q[13]}}, aPostPad_uid1324_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_q});
    assign sub_uid1325_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_b = $unsigned({{4{xIfSign_mergedSignalTM_uid1319_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_q[10]}}, xIfSign_mergedSignalTM_uid1319_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_q});
    assign sub_uid1325_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_o = $unsigned($signed(sub_uid1325_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_a) - $signed(sub_uid1325_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_b));
    assign sub_uid1325_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_q = sub_uid1325_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_o[14:0];

    // sR_bottomRange_uid1329_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9(BITSELECT,1328)@135
    assign sR_bottomRange_uid1329_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_in = $unsigned(sub_uid1325_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_q[12:0]);
    assign sR_bottomRange_uid1329_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_b = $unsigned(sR_bottomRange_uid1329_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_in[12:0]);

    // redist38_sR_bottomRange_uid1329_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_b_1_0(REG,3597)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sR_bottomRange_uid1329_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_b_1_0_q <= $unsigned(13'b0000000000000);
        end
        else if (SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist38_sR_bottomRange_uid1329_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_b_1_0_q <= $unsigned(sR_bottomRange_uid1329_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_b);
        end
    end

    // sR_mergedSignalTM_uid1330_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9(BITJOIN,1329)@136
    assign sR_mergedSignalTM_uid1330_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_q = {redist38_sR_bottomRange_uid1329_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_b_1_0_q, sR_bottomExtension_uid635_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_3(BITSHIFT,509)@136
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid1330_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_q, 11'b00000000000 };
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_3_q = i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_3_qint[27:0];

    // xIfSign_mergedSignalTM_uid1193_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3(BITJOIN,1192)@135
    assign xIfSign_mergedSignalTM_uid1193_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_q = {GND_q, i_arrayidx16_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_c};

    // aPostPad_uid1198_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3(BITJOIN,1197)@135
    assign aPostPad_uid1198_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_q = {xIfSign_mergedSignalTM_uid1193_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_q, padACst_uid630_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // sub_uid1199_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3(SUB,1198)@135
    assign sub_uid1199_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_a = $unsigned({{1{aPostPad_uid1198_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_q[21]}}, aPostPad_uid1198_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_q});
    assign sub_uid1199_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_b = $unsigned({{4{xIfSign_mergedSignalTM_uid1193_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_q[18]}}, xIfSign_mergedSignalTM_uid1193_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_q});
    assign sub_uid1199_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_o = $unsigned($signed(sub_uid1199_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_a) - $signed(sub_uid1199_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_b));
    assign sub_uid1199_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_q = sub_uid1199_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_o[22:0];

    // sR_bottomRange_uid1203_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3(BITSELECT,1202)@135
    assign sR_bottomRange_uid1203_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_in = $unsigned(sub_uid1199_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_q[20:0]);
    assign sR_bottomRange_uid1203_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_b = $unsigned(sR_bottomRange_uid1203_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_in[20:0]);

    // redist40_sR_bottomRange_uid1203_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_b_1_0(REG,3599)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sR_bottomRange_uid1203_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_b_1_0_q <= $unsigned(21'b000000000000000000000);
        end
        else if (SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist40_sR_bottomRange_uid1203_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_b_1_0_q <= $unsigned(sR_bottomRange_uid1203_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_b);
        end
    end

    // sR_mergedSignalTM_uid1204_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3(BITJOIN,1203)@136
    assign sR_mergedSignalTM_uid1204_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_q = {redist40_sR_bottomRange_uid1203_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_b_1_0_q, sR_bottomExtension_uid635_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_2(BITSHIFT,508)@136
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid1204_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_2_q = i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_2_qint[42:0];

    // i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_join_4(BITJOIN,510)@136
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_join_4_q = {i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_3_q, i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b(BITJOIN,3311)@136
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q = {GND_q, i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_join_4_q};

    // i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b(BITSELECT,3314)@136
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b = i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[51:0];
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c = i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[71:52];

    // xIfSign_mergedSignalTM_uid1256_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6(BITJOIN,1255)@135
    assign xIfSign_mergedSignalTM_uid1256_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_q = {GND_q, i_arrayidx16_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_d};

    // aPostPad_uid1261_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6(BITJOIN,1260)@135
    assign aPostPad_uid1261_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_q = {xIfSign_mergedSignalTM_uid1256_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_q, padACst_uid630_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // sub_uid1262_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6(SUB,1261)@135
    assign sub_uid1262_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_a = $unsigned({{1{aPostPad_uid1261_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_q[21]}}, aPostPad_uid1261_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_q});
    assign sub_uid1262_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_b = $unsigned({{4{xIfSign_mergedSignalTM_uid1256_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_q[18]}}, xIfSign_mergedSignalTM_uid1256_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_q});
    assign sub_uid1262_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_o = $unsigned($signed(sub_uid1262_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_a) - $signed(sub_uid1262_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_b));
    assign sub_uid1262_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_q = sub_uid1262_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_o[22:0];

    // sR_bottomRange_uid1266_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6(BITSELECT,1265)@135
    assign sR_bottomRange_uid1266_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_in = $unsigned(sub_uid1262_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_q[20:0]);
    assign sR_bottomRange_uid1266_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_b = $unsigned(sR_bottomRange_uid1266_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_in[20:0]);

    // redist39_sR_bottomRange_uid1266_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_b_1_0(REG,3598)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sR_bottomRange_uid1266_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_b_1_0_q <= $unsigned(21'b000000000000000000000);
        end
        else if (SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist39_sR_bottomRange_uid1266_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_b_1_0_q <= $unsigned(sR_bottomRange_uid1266_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_b);
        end
    end

    // sR_mergedSignalTM_uid1267_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6(BITJOIN,1266)@136
    assign sR_mergedSignalTM_uid1267_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_q = {redist39_sR_bottomRange_uid1266_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_b_1_0_q, sR_bottomExtension_uid635_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_0(BITSHIFT,506)@136
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid1267_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_q, 11'b00000000000 };
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_0_q = i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_0_qint[35:0];

    // xIfSign_mergedSignalTM_uid1130_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0(BITJOIN,1129)@135
    assign xIfSign_mergedSignalTM_uid1130_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_q = {GND_q, i_arrayidx16_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_b};

    // aPostPad_uid1135_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0(BITJOIN,1134)@135
    assign aPostPad_uid1135_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_q = {xIfSign_mergedSignalTM_uid1130_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_q, padACst_uid630_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // sub_uid1136_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0(SUB,1135)@135
    assign sub_uid1136_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_a = $unsigned({{1{aPostPad_uid1135_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_q[21]}}, aPostPad_uid1135_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_q});
    assign sub_uid1136_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_b = $unsigned({{4{xIfSign_mergedSignalTM_uid1130_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_q[18]}}, xIfSign_mergedSignalTM_uid1130_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_q});
    assign sub_uid1136_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_o = $unsigned($signed(sub_uid1136_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_a) - $signed(sub_uid1136_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_b));
    assign sub_uid1136_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_q = sub_uid1136_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_o[22:0];

    // sR_bottomRange_uid1140_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0(BITSELECT,1139)@135
    assign sR_bottomRange_uid1140_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_in = $unsigned(sub_uid1136_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_q[20:0]);
    assign sR_bottomRange_uid1140_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_b = $unsigned(sR_bottomRange_uid1140_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_in[20:0]);

    // redist41_sR_bottomRange_uid1140_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_b_1_0(REG,3600)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sR_bottomRange_uid1140_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_b_1_0_q <= $unsigned(21'b000000000000000000000);
        end
        else if (SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist41_sR_bottomRange_uid1140_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_b_1_0_q <= $unsigned(sR_bottomRange_uid1140_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_b);
        end
    end

    // sR_mergedSignalTM_uid1141_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0(BITJOIN,1140)@136
    assign sR_mergedSignalTM_uid1141_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_q = {redist41_sR_bottomRange_uid1140_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_b_1_0_q, sR_bottomExtension_uid635_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_join_1(BITJOIN,507)@136
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_join_1_q = {i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid1141_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a(BITJOIN,3309)@136
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q = {i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_join_1_q};

    // i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a(BITSELECT,3313)@136
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b = i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[51:0];
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c = i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[71:52];

    // i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_3(BITSHIFT,437)@136
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid1330_i_arrayidx16_avgpooling10_dupName_0_mult_x_im9_q, 11'b00000000000 };
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_3_q = i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_2(BITSHIFT,436)@136
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid1204_i_arrayidx16_avgpooling10_dupName_0_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_2_q = i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_2_qint[42:0];

    // i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_join_4(BITJOIN,438)@136
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_join_4_q = {i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_3_q, i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b(BITJOIN,3275)@136
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q = {GND_q, i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_join_4_q};

    // i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b(BITSELECT,3278)@136
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b = i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[51:0];
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c = i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[71:52];

    // i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_0(BITSHIFT,434)@136
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid1267_i_arrayidx16_avgpooling10_dupName_0_mult_x_im6_q, 11'b00000000000 };
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_0_q = i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_join_1(BITJOIN,435)@136
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_join_1_q = {i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid1141_i_arrayidx16_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a(BITJOIN,3273)@136
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q = {i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_join_1_q};

    // i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a(BITSELECT,3277)@136
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b = i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[51:0];
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c = i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[71:52];

    // i_idxprom7_avgpooling133_sel_x(BITSELECT,164)@135
    assign i_idxprom7_avgpooling133_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_b[31:0]};

    // i_idxprom7_avgpooling133_vt_select_31(BITSELECT,233)@135
    assign i_idxprom7_avgpooling133_vt_select_31_b = i_idxprom7_avgpooling133_sel_x_b[31:0];

    // i_idxprom7_avgpooling133_vt_join(BITJOIN,232)@135
    assign i_idxprom7_avgpooling133_vt_join_q = {c_i32_074_q, i_idxprom7_avgpooling133_vt_select_31_b};

    // i_arrayidx10_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select(BITSELECT,3474)@135
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_b = i_idxprom7_avgpooling133_vt_join_q[17:0];
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_c = i_idxprom7_avgpooling133_vt_join_q[35:18];
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_d = i_idxprom7_avgpooling133_vt_join_q[53:36];
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_e = i_idxprom7_avgpooling133_vt_join_q[63:54];

    // xIfSign_mergedSignalTM_uid815_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9(BITJOIN,814)@135
    assign xIfSign_mergedSignalTM_uid815_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_q = {GND_q, i_arrayidx10_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_e};

    // aPostPad_uid820_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9(BITJOIN,819)@135
    assign aPostPad_uid820_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_q = {xIfSign_mergedSignalTM_uid815_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_q, padACst_uid630_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // sub_uid821_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9(SUB,820)@135
    assign sub_uid821_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_a = $unsigned({{1{aPostPad_uid820_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_q[13]}}, aPostPad_uid820_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_q});
    assign sub_uid821_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_b = $unsigned({{4{xIfSign_mergedSignalTM_uid815_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_q[10]}}, xIfSign_mergedSignalTM_uid815_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_q});
    assign sub_uid821_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_o = $unsigned($signed(sub_uid821_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_a) - $signed(sub_uid821_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_b));
    assign sub_uid821_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_q = sub_uid821_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_o[14:0];

    // sR_bottomRange_uid825_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9(BITSELECT,824)@135
    assign sR_bottomRange_uid825_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_in = $unsigned(sub_uid821_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_q[12:0]);
    assign sR_bottomRange_uid825_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_b = $unsigned(sR_bottomRange_uid825_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_in[12:0]);

    // redist46_sR_bottomRange_uid825_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_b_1_0(REG,3605)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sR_bottomRange_uid825_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_b_1_0_q <= $unsigned(13'b0000000000000);
        end
        else if (SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist46_sR_bottomRange_uid825_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_b_1_0_q <= $unsigned(sR_bottomRange_uid825_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_b);
        end
    end

    // sR_mergedSignalTM_uid826_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9(BITJOIN,825)@136
    assign sR_mergedSignalTM_uid826_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_q = {redist46_sR_bottomRange_uid825_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_b_1_0_q, sR_bottomExtension_uid635_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_3(BITSHIFT,473)@136
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid826_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_q, 11'b00000000000 };
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_3_q = i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_3_qint[27:0];

    // xIfSign_mergedSignalTM_uid689_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3(BITJOIN,688)@135
    assign xIfSign_mergedSignalTM_uid689_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_q = {GND_q, i_arrayidx10_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_c};

    // aPostPad_uid694_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3(BITJOIN,693)@135
    assign aPostPad_uid694_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_q = {xIfSign_mergedSignalTM_uid689_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_q, padACst_uid630_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // sub_uid695_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3(SUB,694)@135
    assign sub_uid695_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_a = $unsigned({{1{aPostPad_uid694_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_q[21]}}, aPostPad_uid694_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_q});
    assign sub_uid695_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_b = $unsigned({{4{xIfSign_mergedSignalTM_uid689_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_q[18]}}, xIfSign_mergedSignalTM_uid689_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_q});
    assign sub_uid695_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_o = $unsigned($signed(sub_uid695_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_a) - $signed(sub_uid695_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_b));
    assign sub_uid695_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_q = sub_uid695_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_o[22:0];

    // sR_bottomRange_uid699_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3(BITSELECT,698)@135
    assign sR_bottomRange_uid699_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_in = $unsigned(sub_uid695_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_q[20:0]);
    assign sR_bottomRange_uid699_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_b = $unsigned(sR_bottomRange_uid699_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_in[20:0]);

    // redist48_sR_bottomRange_uid699_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_b_1_0(REG,3607)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_sR_bottomRange_uid699_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_b_1_0_q <= $unsigned(21'b000000000000000000000);
        end
        else if (SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist48_sR_bottomRange_uid699_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_b_1_0_q <= $unsigned(sR_bottomRange_uid699_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_b);
        end
    end

    // sR_mergedSignalTM_uid700_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3(BITJOIN,699)@136
    assign sR_mergedSignalTM_uid700_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_q = {redist48_sR_bottomRange_uid699_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_b_1_0_q, sR_bottomExtension_uid635_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_2(BITSHIFT,472)@136
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid700_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_2_q = i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_2_qint[42:0];

    // i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_join_4(BITJOIN,474)@136
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_join_4_q = {i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_3_q, i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b(BITJOIN,3293)@136
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q = {GND_q, i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_join_4_q};

    // i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b(BITSELECT,3296)@136
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b = i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[51:0];
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c = i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[71:52];

    // xIfSign_mergedSignalTM_uid752_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6(BITJOIN,751)@135
    assign xIfSign_mergedSignalTM_uid752_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_q = {GND_q, i_arrayidx10_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_d};

    // aPostPad_uid757_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6(BITJOIN,756)@135
    assign aPostPad_uid757_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_q = {xIfSign_mergedSignalTM_uid752_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_q, padACst_uid630_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // sub_uid758_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6(SUB,757)@135
    assign sub_uid758_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_a = $unsigned({{1{aPostPad_uid757_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_q[21]}}, aPostPad_uid757_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_q});
    assign sub_uid758_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_b = $unsigned({{4{xIfSign_mergedSignalTM_uid752_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_q[18]}}, xIfSign_mergedSignalTM_uid752_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_q});
    assign sub_uid758_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_o = $unsigned($signed(sub_uid758_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_a) - $signed(sub_uid758_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_b));
    assign sub_uid758_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_q = sub_uid758_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_o[22:0];

    // sR_bottomRange_uid762_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6(BITSELECT,761)@135
    assign sR_bottomRange_uid762_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_in = $unsigned(sub_uid758_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_q[20:0]);
    assign sR_bottomRange_uid762_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_b = $unsigned(sR_bottomRange_uid762_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_in[20:0]);

    // redist47_sR_bottomRange_uid762_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_b_1_0(REG,3606)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sR_bottomRange_uid762_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_b_1_0_q <= $unsigned(21'b000000000000000000000);
        end
        else if (SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist47_sR_bottomRange_uid762_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_b_1_0_q <= $unsigned(sR_bottomRange_uid762_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_b);
        end
    end

    // sR_mergedSignalTM_uid763_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6(BITJOIN,762)@136
    assign sR_mergedSignalTM_uid763_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_q = {redist47_sR_bottomRange_uid762_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_b_1_0_q, sR_bottomExtension_uid635_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_0(BITSHIFT,470)@136
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid763_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_q, 11'b00000000000 };
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_0_q = i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_0_qint[35:0];

    // xIfSign_mergedSignalTM_uid626_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0(BITJOIN,625)@135
    assign xIfSign_mergedSignalTM_uid626_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q = {GND_q, i_arrayidx10_avgpooling10_dupName_0_mult_x_bs1_merged_bit_select_b};

    // aPostPad_uid631_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0(BITJOIN,630)@135
    assign aPostPad_uid631_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q = {xIfSign_mergedSignalTM_uid626_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q, padACst_uid630_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // sub_uid632_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0(SUB,631)@135
    assign sub_uid632_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_a = $unsigned({{1{aPostPad_uid631_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q[21]}}, aPostPad_uid631_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q});
    assign sub_uid632_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_b = $unsigned({{4{xIfSign_mergedSignalTM_uid626_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q[18]}}, xIfSign_mergedSignalTM_uid626_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q});
    assign sub_uid632_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_o = $unsigned($signed(sub_uid632_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_a) - $signed(sub_uid632_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_b));
    assign sub_uid632_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q = sub_uid632_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_o[22:0];

    // sR_bottomRange_uid636_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0(BITSELECT,635)@135
    assign sR_bottomRange_uid636_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_in = $unsigned(sub_uid632_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q[20:0]);
    assign sR_bottomRange_uid636_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_b = $unsigned(sR_bottomRange_uid636_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_in[20:0]);

    // redist49_sR_bottomRange_uid636_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_b_1_0(REG,3608)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_sR_bottomRange_uid636_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_b_1_0_q <= $unsigned(21'b000000000000000000000);
        end
        else if (SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist49_sR_bottomRange_uid636_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_b_1_0_q <= $unsigned(sR_bottomRange_uid636_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_b);
        end
    end

    // sR_mergedSignalTM_uid637_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0(BITJOIN,636)@136
    assign sR_mergedSignalTM_uid637_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q = {redist49_sR_bottomRange_uid636_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_b_1_0_q, sR_bottomExtension_uid635_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_join_1(BITJOIN,471)@136
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_join_1_q = {i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid637_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a(BITJOIN,3291)@136
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q = {i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_join_1_q};

    // i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a(BITSELECT,3295)@136
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b = i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[51:0];
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c = i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[71:52];

    // i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_3(BITSHIFT,401)@136
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid826_i_arrayidx10_avgpooling10_dupName_0_mult_x_im9_q, 11'b00000000000 };
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_3_q = i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_2(BITSHIFT,400)@136
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid700_i_arrayidx10_avgpooling10_dupName_0_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_2_q = i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_2_qint[42:0];

    // i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_join_4(BITJOIN,402)@136
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_join_4_q = {i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_3_q, i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b(BITJOIN,3257)@136
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q = {GND_q, i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_join_4_q};

    // i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b(BITSELECT,3260)@136
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b = i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[51:0];
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c = i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[71:52];

    // i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_0(BITSHIFT,398)@136
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid763_i_arrayidx10_avgpooling10_dupName_0_mult_x_im6_q, 11'b00000000000 };
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_0_q = i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_join_1(BITJOIN,399)@136
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_join_1_q = {i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid637_i_arrayidx10_avgpooling10_dupName_0_mult_x_im0_q};

    // i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a(BITJOIN,3255)@136
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q = {i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_join_1_q};

    // i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a(BITSELECT,3259)@136
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b = i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[51:0];
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c = i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[71:52];

    // SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0(STALLENABLE,4244)
    // Valid signal propagation
    assign SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_V0 = SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_s_tv_0 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall & SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_backEN = ~ (SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_v_s_0 = SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_backEN & SE_out_redist54_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_133_fifo_V0;
    // Backward Stall generation
    assign SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_backStall = ~ (SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_backEN == 1'b0)
            begin
                SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_R_v_0 <= SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_R_v_0 & SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_R_v_0 <= SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(STALLREG,4480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data5 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data6 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data7 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data8 <= 40'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data9 <= 40'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data10 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data11 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data12 <= 40'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data13 <= 40'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data14 <= 38'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data15 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall & (SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid | SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= $unsigned(i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= $unsigned(i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= $unsigned(i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data5 <= $unsigned(i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data6 <= $unsigned(i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data7 <= $unsigned(i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data8 <= $unsigned(join_for_coalesced_delay_5_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data9 <= $unsigned(join_for_coalesced_delay_9_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data10 <= $unsigned(i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data11 <= $unsigned(i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data12 <= $unsigned(join_for_coalesced_delay_3_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data13 <= $unsigned(join_for_coalesced_delay_7_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data14 <= $unsigned(join_for_coalesced_delay_11_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data15 <= $unsigned(redist55_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_136_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_i_valid = SE_redist34_sR_bottomRange_uid2841_i_arrayidx42_avgpooling10_dupName_0_mult_x_im9_b_1_0_V0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid : SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D0 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data0 : i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    // Data1
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D1 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data1 : i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    // Data2
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D2 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data2 : i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    // Data3
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D3 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data3 : i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    // Data4
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D4 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data4 : i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    // Data5
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D5 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data5 : i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    // Data6
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D6 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data6 : i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    // Data7
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D7 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data7 : i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    // Data8
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D8 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data8 : join_for_coalesced_delay_5_q;
    // Data9
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D9 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data9 : join_for_coalesced_delay_9_q;
    // Data10
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D10 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data10 : i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    // Data11
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D11 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data11 : i_arrayidx42_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    // Data12
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D12 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data12 : join_for_coalesced_delay_3_q;
    // Data13
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D13 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data13 : join_for_coalesced_delay_7_q;
    // Data14
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D14 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data14 : join_for_coalesced_delay_11_q;
    // Data15
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D15 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data15 : redist55_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling110_out_data_out_136_0_q;

    // i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(ADD,3315)@136 + 1
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D6};
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D7};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // i_arrayidx33_avgpooling10_add_x_p1_of_2(ADD,3225)@136 + 1
    assign i_arrayidx33_avgpooling10_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D3};
    assign i_arrayidx33_avgpooling10_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D7};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx33_avgpooling10_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx33_avgpooling10_add_x_p1_of_2_o <= $unsigned(i_arrayidx33_avgpooling10_add_x_p1_of_2_a) + $unsigned(i_arrayidx33_avgpooling10_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx33_avgpooling10_add_x_p1_of_2_c[0] = i_arrayidx33_avgpooling10_add_x_p1_of_2_o[52];
    assign i_arrayidx33_avgpooling10_add_x_p1_of_2_q = i_arrayidx33_avgpooling10_add_x_p1_of_2_o[51:0];

    // i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(ADD,3279)@136 + 1
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D4};
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D5};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // i_arrayidx16_avgpooling10_add_x_p1_of_2(ADD,3171)@136 + 1
    assign i_arrayidx16_avgpooling10_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D1};
    assign i_arrayidx16_avgpooling10_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D5};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_avgpooling10_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx16_avgpooling10_add_x_p1_of_2_o <= $unsigned(i_arrayidx16_avgpooling10_add_x_p1_of_2_a) + $unsigned(i_arrayidx16_avgpooling10_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx16_avgpooling10_add_x_p1_of_2_c[0] = i_arrayidx16_avgpooling10_add_x_p1_of_2_o[52];
    assign i_arrayidx16_avgpooling10_add_x_p1_of_2_q = i_arrayidx16_avgpooling10_add_x_p1_of_2_o[51:0];

    // i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(ADD,3297)@136 + 1
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D2};
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D3};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // i_arrayidx24_avgpooling10_add_x_p1_of_2(ADD,3198)@136 + 1
    assign i_arrayidx24_avgpooling10_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D2};
    assign i_arrayidx24_avgpooling10_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D6};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_avgpooling10_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx24_avgpooling10_add_x_p1_of_2_o <= $unsigned(i_arrayidx24_avgpooling10_add_x_p1_of_2_a) + $unsigned(i_arrayidx24_avgpooling10_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx24_avgpooling10_add_x_p1_of_2_c[0] = i_arrayidx24_avgpooling10_add_x_p1_of_2_o[52];
    assign i_arrayidx24_avgpooling10_add_x_p1_of_2_q = i_arrayidx24_avgpooling10_add_x_p1_of_2_o[51:0];

    // i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(ADD,3261)@136 + 1
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D0};
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // i_arrayidx10_avgpooling10_add_x_p1_of_2(ADD,3144)@136 + 1
    assign i_arrayidx10_avgpooling10_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D0};
    assign i_arrayidx10_avgpooling10_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_D4};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_avgpooling10_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_avgpooling10_add_x_p1_of_2_o <= $unsigned(i_arrayidx10_avgpooling10_add_x_p1_of_2_a) + $unsigned(i_arrayidx10_avgpooling10_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx10_avgpooling10_add_x_p1_of_2_c[0] = i_arrayidx10_avgpooling10_add_x_p1_of_2_o[52];
    assign i_arrayidx10_avgpooling10_add_x_p1_of_2_q = i_arrayidx10_avgpooling10_add_x_p1_of_2_o[51:0];

    // SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(STALLENABLE,4103)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V0 = SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V1 = SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V2 = SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall & SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2 = SR_SE_i_arrayidx42_avgpooling10_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or0 = SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or1 = SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 | SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or0;
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN = ~ (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2 | SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_v_s_0 = SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN & SR_SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall = ~ (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= 1'b0;
            SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 & SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 & SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 & SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx10_avgpooling10_add_x_p1_of_2(STALLENABLE,4065)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_V0 = SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_V1 = SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx10_avgpooling10_add_x_p2_of_2_backStall & SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_or0 = SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_v_s_0 = SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_backEN & SR_SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_R_v_0 & SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_R_v_1 & SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2(STALLREG,4491)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data2 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data3 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data4 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data5 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data6 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data7 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_valid <= SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_avgpooling10_add_x_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data2 <= $unsigned(i_arrayidx24_avgpooling10_add_x_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data3 <= $unsigned(i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data4 <= $unsigned(i_arrayidx16_avgpooling10_add_x_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data5 <= $unsigned(i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data6 <= $unsigned(i_arrayidx33_avgpooling10_add_x_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data7 <= $unsigned(i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_and0 = SE_i_arrayidx10_avgpooling10_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_i_valid = SE_i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V0 & SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_backStall = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_V = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D0 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data0 : i_arrayidx10_avgpooling10_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D1 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data1 : i_arrayidx10_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    // Data2
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D2 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data2 : i_arrayidx24_avgpooling10_add_x_p1_of_2_q;
    // Data3
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D3 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data3 : i_arrayidx24_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    // Data4
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D4 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data4 : i_arrayidx16_avgpooling10_add_x_p1_of_2_q;
    // Data5
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D5 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data5 : i_arrayidx16_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    // Data6
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D6 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data6 : i_arrayidx33_avgpooling10_add_x_p1_of_2_q;
    // Data7
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D7 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_r_data7 : i_arrayidx33_avgpooling10_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;

    // i_arrayidx33_avgpooling10_dupName_0_add_x_p1_of_2(ADD,3207)@137 + 1
    assign i_arrayidx33_avgpooling10_dupName_0_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D6};
    assign i_arrayidx33_avgpooling10_dupName_0_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D7};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx33_avgpooling10_dupName_0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx33_avgpooling10_dupName_0_add_x_p1_of_2_o <= $unsigned(i_arrayidx33_avgpooling10_dupName_0_add_x_p1_of_2_a) + $unsigned(i_arrayidx33_avgpooling10_dupName_0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx33_avgpooling10_dupName_0_add_x_p1_of_2_c[0] = i_arrayidx33_avgpooling10_dupName_0_add_x_p1_of_2_o[52];
    assign i_arrayidx33_avgpooling10_dupName_0_add_x_p1_of_2_q = i_arrayidx33_avgpooling10_dupName_0_add_x_p1_of_2_o[51:0];

    // i_arrayidx16_avgpooling10_dupName_0_add_x_p1_of_2(ADD,3153)@137 + 1
    assign i_arrayidx16_avgpooling10_dupName_0_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D4};
    assign i_arrayidx16_avgpooling10_dupName_0_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D5};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_avgpooling10_dupName_0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx16_avgpooling10_dupName_0_add_x_p1_of_2_o <= $unsigned(i_arrayidx16_avgpooling10_dupName_0_add_x_p1_of_2_a) + $unsigned(i_arrayidx16_avgpooling10_dupName_0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx16_avgpooling10_dupName_0_add_x_p1_of_2_c[0] = i_arrayidx16_avgpooling10_dupName_0_add_x_p1_of_2_o[52];
    assign i_arrayidx16_avgpooling10_dupName_0_add_x_p1_of_2_q = i_arrayidx16_avgpooling10_dupName_0_add_x_p1_of_2_o[51:0];

    // i_add22_avgpooling122(LOGICAL,190)@138
    assign i_add22_avgpooling122_q = bubble_select_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_b | c_i32_176_q;

    // i_add22_avgpooling122_vt_select_31(BITSELECT,193)@138
    assign i_add22_avgpooling122_vt_select_31_b = i_add22_avgpooling122_q[31:1];

    // i_add22_avgpooling122_vt_join(BITJOIN,192)@138
    assign i_add22_avgpooling122_vt_join_q = {i_add22_avgpooling122_vt_select_31_b, VCC_q};

    // i_idxprom23_avgpooling144_sel_x(BITSELECT,161)@138
    assign i_idxprom23_avgpooling144_sel_x_b = {32'b00000000000000000000000000000000, i_add22_avgpooling122_vt_join_q[31:0]};

    // i_idxprom23_avgpooling144_vt_select_31(BITSELECT,221)@138
    assign i_idxprom23_avgpooling144_vt_select_31_b = i_idxprom23_avgpooling144_sel_x_b[31:1];

    // i_idxprom23_avgpooling144_vt_join(BITJOIN,220)@138
    assign i_idxprom23_avgpooling144_vt_join_q = {c_i32_074_q, i_idxprom23_avgpooling144_vt_select_31_b, VCC_q};

    // i_arrayidx24_avgpooling10_narrow_x(BITSELECT,92)@138
    assign i_arrayidx24_avgpooling10_narrow_x_b = i_idxprom23_avgpooling144_vt_join_q[61:0];

    // i_arrayidx24_avgpooling10_shift_join_x(BITJOIN,93)@138
    assign i_arrayidx24_avgpooling10_shift_join_x_q = {i_arrayidx24_avgpooling10_narrow_x_b, i_arrayidx10_avgpooling10_c_i2_03_x_q};

    // i_arrayidx24_avgpooling10_dupName_1_add_x_BitExpansion_for_b(BITJOIN,3185)@138
    assign i_arrayidx24_avgpooling10_dupName_1_add_x_BitExpansion_for_b_q = {GND_q, i_arrayidx24_avgpooling10_shift_join_x_q};

    // i_arrayidx24_avgpooling10_dupName_1_add_x_BitSelect_for_b(BITSELECT,3188)@138
    assign i_arrayidx24_avgpooling10_dupName_1_add_x_BitSelect_for_b_b = i_arrayidx24_avgpooling10_dupName_1_add_x_BitExpansion_for_b_q[51:0];

    // i_arrayidx24_avgpooling10_dupName_0_add_x_p1_of_2(ADD,3180)@137 + 1
    assign i_arrayidx24_avgpooling10_dupName_0_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D2};
    assign i_arrayidx24_avgpooling10_dupName_0_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D3};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_avgpooling10_dupName_0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx24_avgpooling10_dupName_0_add_x_p1_of_2_o <= $unsigned(i_arrayidx24_avgpooling10_dupName_0_add_x_p1_of_2_a) + $unsigned(i_arrayidx24_avgpooling10_dupName_0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx24_avgpooling10_dupName_0_add_x_p1_of_2_c[0] = i_arrayidx24_avgpooling10_dupName_0_add_x_p1_of_2_o[52];
    assign i_arrayidx24_avgpooling10_dupName_0_add_x_p1_of_2_q = i_arrayidx24_avgpooling10_dupName_0_add_x_p1_of_2_o[51:0];

    // i_idxprom9_avgpooling121_sel_x(BITSELECT,165)@138
    assign i_idxprom9_avgpooling121_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_b[31:0]};

    // i_idxprom9_avgpooling121_vt_select_31(BITSELECT,237)@138
    assign i_idxprom9_avgpooling121_vt_select_31_b = i_idxprom9_avgpooling121_sel_x_b[31:0];

    // i_idxprom9_avgpooling121_vt_join(BITJOIN,236)@138
    assign i_idxprom9_avgpooling121_vt_join_q = {c_i32_074_q, i_idxprom9_avgpooling121_vt_select_31_b};

    // i_arrayidx10_avgpooling10_narrow_x(BITSELECT,40)@138
    assign i_arrayidx10_avgpooling10_narrow_x_b = i_idxprom9_avgpooling121_vt_join_q[61:0];

    // i_arrayidx10_avgpooling10_shift_join_x(BITJOIN,41)@138
    assign i_arrayidx10_avgpooling10_shift_join_x_q = {i_arrayidx10_avgpooling10_narrow_x_b, i_arrayidx10_avgpooling10_c_i2_03_x_q};

    // i_arrayidx10_avgpooling10_dupName_1_add_x_BitExpansion_for_b(BITJOIN,3131)@138
    assign i_arrayidx10_avgpooling10_dupName_1_add_x_BitExpansion_for_b_q = {GND_q, i_arrayidx10_avgpooling10_shift_join_x_q};

    // i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b(BITSELECT,3134)@138
    assign i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_b = i_arrayidx10_avgpooling10_dupName_1_add_x_BitExpansion_for_b_q[51:0];

    // i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2(ADD,3126)@137 + 1
    assign i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D0};
    assign i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_o <= $unsigned(i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_a) + $unsigned(i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_c[0] = i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_o[52];
    assign i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_q = i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_o[51:0];

    // SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2(STALLENABLE,4056)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_V0 = SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_V1 = SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_backStall & SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_or0 = SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_v_s_0 = SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_backEN & SR_SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_R_v_0 & SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_R_v_1 & SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0(STALLENABLE,4240)
    // Valid signal propagation
    assign SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_V0 = SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_backStall & SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0(STALLREG,4496)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_data2 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_data3 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid <= SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q);
                SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_data1 <= $unsigned(i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_q);
                SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_data2 <= $unsigned(i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_q);
                SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_data3 <= $unsigned(i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_V = SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_i_valid;

    // Data0
    assign SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_D1 = SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_data1 : i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_q;
    // Data2
    assign SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_D2 = SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_data2 : i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_q;
    // Data3
    assign SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_D3 = SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_r_data3 : i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_q;

    // SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2(STALLENABLE,4060)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_V0 = SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_V1 = SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_backStall & SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_s_tv_1 = SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_or0 = SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_v_s_0 = SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_backEN & SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_R_v_0 & SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_R_v_1 & SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2(STALLREG,4492)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data2 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data3 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data4 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data5 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data6 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data7 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_valid <= SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data2 <= $unsigned(i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data3 <= $unsigned(i_arrayidx24_avgpooling10_dupName_0_add_x_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data4 <= $unsigned(i_arrayidx24_avgpooling10_dupName_1_add_x_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data5 <= $unsigned(i_arrayidx24_avgpooling10_dupName_1_add_x_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data6 <= $unsigned(i_arrayidx16_avgpooling10_dupName_0_add_x_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data7 <= $unsigned(i_arrayidx33_avgpooling10_dupName_0_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_and0 = SE_i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_V2 & SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_backStall = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_V = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D0 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data0 : i_arrayidx10_avgpooling10_dupName_0_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D1 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data1 : i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_b;
    // Data2
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D2 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data2 : i_arrayidx10_avgpooling10_dupName_1_add_x_BitSelect_for_b_b;
    // Data3
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D3 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data3 : i_arrayidx24_avgpooling10_dupName_0_add_x_p1_of_2_q;
    // Data4
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D4 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data4 : i_arrayidx24_avgpooling10_dupName_1_add_x_BitSelect_for_b_b;
    // Data5
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D5 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data5 : i_arrayidx24_avgpooling10_dupName_1_add_x_BitSelect_for_b_b;
    // Data6
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D6 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data6 : i_arrayidx16_avgpooling10_dupName_0_add_x_p1_of_2_q;
    // Data7
    assign SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_D7 = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_r_data7 : i_arrayidx33_avgpooling10_dupName_0_add_x_p1_of_2_q;

    // SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,4202)
    // Valid signal propagation
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_backStall | ~ (SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_V1;
    assign SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V0 & SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling146(STALLENABLE,3874)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling146_V0 = SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling146_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling146_backStall = i_llvm_fpga_push_i32_j_025_push21_avgpooling146_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling146_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling146_and0 = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_V0;
    assign SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling146_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V4 & SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling146_and0;

    // SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15(STALLENABLE,3845)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_fromReg2 <= SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_consumed0 = (~ (SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling146_backStall) & SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_consumed1 = (~ (SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_backStall) & SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_consumed2 = (~ (SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_StallValid = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_backStall & SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_toReg0 = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_StallValid & SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_toReg1 = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_StallValid & SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_consumed1;
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_toReg2 = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_StallValid & SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_or0 = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_or1 = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_consumed1 & SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_or0;
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_consumed2 & SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_or1);
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_backStall = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_V0 = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_V1 = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_V2 = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_wireValid = i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_j_025_push21_avgpooling146(STALLENABLE,3875)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_j_025_push21_avgpooling146_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_j_025_push21_avgpooling146_wireValid = i_llvm_fpga_push_i32_j_025_push21_avgpooling146_out_valid_out;

    // c_i32_277(CONSTANT,183)
    assign c_i32_277_q = $unsigned(32'b00000000000000000000000000000010);

    // i_add43_avgpooling124(ADD,194)@138
    assign i_add43_avgpooling124_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_b};
    assign i_add43_avgpooling124_b = {1'b0, c_i32_277_q};
    assign i_add43_avgpooling124_o = $unsigned(i_add43_avgpooling124_a) + $unsigned(i_add43_avgpooling124_b);
    assign i_add43_avgpooling124_q = i_add43_avgpooling124_o[32:0];

    // bgTrunc_i_add43_avgpooling124_sel_x(BITSELECT,3)@138
    assign bgTrunc_i_add43_avgpooling124_sel_x_b = i_add43_avgpooling124_q[31:0];

    // i_llvm_fpga_push_i32_j_025_push21_avgpooling146(BLACKBOX,274)@138
    // in in_stall_in@20000000
    // out out_data_out@139
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@139
    avgpooling1_i_llvm_fpga_push_i32_j_025_push21_0 thei_llvm_fpga_push_i32_j_025_push21_avgpooling146 (
        .in_data_in(bgTrunc_i_add43_avgpooling124_sel_x_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_out_feedback_stall_out_21),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling13_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_j_025_push21_avgpooling146_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling146_V0),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_j_025_push21_avgpooling146_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_j_025_push21_avgpooling146_out_feedback_valid_out_21),
        .out_stall_out(i_llvm_fpga_push_i32_j_025_push21_avgpooling146_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_j_025_push21_avgpooling146_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_074(CONSTANT,181)
    assign c_i32_074_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15(BLACKBOX,259)@137
    // in in_stall_in@20000000
    // out out_data_out@138
    // out out_feedback_stall_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@138
    avgpooling1_i_llvm_fpga_pop_i32_j_025_pop21_0 thei_llvm_fpga_pop_i32_j_025_pop21_avgpooling15 (
        .in_data_in(c_i32_074_q),
        .in_dir(SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_D1),
        .in_feedback_in_21(i_llvm_fpga_push_i32_j_025_push21_avgpooling146_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_j_025_push21_avgpooling146_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_backStall),
        .in_valid_in(SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_V2),
        .out_data_out(i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_out_feedback_stall_out_21),
        .out_stall_out(i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0(STALLREG,4472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_valid <= 1'b0;
            SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_valid <= SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backStall & (SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_valid | SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_i_valid);

            if (SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_data0 <= $unsigned(SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_D2);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_i_valid = SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backStall = SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_valid | ~ (SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_i_valid);

    // Valid
    assign SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_V = SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_valid == 1'b1 ? SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_valid : SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_i_valid;

    assign SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_D0 = SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_valid == 1'b1 ? SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_data0 : SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_D2;

    // SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo(STALLENABLE,4286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_fromReg0 <= '0;
            SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_fromReg1 <= '0;
            SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_fromReg0 <= SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_toReg0;
            // Successor 1
            SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_fromReg1 <= SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_toReg1;
            // Successor 2
            SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_fromReg2 <= SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_consumed0 = (~ (SR_SE_redist64_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backStall) & SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_wireValid) | SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_fromReg0;
    assign SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_consumed1 = (~ (i_llvm_fpga_pipeline_keep_going_avgpooling13_out_stall_out) & SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_wireValid) | SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_fromReg1;
    assign SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_consumed2 = (~ (i_llvm_fpga_pop_i32_j_025_pop21_avgpooling15_out_stall_out) & SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_wireValid) | SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_fromReg2;
    // Consuming
    assign SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_StallValid = SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_backStall & SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_wireValid;
    assign SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_toReg0 = SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_StallValid & SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_consumed0;
    assign SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_toReg1 = SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_StallValid & SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_consumed1;
    assign SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_toReg2 = SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_StallValid & SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_or0 = SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_consumed0;
    assign SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_or1 = SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_consumed1 & SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_or0;
    assign SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_wireStall = ~ (SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_consumed2 & SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_or1);
    assign SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_backStall = SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_V0 = SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_wireValid & ~ (SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_fromReg0);
    assign SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_V1 = SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_wireValid & ~ (SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_fromReg1);
    assign SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_V2 = SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_wireValid & ~ (SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_wireValid = SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_V;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_avgpooling148(STALLENABLE,3867)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_avgpooling148_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_avgpooling148_wireValid = i_llvm_fpga_push_i1_notexitcond_avgpooling148_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_avgpooling148(BLACKBOX,270)@140
    // in in_stall_in@20000000
    // out out_data_out@141
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@141
    avgpooling1_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_avgpooling148 (
        .in_data_in(i_exitcond_avgpooling125_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_avgpooling13_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_avgpooling118_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_avgpooling148_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling148_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_avgpooling148_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_avgpooling148_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_avgpooling148_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_avgpooling148_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_avgpooling154(STALLENABLE,3855)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_avgpooling154_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_avgpooling154_wireValid = i_llvm_fpga_push_i1_lastiniteration_avgpooling154_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration_avgpooling154(BLACKBOX,264)@274
    // in in_stall_in@20000000
    // out out_data_out@275
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@275
    avgpooling1_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_avgpooling154 (
        .in_data_in(SR_SE_i_next_initerations_avgpooling120_vt_select_0_D0),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_avgpooling13_out_initeration_stall_out),
        .in_keep_going(SR_SE_i_next_initerations_avgpooling120_vt_select_0_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_avgpooling154_backStall),
        .in_valid_in(SE_i_next_initerations_avgpooling120_vt_select_0_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_avgpooling154_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_avgpooling154_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_avgpooling154_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_avgpooling154_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo(BITJOIN,3749)
    assign bubble_join_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_q = redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_data_out;

    // bubble_select_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo(BITSELECT,3750)
    assign bubble_select_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_b = $unsigned(bubble_join_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_q[0:0]);

    // SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo(STALLREG,4471)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_valid <= 1'b0;
            SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_data0 <= 1'bx;
            SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_data1 <= 1'bx;
            SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_valid <= SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_backStall & (SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_valid | SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_i_valid);

            if (SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_data0 <= $unsigned(bubble_select_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_b);
                SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_data1 <= $unsigned(bubble_select_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_b);
                SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_data2 <= $unsigned(bubble_select_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_i_valid = redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_valid_out;
    // Stall signal propagation
    assign SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_backStall = SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_valid | ~ (SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_i_valid);

    // Valid
    assign SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_V = SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_valid == 1'b1 ? SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_valid : SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_i_valid;

    // Data0
    assign SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_D0 = SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_valid == 1'b1 ? SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_data0 : bubble_select_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_b;
    // Data1
    assign SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_D1 = SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_valid == 1'b1 ? SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_data1 : bubble_select_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_b;
    // Data2
    assign SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_D2 = SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_valid == 1'b1 ? SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_r_data2 : bubble_select_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_b;

    // i_llvm_fpga_pipeline_keep_going_avgpooling13(BLACKBOX,248)@137
    // in in_stall_in@20000000
    // out out_data_out@138
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@138
    avgpooling1_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_avgpooling13 (
        .in_data_in(SR_SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_D0),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_avgpooling154_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_avgpooling154_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_avgpooling148_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_avgpooling148_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_backStall),
        .in_valid_in(SE_out_redist63_avgpooling1_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_fifo_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_avgpooling13_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_avgpooling13_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_avgpooling13_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_avgpooling13_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_avgpooling13_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_avgpooling13_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_avgpooling13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pipeline_keep_going_avgpooling13(BITJOIN,3678)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_avgpooling13_q = i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling13(BITSELECT,3679)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling13_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_avgpooling13_q[0:0]);

    // bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg(STALLFIFO,4468)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(139),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13(STALLENABLE,3823)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg5 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg5 <= SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg5;
            // Successor 6
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg6 <= SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling134_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed2 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling139_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed3 = (~ (SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling130_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed4 = (~ (SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling146_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed5 = (~ (SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling137_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed6 = (~ (SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg6;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg5 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_toReg6 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed6;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_or3 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_or4 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_or3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_or5 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed5 & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_or4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_consumed6 & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_or5);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V4 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg4);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V5 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg5);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V6 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_wireValid = i_llvm_fpga_pipeline_keep_going_avgpooling13_out_valid_out;

    // SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0(STALLREG,4498)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_r_valid <= 1'b0;
            SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_r_valid <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_backStall & (SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_r_valid | SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_i_valid);

            if (SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling13_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_V6;
    // Stall signal propagation
    assign SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_backStall = SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_r_valid | ~ (SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_i_valid);

    // Valid
    assign SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_V = SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_r_valid == 1'b1 ? SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_r_valid : SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_i_valid;

    assign SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_D0 = SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_r_valid == 1'b1 ? SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_r_data0 : bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling13_b;

    // redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0(REG,3623)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_backEN == 1'b1)
        begin
            redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_q <= $unsigned(SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_D0);
        end
    end

    // SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0(STALLENABLE,4279)
    // Valid signal propagation
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_V0 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_s_tv_0 = SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_backStall & SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_backEN = ~ (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_v_s_0 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_backEN & SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_V;
    // Backward Stall generation
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_backStall = ~ (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_backEN == 1'b0)
            begin
                SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_R_v_0 <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_R_v_0 & SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_s_tv_0;
            end
            else
            begin
                SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_R_v_0 <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_v_s_0;
            end

        end
    end

    // SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1(STALLREG,4499)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_r_valid <= 1'b0;
            SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_r_valid <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_backStall & (SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_r_valid | SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_i_valid);

            if (SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_r_data0 <= $unsigned(redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_i_valid = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_V0;
    // Stall signal propagation
    assign SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_backStall = SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_r_valid | ~ (SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_i_valid);

    // Valid
    assign SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_V = SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_r_valid == 1'b1 ? SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_r_valid : SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_i_valid;

    assign SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_D0 = SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_r_valid == 1'b1 ? SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_r_data0 : redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_0_q;

    // redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1(REG,3624)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_backEN == 1'b1)
        begin
            redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_q <= $unsigned(SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_D0);
        end
    end

    // SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1(STALLENABLE,4280)
    // Valid signal propagation
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_V0 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_0;
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_V1 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_1;
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_V2 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_2;
    // Stall signal propagation
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_s_tv_0 = SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling10_shift_x_backStall & SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_0;
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_s_tv_1 = SR_SE_in_i_llvm_fpga_push_i5_fpga_indvars_iv_push20_avgpooling149_backStall & SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_1;
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_s_tv_2 = redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_stall_out & SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_2;
    // Backward Enable generation
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_or0 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_s_tv_0;
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_or1 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_s_tv_1 | SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_or0;
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_backEN = ~ (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_s_tv_2 | SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_v_s_0 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_backEN & SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_V;
    // Backward Stall generation
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_backStall = ~ (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_0 <= 1'b0;
            SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_1 <= 1'b0;
            SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_0 <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_0 & SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_s_tv_0;
            end
            else
            begin
                SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_0 <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_v_s_0;
            end

            if (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_1 <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_1 & SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_s_tv_1;
            end
            else
            begin
                SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_1 <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_v_s_0;
            end

            if (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_2 <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_2 & SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_s_tv_2;
            end
            else
            begin
                SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_R_v_2 <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_v_s_0;
            end

        end
    end

    // redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo(STALLFIFO,3625)
    assign redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_valid_in = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_V2;
    assign redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_stall_in = SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_backStall;
    assign redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_data_in = redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_q;
    assign redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_valid_in_bitsignaltemp = redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_valid_in[0];
    assign redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_stall_in_bitsignaltemp = redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_stall_in[0];
    assign redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_valid_out[0] = redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_valid_out_bitsignaltemp;
    assign redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_stall_out[0] = redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(135),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo (
        .valid_in(redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_valid_in_bitsignaltemp),
        .stall_in(redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_stall_in_bitsignaltemp),
        .data_in(redist58_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_2_1_q),
        .valid_out(redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_valid_out_bitsignaltemp),
        .stall_out(redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_stall_out_bitsignaltemp),
        .data_out(redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo(BITJOIN,3746)
    assign bubble_join_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_q = redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_data_out;

    // bubble_select_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo(BITSELECT,3747)
    assign bubble_select_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_b = $unsigned(bubble_join_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_q[0:0]);

    // SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo(STALLENABLE,4282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_fromReg0 <= '0;
            SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_fromReg0 <= SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_toReg0;
            // Successor 1
            SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_fromReg1 <= SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_consumed0 = (~ (SR_SE_i_next_initerations_avgpooling120_vt_select_0_backStall) & SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_wireValid) | SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_fromReg0;
    assign SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_consumed1 = (~ (SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_backStall) & SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_wireValid) | SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_fromReg1;
    // Consuming
    assign SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_StallValid = SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_backStall & SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_wireValid;
    assign SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_toReg0 = SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_StallValid & SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_consumed0;
    assign SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_toReg1 = SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_StallValid & SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_or0 = SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_consumed0;
    assign SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_wireStall = ~ (SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_consumed1 & SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_or0);
    assign SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_backStall = SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_V0 = SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_wireValid & ~ (SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_fromReg0);
    assign SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_V1 = SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_wireValid & ~ (SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_wireValid = redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_valid_out;

    // SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0(STALLREG,4500)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_r_valid <= 1'b0;
            SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_r_valid <= SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_backStall & (SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_r_valid | SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_i_valid);

            if (SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_r_data0 <= $unsigned(bubble_select_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_i_valid = SE_out_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_V1;
    // Stall signal propagation
    assign SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_backStall = SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_r_valid | ~ (SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_i_valid);

    // Valid
    assign SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_V = SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_r_valid == 1'b1 ? SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_r_valid : SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_i_valid;

    assign SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_D0 = SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_r_valid == 1'b1 ? SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_r_data0 : bubble_select_redist59_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_136_fifo_b;

    // redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0(REG,3626)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_backEN == 1'b1)
        begin
            redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_q <= $unsigned(SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_D0);
        end
    end

    // SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0(STALLENABLE,4283)
    // Valid signal propagation
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_V0 = SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_R_v_0;
    // Stall signal propagation
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_s_tv_0 = SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_backStall & SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_R_v_0;
    // Backward Enable generation
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_backEN = ~ (SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_v_s_0 = SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_backEN & SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_V;
    // Backward Stall generation
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_backStall = ~ (SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_backEN == 1'b0)
            begin
                SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_R_v_0 <= SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_R_v_0 & SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_s_tv_0;
            end
            else
            begin
                SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_R_v_0 <= SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_v_s_0;
            end

        end
    end

    // SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1(STALLREG,4501)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_r_valid <= 1'b0;
            SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_r_valid <= SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_backStall & (SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_r_valid | SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_i_valid);

            if (SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_r_data0 <= $unsigned(redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_i_valid = SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_V0;
    // Stall signal propagation
    assign SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_backStall = SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_r_valid | ~ (SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_i_valid);

    // Valid
    assign SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_V = SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_r_valid == 1'b1 ? SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_r_valid : SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_i_valid;

    assign SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_D0 = SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_r_valid == 1'b1 ? SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_r_data0 : redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_0_q;

    // redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1(REG,3627)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_backEN == 1'b1)
        begin
            redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_q <= $unsigned(SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_D0);
        end
    end

    // bubble_join_i_llvm_fpga_mem_memdep_avgpooling170(BITJOIN,3662)
    assign bubble_join_i_llvm_fpga_mem_memdep_avgpooling170_q = i_llvm_fpga_mem_memdep_avgpooling170_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_avgpooling170(BITSELECT,3663)
    assign bubble_select_i_llvm_fpga_mem_memdep_avgpooling170_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_avgpooling170_q[0:0]);

    // SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1(STALLENABLE,4284)
    // Valid signal propagation
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_V0 = SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_0;
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_V1 = SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_1;
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_V2 = SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_2;
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_V3 = SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_3;
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_V4 = SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_4;
    // Stall signal propagation
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_s_tv_0 = SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling128_backStall & SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_0;
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_s_tv_1 = SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling135_backStall & SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_1;
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_s_tv_2 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_backStall & SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_2;
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_s_tv_3 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling129_backStall & SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_3;
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_s_tv_4 = SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling136_backStall & SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_4;
    // Backward Enable generation
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_or0 = SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_s_tv_0;
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_or1 = SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_s_tv_1 | SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_or0;
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_or2 = SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_s_tv_2 | SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_or1;
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_or3 = SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_s_tv_3 | SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_or2;
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_backEN = ~ (SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_s_tv_4 | SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_or3);
    // Determine whether to write valid data into the first register stage
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_v_s_0 = SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_backEN & SR_SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_V;
    // Backward Stall generation
    assign SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_backStall = ~ (SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_0 <= 1'b0;
            SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_1 <= 1'b0;
            SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_2 <= 1'b0;
            SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_3 <= 1'b0;
            SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_4 <= 1'b0;
        end
        else
        begin
            if (SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_backEN == 1'b0)
            begin
                SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_0 <= SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_0 & SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_s_tv_0;
            end
            else
            begin
                SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_0 <= SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_v_s_0;
            end

            if (SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_backEN == 1'b0)
            begin
                SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_1 <= SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_1 & SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_s_tv_1;
            end
            else
            begin
                SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_1 <= SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_v_s_0;
            end

            if (SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_backEN == 1'b0)
            begin
                SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_2 <= SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_2 & SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_s_tv_2;
            end
            else
            begin
                SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_2 <= SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_v_s_0;
            end

            if (SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_backEN == 1'b0)
            begin
                SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_3 <= SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_3 & SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_s_tv_3;
            end
            else
            begin
                SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_3 <= SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_v_s_0;
            end

            if (SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_backEN == 1'b0)
            begin
                SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_4 <= SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_4 & SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_s_tv_4;
            end
            else
            begin
                SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_R_v_4 <= SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171(STALLENABLE,3860)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_backStall = i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_wireValid = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_V;

    // SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171(STALLREG,4505)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_r_valid <= SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_backStall & (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_r_valid | SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_mem_memdep_avgpooling170_b);
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_r_data1 <= $unsigned(redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_and0 = SE_redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_V2;
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_i_valid = SE_out_i_llvm_fpga_mem_memdep_avgpooling170_V1 & SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_backStall = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_V = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_r_valid : SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_D0 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_r_data0 : bubble_select_i_llvm_fpga_mem_memdep_avgpooling170_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_D1 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_r_data1 : redist60_i_llvm_fpga_pipeline_keep_going_avgpooling13_out_data_out_138_1_q;

    // SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1(STALLENABLE,4419)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and0 = bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and1 = redist51_i_masked_avgpooling157_q_136_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and2 = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling14_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and3 = bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling13_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and4 = SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and5 = SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and6 = SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and7 = SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and6;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_avgpooling170_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_and7;

    // SE_out_i_llvm_fpga_mem_memdep_avgpooling170(STALLENABLE,3813)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_avgpooling170_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_avgpooling170_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_avgpooling170_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_avgpooling170_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_avgpooling170_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_avgpooling170_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling170_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_backStall) & SE_out_i_llvm_fpga_mem_memdep_avgpooling170_wireValid) | SE_out_i_llvm_fpga_mem_memdep_avgpooling170_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling170_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling171_backStall) & SE_out_i_llvm_fpga_mem_memdep_avgpooling170_wireValid) | SE_out_i_llvm_fpga_mem_memdep_avgpooling170_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling170_StallValid = SE_out_i_llvm_fpga_mem_memdep_avgpooling170_backStall & SE_out_i_llvm_fpga_mem_memdep_avgpooling170_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling170_toReg0 = SE_out_i_llvm_fpga_mem_memdep_avgpooling170_StallValid & SE_out_i_llvm_fpga_mem_memdep_avgpooling170_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling170_toReg1 = SE_out_i_llvm_fpga_mem_memdep_avgpooling170_StallValid & SE_out_i_llvm_fpga_mem_memdep_avgpooling170_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling170_or0 = SE_out_i_llvm_fpga_mem_memdep_avgpooling170_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling170_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_avgpooling170_consumed1 & SE_out_i_llvm_fpga_mem_memdep_avgpooling170_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling170_backStall = SE_out_i_llvm_fpga_mem_memdep_avgpooling170_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling170_V0 = SE_out_i_llvm_fpga_mem_memdep_avgpooling170_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_avgpooling170_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling170_V1 = SE_out_i_llvm_fpga_mem_memdep_avgpooling170_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_avgpooling170_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling170_wireValid = i_llvm_fpga_mem_memdep_avgpooling170_out_o_valid;

    // bubble_join_coalesced_delay_2_fifo(BITJOIN,3758)
    assign bubble_join_coalesced_delay_2_fifo_q = coalesced_delay_2_fifo_data_out;

    // bubble_select_coalesced_delay_2_fifo(BITSELECT,3759)
    assign bubble_select_coalesced_delay_2_fifo_b = $unsigned(bubble_join_coalesced_delay_2_fifo_q[64:0]);

    // sel_for_coalesced_delay_2(BITSELECT,3555)
    assign sel_for_coalesced_delay_2_b = $unsigned(bubble_select_coalesced_delay_2_fifo_b[63:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(bubble_select_coalesced_delay_2_fifo_b[64:64]);

    // i_llvm_fpga_mem_memdep_avgpooling170(BLACKBOX,243)@245
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_avgpooling1_avm_address@20000000
    // out out_memdep_avgpooling1_avm_burstcount@20000000
    // out out_memdep_avgpooling1_avm_byteenable@20000000
    // out out_memdep_avgpooling1_avm_enable@20000000
    // out out_memdep_avgpooling1_avm_read@20000000
    // out out_memdep_avgpooling1_avm_write@20000000
    // out out_memdep_avgpooling1_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@276
    // out out_o_writeack@276
    avgpooling1_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_avgpooling170 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_2_b),
        .in_i_predicate(sel_for_coalesced_delay_2_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_avgpooling170_backStall),
        .in_i_valid(SE_out_coalesced_delay_2_fifo_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_body6_avgpooling1s_c0_enter9112_avgpooling168_aunroll_x_b),
        .in_memdep_avgpooling1_avm_readdata(in_memdep_avgpooling1_avm_readdata),
        .in_memdep_avgpooling1_avm_readdatavalid(in_memdep_avgpooling1_avm_readdatavalid),
        .in_memdep_avgpooling1_avm_waitrequest(in_memdep_avgpooling1_avm_waitrequest),
        .in_memdep_avgpooling1_avm_writeack(in_memdep_avgpooling1_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_avgpooling170_out_lsu_memdep_o_active),
        .out_memdep_avgpooling1_avm_address(i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_address),
        .out_memdep_avgpooling1_avm_burstcount(i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_burstcount),
        .out_memdep_avgpooling1_avm_byteenable(i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_byteenable),
        .out_memdep_avgpooling1_avm_enable(i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_enable),
        .out_memdep_avgpooling1_avm_read(i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_read),
        .out_memdep_avgpooling1_avm_write(i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_write),
        .out_memdep_avgpooling1_avm_writedata(i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_avgpooling170_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_avgpooling170_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_avgpooling170_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2(ADD,3244)@139 + 1
    assign i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_cin = SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_D2;
    assign i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_D1}, i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_o <= $unsigned(i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_a) + $unsigned(i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_q = i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_o[13:1];

    // redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0(REG,3587)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q(BITJOIN,3245)@140
    assign i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_q = {i_arrayidx42_avgpooling10_dupName_1_add_x_p2_of_2_q, redist25_i_arrayidx42_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx42_avgpooling10_dupName_4_trunc_sel_x(BITSELECT,126)@140
    assign i_arrayidx42_avgpooling10_dupName_4_trunc_sel_x_b = i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_q[63:0];

    // join_for_coalesced_delay_2(BITJOIN,3554)
    assign join_for_coalesced_delay_2_q = {i_first_cleanup_xor_avgpooling141_q, i_arrayidx42_avgpooling10_dupName_4_trunc_sel_x_b};

    // coalesced_delay_2_fifo(STALLFIFO,3636)
    assign coalesced_delay_2_fifo_valid_in = SE_i_arrayidx42_avgpooling10_dupName_1_add_x_BitJoin_for_q_V0;
    assign coalesced_delay_2_fifo_stall_in = SE_out_coalesced_delay_2_fifo_backStall;
    assign coalesced_delay_2_fifo_data_in = join_for_coalesced_delay_2_q;
    assign coalesced_delay_2_fifo_valid_in_bitsignaltemp = coalesced_delay_2_fifo_valid_in[0];
    assign coalesced_delay_2_fifo_stall_in_bitsignaltemp = coalesced_delay_2_fifo_stall_in[0];
    assign coalesced_delay_2_fifo_valid_out[0] = coalesced_delay_2_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_2_fifo_stall_out[0] = coalesced_delay_2_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(106),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(65),
        .IMPL("ram")
    ) thecoalesced_delay_2_fifo (
        .valid_in(coalesced_delay_2_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_2_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_2_q),
        .valid_out(coalesced_delay_2_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_2_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_2_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_2_fifo(STALLENABLE,4297)
    // Valid signal propagation
    assign SE_out_coalesced_delay_2_fifo_V0 = SE_out_coalesced_delay_2_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_2_fifo_backStall = i_llvm_fpga_mem_memdep_avgpooling170_out_o_stall | ~ (SE_out_coalesced_delay_2_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_2_fifo_and0 = coalesced_delay_2_fifo_valid_out;
    assign SE_out_coalesced_delay_2_fifo_wireValid = i_sfc_s_c0_in_for_body6_avgpooling1s_c0_enter9112_avgpooling168_aunroll_x_out_o_valid & SE_out_coalesced_delay_2_fifo_and0;

    // bubble_join_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165(BITJOIN,3675)
    assign bubble_join_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_q = i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165(BITSELECT,3676)
    assign bubble_select_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162(BITJOIN,3669)
    assign bubble_join_i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_q = i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162(BITSELECT,3670)
    assign bubble_select_i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164(BITJOIN,3672)
    assign bubble_join_i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_q = i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164(BITSELECT,3673)
    assign bubble_select_i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161(BITJOIN,3666)
    assign bubble_join_i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_q = i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161(BITSELECT,3667)
    assign bubble_select_i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_q[31:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_body6_avgpooling1s_c0_enter9112_avgpooling168_aunroll_x(BLACKBOX,174)@172
    // in in_i_stall@20000000
    // out out_c0_exit97_0_tpl@245
    // out out_c0_exit97_1_tpl@245
    // out out_o_stall@20000000
    // out out_o_valid@245
    avgpooling1_i_sfc_s_c0_in_for_body6_s_c0_enter9112_avgpooling168 thei_sfc_s_c0_in_for_body6_avgpooling1s_c0_enter9112_avgpooling168_aunroll_x (
        .in_c0_eni490_0_tpl(GND_q),
        .in_c0_eni490_1_tpl(bubble_select_i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_b),
        .in_c0_eni490_2_tpl(bubble_select_i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_b),
        .in_c0_eni490_3_tpl(bubble_select_i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_b),
        .in_c0_eni490_4_tpl(bubble_select_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_b),
        .in_i_stall(SE_out_coalesced_delay_2_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_V0),
        .out_c0_exit97_0_tpl(),
        .out_c0_exit97_1_tpl(i_sfc_s_c0_in_for_body6_avgpooling1s_c0_enter9112_avgpooling168_aunroll_x_out_c0_exit97_1_tpl),
        .out_o_stall(i_sfc_s_c0_in_for_body6_avgpooling1s_c0_enter9112_avgpooling168_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body6_avgpooling1s_c0_enter9112_avgpooling168_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165(STALLENABLE,3821)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_V0 = SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_backStall = i_sfc_s_c0_in_for_body6_avgpooling1s_c0_enter9112_avgpooling168_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_and0 = i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_and1 = i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_o_valid & SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_and0;
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_and2 = i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_o_valid & SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_and1;
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_wireValid = i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_o_valid & SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_and2;

    // i_arrayidx33_avgpooling10_dupName_1_add_x_p2_of_2(ADD,3217)@139 + 1
    assign i_arrayidx33_avgpooling10_dupName_1_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D11;
    assign i_arrayidx33_avgpooling10_dupName_1_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D10}, 1'b1 };
    assign i_arrayidx33_avgpooling10_dupName_1_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D4}, i_arrayidx33_avgpooling10_dupName_1_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx33_avgpooling10_dupName_1_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx33_avgpooling10_dupName_1_add_x_p2_of_2_o <= $unsigned(i_arrayidx33_avgpooling10_dupName_1_add_x_p2_of_2_a) + $unsigned(i_arrayidx33_avgpooling10_dupName_1_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx33_avgpooling10_dupName_1_add_x_p2_of_2_q = i_arrayidx33_avgpooling10_dupName_1_add_x_p2_of_2_o[13:1];

    // redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0(REG,3589)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx33_avgpooling10_dupName_1_add_x_BitJoin_for_q(BITJOIN,3218)@140
    assign i_arrayidx33_avgpooling10_dupName_1_add_x_BitJoin_for_q_q = {i_arrayidx33_avgpooling10_dupName_1_add_x_p2_of_2_q, redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx33_avgpooling10_dupName_4_trunc_sel_x(BITSELECT,100)@140
    assign i_arrayidx33_avgpooling10_dupName_4_trunc_sel_x_b = i_arrayidx33_avgpooling10_dupName_1_add_x_BitJoin_for_q_q[63:0];

    // i_arrayidx16_avgpooling10_dupName_1_add_x_p2_of_2(ADD,3163)@139 + 1
    assign i_arrayidx16_avgpooling10_dupName_1_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D9;
    assign i_arrayidx16_avgpooling10_dupName_1_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D8}, 1'b1 };
    assign i_arrayidx16_avgpooling10_dupName_1_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D2}, i_arrayidx16_avgpooling10_dupName_1_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_avgpooling10_dupName_1_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx16_avgpooling10_dupName_1_add_x_p2_of_2_o <= $unsigned(i_arrayidx16_avgpooling10_dupName_1_add_x_p2_of_2_a) + $unsigned(i_arrayidx16_avgpooling10_dupName_1_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx16_avgpooling10_dupName_1_add_x_p2_of_2_q = i_arrayidx16_avgpooling10_dupName_1_add_x_p2_of_2_o[13:1];

    // redist31_i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0(REG,3591)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist31_i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_D1);
        end
    end

    // i_arrayidx16_avgpooling10_dupName_1_add_x_BitJoin_for_q(BITJOIN,3164)@140
    assign i_arrayidx16_avgpooling10_dupName_1_add_x_BitJoin_for_q_q = {i_arrayidx16_avgpooling10_dupName_1_add_x_p2_of_2_q, redist31_i_arrayidx16_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx16_avgpooling10_dupName_4_trunc_sel_x(BITSELECT,48)@140
    assign i_arrayidx16_avgpooling10_dupName_4_trunc_sel_x_b = i_arrayidx16_avgpooling10_dupName_1_add_x_BitJoin_for_q_q[63:0];

    // i_arrayidx24_avgpooling10_dupName_1_add_x_p2_of_2(ADD,3190)@139 + 1
    assign i_arrayidx24_avgpooling10_dupName_1_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D7;
    assign i_arrayidx24_avgpooling10_dupName_1_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D6}, 1'b1 };
    assign i_arrayidx24_avgpooling10_dupName_1_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D3}, i_arrayidx24_avgpooling10_dupName_1_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_avgpooling10_dupName_1_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx24_avgpooling10_dupName_1_add_x_p2_of_2_o <= $unsigned(i_arrayidx24_avgpooling10_dupName_1_add_x_p2_of_2_a) + $unsigned(i_arrayidx24_avgpooling10_dupName_1_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx24_avgpooling10_dupName_1_add_x_p2_of_2_q = i_arrayidx24_avgpooling10_dupName_1_add_x_p2_of_2_o[13:1];

    // redist29_i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0(REG,3590)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist29_i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_D2);
        end
    end

    // i_arrayidx24_avgpooling10_dupName_1_add_x_BitJoin_for_q(BITJOIN,3191)@140
    assign i_arrayidx24_avgpooling10_dupName_1_add_x_BitJoin_for_q_q = {i_arrayidx24_avgpooling10_dupName_1_add_x_p2_of_2_q, redist29_i_arrayidx24_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx24_avgpooling10_dupName_4_trunc_sel_x(BITSELECT,74)@140
    assign i_arrayidx24_avgpooling10_dupName_4_trunc_sel_x_b = i_arrayidx24_avgpooling10_dupName_1_add_x_BitJoin_for_q_q[63:0];

    // redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0(REG,3609)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_backEN == 1'b1)
        begin
            redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_q <= $unsigned(SR_SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_D0);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16(BITJOIN,3696)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_q = i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16(BITSELECT,3697)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_q[0:0]);

    // i_reduction_avgpooling1_1_avgpooling153(LOGICAL,285)@140
    assign i_reduction_avgpooling1_1_avgpooling153_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_b | redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_q;

    // i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2(ADD,3136)@139 + 1
    assign i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D5;
    assign i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_D1}, i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_o <= $unsigned(i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_a) + $unsigned(i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_q = i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_o[13:1];

    // redist33_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0(REG,3592)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist33_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_D3);
        end
    end

    // i_arrayidx10_avgpooling10_dupName_1_add_x_BitJoin_for_q(BITJOIN,3137)@140
    assign i_arrayidx10_avgpooling10_dupName_1_add_x_BitJoin_for_q_q = {i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_q, redist33_i_arrayidx10_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx10_avgpooling10_dupName_4_trunc_sel_x(BITSELECT,22)@140
    assign i_arrayidx10_avgpooling10_dupName_4_trunc_sel_x_b = i_arrayidx10_avgpooling10_dupName_1_add_x_BitJoin_for_q_q[63:0];

    // SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16(STALLREG,4497)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_valid <= 1'b0;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data1 <= 1'bx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data2 <= 1'bx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data3 <= 1'bx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data4 <= 1'bx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data5 <= 1'bx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data6 <= 1'bx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data7 <= 1'bx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data8 <= 1'bx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data9 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data10 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data11 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_valid <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_backStall & (SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_valid | SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_i_valid);

            if (SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data0 <= i_arrayidx10_avgpooling10_dupName_4_trunc_sel_x_b;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data1 <= i_reduction_avgpooling1_1_avgpooling153_q;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data2 <= i_reduction_avgpooling1_1_avgpooling153_q;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data3 <= i_reduction_avgpooling1_1_avgpooling153_q;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data4 <= i_reduction_avgpooling1_1_avgpooling153_q;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data5 <= i_first_cleanup_xor_avgpooling141_q;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data6 <= i_first_cleanup_xor_avgpooling141_q;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data7 <= i_first_cleanup_xor_avgpooling141_q;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data8 <= i_first_cleanup_xor_avgpooling141_q;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data9 <= i_arrayidx24_avgpooling10_dupName_4_trunc_sel_x_b;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data10 <= i_arrayidx16_avgpooling10_dupName_4_trunc_sel_x_b;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data11 <= i_arrayidx33_avgpooling10_dupName_4_trunc_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_out_valid_out;
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_and1 = SE_redist50_i_reduction_avgpooling1_0_avgpooling140_q_2_0_V0 & SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_and0;
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_and2 = SE_i_arrayidx10_avgpooling10_dupName_1_add_x_p2_of_2_V0 & SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_and1;
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_and3 = SE_redist27_i_arrayidx33_avgpooling10_dupName_1_add_x_p1_of_2_q_1_0_V0 & SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_and2;
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_i_valid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling12_V3 & SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_and3;
    // Stall signal propagation
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_backStall = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_valid | ~ (SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_i_valid);

    // Valid
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_V = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_valid : SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_i_valid;

    // Data0
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D0 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data0 : i_arrayidx10_avgpooling10_dupName_4_trunc_sel_x_b;
    // Data1
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D1 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data1 : i_reduction_avgpooling1_1_avgpooling153_q;
    // Data2
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D2 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data2 : i_reduction_avgpooling1_1_avgpooling153_q;
    // Data3
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D3 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data3 : i_reduction_avgpooling1_1_avgpooling153_q;
    // Data4
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D4 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data4 : i_reduction_avgpooling1_1_avgpooling153_q;
    // Data5
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D5 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data5 : i_first_cleanup_xor_avgpooling141_q;
    // Data6
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D6 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data6 : i_first_cleanup_xor_avgpooling141_q;
    // Data7
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D7 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data7 : i_first_cleanup_xor_avgpooling141_q;
    // Data8
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D8 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data8 : i_first_cleanup_xor_avgpooling141_q;
    // Data9
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D9 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data9 : i_arrayidx24_avgpooling10_dupName_4_trunc_sel_x_b;
    // Data10
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D10 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data10 : i_arrayidx16_avgpooling10_dupName_4_trunc_sel_x_b;
    // Data11
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D11 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_r_data11 : i_arrayidx33_avgpooling10_dupName_4_trunc_sel_x_b;

    // i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161(BLACKBOX,244)@140
    // in in_i_stall@20000000
    // out out_o_readdata@172
    // out out_o_stall@20000000
    // out out_o_valid@172
    // out out_unnamed_avgpooling16_avgpooling1_avm_address@20000000
    // out out_unnamed_avgpooling16_avgpooling1_avm_burstcount@20000000
    // out out_unnamed_avgpooling16_avgpooling1_avm_byteenable@20000000
    // out out_unnamed_avgpooling16_avgpooling1_avm_enable@20000000
    // out out_unnamed_avgpooling16_avgpooling1_avm_read@20000000
    // out out_unnamed_avgpooling16_avgpooling1_avm_write@20000000
    // out out_unnamed_avgpooling16_avgpooling1_avm_writedata@20000000
    avgpooling1_i_llvm_fpga_mem_unnamed_6_avgpooling10 thei_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D0),
        .in_i_dependence(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D1),
        .in_i_predicate(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_D5),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling16_V0),
        .in_unnamed_avgpooling16_avgpooling1_avm_readdata(in_unnamed_avgpooling16_avgpooling1_avm_readdata),
        .in_unnamed_avgpooling16_avgpooling1_avm_readdatavalid(in_unnamed_avgpooling16_avgpooling1_avm_readdatavalid),
        .in_unnamed_avgpooling16_avgpooling1_avm_waitrequest(in_unnamed_avgpooling16_avgpooling1_avm_waitrequest),
        .in_unnamed_avgpooling16_avgpooling1_avm_writeack(in_unnamed_avgpooling16_avgpooling1_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_o_valid),
        .out_unnamed_avgpooling16_avgpooling1_avm_address(i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_address),
        .out_unnamed_avgpooling16_avgpooling1_avm_burstcount(i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_burstcount),
        .out_unnamed_avgpooling16_avgpooling1_avm_byteenable(i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_byteenable),
        .out_unnamed_avgpooling16_avgpooling1_avm_enable(i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_enable),
        .out_unnamed_avgpooling16_avgpooling1_avm_read(i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_read),
        .out_unnamed_avgpooling16_avgpooling1_avm_write(i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_write),
        .out_unnamed_avgpooling16_avgpooling1_avm_writedata(i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,7)
    assign out_unnamed_avgpooling16_avgpooling1_avm_address = i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_address;
    assign out_unnamed_avgpooling16_avgpooling1_avm_enable = i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_enable;
    assign out_unnamed_avgpooling16_avgpooling1_avm_read = i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_read;
    assign out_unnamed_avgpooling16_avgpooling1_avm_write = i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_write;
    assign out_unnamed_avgpooling16_avgpooling1_avm_writedata = i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_writedata;
    assign out_unnamed_avgpooling16_avgpooling1_avm_byteenable = i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_byteenable;
    assign out_unnamed_avgpooling16_avgpooling1_avm_burstcount = i_llvm_fpga_mem_unnamed_avgpooling16_avgpooling161_out_unnamed_avgpooling16_avgpooling1_avm_burstcount;

    // bubble_join_redist51_i_masked_avgpooling157_q_136_fifo(BITJOIN,3731)
    assign bubble_join_redist51_i_masked_avgpooling157_q_136_fifo_q = redist51_i_masked_avgpooling157_q_136_fifo_data_out;

    // bubble_select_redist51_i_masked_avgpooling157_q_136_fifo(BITSELECT,3732)
    assign bubble_select_redist51_i_masked_avgpooling157_q_136_fifo_b = $unsigned(bubble_join_redist51_i_masked_avgpooling157_q_136_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,8)@276
    assign out_exitcond1139_pop29 = bubble_select_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling18_b;
    assign out_exitcond1432_pop25 = bubble_select_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling112_b;
    assign out_masked = bubble_select_redist51_i_masked_avgpooling157_q_136_fifo_b;
    assign out_memdep = bubble_select_i_llvm_fpga_mem_memdep_avgpooling170_b;
    assign out_notcmp1540_pop30 = bubble_select_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling19_b;
    assign out_notcmp2034_pop26 = bubble_select_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling113_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop20_avgpooling17_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,10)
    assign out_unnamed_avgpooling17_avgpooling1_avm_address = i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_address;
    assign out_unnamed_avgpooling17_avgpooling1_avm_enable = i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_enable;
    assign out_unnamed_avgpooling17_avgpooling1_avm_read = i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_read;
    assign out_unnamed_avgpooling17_avgpooling1_avm_write = i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_write;
    assign out_unnamed_avgpooling17_avgpooling1_avm_writedata = i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_writedata;
    assign out_unnamed_avgpooling17_avgpooling1_avm_byteenable = i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_byteenable;
    assign out_unnamed_avgpooling17_avgpooling1_avm_burstcount = i_llvm_fpga_mem_unnamed_avgpooling17_avgpooling162_out_unnamed_avgpooling17_avgpooling1_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,12)
    assign out_unnamed_avgpooling18_avgpooling1_avm_address = i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_address;
    assign out_unnamed_avgpooling18_avgpooling1_avm_enable = i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_enable;
    assign out_unnamed_avgpooling18_avgpooling1_avm_read = i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_read;
    assign out_unnamed_avgpooling18_avgpooling1_avm_write = i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_write;
    assign out_unnamed_avgpooling18_avgpooling1_avm_writedata = i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_writedata;
    assign out_unnamed_avgpooling18_avgpooling1_avm_byteenable = i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_byteenable;
    assign out_unnamed_avgpooling18_avgpooling1_avm_burstcount = i_llvm_fpga_mem_unnamed_avgpooling18_avgpooling164_out_unnamed_avgpooling18_avgpooling1_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,14)
    assign out_unnamed_avgpooling19_avgpooling1_avm_address = i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_address;
    assign out_unnamed_avgpooling19_avgpooling1_avm_enable = i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_enable;
    assign out_unnamed_avgpooling19_avgpooling1_avm_read = i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_read;
    assign out_unnamed_avgpooling19_avgpooling1_avm_write = i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_write;
    assign out_unnamed_avgpooling19_avgpooling1_avm_writedata = i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_writedata;
    assign out_unnamed_avgpooling19_avgpooling1_avm_byteenable = i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_byteenable;
    assign out_unnamed_avgpooling19_avgpooling1_avm_burstcount = i_llvm_fpga_mem_unnamed_avgpooling19_avgpooling165_out_unnamed_avgpooling19_avgpooling1_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,15)
    assign out_memdep_avgpooling1_avm_address = i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_address;
    assign out_memdep_avgpooling1_avm_enable = i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_enable;
    assign out_memdep_avgpooling1_avm_read = i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_read;
    assign out_memdep_avgpooling1_avm_write = i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_write;
    assign out_memdep_avgpooling1_avm_writedata = i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_writedata;
    assign out_memdep_avgpooling1_avm_byteenable = i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_byteenable;
    assign out_memdep_avgpooling1_avm_burstcount = i_llvm_fpga_mem_memdep_avgpooling170_out_memdep_avgpooling1_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,16)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_avgpooling170_out_lsu_memdep_o_active;

    // ext_sig_sync_out(GPOUT,189)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpooling13_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_avgpooling13_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpooling13_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_avgpooling13_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,364)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_avgpooling13_out_pipeline_valid_out;

    // sync_out(GPOUT,369)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
