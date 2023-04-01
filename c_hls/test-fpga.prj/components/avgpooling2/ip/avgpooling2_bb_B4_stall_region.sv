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

// SystemVerilog created from bb_avgpooling2_B4_stall_region
// Created for function/kernel avgpooling2
// SystemVerilog created on Sat Apr  1 13:10:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpooling2_bb_B4_stall_region (
    input wire [63:0] in_unnamed_avgpooling27_avgpooling2_avm_readdata,
    input wire [0:0] in_unnamed_avgpooling27_avgpooling2_avm_writeack,
    input wire [0:0] in_unnamed_avgpooling27_avgpooling2_avm_waitrequest,
    input wire [0:0] in_unnamed_avgpooling27_avgpooling2_avm_readdatavalid,
    output wire [63:0] out_unnamed_avgpooling26_avgpooling2_avm_address,
    output wire [0:0] out_unnamed_avgpooling26_avgpooling2_avm_enable,
    output wire [0:0] out_unnamed_avgpooling26_avgpooling2_avm_read,
    output wire [0:0] out_unnamed_avgpooling26_avgpooling2_avm_write,
    output wire [63:0] out_unnamed_avgpooling26_avgpooling2_avm_writedata,
    output wire [7:0] out_unnamed_avgpooling26_avgpooling2_avm_byteenable,
    output wire [0:0] out_unnamed_avgpooling26_avgpooling2_avm_burstcount,
    output wire [0:0] out_exitcond1139_pop29,
    output wire [0:0] out_exitcond1432_pop25,
    output wire [0:0] out_masked,
    output wire [0:0] out_memdep,
    output wire [0:0] out_notcmp1540_pop30,
    output wire [0:0] out_notcmp2034_pop26,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_unnamed_avgpooling28_avgpooling2_avm_readdata,
    input wire [0:0] in_unnamed_avgpooling28_avgpooling2_avm_writeack,
    input wire [0:0] in_unnamed_avgpooling28_avgpooling2_avm_waitrequest,
    input wire [0:0] in_unnamed_avgpooling28_avgpooling2_avm_readdatavalid,
    output wire [63:0] out_unnamed_avgpooling27_avgpooling2_avm_address,
    output wire [0:0] out_unnamed_avgpooling27_avgpooling2_avm_enable,
    output wire [0:0] out_unnamed_avgpooling27_avgpooling2_avm_read,
    output wire [0:0] out_unnamed_avgpooling27_avgpooling2_avm_write,
    output wire [63:0] out_unnamed_avgpooling27_avgpooling2_avm_writedata,
    output wire [7:0] out_unnamed_avgpooling27_avgpooling2_avm_byteenable,
    output wire [0:0] out_unnamed_avgpooling27_avgpooling2_avm_burstcount,
    input wire [63:0] in_unnamed_avgpooling29_avgpooling2_avm_readdata,
    input wire [0:0] in_unnamed_avgpooling29_avgpooling2_avm_writeack,
    input wire [0:0] in_unnamed_avgpooling29_avgpooling2_avm_waitrequest,
    input wire [0:0] in_unnamed_avgpooling29_avgpooling2_avm_readdatavalid,
    output wire [63:0] out_unnamed_avgpooling28_avgpooling2_avm_address,
    output wire [0:0] out_unnamed_avgpooling28_avgpooling2_avm_enable,
    output wire [0:0] out_unnamed_avgpooling28_avgpooling2_avm_read,
    output wire [0:0] out_unnamed_avgpooling28_avgpooling2_avm_write,
    output wire [63:0] out_unnamed_avgpooling28_avgpooling2_avm_writedata,
    output wire [7:0] out_unnamed_avgpooling28_avgpooling2_avm_byteenable,
    output wire [0:0] out_unnamed_avgpooling28_avgpooling2_avm_burstcount,
    input wire [63:0] in_memdep_avgpooling2_avm_readdata,
    input wire [0:0] in_memdep_avgpooling2_avm_writeack,
    input wire [0:0] in_memdep_avgpooling2_avm_waitrequest,
    input wire [0:0] in_memdep_avgpooling2_avm_readdatavalid,
    output wire [63:0] out_unnamed_avgpooling29_avgpooling2_avm_address,
    output wire [0:0] out_unnamed_avgpooling29_avgpooling2_avm_enable,
    output wire [0:0] out_unnamed_avgpooling29_avgpooling2_avm_read,
    output wire [0:0] out_unnamed_avgpooling29_avgpooling2_avm_write,
    output wire [63:0] out_unnamed_avgpooling29_avgpooling2_avm_writedata,
    output wire [7:0] out_unnamed_avgpooling29_avgpooling2_avm_byteenable,
    output wire [0:0] out_unnamed_avgpooling29_avgpooling2_avm_burstcount,
    output wire [63:0] out_memdep_avgpooling2_avm_address,
    output wire [0:0] out_memdep_avgpooling2_avm_enable,
    output wire [0:0] out_memdep_avgpooling2_avm_read,
    output wire [0:0] out_memdep_avgpooling2_avm_write,
    output wire [63:0] out_memdep_avgpooling2_avm_writedata,
    output wire [7:0] out_memdep_avgpooling2_avm_byteenable,
    output wire [0:0] out_memdep_avgpooling2_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [63:0] in_unnamed_avgpooling26_avgpooling2_avm_readdata,
    input wire [0:0] in_unnamed_avgpooling26_avgpooling2_avm_writeack,
    input wire [0:0] in_unnamed_avgpooling26_avgpooling2_avm_waitrequest,
    input wire [0:0] in_unnamed_avgpooling26_avgpooling2_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpooling23_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpooling23_exiting_stall_out,
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
    wire [0:0] avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] avgpooling2_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] avgpooling2_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] avgpooling2_B4_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] avgpooling2_B4_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] avgpooling2_B4_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] avgpooling2_B4_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] avgpooling2_B4_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] avgpooling2_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] avgpooling2_B4_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] bgTrunc_i_add43_avgpooling224_sel_x_b;
    wire [3:0] bgTrunc_i_fpga_indvars_iv_next_avgpooling227_sel_x_b;
    wire [63:0] i_arrayidx10_avgpooling20_dupName_4_trunc_sel_x_b;
    wire [1:0] i_arrayidx10_avgpooling20_c_i2_03_x_q;
    wire [61:0] i_arrayidx10_avgpooling20_narrow_x_b;
    wire [63:0] i_arrayidx10_avgpooling20_shift_join_x_q;
    wire [63:0] i_arrayidx16_avgpooling20_dupName_4_trunc_sel_x_b;
    wire [63:0] i_arrayidx24_avgpooling20_dupName_4_trunc_sel_x_b;
    wire [61:0] i_arrayidx24_avgpooling20_narrow_x_b;
    wire [63:0] i_arrayidx24_avgpooling20_shift_join_x_q;
    wire [63:0] i_arrayidx33_avgpooling20_dupName_4_trunc_sel_x_b;
    wire [63:0] i_arrayidx42_avgpooling20_dupName_4_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_avgpooling218_sel_x_b;
    wire [63:0] i_idxprom13_avgpooling251_sel_x_b;
    wire [63:0] i_idxprom23_avgpooling244_sel_x_b;
    wire [63:0] i_idxprom38_avgpooling250_sel_x_b;
    wire [63:0] i_idxprom7_avgpooling233_sel_x_b;
    wire [63:0] i_idxprom9_avgpooling221_sel_x_b;
    wire [63:0] i_idxprom_avgpooling238_sel_x_b;
    wire [0:0] i_last_initeration_avgpooling243_sel_x_b;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_out_dest_data_out_0_0_1_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_out_dest_data_out_0_0_0_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_out_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body6_avgpooling2s_c0_enter9112_avgpooling268_aunroll_x_out_c0_exit97_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_avgpooling2s_c0_enter9112_avgpooling268_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body6_avgpooling2s_c0_enter9112_avgpooling268_aunroll_x_out_o_valid;
    wire [1:0] c_i2_172_q;
    wire [31:0] c_i32_074_q;
    wire [31:0] c_i32_176_q;
    wire [31:0] c_i32_277_q;
    wire [3:0] c_i4_179_q;
    wire [3:0] c_i4_375_q;
    wire [31:0] i_add22_avgpooling222_q;
    wire [31:0] i_add22_avgpooling222_vt_join_q;
    wire [30:0] i_add22_avgpooling222_vt_select_31_b;
    wire [32:0] i_add43_avgpooling224_a;
    wire [32:0] i_add43_avgpooling224_b;
    logic [32:0] i_add43_avgpooling224_o;
    wire [32:0] i_add43_avgpooling224_q;
    wire [31:0] i_add_avgpooling232_q;
    wire [31:0] i_add_avgpooling232_vt_join_q;
    wire [30:0] i_add_avgpooling232_vt_select_31_b;
    wire [1:0] i_cleanups_shl_avgpooling219_vt_join_q;
    wire [0:0] i_cleanups_shl_avgpooling219_vt_select_1_b;
    wire [31:0] i_div37_avgpooling231_vt_join_q;
    wire [30:0] i_div37_avgpooling231_vt_select_30_b;
    wire [0:0] i_first_cleanup_xor_avgpooling241_q;
    wire [4:0] i_fpga_indvars_iv_next_avgpooling227_a;
    wire [4:0] i_fpga_indvars_iv_next_avgpooling227_b;
    logic [4:0] i_fpga_indvars_iv_next_avgpooling227_o;
    wire [4:0] i_fpga_indvars_iv_next_avgpooling227_q;
    wire [63:0] i_idxprom13_avgpooling251_vt_join_q;
    wire [30:0] i_idxprom13_avgpooling251_vt_select_31_b;
    wire [63:0] i_idxprom23_avgpooling244_vt_join_q;
    wire [30:0] i_idxprom23_avgpooling244_vt_select_31_b;
    wire [32:0] i_idxprom38_avgpooling250_vt_const_63_q;
    wire [63:0] i_idxprom38_avgpooling250_vt_join_q;
    wire [30:0] i_idxprom38_avgpooling250_vt_select_30_b;
    wire [63:0] i_idxprom7_avgpooling233_vt_join_q;
    wire [31:0] i_idxprom7_avgpooling233_vt_select_31_b;
    wire [63:0] i_idxprom9_avgpooling221_vt_join_q;
    wire [31:0] i_idxprom9_avgpooling221_vt_select_31_b;
    wire [63:0] i_idxprom_avgpooling238_vt_join_q;
    wire [31:0] i_idxprom_avgpooling238_vt_select_31_b;
    wire [0:0] i_llvm_fpga_mem_memdep_avgpooling270_out_lsu_memdep_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_avgpooling270_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_avgpooling270_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_avgpooling270_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpooling23_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpooling23_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpooling23_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpooling23_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpooling23_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpooling23_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpooling23_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_out_feedback_stall_out_25;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_feedback_stall_out_32;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_out_feedback_stall_out_30;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_out_feedback_valid_out_29;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_out_feedback_valid_out_25;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_avgpooling254_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_avgpooling254_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_avgpooling254_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_avgpooling254_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_out_feedback_valid_out_32;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_out_feedback_valid_out_28;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_out_feedback_valid_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_out_feedback_valid_out_26;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_avgpooling248_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_avgpooling248_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_avgpooling248_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_avgpooling248_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push24_avgpooling266_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push24_avgpooling266_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push24_avgpooling266_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push24_avgpooling266_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push23_avgpooling242_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push23_avgpooling242_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push23_avgpooling242_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push23_avgpooling242_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_j_025_push21_avgpooling246_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_j_025_push21_avgpooling246_out_feedback_valid_out_21;
    wire [0:0] i_llvm_fpga_push_i32_j_025_push21_avgpooling246_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_j_025_push21_avgpooling246_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_out_valid_out;
    wire [0:0] i_masked_avgpooling257_qi;
    reg [0:0] i_masked_avgpooling257_q;
    wire [0:0] i_next_cleanups_avgpooling263_s;
    reg [1:0] i_next_cleanups_avgpooling263_q;
    wire [1:0] i_next_initerations_avgpooling220_vt_join_q;
    wire [0:0] i_next_initerations_avgpooling220_vt_select_0_b;
    wire [0:0] i_notcmp_avgpooling247_q;
    wire [0:0] i_or_avgpooling256_q;
    wire [0:0] i_reduction_avgpooling2_0_avgpooling240_qi;
    reg [0:0] i_reduction_avgpooling2_0_avgpooling240_q;
    wire [0:0] i_reduction_avgpooling2_1_avgpooling253_q;
    wire [35:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_0_qint;
    wire [59:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_join_1_q;
    wire [41:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_3_qint;
    wire [69:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_join_4_q;
    wire [35:0] i_arrayidx10_avgpooling20_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx10_avgpooling20_mult_x_sums_align_0_qint;
    wire [62:0] i_arrayidx10_avgpooling20_mult_x_sums_join_1_q;
    wire [44:0] i_arrayidx10_avgpooling20_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx10_avgpooling20_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx10_avgpooling20_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx10_avgpooling20_mult_x_sums_align_3_qint;
    wire [72:0] i_arrayidx10_avgpooling20_mult_x_sums_join_4_q;
    wire [35:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_0_qint;
    wire [59:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_join_1_q;
    wire [41:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_3_qint;
    wire [69:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_join_4_q;
    wire [35:0] i_arrayidx16_avgpooling20_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx16_avgpooling20_mult_x_sums_align_0_qint;
    wire [62:0] i_arrayidx16_avgpooling20_mult_x_sums_join_1_q;
    wire [44:0] i_arrayidx16_avgpooling20_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx16_avgpooling20_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx16_avgpooling20_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx16_avgpooling20_mult_x_sums_align_3_qint;
    wire [72:0] i_arrayidx16_avgpooling20_mult_x_sums_join_4_q;
    wire [35:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_0_qint;
    wire [59:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_join_1_q;
    wire [41:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_3_qint;
    wire [69:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_join_4_q;
    wire [35:0] i_arrayidx24_avgpooling20_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx24_avgpooling20_mult_x_sums_align_0_qint;
    wire [62:0] i_arrayidx24_avgpooling20_mult_x_sums_join_1_q;
    wire [44:0] i_arrayidx24_avgpooling20_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx24_avgpooling20_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx24_avgpooling20_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx24_avgpooling20_mult_x_sums_align_3_qint;
    wire [72:0] i_arrayidx24_avgpooling20_mult_x_sums_join_4_q;
    wire [35:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_0_qint;
    wire [59:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_join_1_q;
    wire [41:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_3_qint;
    wire [69:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_join_4_q;
    wire [35:0] i_arrayidx33_avgpooling20_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx33_avgpooling20_mult_x_sums_align_0_qint;
    wire [62:0] i_arrayidx33_avgpooling20_mult_x_sums_join_1_q;
    wire [44:0] i_arrayidx33_avgpooling20_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx33_avgpooling20_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx33_avgpooling20_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx33_avgpooling20_mult_x_sums_align_3_qint;
    wire [72:0] i_arrayidx33_avgpooling20_mult_x_sums_join_4_q;
    wire [35:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_0_qint;
    wire [58:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_join_1_q;
    wire [40:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_2_q;
    wire [40:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_3_qint;
    wire [68:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_join_4_q;
    wire [35:0] i_arrayidx42_avgpooling20_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx42_avgpooling20_mult_x_sums_align_0_qint;
    wire [60:0] i_arrayidx42_avgpooling20_mult_x_sums_join_1_q;
    wire [42:0] i_arrayidx42_avgpooling20_mult_x_sums_align_2_q;
    wire [42:0] i_arrayidx42_avgpooling20_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx42_avgpooling20_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx42_avgpooling20_mult_x_sums_align_3_qint;
    wire [70:0] i_arrayidx42_avgpooling20_mult_x_sums_join_4_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid570_i_cleanups_shl_avgpooling20_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid570_i_cleanups_shl_avgpooling20_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid571_i_cleanups_shl_avgpooling20_shift_x_q;
    wire [0:0] leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_s;
    reg [1:0] leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid577_i_div37_avgpooling20_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid579_i_div37_avgpooling20_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid585_i_div40_avgpooling20_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid587_i_div40_avgpooling20_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid593_i_next_initerations_avgpooling20_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid595_i_next_initerations_avgpooling20_shift_x_q;
    wire [0:0] rightShiftStage0_uid597_i_next_initerations_avgpooling20_shift_x_s;
    reg [1:0] rightShiftStage0_uid597_i_next_initerations_avgpooling20_shift_x_q;
    wire [0:0] i_exitcond_avgpooling225_cmp_nsign_q;
    wire [18:0] addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_a;
    wire [18:0] addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_b;
    logic [18:0] addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_o;
    wire [18:0] addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_q;
    wire [20:0] add_uid611_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_q;
    wire [2:0] sR_bottomExtension_uid614_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_q;
    wire [23:0] sR_mergedSignalTM_uid616_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_q;
    wire [18:0] addsumAHighB_uid668_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid668_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid668_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid668_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_q;
    wire [20:0] add_uid669_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_q;
    wire [23:0] sR_mergedSignalTM_uid674_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_q;
    wire [18:0] addsumAHighB_uid726_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid726_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid726_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid726_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_q;
    wire [20:0] add_uid727_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_q;
    wire [23:0] sR_mergedSignalTM_uid732_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_q;
    wire [10:0] addsumAHighB_uid784_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_a;
    wire [10:0] addsumAHighB_uid784_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_b;
    logic [10:0] addsumAHighB_uid784_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_o;
    wire [10:0] addsumAHighB_uid784_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_q;
    wire [12:0] add_uid785_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_q;
    wire [15:0] sR_mergedSignalTM_uid790_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_q;
    wire [0:0] lowRangeB_uid829_i_arrayidx10_avgpooling20_mult_x_im0_in;
    wire [0:0] lowRangeB_uid829_i_arrayidx10_avgpooling20_mult_x_im0_b;
    wire [16:0] highBBits_uid830_i_arrayidx10_avgpooling20_mult_x_im0_b;
    wire [18:0] addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_a;
    wire [18:0] addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_b;
    logic [18:0] addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_o;
    wire [18:0] addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_q;
    wire [19:0] add_uid832_i_arrayidx10_avgpooling20_mult_x_im0_q;
    wire [2:0] lowRangeB_uid834_i_arrayidx10_avgpooling20_mult_x_im0_in;
    wire [2:0] lowRangeB_uid834_i_arrayidx10_avgpooling20_mult_x_im0_b;
    wire [14:0] highBBits_uid835_i_arrayidx10_avgpooling20_mult_x_im0_b;
    wire [20:0] a_subconst_25_sumAHighB_uid836_i_arrayidx10_avgpooling20_mult_x_im0_a;
    wire [20:0] a_subconst_25_sumAHighB_uid836_i_arrayidx10_avgpooling20_mult_x_im0_b;
    logic [20:0] a_subconst_25_sumAHighB_uid836_i_arrayidx10_avgpooling20_mult_x_im0_o;
    wire [20:0] a_subconst_25_sumAHighB_uid836_i_arrayidx10_avgpooling20_mult_x_im0_q;
    wire [23:0] a_subconst_25_uid837_i_arrayidx10_avgpooling20_mult_x_im0_q;
    wire [3:0] sR_bottomExtension_uid840_i_arrayidx10_avgpooling20_mult_x_im0_q;
    wire [22:0] sR_bottomRange_uid841_i_arrayidx10_avgpooling20_mult_x_im0_in;
    wire [22:0] sR_bottomRange_uid841_i_arrayidx10_avgpooling20_mult_x_im0_b;
    wire [26:0] sR_mergedSignalTM_uid842_i_arrayidx10_avgpooling20_mult_x_im0_q;
    wire [0:0] lowRangeB_uid898_i_arrayidx10_avgpooling20_mult_x_im3_in;
    wire [0:0] lowRangeB_uid898_i_arrayidx10_avgpooling20_mult_x_im3_b;
    wire [16:0] highBBits_uid899_i_arrayidx10_avgpooling20_mult_x_im3_b;
    wire [18:0] addsumAHighB_uid900_i_arrayidx10_avgpooling20_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid900_i_arrayidx10_avgpooling20_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid900_i_arrayidx10_avgpooling20_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid900_i_arrayidx10_avgpooling20_mult_x_im3_q;
    wire [19:0] add_uid901_i_arrayidx10_avgpooling20_mult_x_im3_q;
    wire [2:0] lowRangeB_uid903_i_arrayidx10_avgpooling20_mult_x_im3_in;
    wire [2:0] lowRangeB_uid903_i_arrayidx10_avgpooling20_mult_x_im3_b;
    wire [14:0] highBBits_uid904_i_arrayidx10_avgpooling20_mult_x_im3_b;
    wire [20:0] a_subconst_25_sumAHighB_uid905_i_arrayidx10_avgpooling20_mult_x_im3_a;
    wire [20:0] a_subconst_25_sumAHighB_uid905_i_arrayidx10_avgpooling20_mult_x_im3_b;
    logic [20:0] a_subconst_25_sumAHighB_uid905_i_arrayidx10_avgpooling20_mult_x_im3_o;
    wire [20:0] a_subconst_25_sumAHighB_uid905_i_arrayidx10_avgpooling20_mult_x_im3_q;
    wire [23:0] a_subconst_25_uid906_i_arrayidx10_avgpooling20_mult_x_im3_q;
    wire [22:0] sR_bottomRange_uid910_i_arrayidx10_avgpooling20_mult_x_im3_in;
    wire [22:0] sR_bottomRange_uid910_i_arrayidx10_avgpooling20_mult_x_im3_b;
    wire [26:0] sR_mergedSignalTM_uid911_i_arrayidx10_avgpooling20_mult_x_im3_q;
    wire [0:0] lowRangeB_uid967_i_arrayidx10_avgpooling20_mult_x_im6_in;
    wire [0:0] lowRangeB_uid967_i_arrayidx10_avgpooling20_mult_x_im6_b;
    wire [16:0] highBBits_uid968_i_arrayidx10_avgpooling20_mult_x_im6_b;
    wire [18:0] addsumAHighB_uid969_i_arrayidx10_avgpooling20_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid969_i_arrayidx10_avgpooling20_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid969_i_arrayidx10_avgpooling20_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid969_i_arrayidx10_avgpooling20_mult_x_im6_q;
    wire [19:0] add_uid970_i_arrayidx10_avgpooling20_mult_x_im6_q;
    wire [2:0] lowRangeB_uid972_i_arrayidx10_avgpooling20_mult_x_im6_in;
    wire [2:0] lowRangeB_uid972_i_arrayidx10_avgpooling20_mult_x_im6_b;
    wire [14:0] highBBits_uid973_i_arrayidx10_avgpooling20_mult_x_im6_b;
    wire [20:0] a_subconst_25_sumAHighB_uid974_i_arrayidx10_avgpooling20_mult_x_im6_a;
    wire [20:0] a_subconst_25_sumAHighB_uid974_i_arrayidx10_avgpooling20_mult_x_im6_b;
    logic [20:0] a_subconst_25_sumAHighB_uid974_i_arrayidx10_avgpooling20_mult_x_im6_o;
    wire [20:0] a_subconst_25_sumAHighB_uid974_i_arrayidx10_avgpooling20_mult_x_im6_q;
    wire [23:0] a_subconst_25_uid975_i_arrayidx10_avgpooling20_mult_x_im6_q;
    wire [22:0] sR_bottomRange_uid979_i_arrayidx10_avgpooling20_mult_x_im6_in;
    wire [22:0] sR_bottomRange_uid979_i_arrayidx10_avgpooling20_mult_x_im6_b;
    wire [26:0] sR_mergedSignalTM_uid980_i_arrayidx10_avgpooling20_mult_x_im6_q;
    wire [0:0] lowRangeB_uid1036_i_arrayidx10_avgpooling20_mult_x_im9_in;
    wire [0:0] lowRangeB_uid1036_i_arrayidx10_avgpooling20_mult_x_im9_b;
    wire [8:0] highBBits_uid1037_i_arrayidx10_avgpooling20_mult_x_im9_b;
    wire [10:0] addsumAHighB_uid1038_i_arrayidx10_avgpooling20_mult_x_im9_a;
    wire [10:0] addsumAHighB_uid1038_i_arrayidx10_avgpooling20_mult_x_im9_b;
    logic [10:0] addsumAHighB_uid1038_i_arrayidx10_avgpooling20_mult_x_im9_o;
    wire [10:0] addsumAHighB_uid1038_i_arrayidx10_avgpooling20_mult_x_im9_q;
    wire [11:0] add_uid1039_i_arrayidx10_avgpooling20_mult_x_im9_q;
    wire [2:0] lowRangeB_uid1041_i_arrayidx10_avgpooling20_mult_x_im9_in;
    wire [2:0] lowRangeB_uid1041_i_arrayidx10_avgpooling20_mult_x_im9_b;
    wire [6:0] highBBits_uid1042_i_arrayidx10_avgpooling20_mult_x_im9_b;
    wire [12:0] a_subconst_25_sumAHighB_uid1043_i_arrayidx10_avgpooling20_mult_x_im9_a;
    wire [12:0] a_subconst_25_sumAHighB_uid1043_i_arrayidx10_avgpooling20_mult_x_im9_b;
    logic [12:0] a_subconst_25_sumAHighB_uid1043_i_arrayidx10_avgpooling20_mult_x_im9_o;
    wire [12:0] a_subconst_25_sumAHighB_uid1043_i_arrayidx10_avgpooling20_mult_x_im9_q;
    wire [15:0] a_subconst_25_uid1044_i_arrayidx10_avgpooling20_mult_x_im9_q;
    wire [14:0] sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_in;
    wire [14:0] sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b;
    wire [18:0] sR_mergedSignalTM_uid1049_i_arrayidx10_avgpooling20_mult_x_im9_q;
    wire [18:0] addsumAHighB_uid1094_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_a;
    wire [18:0] addsumAHighB_uid1094_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_b;
    logic [18:0] addsumAHighB_uid1094_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_o;
    wire [18:0] addsumAHighB_uid1094_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_q;
    wire [20:0] add_uid1095_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_q;
    wire [23:0] sR_mergedSignalTM_uid1100_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_q;
    wire [18:0] addsumAHighB_uid1152_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid1152_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid1152_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid1152_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_q;
    wire [20:0] add_uid1153_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_q;
    wire [23:0] sR_mergedSignalTM_uid1158_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_q;
    wire [18:0] addsumAHighB_uid1210_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid1210_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid1210_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid1210_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_q;
    wire [20:0] add_uid1211_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_q;
    wire [23:0] sR_mergedSignalTM_uid1216_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_q;
    wire [10:0] addsumAHighB_uid1268_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_a;
    wire [10:0] addsumAHighB_uid1268_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_b;
    logic [10:0] addsumAHighB_uid1268_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_o;
    wire [10:0] addsumAHighB_uid1268_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_q;
    wire [12:0] add_uid1269_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_q;
    wire [15:0] sR_mergedSignalTM_uid1274_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_q;
    wire [18:0] addsumAHighB_uid2546_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_a;
    wire [18:0] addsumAHighB_uid2546_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_b;
    logic [18:0] addsumAHighB_uid2546_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_o;
    wire [18:0] addsumAHighB_uid2546_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_q;
    wire [20:0] add_uid2547_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_q;
    wire [22:0] sR_mergedSignalTM_uid2552_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_q;
    wire [18:0] addsumAHighB_uid2604_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid2604_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid2604_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid2604_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_q;
    wire [20:0] add_uid2605_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_q;
    wire [22:0] sR_mergedSignalTM_uid2610_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_q;
    wire [18:0] addsumAHighB_uid2662_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid2662_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid2662_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid2662_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_q;
    wire [20:0] add_uid2663_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_q;
    wire [22:0] sR_mergedSignalTM_uid2668_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_q;
    wire [10:0] addsumAHighB_uid2720_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_a;
    wire [10:0] addsumAHighB_uid2720_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_b;
    logic [10:0] addsumAHighB_uid2720_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_o;
    wire [10:0] addsumAHighB_uid2720_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_q;
    wire [12:0] add_uid2721_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_q;
    wire [14:0] sR_mergedSignalTM_uid2726_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_q;
    wire [24:0] sR_mergedSignalTM_uid2778_i_arrayidx42_avgpooling20_mult_x_im0_q;
    wire [24:0] sR_mergedSignalTM_uid2847_i_arrayidx42_avgpooling20_mult_x_im3_q;
    wire [24:0] sR_mergedSignalTM_uid2916_i_arrayidx42_avgpooling20_mult_x_im6_q;
    wire [16:0] sR_mergedSignalTM_uid2985_i_arrayidx42_avgpooling20_mult_x_im9_q;
    wire [52:0] i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx10_avgpooling20_dupName_1_add_x_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_b;
    wire [52:0] i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx10_avgpooling20_dupName_1_add_x_BitJoin_for_q_q;
    wire [64:0] i_arrayidx10_avgpooling20_add_x_BitExpansion_for_a_q;
    wire [51:0] i_arrayidx10_avgpooling20_add_x_BitSelect_for_a_b;
    wire [12:0] i_arrayidx10_avgpooling20_add_x_BitSelect_for_a_c;
    wire [52:0] i_arrayidx10_avgpooling20_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx10_avgpooling20_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx10_avgpooling20_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx10_avgpooling20_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx10_avgpooling20_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx10_avgpooling20_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx10_avgpooling20_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx10_avgpooling20_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx10_avgpooling20_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx10_avgpooling20_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx16_avgpooling20_dupName_0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx16_avgpooling20_dupName_0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx16_avgpooling20_dupName_0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx16_avgpooling20_dupName_0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx16_avgpooling20_dupName_0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx16_avgpooling20_dupName_0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx16_avgpooling20_dupName_0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx16_avgpooling20_dupName_0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx16_avgpooling20_dupName_0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx16_avgpooling20_dupName_0_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx16_avgpooling20_dupName_1_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx16_avgpooling20_dupName_1_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx16_avgpooling20_dupName_1_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx16_avgpooling20_dupName_1_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx16_avgpooling20_dupName_1_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx16_avgpooling20_dupName_1_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx16_avgpooling20_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx16_avgpooling20_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx16_avgpooling20_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx16_avgpooling20_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx16_avgpooling20_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx16_avgpooling20_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx16_avgpooling20_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx16_avgpooling20_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx16_avgpooling20_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx16_avgpooling20_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx24_avgpooling20_dupName_0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx24_avgpooling20_dupName_0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx24_avgpooling20_dupName_0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx24_avgpooling20_dupName_0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx24_avgpooling20_dupName_0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx24_avgpooling20_dupName_0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx24_avgpooling20_dupName_0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx24_avgpooling20_dupName_0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx24_avgpooling20_dupName_0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx24_avgpooling20_dupName_0_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx24_avgpooling20_dupName_1_add_x_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx24_avgpooling20_dupName_1_add_x_BitSelect_for_b_b;
    wire [52:0] i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx24_avgpooling20_dupName_1_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx24_avgpooling20_dupName_1_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx24_avgpooling20_dupName_1_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx24_avgpooling20_dupName_1_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx24_avgpooling20_dupName_1_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx24_avgpooling20_dupName_1_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx24_avgpooling20_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx24_avgpooling20_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx24_avgpooling20_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx24_avgpooling20_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx24_avgpooling20_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx24_avgpooling20_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx24_avgpooling20_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx24_avgpooling20_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx24_avgpooling20_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx24_avgpooling20_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx33_avgpooling20_dupName_0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx33_avgpooling20_dupName_0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx33_avgpooling20_dupName_0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx33_avgpooling20_dupName_0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx33_avgpooling20_dupName_0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx33_avgpooling20_dupName_0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx33_avgpooling20_dupName_0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx33_avgpooling20_dupName_0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx33_avgpooling20_dupName_0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx33_avgpooling20_dupName_0_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx33_avgpooling20_dupName_1_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx33_avgpooling20_dupName_1_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx33_avgpooling20_dupName_1_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx33_avgpooling20_dupName_1_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx33_avgpooling20_dupName_1_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx33_avgpooling20_dupName_1_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx33_avgpooling20_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx33_avgpooling20_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx33_avgpooling20_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx33_avgpooling20_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx33_avgpooling20_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx33_avgpooling20_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx33_avgpooling20_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx33_avgpooling20_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx33_avgpooling20_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx33_avgpooling20_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_q;
    wire [64:0] i_arrayidx42_avgpooling20_add_x_BitExpansion_for_a_q;
    wire [51:0] i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_b;
    wire [12:0] i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c;
    wire [52:0] i_arrayidx42_avgpooling20_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx42_avgpooling20_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx42_avgpooling20_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx42_avgpooling20_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx42_avgpooling20_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx42_avgpooling20_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx42_avgpooling20_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx42_avgpooling20_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx42_avgpooling20_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx42_avgpooling20_add_x_p2_of_2_q;
    wire [70:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q;
    wire [10:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q;
    wire [70:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    wire [18:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c;
    wire [51:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    wire [18:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c;
    wire [52:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [20:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [20:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [20:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [18:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [73:0] i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a_q;
    wire [73:0] i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    wire [21:0] i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_c;
    wire [51:0] i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    wire [21:0] i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_c;
    wire [52:0] i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [23:0] i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [23:0] i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [23:0] i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [21:0] i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [70:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q;
    wire [70:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    wire [18:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c;
    wire [51:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    wire [18:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c;
    wire [52:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [20:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [20:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [20:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [18:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [73:0] i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a_q;
    wire [73:0] i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    wire [21:0] i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_c;
    wire [51:0] i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    wire [21:0] i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_c;
    wire [52:0] i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [23:0] i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [23:0] i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [23:0] i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [21:0] i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [70:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q;
    wire [70:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    wire [18:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c;
    wire [51:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    wire [18:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c;
    wire [52:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [20:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [20:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [20:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [18:0] i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [73:0] i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a_q;
    wire [73:0] i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    wire [21:0] i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_c;
    wire [51:0] i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    wire [21:0] i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_c;
    wire [52:0] i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [23:0] i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [23:0] i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [23:0] i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [21:0] i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [70:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q;
    wire [70:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    wire [18:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c;
    wire [51:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    wire [18:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c;
    wire [52:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [20:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [20:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [20:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [18:0] i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [73:0] i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a_q;
    wire [73:0] i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    wire [21:0] i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_c;
    wire [51:0] i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    wire [21:0] i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_c;
    wire [52:0] i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [23:0] i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [23:0] i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [23:0] i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [21:0] i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [69:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q;
    wire [69:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    wire [17:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c;
    wire [51:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    wire [17:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c;
    wire [52:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [19:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [19:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [19:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [17:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [71:0] i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a_q;
    wire [71:0] i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b_q;
    wire [51:0] i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    wire [19:0] i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_c;
    wire [51:0] i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    wire [19:0] i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_c;
    wire [52:0] i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [21:0] i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [21:0] i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [21:0] i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [19:0] i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [30:0] rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_BitSelect_for_b_b;
    wire [30:0] rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_BitSelect_for_a_b;
    wire [0:0] rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_BitSelect_for_a_c;
    wire [0:0] rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_p0_s;
    reg [30:0] rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_p0_q;
    wire [0:0] rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_p1_s;
    reg [0:0] rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_p1_q;
    wire [31:0] rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_BitJoin_for_q_q;
    wire [30:0] rightShiftStage0_uid589_i_div40_avgpooling20_shift_x_BitSelect_for_b_b;
    wire [30:0] rightShiftStage0_uid589_i_div40_avgpooling20_shift_x_BitSelect_for_a_b;
    wire [0:0] rightShiftStage0_uid589_i_div40_avgpooling20_shift_x_p0_s;
    reg [30:0] rightShiftStage0_uid589_i_div40_avgpooling20_shift_x_p0_q;
    wire [11:0] i_arrayidx10_avgpooling20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx10_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx10_avgpooling20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx10_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx10_avgpooling20_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx10_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx16_avgpooling20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx16_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx16_avgpooling20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx16_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx16_avgpooling20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx16_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx16_avgpooling20_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx16_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx24_avgpooling20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx24_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx24_avgpooling20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx24_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx24_avgpooling20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx24_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx24_avgpooling20_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx24_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx33_avgpooling20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx33_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx33_avgpooling20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx33_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx33_avgpooling20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx33_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx33_avgpooling20_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx33_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx42_avgpooling20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx42_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx42_avgpooling20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx42_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [12:0] i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx42_avgpooling20_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx42_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [17:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_d;
    wire [9:0] i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_e;
    wire [30:0] i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in;
    wire [18:0] i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b;
    wire [11:0] i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c;
    wire [17:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_d;
    wire [9:0] i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_e;
    wire [17:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_d;
    wire [9:0] i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_e;
    wire [17:0] i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select_d;
    wire [9:0] i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select_e;
    wire [1:0] lowRangeB_uid1092_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b;
    wire [15:0] lowRangeB_uid1092_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_c;
    wire [1:0] lowRangeB_uid1150_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b;
    wire [15:0] lowRangeB_uid1150_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_c;
    wire [1:0] lowRangeB_uid1208_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b;
    wire [15:0] lowRangeB_uid1208_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_c;
    wire [1:0] lowRangeB_uid1266_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b;
    wire [7:0] lowRangeB_uid1266_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_c;
    wire [1:0] lowRangeB_uid2544_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b;
    wire [15:0] lowRangeB_uid2544_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_c;
    wire [1:0] lowRangeB_uid2602_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b;
    wire [15:0] lowRangeB_uid2602_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_c;
    wire [1:0] lowRangeB_uid2660_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b;
    wire [15:0] lowRangeB_uid2660_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_c;
    wire [1:0] lowRangeB_uid2718_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b;
    wire [7:0] lowRangeB_uid2718_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_c;
    wire [1:0] lowRangeB_uid608_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b;
    wire [15:0] lowRangeB_uid608_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_c;
    wire [1:0] lowRangeB_uid666_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b;
    wire [15:0] lowRangeB_uid666_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_c;
    wire [1:0] lowRangeB_uid724_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b;
    wire [15:0] lowRangeB_uid724_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_c;
    wire [1:0] lowRangeB_uid782_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b;
    wire [7:0] lowRangeB_uid782_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_c;
    wire [32:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [3:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] sel_for_coalesced_delay_1_e;
    wire [63:0] join_for_coalesced_delay_2_q;
    wire [17:0] sel_for_coalesced_delay_2_b;
    wire [17:0] sel_for_coalesced_delay_2_c;
    wire [17:0] sel_for_coalesced_delay_2_d;
    wire [9:0] sel_for_coalesced_delay_2_e;
    wire [64:0] join_for_coalesced_delay_3_q;
    wire [63:0] sel_for_coalesced_delay_3_b;
    wire [0:0] sel_for_coalesced_delay_3_c;
    wire [37:0] join_for_coalesced_delay_4_q;
    wire [18:0] sel_for_coalesced_delay_4_b;
    wire [18:0] sel_for_coalesced_delay_4_c;
    wire [43:0] join_for_coalesced_delay_5_q;
    wire [21:0] sel_for_coalesced_delay_5_b;
    wire [21:0] sel_for_coalesced_delay_5_c;
    wire [37:0] join_for_coalesced_delay_6_q;
    wire [18:0] sel_for_coalesced_delay_6_b;
    wire [18:0] sel_for_coalesced_delay_6_c;
    wire [43:0] join_for_coalesced_delay_7_q;
    wire [21:0] sel_for_coalesced_delay_7_b;
    wire [21:0] sel_for_coalesced_delay_7_c;
    wire [37:0] join_for_coalesced_delay_8_q;
    wire [18:0] sel_for_coalesced_delay_8_b;
    wire [18:0] sel_for_coalesced_delay_8_c;
    wire [43:0] join_for_coalesced_delay_9_q;
    wire [21:0] sel_for_coalesced_delay_9_b;
    wire [21:0] sel_for_coalesced_delay_9_c;
    wire [37:0] join_for_coalesced_delay_10_q;
    wire [18:0] sel_for_coalesced_delay_10_b;
    wire [18:0] sel_for_coalesced_delay_10_c;
    wire [43:0] join_for_coalesced_delay_11_q;
    wire [21:0] sel_for_coalesced_delay_11_b;
    wire [21:0] sel_for_coalesced_delay_11_c;
    wire [35:0] join_for_coalesced_delay_12_q;
    wire [17:0] sel_for_coalesced_delay_12_b;
    wire [17:0] sel_for_coalesced_delay_12_c;
    wire [39:0] join_for_coalesced_delay_13_q;
    wire [19:0] sel_for_coalesced_delay_13_b;
    wire [19:0] sel_for_coalesced_delay_13_c;
    reg [1:0] redist0_lowRangeB_uid782_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b_1_0_q;
    reg [1:0] redist1_lowRangeB_uid724_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b_1_0_q;
    reg [1:0] redist2_lowRangeB_uid666_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b_1_0_q;
    reg [1:0] redist3_lowRangeB_uid608_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b_1_0_q;
    reg [1:0] redist4_lowRangeB_uid2718_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b_1_0_q;
    reg [1:0] redist5_lowRangeB_uid2660_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b_1_0_q;
    reg [1:0] redist6_lowRangeB_uid2602_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b_1_0_q;
    reg [1:0] redist7_lowRangeB_uid2544_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b_1_0_q;
    reg [1:0] redist8_lowRangeB_uid1266_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b_1_0_q;
    reg [1:0] redist9_lowRangeB_uid1208_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b_1_0_q;
    reg [1:0] redist10_lowRangeB_uid1150_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b_1_0_q;
    reg [1:0] redist11_lowRangeB_uid1092_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b_1_0_q;
    reg [12:0] redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_q;
    reg [51:0] redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_q;
    reg [12:0] redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_q;
    reg [51:0] redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_q;
    reg [51:0] redist41_i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_q;
    reg [51:0] redist43_i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_q;
    reg [51:0] redist45_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_q;
    reg [14:0] redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_q;
    reg [22:0] redist47_sR_bottomRange_uid979_i_arrayidx10_avgpooling20_mult_x_im6_b_1_0_q;
    reg [22:0] redist48_sR_bottomRange_uid910_i_arrayidx10_avgpooling20_mult_x_im3_b_1_0_q;
    reg [22:0] redist49_sR_bottomRange_uid841_i_arrayidx10_avgpooling20_mult_x_im0_b_1_0_q;
    reg [0:0] redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_q;
    wire [0:0] redist51_i_masked_avgpooling257_q_136_fifo_valid_in;
    wire redist51_i_masked_avgpooling257_q_136_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist51_i_masked_avgpooling257_q_136_fifo_stall_in;
    wire redist51_i_masked_avgpooling257_q_136_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist51_i_masked_avgpooling257_q_136_fifo_data_in;
    wire [0:0] redist51_i_masked_avgpooling257_q_136_fifo_valid_out;
    wire redist51_i_masked_avgpooling257_q_136_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist51_i_masked_avgpooling257_q_136_fifo_stall_out;
    wire redist51_i_masked_avgpooling257_q_136_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist51_i_masked_avgpooling257_q_136_fifo_data_out;
    reg [31:0] redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_0_q;
    reg [31:0] redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_1_q;
    reg [31:0] redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_2_q;
    reg [31:0] redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_3_q;
    reg [31:0] redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_q;
    reg [31:0] redist53_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out_3_0_q;
    reg [31:0] redist53_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out_3_1_q;
    reg [31:0] redist53_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out_3_2_q;
    wire [0:0] redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_valid_in;
    wire redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_stall_in;
    wire redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_data_in;
    wire [0:0] redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_valid_out;
    wire redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_stall_out;
    wire redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_data_out;
    wire [0:0] redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_valid_in;
    wire redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_stall_in;
    wire redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_data_in;
    wire [0:0] redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_valid_out;
    wire redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_stall_out;
    wire redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_data_out;
    reg [0:0] redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_q;
    reg [0:0] redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_q;
    wire [0:0] redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_valid_in;
    wire redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_stall_in;
    wire redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_data_in;
    wire [0:0] redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_valid_out;
    wire redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_stall_out;
    wire redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_data_out;
    reg [0:0] redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_q;
    reg [0:0] redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_q;
    reg [0:0] redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_q;
    reg [0:0] redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_q;
    reg [0:0] redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_q;
    reg [0:0] redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_q;
    reg [0:0] redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_q;
    reg [0:0] redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_q;
    reg [0:0] redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_q;
    wire [0:0] redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_in;
    wire redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_in;
    wire redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_data_in;
    wire [0:0] redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_out;
    wire redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_out;
    wire redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_data_out;
    reg [0:0] redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_q;
    reg [0:0] redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q;
    wire [0:0] redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_valid_in;
    wire redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_stall_in;
    wire redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_data_in;
    wire [0:0] redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_valid_out;
    wire redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_stall_out;
    wire redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_data_out;
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
    reg [63:0] coalesced_delay_2_0_q;
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
    reg [37:0] coalesced_delay_4_0_q;
    reg [43:0] coalesced_delay_5_0_q;
    reg [37:0] coalesced_delay_6_0_q;
    reg [43:0] coalesced_delay_7_0_q;
    reg [37:0] coalesced_delay_8_0_q;
    reg [43:0] coalesced_delay_9_0_q;
    reg [37:0] coalesced_delay_10_0_q;
    reg [43:0] coalesced_delay_11_0_q;
    reg [35:0] coalesced_delay_12_0_q;
    reg [39:0] coalesced_delay_13_0_q;
    wire [70:0] bubble_join_avgpooling2_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_avgpooling2_B4_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_avgpooling2_B4_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_avgpooling2_B4_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_avgpooling2_B4_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_avgpooling2_B4_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_avgpooling2_B4_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_avgpooling2_B4_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_avgpooling2_B4_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_avgpooling2_B4_merge_reg_aunroll_x_j;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_b;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_body6_avgpooling2s_c0_enter9112_avgpooling268_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_avgpooling2s_c0_enter9112_avgpooling268_aunroll_x_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_avgpooling270_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_avgpooling270_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_avgpooling23_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling23_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_b;
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
    wire [0:0] bubble_join_redist51_i_masked_avgpooling257_q_136_fifo_q;
    wire [0:0] bubble_select_redist51_i_masked_avgpooling257_q_136_fifo_b;
    wire [0:0] bubble_join_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_q;
    wire [0:0] bubble_select_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_b;
    wire [0:0] bubble_join_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_q;
    wire [0:0] bubble_select_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_b;
    wire [0:0] bubble_join_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_q;
    wire [0:0] bubble_select_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_b;
    wire [0:0] bubble_join_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_q;
    wire [0:0] bubble_select_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_b;
    wire [31:0] bubble_join_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_q;
    wire [31:0] bubble_select_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_b;
    wire [32:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [32:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [3:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [3:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [64:0] bubble_join_coalesced_delay_3_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_3_fifo_b;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_avgpooling2_B4_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling270_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling270_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling270_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling270_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling270_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling270_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling270_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling270_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling270_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling270_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling270_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling270_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_avgpooling270_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_and2;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg6;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_or4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_or5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_V3;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_avgpooling254_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_avgpooling254_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_or0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_avgpooling248_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_avgpooling248_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push24_avgpooling266_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push24_avgpooling266_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push23_avgpooling242_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push23_avgpooling242_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling246_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling246_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling246_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling246_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_025_push21_avgpooling246_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_025_push21_avgpooling246_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_backStall;
    reg [0:0] SE_i_masked_avgpooling257_R_v_0;
    wire [0:0] SE_i_masked_avgpooling257_v_s_0;
    wire [0:0] SE_i_masked_avgpooling257_s_tv_0;
    wire [0:0] SE_i_masked_avgpooling257_backEN;
    wire [0:0] SE_i_masked_avgpooling257_backStall;
    wire [0:0] SE_i_masked_avgpooling257_V0;
    wire [0:0] SE_i_next_initerations_avgpooling220_vt_select_0_wireValid;
    wire [0:0] SE_i_next_initerations_avgpooling220_vt_select_0_wireStall;
    wire [0:0] SE_i_next_initerations_avgpooling220_vt_select_0_StallValid;
    wire [0:0] SE_i_next_initerations_avgpooling220_vt_select_0_toReg0;
    reg [0:0] SE_i_next_initerations_avgpooling220_vt_select_0_fromReg0;
    wire [0:0] SE_i_next_initerations_avgpooling220_vt_select_0_consumed0;
    wire [0:0] SE_i_next_initerations_avgpooling220_vt_select_0_toReg1;
    reg [0:0] SE_i_next_initerations_avgpooling220_vt_select_0_fromReg1;
    wire [0:0] SE_i_next_initerations_avgpooling220_vt_select_0_consumed1;
    wire [0:0] SE_i_next_initerations_avgpooling220_vt_select_0_or0;
    wire [0:0] SE_i_next_initerations_avgpooling220_vt_select_0_backStall;
    wire [0:0] SE_i_next_initerations_avgpooling220_vt_select_0_V0;
    wire [0:0] SE_i_next_initerations_avgpooling220_vt_select_0_V1;
    reg [0:0] SE_i_reduction_avgpooling2_0_avgpooling240_R_v_0;
    wire [0:0] SE_i_reduction_avgpooling2_0_avgpooling240_v_s_0;
    wire [0:0] SE_i_reduction_avgpooling2_0_avgpooling240_s_tv_0;
    wire [0:0] SE_i_reduction_avgpooling2_0_avgpooling240_backEN;
    wire [0:0] SE_i_reduction_avgpooling2_0_avgpooling240_and0;
    wire [0:0] SE_i_reduction_avgpooling2_0_avgpooling240_backStall;
    wire [0:0] SE_i_reduction_avgpooling2_0_avgpooling240_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_wireValid;
    wire [0:0] SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_backStall;
    wire [0:0] SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_V0;
    reg [0:0] SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_R_v_0;
    wire [0:0] SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_v_s_0;
    wire [0:0] SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_s_tv_0;
    wire [0:0] SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN;
    wire [0:0] SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backStall;
    wire [0:0] SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_V0;
    reg [0:0] SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_R_v_0;
    wire [0:0] SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_v_s_0;
    wire [0:0] SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_s_tv_0;
    wire [0:0] SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_backEN;
    wire [0:0] SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_backStall;
    wire [0:0] SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_V0;
    reg [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_and1;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_V1;
    reg [0:0] SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_V0;
    reg [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    reg [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or1;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V1;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V2;
    reg [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    reg [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or1;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V1;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V2;
    reg [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    reg [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_or0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_or1;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_V0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_V1;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_V2;
    reg [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    reg [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    reg [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_backEN;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_or0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_or1;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_V0;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_V1;
    wire [0:0] SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_V2;
    wire [0:0] SE_i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel1_0_V0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V0;
    wire [0:0] SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V1;
    reg [0:0] SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_R_v_0;
    wire [0:0] SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_v_s_0;
    wire [0:0] SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_s_tv_0;
    wire [0:0] SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_backEN;
    wire [0:0] SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_backStall;
    wire [0:0] SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_V0;
    reg [0:0] SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_R_v_0;
    wire [0:0] SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_v_s_0;
    wire [0:0] SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_s_tv_0;
    wire [0:0] SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_backEN;
    wire [0:0] SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_backStall;
    wire [0:0] SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_V0;
    reg [0:0] SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_R_v_0;
    wire [0:0] SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_v_s_0;
    wire [0:0] SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_s_tv_0;
    wire [0:0] SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_backEN;
    wire [0:0] SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_backStall;
    wire [0:0] SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_V0;
    reg [0:0] SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_R_v_0;
    wire [0:0] SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_v_s_0;
    wire [0:0] SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_s_tv_0;
    wire [0:0] SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_backEN;
    wire [0:0] SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_backStall;
    wire [0:0] SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_V0;
    wire [0:0] SE_in_redist51_i_masked_avgpooling257_q_136_fifo_wireValid;
    wire [0:0] SE_in_redist51_i_masked_avgpooling257_q_136_fifo_backStall;
    wire [0:0] SE_in_redist51_i_masked_avgpooling257_q_136_fifo_V0;
    reg [0:0] SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_R_v_0;
    wire [0:0] SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_v_s_0;
    wire [0:0] SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_s_tv_0;
    wire [0:0] SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_backEN;
    wire [0:0] SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_backStall;
    wire [0:0] SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_V0;
    wire [0:0] SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_wireValid;
    wire [0:0] SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_wireStall;
    wire [0:0] SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_StallValid;
    wire [0:0] SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_toReg0;
    reg [0:0] SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_fromReg0;
    wire [0:0] SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_consumed0;
    wire [0:0] SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_toReg1;
    reg [0:0] SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_fromReg1;
    wire [0:0] SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_consumed1;
    wire [0:0] SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_or0;
    wire [0:0] SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_backStall;
    wire [0:0] SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_V0;
    wire [0:0] SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_V1;
    wire [0:0] SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_wireValid;
    wire [0:0] SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_wireStall;
    wire [0:0] SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_StallValid;
    wire [0:0] SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_toReg0;
    reg [0:0] SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_fromReg0;
    wire [0:0] SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_consumed0;
    wire [0:0] SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_toReg1;
    reg [0:0] SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_fromReg1;
    wire [0:0] SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_consumed1;
    wire [0:0] SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_or0;
    wire [0:0] SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_backStall;
    wire [0:0] SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_V0;
    wire [0:0] SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_V1;
    reg [0:0] SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_R_v_0;
    wire [0:0] SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_v_s_0;
    wire [0:0] SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_s_tv_0;
    wire [0:0] SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_backEN;
    wire [0:0] SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_backStall;
    wire [0:0] SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_V0;
    reg [0:0] SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_0;
    reg [0:0] SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_1;
    reg [0:0] SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_2;
    wire [0:0] SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_v_s_0;
    wire [0:0] SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_s_tv_0;
    wire [0:0] SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_s_tv_1;
    wire [0:0] SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_s_tv_2;
    wire [0:0] SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_backEN;
    wire [0:0] SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_or0;
    wire [0:0] SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_or1;
    wire [0:0] SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_backStall;
    wire [0:0] SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_V0;
    wire [0:0] SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_V1;
    wire [0:0] SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_V2;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_wireValid;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_wireStall;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_StallValid;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_toReg0;
    reg [0:0] SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_fromReg0;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_consumed0;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_toReg1;
    reg [0:0] SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_fromReg1;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_consumed1;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_or0;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_backStall;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_V0;
    wire [0:0] SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_V1;
    reg [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_R_v_0;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_v_s_0;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_s_tv_0;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_backEN;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_backStall;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_V0;
    reg [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_0;
    reg [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_1;
    reg [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_2;
    reg [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_3;
    reg [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_4;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_v_s_0;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_s_tv_0;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_s_tv_1;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_s_tv_2;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_s_tv_3;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_s_tv_4;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_backEN;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_or0;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_or1;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_or2;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_or3;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_backStall;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_V0;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_V1;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_V2;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_V3;
    wire [0:0] SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_V4;
    reg [0:0] SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_R_v_0;
    wire [0:0] SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_v_s_0;
    wire [0:0] SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_s_tv_0;
    wire [0:0] SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_backEN;
    wire [0:0] SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_backStall;
    wire [0:0] SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_V0;
    reg [0:0] SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_R_v_0;
    reg [0:0] SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_R_v_1;
    wire [0:0] SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_v_s_0;
    wire [0:0] SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_s_tv_0;
    wire [0:0] SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_s_tv_1;
    wire [0:0] SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_backEN;
    wire [0:0] SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_or0;
    wire [0:0] SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_backStall;
    wire [0:0] SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_V0;
    wire [0:0] SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_V1;
    reg [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_R_v_0;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_v_s_0;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_s_tv_0;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_backEN;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_backStall;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_V0;
    reg [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_R_v_0;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_v_s_0;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_s_tv_0;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_backEN;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_backStall;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_V0;
    reg [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_0;
    reg [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_1;
    reg [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_2;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_v_s_0;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_s_tv_0;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_s_tv_1;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_s_tv_2;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_backEN;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_or0;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_or1;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_backStall;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_V0;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_V1;
    wire [0:0] SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_V2;
    reg [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_R_v_0;
    wire [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_v_s_0;
    wire [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_s_tv_0;
    wire [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backEN;
    wire [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backStall;
    wire [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_V0;
    reg [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_0;
    reg [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_1;
    reg [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_2;
    reg [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_3;
    wire [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_v_s_0;
    wire [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_0;
    wire [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_1;
    wire [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_2;
    wire [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_3;
    wire [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backEN;
    wire [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_or0;
    wire [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_or1;
    wire [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_or2;
    wire [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backStall;
    wire [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V0;
    wire [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V1;
    wire [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V2;
    wire [0:0] SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V3;
    wire [0:0] SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_wireValid;
    wire [0:0] SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_wireStall;
    wire [0:0] SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_StallValid;
    wire [0:0] SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_toReg0;
    reg [0:0] SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_fromReg0;
    wire [0:0] SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_consumed0;
    wire [0:0] SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_toReg1;
    reg [0:0] SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_fromReg1;
    wire [0:0] SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_consumed1;
    wire [0:0] SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_or0;
    wire [0:0] SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_backStall;
    wire [0:0] SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_V0;
    wire [0:0] SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_V1;
    reg [0:0] SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_R_v_0;
    wire [0:0] SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_v_s_0;
    wire [0:0] SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_s_tv_0;
    wire [0:0] SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backEN;
    wire [0:0] SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backStall;
    wire [0:0] SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_V0;
    reg [0:0] SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_R_v_0;
    wire [0:0] SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_v_s_0;
    wire [0:0] SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_s_tv_0;
    wire [0:0] SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backEN;
    wire [0:0] SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backStall;
    wire [0:0] SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_V0;
    wire [0:0] SE_out_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_wireValid;
    wire [0:0] SE_out_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_and0;
    wire [0:0] SE_out_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_backStall;
    wire [0:0] SE_out_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_V0;
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
    wire [0:0] SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and7;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_V0;
    wire [0:0] bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_stall_out_bitsignaltemp;
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
    wire [0:0] SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_i_valid;
    reg [0:0] SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_r_valid;
    reg [0:0] SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_r_data0;
    wire [0:0] SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_backStall;
    wire [0:0] SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_V;
    wire [0:0] SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_D0;
    wire [0:0] SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_i_valid;
    reg [0:0] SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_r_valid;
    reg [0:0] SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_r_data0;
    wire [0:0] SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_backStall;
    wire [0:0] SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_V;
    wire [0:0] SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_D0;
    wire [0:0] SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_i_valid;
    reg [0:0] SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_r_valid;
    reg [0:0] SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_r_data0;
    wire [0:0] SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_backStall;
    wire [0:0] SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_V;
    wire [0:0] SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_D0;
    wire [0:0] SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_i_valid;
    reg [0:0] SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_r_valid;
    reg [0:0] SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_r_data0;
    wire [0:0] SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_backStall;
    wire [0:0] SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_V;
    wire [0:0] SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_D0;
    wire [0:0] SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_i_valid;
    reg [0:0] SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_r_valid;
    reg [0:0] SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_r_data0;
    wire [0:0] SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_backStall;
    wire [0:0] SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_V;
    wire [0:0] SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_D0;
    wire [0:0] SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_i_valid;
    reg [0:0] SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_valid;
    reg [0:0] SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_data0;
    wire [0:0] SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backStall;
    wire [0:0] SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_V;
    wire [0:0] SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_D0;
    wire [0:0] SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_i_valid;
    reg [0:0] SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_valid;
    reg [0:0] SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_data0;
    wire [0:0] SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backStall;
    wire [0:0] SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V;
    wire [0:0] SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_D0;
    wire [0:0] SR_SE_i_masked_avgpooling257_i_valid;
    reg [0:0] SR_SE_i_masked_avgpooling257_r_valid;
    wire [0:0] SR_SE_i_masked_avgpooling257_and0;
    reg [0:0] SR_SE_i_masked_avgpooling257_r_data0;
    reg [0:0] SR_SE_i_masked_avgpooling257_r_data1;
    wire [0:0] SR_SE_i_masked_avgpooling257_backStall;
    wire [0:0] SR_SE_i_masked_avgpooling257_V;
    wire [0:0] SR_SE_i_masked_avgpooling257_D0;
    wire [0:0] SR_SE_i_masked_avgpooling257_D1;
    wire [0:0] SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_i_valid;
    reg [0:0] SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_valid;
    reg [0:0] SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_data0;
    wire [0:0] SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backStall;
    wire [0:0] SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_V;
    wire [0:0] SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_D0;
    wire [0:0] SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_i_valid;
    reg [0:0] SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_valid;
    reg [0:0] SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_data0;
    wire [0:0] SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backStall;
    wire [0:0] SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_V;
    wire [0:0] SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_D0;
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
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data1;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data2;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data3;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data4;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data5;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data6;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data7;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data8;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data9;
    reg [31:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data10;
    reg [43:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data11;
    reg [43:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data12;
    reg [43:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data13;
    reg [43:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data14;
    reg [39:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data15;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D1;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D2;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D3;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D4;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D5;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D6;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D7;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D8;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D9;
    wire [31:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D10;
    wire [43:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D11;
    wire [43:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D12;
    wire [43:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D13;
    wire [43:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D14;
    wire [39:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D15;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data1;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data2;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data3;
    reg [37:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data4;
    reg [37:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data5;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data6;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data7;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data8;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data9;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data10;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data11;
    reg [35:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data12;
    reg [31:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data13;
    reg [37:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data14;
    reg [37:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data15;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D1;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D2;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D3;
    wire [37:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D4;
    wire [37:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D5;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D6;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D7;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D8;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D9;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D10;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D11;
    wire [35:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D12;
    wire [31:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D13;
    wire [37:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D14;
    wire [37:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D15;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid;
    reg [21:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data0;
    reg [21:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data2;
    reg [21:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data3;
    reg [21:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data4;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data5;
    reg [21:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data6;
    reg [21:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data7;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data8;
    reg [21:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data9;
    reg [21:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data10;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data11;
    reg [19:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data12;
    reg [19:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data13;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data14;
    reg [31:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data15;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_V;
    wire [21:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D0;
    wire [21:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D2;
    wire [21:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D3;
    wire [21:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D4;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D5;
    wire [21:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D6;
    wire [21:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D7;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D8;
    wire [21:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D9;
    wire [21:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D10;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D11;
    wire [19:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D12;
    wire [19:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D13;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D14;
    wire [31:0] SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D15;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid;
    reg [18:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data0;
    reg [18:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data2;
    reg [18:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data3;
    reg [18:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data4;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data5;
    reg [18:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data6;
    reg [18:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data7;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data8;
    reg [18:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data9;
    reg [18:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data10;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data11;
    reg [17:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data12;
    reg [17:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data13;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data14;
    reg [31:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data15;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V;
    wire [18:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D0;
    wire [18:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D2;
    wire [18:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D3;
    wire [18:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D4;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D5;
    wire [18:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D6;
    wire [18:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D7;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D8;
    wire [18:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D9;
    wire [18:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D10;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D11;
    wire [17:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D12;
    wire [17:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D13;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D14;
    wire [31:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D15;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_i_valid;
    reg [0:0] SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_r_valid;
    reg [0:0] SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_r_data0;
    wire [0:0] SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_backStall;
    wire [0:0] SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_V;
    wire [0:0] SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_D0;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data1;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data2;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data3;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data4;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data5;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data6;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data7;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D1;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D2;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D3;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D4;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D5;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D6;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D7;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data1;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data2;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data3;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data4;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data5;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data6;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data7;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D1;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D2;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D3;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D4;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D5;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D6;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D7;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_and0;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data0;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data1;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data2;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data3;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data4;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data5;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data6;
    reg [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data7;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_V;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D0;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D1;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D2;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D3;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D4;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D5;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D6;
    wire [51:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D7;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data1;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data2;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data3;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data4;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data5;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data6;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data7;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data8;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data9;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data10;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data11;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D1;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D2;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D3;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D4;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D5;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D6;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D7;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D8;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D9;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D10;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D11;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data2;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data3;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data4;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data5;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data6;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data7;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data8;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data9;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data10;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data11;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D2;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D3;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D4;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D5;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D6;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D7;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D8;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D9;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D10;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D11;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_and1;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data0;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data1;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data2;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data3;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data4;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data5;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data6;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data7;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data8;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data9;
    reg [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data10;
    reg [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data11;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_V;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D0;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D1;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D2;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D3;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D4;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D5;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D6;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D7;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D8;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D9;
    wire [12:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D10;
    wire [0:0] SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D11;
    wire [0:0] SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid;
    reg [51:0] SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_data0;
    reg [51:0] SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_data1;
    reg [51:0] SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_data2;
    reg [51:0] SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_data3;
    wire [0:0] SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_V;
    wire [51:0] SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_D0;
    wire [51:0] SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_D1;
    wire [51:0] SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_D2;
    wire [51:0] SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_D3;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_i_valid;
    reg [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_valid;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_and0;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_and1;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_and2;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_and3;
    reg [63:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data0;
    reg [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data1;
    reg [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data2;
    reg [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data3;
    reg [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data4;
    reg [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data5;
    reg [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data6;
    reg [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data7;
    reg [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data8;
    reg [63:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data9;
    reg [63:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data10;
    reg [63:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data11;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_backStall;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_V;
    wire [63:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D0;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D1;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D2;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D3;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D4;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D5;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D6;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D7;
    wire [0:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D8;
    wire [63:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D9;
    wire [63:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D10;
    wire [63:0] SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D11;
    wire [0:0] SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_i_valid;
    reg [0:0] SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_r_valid;
    reg [0:0] SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_r_data0;
    wire [0:0] SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_backStall;
    wire [0:0] SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_V;
    wire [0:0] SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_D0;
    wire [0:0] SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_i_valid;
    reg [0:0] SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_r_valid;
    reg [0:0] SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_r_data0;
    wire [0:0] SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_backStall;
    wire [0:0] SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_V;
    wire [0:0] SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_D0;
    wire [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_i_valid;
    reg [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_r_valid;
    reg [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_r_data0;
    wire [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_backStall;
    wire [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_V;
    wire [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_D0;
    wire [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_i_valid;
    reg [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_r_valid;
    reg [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_r_data0;
    wire [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_backStall;
    wire [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_V;
    wire [0:0] SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_D1;
    wire [0:0] SR_SE_i_next_initerations_avgpooling220_vt_select_0_i_valid;
    reg [0:0] SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_valid;
    wire [0:0] SR_SE_i_next_initerations_avgpooling220_vt_select_0_and0;
    reg [0:0] SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_data0;
    reg [0:0] SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_data1;
    reg [0:0] SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_data2;
    reg [1:0] SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_data3;
    wire [0:0] SR_SE_i_next_initerations_avgpooling220_vt_select_0_backStall;
    wire [0:0] SR_SE_i_next_initerations_avgpooling220_vt_select_0_V;
    wire [0:0] SR_SE_i_next_initerations_avgpooling220_vt_select_0_D0;
    wire [0:0] SR_SE_i_next_initerations_avgpooling220_vt_select_0_D1;
    wire [0:0] SR_SE_i_next_initerations_avgpooling220_vt_select_0_D2;
    wire [1:0] SR_SE_i_next_initerations_avgpooling220_vt_select_0_D3;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_D1;
    wire [0:0] SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_i_valid;
    reg [0:0] SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_r_valid;
    wire [0:0] SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_and0;
    wire [0:0] SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_and1;
    reg [1:0] SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_r_data0;
    reg [0:0] SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_r_data1;
    wire [0:0] SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_backStall;
    wire [0:0] SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_V;
    wire [1:0] SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_D0;
    wire [0:0] SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_and0;
    reg [31:0] SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_V;
    wire [31:0] SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_D1;
    wire [0:0] SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_i_valid;
    reg [0:0] SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_r_valid;
    reg [31:0] SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_r_data0;
    wire [0:0] SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_backStall;
    wire [0:0] SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_V;
    wire [31:0] SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_and0;
    reg [3:0] SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_V;
    wire [3:0] SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_D1;


    // i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265(BLACKBOX,247)@140
    // in in_i_stall@20000000
    // out out_o_readdata@172
    // out out_o_stall@20000000
    // out out_o_valid@172
    // out out_unnamed_avgpooling29_avgpooling2_avm_address@20000000
    // out out_unnamed_avgpooling29_avgpooling2_avm_burstcount@20000000
    // out out_unnamed_avgpooling29_avgpooling2_avm_byteenable@20000000
    // out out_unnamed_avgpooling29_avgpooling2_avm_enable@20000000
    // out out_unnamed_avgpooling29_avgpooling2_avm_read@20000000
    // out out_unnamed_avgpooling29_avgpooling2_avm_write@20000000
    // out out_unnamed_avgpooling29_avgpooling2_avm_writedata@20000000
    avgpooling2_i_llvm_fpga_mem_unnamed_9_avgpooling20 thei_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D11),
        .in_i_dependence(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D4),
        .in_i_predicate(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D8),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_V3),
        .in_unnamed_avgpooling29_avgpooling2_avm_readdata(in_unnamed_avgpooling29_avgpooling2_avm_readdata),
        .in_unnamed_avgpooling29_avgpooling2_avm_readdatavalid(in_unnamed_avgpooling29_avgpooling2_avm_readdatavalid),
        .in_unnamed_avgpooling29_avgpooling2_avm_waitrequest(in_unnamed_avgpooling29_avgpooling2_avm_waitrequest),
        .in_unnamed_avgpooling29_avgpooling2_avm_writeack(in_unnamed_avgpooling29_avgpooling2_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_o_valid),
        .out_unnamed_avgpooling29_avgpooling2_avm_address(i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_address),
        .out_unnamed_avgpooling29_avgpooling2_avm_burstcount(i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_burstcount),
        .out_unnamed_avgpooling29_avgpooling2_avm_byteenable(i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_byteenable),
        .out_unnamed_avgpooling29_avgpooling2_avm_enable(i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_enable),
        .out_unnamed_avgpooling29_avgpooling2_avm_read(i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_read),
        .out_unnamed_avgpooling29_avgpooling2_avm_write(i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_write),
        .out_unnamed_avgpooling29_avgpooling2_avm_writedata(i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264(BLACKBOX,246)@140
    // in in_i_stall@20000000
    // out out_o_readdata@172
    // out out_o_stall@20000000
    // out out_o_valid@172
    // out out_unnamed_avgpooling28_avgpooling2_avm_address@20000000
    // out out_unnamed_avgpooling28_avgpooling2_avm_burstcount@20000000
    // out out_unnamed_avgpooling28_avgpooling2_avm_byteenable@20000000
    // out out_unnamed_avgpooling28_avgpooling2_avm_enable@20000000
    // out out_unnamed_avgpooling28_avgpooling2_avm_read@20000000
    // out out_unnamed_avgpooling28_avgpooling2_avm_write@20000000
    // out out_unnamed_avgpooling28_avgpooling2_avm_writedata@20000000
    avgpooling2_i_llvm_fpga_mem_unnamed_8_avgpooling20 thei_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D10),
        .in_i_dependence(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D3),
        .in_i_predicate(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D7),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_V2),
        .in_unnamed_avgpooling28_avgpooling2_avm_readdata(in_unnamed_avgpooling28_avgpooling2_avm_readdata),
        .in_unnamed_avgpooling28_avgpooling2_avm_readdatavalid(in_unnamed_avgpooling28_avgpooling2_avm_readdatavalid),
        .in_unnamed_avgpooling28_avgpooling2_avm_waitrequest(in_unnamed_avgpooling28_avgpooling2_avm_waitrequest),
        .in_unnamed_avgpooling28_avgpooling2_avm_writeack(in_unnamed_avgpooling28_avgpooling2_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_o_valid),
        .out_unnamed_avgpooling28_avgpooling2_avm_address(i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_address),
        .out_unnamed_avgpooling28_avgpooling2_avm_burstcount(i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_burstcount),
        .out_unnamed_avgpooling28_avgpooling2_avm_byteenable(i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_byteenable),
        .out_unnamed_avgpooling28_avgpooling2_avm_enable(i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_enable),
        .out_unnamed_avgpooling28_avgpooling2_avm_read(i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_read),
        .out_unnamed_avgpooling28_avgpooling2_avm_write(i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_write),
        .out_unnamed_avgpooling28_avgpooling2_avm_writedata(i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262(BLACKBOX,245)@140
    // in in_i_stall@20000000
    // out out_o_readdata@172
    // out out_o_stall@20000000
    // out out_o_valid@172
    // out out_unnamed_avgpooling27_avgpooling2_avm_address@20000000
    // out out_unnamed_avgpooling27_avgpooling2_avm_burstcount@20000000
    // out out_unnamed_avgpooling27_avgpooling2_avm_byteenable@20000000
    // out out_unnamed_avgpooling27_avgpooling2_avm_enable@20000000
    // out out_unnamed_avgpooling27_avgpooling2_avm_read@20000000
    // out out_unnamed_avgpooling27_avgpooling2_avm_write@20000000
    // out out_unnamed_avgpooling27_avgpooling2_avm_writedata@20000000
    avgpooling2_i_llvm_fpga_mem_unnamed_7_avgpooling20 thei_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D9),
        .in_i_dependence(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D2),
        .in_i_predicate(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D6),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_V1),
        .in_unnamed_avgpooling27_avgpooling2_avm_readdata(in_unnamed_avgpooling27_avgpooling2_avm_readdata),
        .in_unnamed_avgpooling27_avgpooling2_avm_readdatavalid(in_unnamed_avgpooling27_avgpooling2_avm_readdatavalid),
        .in_unnamed_avgpooling27_avgpooling2_avm_waitrequest(in_unnamed_avgpooling27_avgpooling2_avm_waitrequest),
        .in_unnamed_avgpooling27_avgpooling2_avm_writeack(in_unnamed_avgpooling27_avgpooling2_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_o_valid),
        .out_unnamed_avgpooling27_avgpooling2_avm_address(i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_address),
        .out_unnamed_avgpooling27_avgpooling2_avm_burstcount(i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_burstcount),
        .out_unnamed_avgpooling27_avgpooling2_avm_byteenable(i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_byteenable),
        .out_unnamed_avgpooling27_avgpooling2_avm_enable(i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_enable),
        .out_unnamed_avgpooling27_avgpooling2_avm_read(i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_read),
        .out_unnamed_avgpooling27_avgpooling2_avm_write(i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_write),
        .out_unnamed_avgpooling27_avgpooling2_avm_writedata(i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26(STALLENABLE,3758)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_fromReg2 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_fromReg3 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_consumed0 = (~ (i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_o_stall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_consumed1 = (~ (i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_o_stall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_consumed2 = (~ (i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_o_stall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_consumed3 = (~ (i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_o_stall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_consumed1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_toReg2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_consumed2;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_toReg3 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_or1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_or0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_or2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_consumed2 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_or1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_consumed3 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_or2);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_V2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_V3 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_wireValid = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_V;

    // bubble_join_i_sfc_s_c0_in_for_body6_avgpooling2s_c0_enter9112_avgpooling268_aunroll_x(BITJOIN,3587)
    assign bubble_join_i_sfc_s_c0_in_for_body6_avgpooling2s_c0_enter9112_avgpooling268_aunroll_x_q = i_sfc_s_c0_in_for_body6_avgpooling2s_c0_enter9112_avgpooling268_aunroll_x_out_c0_exit97_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_body6_avgpooling2s_c0_enter9112_avgpooling268_aunroll_x(BITSELECT,3588)
    assign bubble_select_i_sfc_s_c0_in_for_body6_avgpooling2s_c0_enter9112_avgpooling268_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_avgpooling2s_c0_enter9112_avgpooling268_aunroll_x_q[31:0]);

    // join_for_coalesced_delay_10(BITJOIN,3499)
    assign join_for_coalesced_delay_10_q = {i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c, i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c};

    // join_for_coalesced_delay_6(BITJOIN,3487)
    assign join_for_coalesced_delay_6_q = {i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c, i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c};

    // redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0(REG,3552)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_backEN == 1'b1)
        begin
            redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_q <= $unsigned(SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_D0);
        end
    end

    // SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1(STALLENABLE,4203)
    // Valid signal propagation
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_V0 = SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_R_v_0;
    // Stall signal propagation
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_s_tv_0 = SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_backStall & SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_R_v_0;
    // Backward Enable generation
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_backEN = ~ (SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_v_s_0 = SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_backEN & SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_V;
    // Backward Stall generation
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_backStall = ~ (SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_backEN == 1'b0)
            begin
                SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_R_v_0 <= SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_R_v_0 & SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_s_tv_0;
            end
            else
            begin
                SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_R_v_0 <= SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_v_s_0;
            end

        end
    end

    // SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1(STALLREG,4393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_r_valid <= 1'b0;
            SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_r_valid <= SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_backStall & (SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_r_valid | SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_i_valid);

            if (SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_r_data0 <= $unsigned(redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_i_valid = SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_V0;
    // Stall signal propagation
    assign SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_backStall = SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_r_valid | ~ (SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_i_valid);

    // Valid
    assign SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_V = SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_r_valid == 1'b1 ? SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_r_valid : SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_i_valid;

    assign SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_D0 = SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_r_valid == 1'b1 ? SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_r_data0 : redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_q;

    // SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0(STALLENABLE,4202)
    // Valid signal propagation
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_V0 = SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_R_v_0;
    // Stall signal propagation
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_s_tv_0 = SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_backStall & SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_R_v_0;
    // Backward Enable generation
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_backEN = ~ (SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_v_s_0 = SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_backEN & SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_V;
    // Backward Stall generation
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_backStall = ~ (SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_backEN == 1'b0)
            begin
                SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_R_v_0 <= SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_R_v_0 & SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_s_tv_0;
            end
            else
            begin
                SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_R_v_0 <= SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_v_s_0;
            end

        end
    end

    // SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0(STALLREG,4392)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_r_valid <= 1'b0;
            SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_r_valid <= SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_backStall & (SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_r_valid | SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_i_valid);

            if (SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_r_data0 <= $unsigned(redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_i_valid = SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_V1;
    // Stall signal propagation
    assign SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_backStall = SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_r_valid | ~ (SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_i_valid);

    // Valid
    assign SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_V = SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_r_valid == 1'b1 ? SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_r_valid : SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_i_valid;

    assign SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_D0 = SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_r_valid == 1'b1 ? SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_r_data0 : redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_q;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,3677)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,3678)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[32:0]);

    // sel_for_coalesced_delay_0(BITSELECT,3470)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[32:32]);

    // SE_stall_entry(STALLENABLE,3813)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = avgpooling2_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,3655)
    assign bubble_join_stall_entry_q = {in_notcmp2033_pop1760, in_notcmp1556, in_n_channel_027_pop1135_pop1861, in_memdep_phi2_pop1237_pop1962, in_memdep_phi1_pop1558, in_i_026_pop1457, in_forked, in_exitcond1431_pop1659, in_exitcond1155};

    // bubble_select_stall_entry(BITSELECT,3656)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[36:36]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[68:37]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[69:69]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[70:70]);

    // avgpooling2_B4_merge_reg_aunroll_x(BLACKBOX,2)@0
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
    avgpooling2_B4_merge_reg theavgpooling2_B4_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_d),
        .in_data_in_1_tpl(bubble_select_stall_entry_b),
        .in_data_in_2_tpl(bubble_select_stall_entry_i),
        .in_data_in_3_tpl(bubble_select_stall_entry_e),
        .in_data_in_4_tpl(bubble_select_stall_entry_f),
        .in_data_in_5_tpl(bubble_select_stall_entry_c),
        .in_data_in_6_tpl(bubble_select_stall_entry_j),
        .in_data_in_7_tpl(bubble_select_stall_entry_h),
        .in_data_in_8_tpl(bubble_select_stall_entry_g),
        .in_stall_in(SE_out_avgpooling2_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(avgpooling2_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(avgpooling2_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(avgpooling2_B4_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(avgpooling2_B4_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(avgpooling2_B4_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(avgpooling2_B4_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(avgpooling2_B4_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_stall_out(avgpooling2_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(avgpooling2_B4_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_avgpooling2_B4_merge_reg_aunroll_x(BITJOIN,3576)
    assign bubble_join_avgpooling2_B4_merge_reg_aunroll_x_q = {avgpooling2_B4_merge_reg_aunroll_x_out_data_out_8_tpl, avgpooling2_B4_merge_reg_aunroll_x_out_data_out_7_tpl, avgpooling2_B4_merge_reg_aunroll_x_out_data_out_6_tpl, avgpooling2_B4_merge_reg_aunroll_x_out_data_out_5_tpl, avgpooling2_B4_merge_reg_aunroll_x_out_data_out_4_tpl, avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl, avgpooling2_B4_merge_reg_aunroll_x_out_data_out_2_tpl, avgpooling2_B4_merge_reg_aunroll_x_out_data_out_1_tpl, avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_avgpooling2_B4_merge_reg_aunroll_x(BITSELECT,3577)
    assign bubble_select_avgpooling2_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_avgpooling2_B4_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_avgpooling2_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_avgpooling2_B4_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_avgpooling2_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_avgpooling2_B4_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_avgpooling2_B4_merge_reg_aunroll_x_e = $unsigned(bubble_join_avgpooling2_B4_merge_reg_aunroll_x_q[34:3]);
    assign bubble_select_avgpooling2_B4_merge_reg_aunroll_x_f = $unsigned(bubble_join_avgpooling2_B4_merge_reg_aunroll_x_q[35:35]);
    assign bubble_select_avgpooling2_B4_merge_reg_aunroll_x_g = $unsigned(bubble_join_avgpooling2_B4_merge_reg_aunroll_x_q[36:36]);
    assign bubble_select_avgpooling2_B4_merge_reg_aunroll_x_h = $unsigned(bubble_join_avgpooling2_B4_merge_reg_aunroll_x_q[37:37]);
    assign bubble_select_avgpooling2_B4_merge_reg_aunroll_x_i = $unsigned(bubble_join_avgpooling2_B4_merge_reg_aunroll_x_q[69:38]);
    assign bubble_select_avgpooling2_B4_merge_reg_aunroll_x_j = $unsigned(bubble_join_avgpooling2_B4_merge_reg_aunroll_x_q[70:70]);

    // join_for_coalesced_delay_0(BITJOIN,3469)
    assign join_for_coalesced_delay_0_q = {bubble_select_avgpooling2_B4_merge_reg_aunroll_x_b, bubble_select_avgpooling2_B4_merge_reg_aunroll_x_i};

    // join_for_coalesced_delay_1(BITJOIN,3472)
    assign join_for_coalesced_delay_1_q = {bubble_select_avgpooling2_B4_merge_reg_aunroll_x_h, bubble_select_avgpooling2_B4_merge_reg_aunroll_x_g, bubble_select_avgpooling2_B4_merge_reg_aunroll_x_d, bubble_select_avgpooling2_B4_merge_reg_aunroll_x_c};

    // redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0(REG,3555)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backEN == 1'b1)
        begin
            redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_q <= $unsigned(SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_D0);
        end
    end

    // SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0(STALLENABLE,4205)
    // Valid signal propagation
    assign SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_V0 = SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_R_v_0;
    // Stall signal propagation
    assign SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_s_tv_0 = SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backStall & SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_R_v_0;
    // Backward Enable generation
    assign SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backEN = ~ (SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_v_s_0 = SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backEN & SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_V;
    // Backward Stall generation
    assign SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backStall = ~ (SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backEN == 1'b0)
            begin
                SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_R_v_0 <= SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_R_v_0 & SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_s_tv_0;
            end
            else
            begin
                SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_R_v_0 <= SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_v_s_0;
            end

        end
    end

    // SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1(STALLREG,4396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_valid <= 1'b0;
            SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_valid <= SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backStall & (SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_valid | SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_i_valid);

            if (SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_data0 <= $unsigned(redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_i_valid = SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_V0;
    // Stall signal propagation
    assign SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backStall = SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_valid | ~ (SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_i_valid);

    // Valid
    assign SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V = SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_valid == 1'b1 ? SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_valid : SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_i_valid;

    assign SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_D0 = SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_valid == 1'b1 ? SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_r_data0 : redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_q;

    // redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1(REG,3556)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backEN == 1'b1)
        begin
            redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_q <= $unsigned(SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_D0);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22(BITJOIN,3635)
    assign bubble_join_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_q = i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22(BITSELECT,3636)
    assign bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_q[1:0]);

    // i_first_cleanup_avgpooling218_sel_x(BITSELECT,159)@140
    assign i_first_cleanup_avgpooling218_sel_x_b = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_b[0:0];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bubble_join_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27(BITJOIN,3651)
    assign bubble_join_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_q = i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27(BITSELECT,3652)
    assign bubble_select_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_q[3:0]);

    // i_exitcond_avgpooling225_cmp_nsign(LOGICAL,599)@140
    assign i_exitcond_avgpooling225_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_b[3:3]));

    // i_notcmp_avgpooling247(LOGICAL,282)@140
    assign i_notcmp_avgpooling247_q = i_exitcond_avgpooling225_cmp_nsign_q ^ VCC_q;

    // i_idxprom38_avgpooling250_vt_const_63(CONSTANT,223)
    assign i_idxprom38_avgpooling250_vt_const_63_q = $unsigned(33'b000000000000000000000000000000000);

    // i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(BITSELECT,3379)
    assign i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in = i_idxprom38_avgpooling250_vt_const_63_q[30:0];
    assign i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b = i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[18:0];
    assign i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c = i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[30:19];

    // bubble_join_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25(BITJOIN,3645)
    assign bubble_join_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_q = i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25(BITSELECT,3646)
    assign bubble_select_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_q[31:0]);

    // rightShiftStage0Idx1Rng1_uid585_i_div40_avgpooling20_shift_x(BITSELECT,584)@138
    assign rightShiftStage0Idx1Rng1_uid585_i_div40_avgpooling20_shift_x_b = bubble_select_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_b[31:1];

    // rightShiftStage0Idx1_uid587_i_div40_avgpooling20_shift_x(BITJOIN,586)@138
    assign rightShiftStage0Idx1_uid587_i_div40_avgpooling20_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid585_i_div40_avgpooling20_shift_x_b};

    // rightShiftStage0_uid589_i_div40_avgpooling20_shift_x_BitSelect_for_b(BITSELECT,3250)@138
    assign rightShiftStage0_uid589_i_div40_avgpooling20_shift_x_BitSelect_for_b_b = rightShiftStage0Idx1_uid587_i_div40_avgpooling20_shift_x_q[30:0];

    // rightShiftStage0_uid589_i_div40_avgpooling20_shift_x_BitSelect_for_a(BITSELECT,3251)@138
    assign rightShiftStage0_uid589_i_div40_avgpooling20_shift_x_BitSelect_for_a_b = bubble_select_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_b[30:0];

    // rightShiftStage0_uid589_i_div40_avgpooling20_shift_x_p0(MUX,3252)@138
    assign rightShiftStage0_uid589_i_div40_avgpooling20_shift_x_p0_s = VCC_q;
    always @(rightShiftStage0_uid589_i_div40_avgpooling20_shift_x_p0_s or rightShiftStage0_uid589_i_div40_avgpooling20_shift_x_BitSelect_for_a_b or rightShiftStage0_uid589_i_div40_avgpooling20_shift_x_BitSelect_for_b_b)
    begin
        unique case (rightShiftStage0_uid589_i_div40_avgpooling20_shift_x_p0_s)
            1'b0 : rightShiftStage0_uid589_i_div40_avgpooling20_shift_x_p0_q = rightShiftStage0_uid589_i_div40_avgpooling20_shift_x_BitSelect_for_a_b;
            1'b1 : rightShiftStage0_uid589_i_div40_avgpooling20_shift_x_p0_q = rightShiftStage0_uid589_i_div40_avgpooling20_shift_x_BitSelect_for_b_b;
            default : rightShiftStage0_uid589_i_div40_avgpooling20_shift_x_p0_q = 31'b0;
        endcase
    end

    // i_arrayidx10_avgpooling20_c_i2_03_x(CONSTANT,36)
    assign i_arrayidx10_avgpooling20_c_i2_03_x_q = $unsigned(2'b00);

    // i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,3365)@138
    assign i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b, rightShiftStage0_uid589_i_div40_avgpooling20_shift_x_p0_q, i_arrayidx10_avgpooling20_c_i2_03_x_q};

    // i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(ADD,3233)@136 + 1
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D10};
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D11};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // join_for_coalesced_delay_13(BITJOIN,3508)
    assign join_for_coalesced_delay_13_q = {i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_c, i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_c};

    // join_for_coalesced_delay_11(BITJOIN,3502)
    assign join_for_coalesced_delay_11_q = {i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_c, i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_c};

    // join_for_coalesced_delay_9(BITJOIN,3496)
    assign join_for_coalesced_delay_9_q = {i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_c, i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_c};

    // join_for_coalesced_delay_7(BITJOIN,3490)
    assign join_for_coalesced_delay_7_q = {i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_c, i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_c};

    // join_for_coalesced_delay_5(BITJOIN,3484)
    assign join_for_coalesced_delay_5_q = {i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_c, i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_c};

    // redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_2(REG,3537)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_2_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D10);
        end
    end

    // coalesced_delay_13_0(REG,3574)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_13_0_q <= $unsigned(40'b0000000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            coalesced_delay_13_0_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D15);
        end
    end

    // sel_for_coalesced_delay_13(BITSELECT,3509)
    assign sel_for_coalesced_delay_13_b = $unsigned(coalesced_delay_13_0_q[19:0]);
    assign sel_for_coalesced_delay_13_c = $unsigned(coalesced_delay_13_0_q[39:20]);

    // i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2(ADD,3224)@135 + 1
    assign i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D6};
    assign i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D7};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // coalesced_delay_11_0(REG,3572)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_11_0_q <= $unsigned(44'b00000000000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            coalesced_delay_11_0_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D14);
        end
    end

    // sel_for_coalesced_delay_11(BITSELECT,3503)
    assign sel_for_coalesced_delay_11_b = $unsigned(coalesced_delay_11_0_q[21:0]);
    assign sel_for_coalesced_delay_11_c = $unsigned(coalesced_delay_11_0_q[43:22]);

    // i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2(ADD,3206)@135 + 1
    assign i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D4};
    assign i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D5};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // coalesced_delay_9_0(REG,3570)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_9_0_q <= $unsigned(44'b00000000000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            coalesced_delay_9_0_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D13);
        end
    end

    // sel_for_coalesced_delay_9(BITSELECT,3497)
    assign sel_for_coalesced_delay_9_b = $unsigned(coalesced_delay_9_0_q[21:0]);
    assign sel_for_coalesced_delay_9_c = $unsigned(coalesced_delay_9_0_q[43:22]);

    // i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2(ADD,3188)@135 + 1
    assign i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D2};
    assign i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D3};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // coalesced_delay_7_0(REG,3568)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_7_0_q <= $unsigned(44'b00000000000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            coalesced_delay_7_0_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D12);
        end
    end

    // sel_for_coalesced_delay_7(BITSELECT,3491)
    assign sel_for_coalesced_delay_7_b = $unsigned(coalesced_delay_7_0_q[21:0]);
    assign sel_for_coalesced_delay_7_c = $unsigned(coalesced_delay_7_0_q[43:22]);

    // i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2(ADD,3170)@135 + 1
    assign i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D0};
    assign i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // coalesced_delay_5_0(REG,3566)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_5_0_q <= $unsigned(44'b00000000000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            coalesced_delay_5_0_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D11);
        end
    end

    // sel_for_coalesced_delay_5(BITSELECT,3485)
    assign sel_for_coalesced_delay_5_b = $unsigned(coalesced_delay_5_0_q[21:0]);
    assign sel_for_coalesced_delay_5_c = $unsigned(coalesced_delay_5_0_q[43:22]);

    // SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2(STALLREG,4406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= 22'bxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= 22'bxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= 22'bxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data4 <= 22'bxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data5 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data6 <= 22'bxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data7 <= 22'bxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data8 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data9 <= 22'bxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data10 <= 22'bxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data11 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data12 <= 20'bxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data13 <= 20'bxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data14 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data15 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_backStall & (SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid | SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= $unsigned(sel_for_coalesced_delay_5_c);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= $unsigned(sel_for_coalesced_delay_5_b);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= $unsigned(i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= $unsigned(sel_for_coalesced_delay_7_c);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data4 <= $unsigned(sel_for_coalesced_delay_7_b);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data5 <= $unsigned(i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data6 <= $unsigned(sel_for_coalesced_delay_9_c);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data7 <= $unsigned(sel_for_coalesced_delay_9_b);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data8 <= $unsigned(i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data9 <= $unsigned(sel_for_coalesced_delay_11_c);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data10 <= $unsigned(sel_for_coalesced_delay_11_b);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data11 <= $unsigned(i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data12 <= $unsigned(sel_for_coalesced_delay_13_c);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data13 <= $unsigned(sel_for_coalesced_delay_13_b);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data14 <= $unsigned(i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data15 <= $unsigned(redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_i_valid = SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_backStall = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_V = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid : SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D0 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data0 : sel_for_coalesced_delay_5_c;
    // Data1
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D1 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data1 : sel_for_coalesced_delay_5_b;
    // Data2
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D2 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data2 : i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data3
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D3 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data3 : sel_for_coalesced_delay_7_c;
    // Data4
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D4 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data4 : sel_for_coalesced_delay_7_b;
    // Data5
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D5 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data5 : i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data6
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D6 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data6 : sel_for_coalesced_delay_9_c;
    // Data7
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D7 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data7 : sel_for_coalesced_delay_9_b;
    // Data8
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D8 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data8 : i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data9
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D9 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data9 : sel_for_coalesced_delay_11_c;
    // Data10
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D10 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data10 : sel_for_coalesced_delay_11_b;
    // Data11
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D11 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data11 : i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data12
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D12 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data12 : sel_for_coalesced_delay_13_c;
    // Data13
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D13 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data13 : sel_for_coalesced_delay_13_b;
    // Data14
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D14 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data14 : i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data15
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D15 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_r_data15 : redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_2_q;

    // redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_3(REG,3538)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_3_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_3_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D15);
        end
    end

    // i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2(ADD,3243)@136 + 1
    assign i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D14;
    assign i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D12}, 1'b1 };
    assign i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D13}, i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_o <= 22'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_o[20:1];

    // i_arrayidx42_avgpooling20_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3371)@137
    assign i_arrayidx42_avgpooling20_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx42_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3373)@137
    assign i_arrayidx42_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx42_avgpooling20_add_x_BitSelect_for_b_tessel1_0_b};

    // redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0(REG,3522)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_q <= $unsigned(13'b0000000000000);
        end
        else if (SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_backEN == 1'b1)
        begin
            redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_q <= $unsigned(i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c);
        end
    end

    // SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0(STALLENABLE,4168)
    // Valid signal propagation
    assign SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_V0 = SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_s_tv_0 = SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_backStall & SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_backEN = ~ (SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_v_s_0 = SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_V1;
    // Backward Stall generation
    assign SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_backStall = ~ (SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_backEN == 1'b0)
            begin
                SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_R_v_0 <= SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_R_v_0 & SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_R_v_0 <= SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_v_s_0;
            end

        end
    end

    // redist53_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out_3_1(REG,3541)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out_3_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            redist53_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out_3_1_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D13);
        end
    end

    // coalesced_delay_12_0(REG,3573)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_12_0_q <= $unsigned(36'b000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            coalesced_delay_12_0_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D12);
        end
    end

    // sel_for_coalesced_delay_12(BITSELECT,3506)
    assign sel_for_coalesced_delay_12_b = $unsigned(coalesced_delay_12_0_q[17:0]);
    assign sel_for_coalesced_delay_12_c = $unsigned(coalesced_delay_12_0_q[35:18]);

    // coalesced_delay_10_0(REG,3571)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_10_0_q <= $unsigned(38'b00000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            coalesced_delay_10_0_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D15);
        end
    end

    // sel_for_coalesced_delay_10(BITSELECT,3500)
    assign sel_for_coalesced_delay_10_b = $unsigned(coalesced_delay_10_0_q[18:0]);
    assign sel_for_coalesced_delay_10_c = $unsigned(coalesced_delay_10_0_q[37:19]);

    // coalesced_delay_6_0(REG,3567)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_6_0_q <= $unsigned(38'b00000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            coalesced_delay_6_0_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D14);
        end
    end

    // sel_for_coalesced_delay_6(BITSELECT,3488)
    assign sel_for_coalesced_delay_6_b = $unsigned(coalesced_delay_6_0_q[18:0]);
    assign sel_for_coalesced_delay_6_c = $unsigned(coalesced_delay_6_0_q[37:19]);

    // coalesced_delay_8_0(REG,3569)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_8_0_q <= $unsigned(38'b00000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            coalesced_delay_8_0_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D5);
        end
    end

    // sel_for_coalesced_delay_8(BITSELECT,3494)
    assign sel_for_coalesced_delay_8_b = $unsigned(coalesced_delay_8_0_q[18:0]);
    assign sel_for_coalesced_delay_8_c = $unsigned(coalesced_delay_8_0_q[37:19]);

    // coalesced_delay_4_0(REG,3565)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_4_0_q <= $unsigned(38'b00000000000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            coalesced_delay_4_0_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D4);
        end
    end

    // sel_for_coalesced_delay_4(BITSELECT,3482)
    assign sel_for_coalesced_delay_4_b = $unsigned(coalesced_delay_4_0_q[18:0]);
    assign sel_for_coalesced_delay_4_c = $unsigned(coalesced_delay_4_0_q[37:19]);

    // SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(STALLREG,4408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= 19'bxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= 19'bxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= 19'bxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data4 <= 19'bxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data5 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data6 <= 19'bxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data7 <= 19'bxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data8 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data9 <= 19'bxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data10 <= 19'bxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data11 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data12 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data13 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data14 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data15 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid <= SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall & (SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid | SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data0 <= $unsigned(sel_for_coalesced_delay_4_c);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data1 <= $unsigned(sel_for_coalesced_delay_4_b);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data2 <= $unsigned(i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data3 <= $unsigned(sel_for_coalesced_delay_8_c);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data4 <= $unsigned(sel_for_coalesced_delay_8_b);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data5 <= $unsigned(i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data6 <= $unsigned(sel_for_coalesced_delay_6_c);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data7 <= $unsigned(sel_for_coalesced_delay_6_b);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data8 <= $unsigned(i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data9 <= $unsigned(sel_for_coalesced_delay_10_c);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data10 <= $unsigned(sel_for_coalesced_delay_10_b);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data11 <= $unsigned(i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data12 <= $unsigned(sel_for_coalesced_delay_12_c);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data13 <= $unsigned(sel_for_coalesced_delay_12_b);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data14 <= $unsigned(i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data15 <= $unsigned(redist53_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out_3_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_i_valid = SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid : SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D0 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data0 : sel_for_coalesced_delay_4_c;
    // Data1
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D1 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data1 : sel_for_coalesced_delay_4_b;
    // Data2
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D2 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data2 : i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data3
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D3 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data3 : sel_for_coalesced_delay_8_c;
    // Data4
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D4 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data4 : sel_for_coalesced_delay_8_b;
    // Data5
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D5 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data5 : i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data6
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D6 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data6 : sel_for_coalesced_delay_6_c;
    // Data7
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D7 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data7 : sel_for_coalesced_delay_6_b;
    // Data8
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D8 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data8 : i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data9
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D9 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data9 : sel_for_coalesced_delay_10_c;
    // Data10
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D10 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data10 : sel_for_coalesced_delay_10_b;
    // Data11
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D11 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data11 : i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data12
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D12 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data12 : sel_for_coalesced_delay_12_c;
    // Data13
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D13 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data13 : sel_for_coalesced_delay_12_b;
    // Data14
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D14 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data14 : i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    // Data15
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D15 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_r_data15 : redist53_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out_3_1_q;

    // i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(ADD,3234)@137 + 1
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D14;
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D12}, 1'b1 };
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D13}, i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= 20'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o[18:1];

    // i_arrayidx42_avgpooling20_dupName_0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3354)@138
    assign i_arrayidx42_avgpooling20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx42_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3356)@138
    assign i_arrayidx42_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx42_avgpooling20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx42_avgpooling20_add_x_p2_of_2(ADD,3153)@137 + 1
    assign i_arrayidx42_avgpooling20_add_x_p2_of_2_cin = SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_D2;
    assign i_arrayidx42_avgpooling20_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx42_avgpooling20_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_D1}, i_arrayidx42_avgpooling20_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx42_avgpooling20_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx42_avgpooling20_add_x_p2_of_2_o <= $unsigned(i_arrayidx42_avgpooling20_add_x_p2_of_2_a) + $unsigned(i_arrayidx42_avgpooling20_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx42_avgpooling20_add_x_p2_of_2_q = i_arrayidx42_avgpooling20_add_x_p2_of_2_o[13:1];

    // i_arrayidx42_avgpooling20_dupName_0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,3349)@138
    assign i_arrayidx42_avgpooling20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx42_avgpooling20_add_x_p2_of_2_q[11:0]);

    // i_arrayidx42_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,3351)@138
    assign i_arrayidx42_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx42_avgpooling20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b};

    // redist53_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out_3_2(REG,3542)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out_3_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            redist53_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out_3_2_q <= $unsigned(SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D15);
        end
    end

    // SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230(STALLENABLE,3797)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_V0 = SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_backStall = i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_wireValid = SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_V;

    // SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230(STALLREG,4432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_r_valid <= SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_backStall & (SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_r_valid | SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_r_data0 <= $unsigned(redist53_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out_3_2_q);
                SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling23_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_and0 = SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V2;
    assign SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V3 & SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_backStall = SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_V = SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_r_valid : SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_D0 = SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_r_data0 : redist53_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out_3_2_q;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_D1 = SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_r_data1 : bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling23_b;

    // i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(ADD,3216)@137 + 1
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D11;
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D9}, 1'b1 };
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D10}, i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= 21'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o[19:1];

    // i_arrayidx33_avgpooling20_dupName_0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3331)@138
    assign i_arrayidx33_avgpooling20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx33_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3333)@138
    assign i_arrayidx33_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx33_avgpooling20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx33_avgpooling20_add_x_p2_of_2(ADD,3126)@137 + 1
    assign i_arrayidx33_avgpooling20_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D11;
    assign i_arrayidx33_avgpooling20_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx33_avgpooling20_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D10}, i_arrayidx33_avgpooling20_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx33_avgpooling20_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx33_avgpooling20_add_x_p2_of_2_o <= $unsigned(i_arrayidx33_avgpooling20_add_x_p2_of_2_a) + $unsigned(i_arrayidx33_avgpooling20_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx33_avgpooling20_add_x_p2_of_2_q = i_arrayidx33_avgpooling20_add_x_p2_of_2_o[13:1];

    // i_arrayidx33_avgpooling20_dupName_0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,3326)@138
    assign i_arrayidx33_avgpooling20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx33_avgpooling20_add_x_p2_of_2_q[11:0]);

    // i_arrayidx33_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,3328)@138
    assign i_arrayidx33_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx33_avgpooling20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b};

    // i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(ADD,3180)@137 + 1
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D8;
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D6}, 1'b1 };
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D7}, i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= 21'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o[19:1];

    // i_arrayidx16_avgpooling20_dupName_0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3285)@138
    assign i_arrayidx16_avgpooling20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx16_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3287)@138
    assign i_arrayidx16_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx16_avgpooling20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx16_avgpooling20_add_x_p2_of_2(ADD,3072)@137 + 1
    assign i_arrayidx16_avgpooling20_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D7;
    assign i_arrayidx16_avgpooling20_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D2}, 1'b1 };
    assign i_arrayidx16_avgpooling20_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D6}, i_arrayidx16_avgpooling20_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_avgpooling20_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx16_avgpooling20_add_x_p2_of_2_o <= $unsigned(i_arrayidx16_avgpooling20_add_x_p2_of_2_a) + $unsigned(i_arrayidx16_avgpooling20_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx16_avgpooling20_add_x_p2_of_2_q = i_arrayidx16_avgpooling20_add_x_p2_of_2_o[13:1];

    // i_arrayidx16_avgpooling20_dupName_0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,3280)@138
    assign i_arrayidx16_avgpooling20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx16_avgpooling20_add_x_p2_of_2_q[11:0]);

    // i_arrayidx16_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,3282)@138
    assign i_arrayidx16_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx16_avgpooling20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b};

    // i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(ADD,3198)@137 + 1
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D5;
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D3}, 1'b1 };
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D4}, i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= 21'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o[19:1];

    // i_arrayidx24_avgpooling20_dupName_0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3308)@138
    assign i_arrayidx24_avgpooling20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx24_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3310)@138
    assign i_arrayidx24_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx24_avgpooling20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx24_avgpooling20_add_x_p2_of_2(ADD,3099)@137 + 1
    assign i_arrayidx24_avgpooling20_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D9;
    assign i_arrayidx24_avgpooling20_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D1}, 1'b1 };
    assign i_arrayidx24_avgpooling20_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D8}, i_arrayidx24_avgpooling20_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_avgpooling20_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx24_avgpooling20_add_x_p2_of_2_o <= $unsigned(i_arrayidx24_avgpooling20_add_x_p2_of_2_a) + $unsigned(i_arrayidx24_avgpooling20_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx24_avgpooling20_add_x_p2_of_2_q = i_arrayidx24_avgpooling20_add_x_p2_of_2_o[13:1];

    // i_arrayidx24_avgpooling20_dupName_0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,3303)@138
    assign i_arrayidx24_avgpooling20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx24_avgpooling20_add_x_p2_of_2_q[11:0]);

    // i_arrayidx24_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,3305)@138
    assign i_arrayidx24_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx24_avgpooling20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b};

    // i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(ADD,3162)@137 + 1
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D2;
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_D1}, i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= 21'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o[19:1];

    // i_arrayidx10_avgpooling20_dupName_0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3262)@138
    assign i_arrayidx10_avgpooling20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx10_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3264)@138
    assign i_arrayidx10_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx10_avgpooling20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx10_avgpooling20_add_x_p2_of_2(ADD,3045)@137 + 1
    assign i_arrayidx10_avgpooling20_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D5;
    assign i_arrayidx10_avgpooling20_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D3}, 1'b1 };
    assign i_arrayidx10_avgpooling20_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D4}, i_arrayidx10_avgpooling20_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_avgpooling20_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_avgpooling20_add_x_p2_of_2_o <= $unsigned(i_arrayidx10_avgpooling20_add_x_p2_of_2_a) + $unsigned(i_arrayidx10_avgpooling20_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx10_avgpooling20_add_x_p2_of_2_q = i_arrayidx10_avgpooling20_add_x_p2_of_2_o[13:1];

    // i_arrayidx10_avgpooling20_dupName_0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,3257)@138
    assign i_arrayidx10_avgpooling20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx10_avgpooling20_add_x_p2_of_2_q[11:0]);

    // i_arrayidx10_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,3259)@138
    assign i_arrayidx10_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx10_avgpooling20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b};

    // SE_i_arrayidx10_avgpooling20_add_x_p2_of_2(STALLENABLE,3966)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_V0 = SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_v_s_0 = SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_backEN & SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_R_v_0 & SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2(ADD,3116)@138 + 1
    assign i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D7};
    assign i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D5};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_o <= $unsigned(i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_a) + $unsigned(i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_c[0] = i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_o[52];
    assign i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q = i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_o[51:0];

    // i_arrayidx33_avgpooling20_dupName_0_add_x_p2_of_2(ADD,3108)@138 + 1
    assign i_arrayidx33_avgpooling20_dupName_0_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D11;
    assign i_arrayidx33_avgpooling20_dupName_0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D9}, 1'b1 };
    assign i_arrayidx33_avgpooling20_dupName_0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D10}, i_arrayidx33_avgpooling20_dupName_0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx33_avgpooling20_dupName_0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx33_avgpooling20_dupName_0_add_x_p2_of_2_o <= $unsigned(i_arrayidx33_avgpooling20_dupName_0_add_x_p2_of_2_a) + $unsigned(i_arrayidx33_avgpooling20_dupName_0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx33_avgpooling20_dupName_0_add_x_p2_of_2_q = i_arrayidx33_avgpooling20_dupName_0_add_x_p2_of_2_o[13:1];

    // i_arrayidx33_avgpooling20_dupName_1_add_x_BitSelect_for_a_tessel1_0(BITSELECT,3336)@139
    assign i_arrayidx33_avgpooling20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx33_avgpooling20_dupName_0_add_x_p2_of_2_q[11:0]);

    // i_arrayidx33_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,3338)@139
    assign i_arrayidx33_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx33_avgpooling20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b};

    // i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2(ADD,3062)@138 + 1
    assign i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D6};
    assign i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D2};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_o <= $unsigned(i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_a) + $unsigned(i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_c[0] = i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_o[52];
    assign i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_q = i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_o[51:0];

    // i_arrayidx16_avgpooling20_dupName_0_add_x_p2_of_2(ADD,3054)@138 + 1
    assign i_arrayidx16_avgpooling20_dupName_0_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D8;
    assign i_arrayidx16_avgpooling20_dupName_0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D6}, 1'b1 };
    assign i_arrayidx16_avgpooling20_dupName_0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D7}, i_arrayidx16_avgpooling20_dupName_0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_avgpooling20_dupName_0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx16_avgpooling20_dupName_0_add_x_p2_of_2_o <= $unsigned(i_arrayidx16_avgpooling20_dupName_0_add_x_p2_of_2_a) + $unsigned(i_arrayidx16_avgpooling20_dupName_0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx16_avgpooling20_dupName_0_add_x_p2_of_2_q = i_arrayidx16_avgpooling20_dupName_0_add_x_p2_of_2_o[13:1];

    // i_arrayidx16_avgpooling20_dupName_1_add_x_BitSelect_for_a_tessel1_0(BITSELECT,3290)@139
    assign i_arrayidx16_avgpooling20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx16_avgpooling20_dupName_0_add_x_p2_of_2_q[11:0]);

    // i_arrayidx16_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,3292)@139
    assign i_arrayidx16_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx16_avgpooling20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b};

    // i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2(ADD,3089)@138 + 1
    assign i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D3};
    assign i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D4};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_o <= $unsigned(i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_a) + $unsigned(i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_c[0] = i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_o[52];
    assign i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_q = i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_o[51:0];

    // i_arrayidx24_avgpooling20_dupName_0_add_x_p2_of_2(ADD,3081)@138 + 1
    assign i_arrayidx24_avgpooling20_dupName_0_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D5;
    assign i_arrayidx24_avgpooling20_dupName_0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D3}, 1'b1 };
    assign i_arrayidx24_avgpooling20_dupName_0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D4}, i_arrayidx24_avgpooling20_dupName_0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_avgpooling20_dupName_0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx24_avgpooling20_dupName_0_add_x_p2_of_2_o <= $unsigned(i_arrayidx24_avgpooling20_dupName_0_add_x_p2_of_2_a) + $unsigned(i_arrayidx24_avgpooling20_dupName_0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx24_avgpooling20_dupName_0_add_x_p2_of_2_q = i_arrayidx24_avgpooling20_dupName_0_add_x_p2_of_2_o[13:1];

    // i_arrayidx24_avgpooling20_dupName_1_add_x_BitSelect_for_a_tessel1_0(BITSELECT,3313)@139
    assign i_arrayidx24_avgpooling20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx24_avgpooling20_dupName_0_add_x_p2_of_2_q[11:0]);

    // i_arrayidx24_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,3315)@139
    assign i_arrayidx24_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx24_avgpooling20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b};

    // i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2(ADD,3035)@138 + 1
    assign i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D0};
    assign i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_o <= $unsigned(i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_a) + $unsigned(i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_c[0] = i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_o[52];
    assign i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_q = i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_o[51:0];

    // i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3270)
    assign i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel1_0_b = c_i32_074_q[29:18];

    // i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3272)@139
    assign i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2(ADD,3027)@138 + 1
    assign i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D2;
    assign i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D1}, i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_o <= $unsigned(i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_a) + $unsigned(i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_q = i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_o[13:1];

    // i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_a_tessel1_0(BITSELECT,3267)@139
    assign i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_q[11:0]);

    // i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,3269)@139
    assign i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b};

    // SE_i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel1_0(STALLENABLE,4073)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel1_0_V0 = 1'b1;

    // SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2(STALLENABLE,3961)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_V0 = SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_s_tv_0 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_backStall & SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_v_s_0 = SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_backEN & SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_R_v_0 & SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2(STALLREG,4418)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data2 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data3 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data4 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data5 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data6 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data7 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data8 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data9 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data10 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data11 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_valid <= SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data3 <= $unsigned(i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data4 <= $unsigned(i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data5 <= $unsigned(i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data6 <= $unsigned(i_arrayidx24_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data7 <= $unsigned(i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data8 <= $unsigned(i_arrayidx16_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data9 <= $unsigned(i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data10 <= $unsigned(i_arrayidx33_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data11 <= $unsigned(i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_and0 = SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_and1 = SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_V0 & SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_i_valid = SE_i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel1_0_V0 & SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_backStall = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_V = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D0 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data0 : i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D1 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data1 : i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D2 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data2 : i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data3
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D3 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data3 : i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data4
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D4 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data4 : i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data5
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D5 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data5 : i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_c;
    // Data6
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D6 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data6 : i_arrayidx24_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data7
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D7 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data7 : i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_c;
    // Data8
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D8 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data8 : i_arrayidx16_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data9
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D9 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data9 : i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_c;
    // Data10
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D10 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data10 : i_arrayidx33_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data11
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D11 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_r_data11 : i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_c;

    // SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2(STALLENABLE,3957)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_V0 = SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_backStall & SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_v_s_0 = SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_backEN & SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_R_v_0 & SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2(STALLREG,4417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data2 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data3 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data4 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data5 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data6 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data7 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data8 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data9 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data10 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data11 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_valid <= SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx10_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx10_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data3 <= $unsigned(i_arrayidx24_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data4 <= $unsigned(i_arrayidx24_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data5 <= $unsigned(i_arrayidx24_avgpooling20_dupName_0_add_x_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data6 <= $unsigned(i_arrayidx16_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data7 <= $unsigned(i_arrayidx16_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data8 <= $unsigned(i_arrayidx16_avgpooling20_dupName_0_add_x_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data9 <= $unsigned(i_arrayidx33_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data10 <= $unsigned(i_arrayidx33_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data11 <= $unsigned(i_arrayidx33_avgpooling20_dupName_0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_and0 = SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_and1 = SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_V0 & SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_i_valid = SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V0 & SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_backStall = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_V = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D0 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data0 : i_arrayidx10_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D1 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data1 : i_arrayidx10_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D2 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data2 : i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_c;
    // Data3
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D3 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data3 : i_arrayidx24_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data4
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D4 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data4 : i_arrayidx24_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data5
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D5 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data5 : i_arrayidx24_avgpooling20_dupName_0_add_x_p1_of_2_c;
    // Data6
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D6 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data6 : i_arrayidx16_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data7
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D7 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data7 : i_arrayidx16_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data8
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D8 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data8 : i_arrayidx16_avgpooling20_dupName_0_add_x_p1_of_2_c;
    // Data9
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D9 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data9 : i_arrayidx33_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data10
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D10 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data10 : i_arrayidx33_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data11
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_D11 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_r_data11 : i_arrayidx33_avgpooling20_dupName_0_add_x_p1_of_2_c;

    // SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(STALLENABLE,4004)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V0 = SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V1 = SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V2 = SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 = SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 = SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_backStall & SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or0 = SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or1 = SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 | SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or0;
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN = ~ (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 | SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_v_s_0 = SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN & SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall = ~ (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= 1'b0;
            SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 & SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 & SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 & SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

        end
    end

    // i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3368)@139
    assign i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c};

    // i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2(ADD,3135)@138 + 1
    assign i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_cin = SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_D2;
    assign i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_D1}, i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_o <= $unsigned(i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_a) + $unsigned(i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_q = i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_o[13:1];

    // i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_a_tessel1_0(BITSELECT,3359)@139
    assign i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_q[11:0]);

    // i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,3361)@139
    assign i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b};

    // SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(STALLENABLE,4112)
    // Valid signal propagation
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V0 = 1'b1;
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V1 = 1'b1;

    // SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2(STALLREG,4410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_valid <= SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_and0 = SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_and1 = SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_V0 & SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_i_valid = SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V1 & SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_backStall = SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_V = SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_D0 = SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_data0 : i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_D1 = SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_data1 : i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_D2 = SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_r_data2 : i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_c;

    // SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2(STALLENABLE,3991)
    // Valid signal propagation
    assign SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_V0 = SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_backStall & SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_v_s_0 = SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_backEN & SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_R_v_0 & SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2(STALLREG,4409)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_valid <= SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_data0 <= $unsigned(i_arrayidx42_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx42_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_and0 = SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_and1 = SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_V0 & SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_i_valid = SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_V1 & SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_backStall = SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_V = SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_D0 = SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_data0 : i_arrayidx42_avgpooling20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_D1 = SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_data1 : i_arrayidx42_avgpooling20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_D2 = SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_r_data2 : i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_c;

    // SE_i_arrayidx42_avgpooling20_add_x_p2_of_2(STALLENABLE,3998)
    // Valid signal propagation
    assign SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_V0 = SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_s_tv_0 = SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_v_s_0 = SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_backEN & SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_R_v_0 & SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2(STALLREG,4407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_valid <= SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_data0 <= $unsigned(redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_q);
                SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_data1 <= $unsigned(i_arrayidx42_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_data2 <= $unsigned(i_arrayidx42_avgpooling20_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_and0 = SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_and1 = SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_V1 & SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_i_valid = SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_V0 & SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_backStall = SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_V = SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_D0 = SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_data0 : redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_q;
    // Data1
    assign SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_D1 = SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_data1 : i_arrayidx42_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_D2 = SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_r_data2 : i_arrayidx42_avgpooling20_add_x_p1_of_2_c;

    // i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2(ADD,3225)@136 + 1
    assign i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D11;
    assign i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D9}, 1'b1 };
    assign i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D10}, i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_o <= 24'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_o[22:1];

    // i_arrayidx33_avgpooling20_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3344)@137
    assign i_arrayidx33_avgpooling20_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx33_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3346)@137
    assign i_arrayidx33_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx33_avgpooling20_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2(ADD,3207)@136 + 1
    assign i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D8;
    assign i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D6}, 1'b1 };
    assign i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D7}, i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_o <= 24'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_o[22:1];

    // i_arrayidx24_avgpooling20_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3321)@137
    assign i_arrayidx24_avgpooling20_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx24_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3323)@137
    assign i_arrayidx24_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx24_avgpooling20_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2(ADD,3189)@136 + 1
    assign i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D5;
    assign i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D3}, 1'b1 };
    assign i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D4}, i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_o <= 24'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_o[22:1];

    // i_arrayidx16_avgpooling20_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3298)@137
    assign i_arrayidx16_avgpooling20_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx16_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3300)@137
    assign i_arrayidx16_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx16_avgpooling20_add_x_BitSelect_for_b_tessel1_0_b};

    // i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2(ADD,3171)@136 + 1
    assign i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D2;
    assign i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_D1}, i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_o <= 24'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_o[22:1];

    // i_arrayidx10_avgpooling20_add_x_BitSelect_for_b_tessel1_0(BITSELECT,3275)@137
    assign i_arrayidx10_avgpooling20_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx10_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,3277)@137
    assign i_arrayidx10_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx10_avgpooling20_add_x_BitSelect_for_b_tessel1_0_b};

    // SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2(STALLENABLE,4237)
    // Valid signal propagation
    assign SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_out_stall_out | ~ (SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_wireValid = bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_valid_out;

    // SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2(STALLREG,4413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data2 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data3 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data4 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data5 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data6 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data7 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_valid <= SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_avgpooling20_add_x_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_avgpooling20_add_x_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data2 <= $unsigned(i_arrayidx10_avgpooling20_add_x_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data3 <= $unsigned(i_arrayidx10_avgpooling20_add_x_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data4 <= $unsigned(i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data5 <= $unsigned(i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data6 <= $unsigned(i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data7 <= $unsigned(i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_and0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_V0;
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_i_valid = SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_V0 & SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_backStall = SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_V = SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D0 = SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data0 : i_arrayidx10_avgpooling20_add_x_BitSelect_for_a_b;
    // Data1
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D1 = SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data1 : i_arrayidx10_avgpooling20_add_x_BitSelect_for_a_b;
    // Data2
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D2 = SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data2 : i_arrayidx10_avgpooling20_add_x_BitSelect_for_a_b;
    // Data3
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D3 = SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data3 : i_arrayidx10_avgpooling20_add_x_BitSelect_for_a_b;
    // Data4
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D4 = SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data4 : i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_q;
    // Data5
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D5 = SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data5 : i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_q;
    // Data6
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D6 = SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data6 : i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_q;
    // Data7
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D7 = SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_r_data7 : i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_q;

    // SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x(STALLENABLE,3709)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_consumed0 = (~ (SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_consumed1 = (~ (SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_StallValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_backStall & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_or0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_backStall = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_V1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_wireValid = i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_out_valid_out;

    // i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x(BLACKBOX,169)@135
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0_0_tpl@136
    // out out_dest_data_out_0_0_1_tpl@136
    // out out_stall_out@20000000
    // out out_valid_out@136
    avgpooling2_i_llvm_fpga_ffwd_dest_s_stru0000oling25_avgpooling20 thei_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x (
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_backStall),
        .in_valid_in(SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_0_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_out_dest_data_out_0_0_0_tpl),
        .out_dest_data_out_0_0_1_tpl(),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x(BITJOIN,3584)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_q = i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_out_dest_data_out_0_0_0_tpl;

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x(BITSELECT,3585)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_q[63:0]);

    // i_arrayidx10_avgpooling20_add_x_BitExpansion_for_a(BITJOIN,3038)@136
    assign i_arrayidx10_avgpooling20_add_x_BitExpansion_for_a_q = {GND_q, bubble_select_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_b};

    // i_arrayidx10_avgpooling20_add_x_BitSelect_for_a(BITSELECT,3042)@136
    assign i_arrayidx10_avgpooling20_add_x_BitSelect_for_a_b = i_arrayidx10_avgpooling20_add_x_BitExpansion_for_a_q[51:0];
    assign i_arrayidx10_avgpooling20_add_x_BitSelect_for_a_c = i_arrayidx10_avgpooling20_add_x_BitExpansion_for_a_q[64:52];

    // redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0(REG,3524)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_q <= $unsigned(13'b0000000000000);
        end
        else if (SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_backEN == 1'b1)
        begin
            redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_q <= $unsigned(i_arrayidx10_avgpooling20_add_x_BitSelect_for_a_c);
        end
    end

    // SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0(STALLENABLE,4170)
    // Valid signal propagation
    assign SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_V0 = SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_s_tv_0 = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_backStall & SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_backEN = ~ (SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_v_s_0 = SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling25_avgpooling21_aunroll_x_V1;
    // Backward Stall generation
    assign SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_backStall = ~ (SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_backEN == 1'b0)
            begin
                SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_R_v_0 <= SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_R_v_0 & SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_R_v_0 <= SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2(STALLREG,4416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data0 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data1 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data2 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data3 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data4 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data5 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data6 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data7 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data8 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data9 <= 1'bx;
            SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data10 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data11 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_valid <= SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_backStall & (SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_valid | SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_i_valid);

            if (SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data0 <= $unsigned(redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_q);
                SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data1 <= $unsigned(redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_q);
                SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data2 <= $unsigned(redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_q);
                SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data3 <= $unsigned(redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_q);
                SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data4 <= $unsigned(i_arrayidx10_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data5 <= $unsigned(i_arrayidx10_avgpooling20_add_x_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data6 <= $unsigned(i_arrayidx16_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data7 <= $unsigned(i_arrayidx16_avgpooling20_add_x_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data8 <= $unsigned(i_arrayidx24_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data9 <= $unsigned(i_arrayidx24_avgpooling20_add_x_p1_of_2_c);
                SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data10 <= $unsigned(i_arrayidx33_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data11 <= $unsigned(i_arrayidx33_avgpooling20_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_and0 = SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_and1 = SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_V0 & SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_and0;
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_i_valid = SE_redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_V0 & SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_backStall = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_valid | ~ (SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_V = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_valid : SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D0 = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data0 : redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_q;
    // Data1
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D1 = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data1 : redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_q;
    // Data2
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D2 = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data2 : redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_q;
    // Data3
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D3 = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data3 : redist38_i_arrayidx33_avgpooling20_add_x_BitSelect_for_a_c_1_0_q;
    // Data4
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D4 = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data4 : i_arrayidx10_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data5
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D5 = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data5 : i_arrayidx10_avgpooling20_add_x_p1_of_2_c;
    // Data6
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D6 = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data6 : i_arrayidx16_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data7
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D7 = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data7 : i_arrayidx16_avgpooling20_add_x_p1_of_2_c;
    // Data8
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D8 = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data8 : i_arrayidx24_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data9
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D9 = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data9 : i_arrayidx24_avgpooling20_add_x_p1_of_2_c;
    // Data10
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D10 = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data10 : i_arrayidx33_avgpooling20_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data11
    assign SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_D11 = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_r_data11 : i_arrayidx33_avgpooling20_add_x_p1_of_2_c;

    // SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2(STALLENABLE,4010)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_V0 = SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_V1 = SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_V2 = SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0 = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_backStall & SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 = SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_backStall & SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_1;
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 = SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_backStall & SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_or0 = SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_or1 = SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1 | SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_or0;
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_backEN = ~ (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2 | SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_v_s_0 = SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_backEN & SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_backStall = ~ (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= 1'b0;
            SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 & SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 & SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 & SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_R_v_2 <= SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4(STALLREG,4433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_r_valid <= 1'b0;
            SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_r_valid <= SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_backStall & (SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_r_valid | SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_i_valid);

            if (SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_r_data0 <= $unsigned(redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_i_valid = SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_V2;
    // Stall signal propagation
    assign SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_backStall = SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_r_valid | ~ (SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_i_valid);

    // Valid
    assign SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_V = SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_r_valid == 1'b1 ? SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_r_valid : SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_i_valid;

    assign SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_D0 = SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_r_valid == 1'b1 ? SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_r_data0 : redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_3_q;

    // SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4(STALLENABLE,4186)
    // Valid signal propagation
    assign SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_V0 = SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_R_v_0;
    // Stall signal propagation
    assign SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_s_tv_0 = SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_backStall & SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_R_v_0;
    // Backward Enable generation
    assign SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_backEN = ~ (SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_v_s_0 = SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_backEN & SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_V;
    // Backward Stall generation
    assign SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_backStall = ~ (SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_backEN == 1'b0)
            begin
                SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_R_v_0 <= SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_R_v_0 & SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_s_tv_0;
            end
            else
            begin
                SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_R_v_0 <= SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237(STALLENABLE,3801)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_V0 = SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_backStall = i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_and0 = SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_V0;
    assign SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V5 & SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_and0;

    // SE_out_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237(STALLENABLE,3802)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_wireValid = i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_out_valid_out;

    // redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4(REG,3539)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_backEN == 1'b1)
        begin
            redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_q <= $unsigned(SR_SE_redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_D0);
        end
    end

    // i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237(BLACKBOX,275)@138
    // in in_stall_in@20000000
    // out out_data_out@139
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@139
    avgpooling2_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_0 thei_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237 (
        .in_data_in(redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_4_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_feedback_stall_out_27),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling23_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_V0),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_out_feedback_valid_out_27),
        .out_stall_out(i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214(BLACKBOX,260)@132
    // in in_stall_in@20000000
    // out out_data_out@133
    // out out_feedback_stall_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@133
    avgpooling2_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_0 thei_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D0),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D1),
        .in_feedback_in_27(i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_feedback_stall_out_27),
        .out_stall_out(i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214(STALLENABLE,3772)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_V0 = SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_backStall = SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_backStall | ~ (SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_wireValid = i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_valid_out;

    // SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0(STALLENABLE,3890)
    // Valid signal propagation
    assign SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_V0 = SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_R_v_0;
    // Stall signal propagation
    assign SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_s_tv_0 = SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_backStall & SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_R_v_0;
    // Backward Enable generation
    assign SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_backEN = ~ (SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_v_s_0 = SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_backEN & SE_out_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_V0;
    // Backward Stall generation
    assign SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_backStall = ~ (SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_backEN == 1'b0)
            begin
                SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_R_v_0 <= SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_R_v_0 & SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_s_tv_0;
            end
            else
            begin
                SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_R_v_0 <= SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214(BITJOIN,3648)
    assign bubble_join_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_q = i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214(BITSELECT,3649)
    assign bubble_select_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_q[31:0]);

    // redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_0(REG,3535)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_backEN == 1'b1)
        begin
            redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_b);
        end
    end

    // redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_1(REG,3536)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_1_q <= $unsigned(redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_0_q);
        end
    end

    // i_idxprom_avgpooling238_sel_x(BITSELECT,166)@133
    assign i_idxprom_avgpooling238_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_b[31:0]};

    // i_idxprom_avgpooling238_vt_select_31(BITSELECT,241)@133
    assign i_idxprom_avgpooling238_vt_select_31_b = i_idxprom_avgpooling238_sel_x_b[31:0];

    // i_idxprom_avgpooling238_vt_join(BITJOIN,240)@133
    assign i_idxprom_avgpooling238_vt_join_q = {c_i32_074_q, i_idxprom_avgpooling238_vt_select_31_b};

    // i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select(BITSELECT,3382)@133
    assign i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select_b = i_idxprom_avgpooling238_vt_join_q[17:0];
    assign i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select_c = i_idxprom_avgpooling238_vt_join_q[35:18];
    assign i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select_d = i_idxprom_avgpooling238_vt_join_q[53:36];
    assign i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select_e = i_idxprom_avgpooling238_vt_join_q[63:54];

    // join_for_coalesced_delay_2(BITJOIN,3475)
    assign join_for_coalesced_delay_2_q = {i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select_e, i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select_d, i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select_c, i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select_b};

    // coalesced_delay_2_0(REG,3563)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_2_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_backEN == 1'b1)
        begin
            coalesced_delay_2_0_q <= $unsigned(join_for_coalesced_delay_2_q);
        end
    end

    // sel_for_coalesced_delay_2(BITSELECT,3476)
    assign sel_for_coalesced_delay_2_b = $unsigned(coalesced_delay_2_0_q[17:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(coalesced_delay_2_0_q[35:18]);
    assign sel_for_coalesced_delay_2_d = $unsigned(coalesced_delay_2_0_q[53:36]);
    assign sel_for_coalesced_delay_2_e = $unsigned(coalesced_delay_2_0_q[63:54]);

    // highBBits_uid1042_i_arrayidx10_avgpooling20_mult_x_im9(BITSELECT,1041)@134
    assign highBBits_uid1042_i_arrayidx10_avgpooling20_mult_x_im9_b = sel_for_coalesced_delay_2_e[9:3];

    // highBBits_uid1037_i_arrayidx10_avgpooling20_mult_x_im9(BITSELECT,1036)@133
    assign highBBits_uid1037_i_arrayidx10_avgpooling20_mult_x_im9_b = i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select_e[9:1];

    // addsumAHighB_uid1038_i_arrayidx10_avgpooling20_mult_x_im9(ADD,1037)@133 + 1
    assign addsumAHighB_uid1038_i_arrayidx10_avgpooling20_mult_x_im9_a = {1'b0, i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select_e};
    assign addsumAHighB_uid1038_i_arrayidx10_avgpooling20_mult_x_im9_b = {2'b00, highBBits_uid1037_i_arrayidx10_avgpooling20_mult_x_im9_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid1038_i_arrayidx10_avgpooling20_mult_x_im9_o <= 11'b0;
        end
        else if (SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid1038_i_arrayidx10_avgpooling20_mult_x_im9_o <= $unsigned(addsumAHighB_uid1038_i_arrayidx10_avgpooling20_mult_x_im9_a) + $unsigned(addsumAHighB_uid1038_i_arrayidx10_avgpooling20_mult_x_im9_b);
        end
    end
    assign addsumAHighB_uid1038_i_arrayidx10_avgpooling20_mult_x_im9_q = addsumAHighB_uid1038_i_arrayidx10_avgpooling20_mult_x_im9_o[10:0];

    // lowRangeB_uid1036_i_arrayidx10_avgpooling20_mult_x_im9(BITSELECT,1035)@134
    assign lowRangeB_uid1036_i_arrayidx10_avgpooling20_mult_x_im9_in = sel_for_coalesced_delay_2_e[0:0];
    assign lowRangeB_uid1036_i_arrayidx10_avgpooling20_mult_x_im9_b = lowRangeB_uid1036_i_arrayidx10_avgpooling20_mult_x_im9_in[0:0];

    // add_uid1039_i_arrayidx10_avgpooling20_mult_x_im9(BITJOIN,1038)@134
    assign add_uid1039_i_arrayidx10_avgpooling20_mult_x_im9_q = {addsumAHighB_uid1038_i_arrayidx10_avgpooling20_mult_x_im9_q, lowRangeB_uid1036_i_arrayidx10_avgpooling20_mult_x_im9_b};

    // a_subconst_25_sumAHighB_uid1043_i_arrayidx10_avgpooling20_mult_x_im9(ADD,1042)@134
    assign a_subconst_25_sumAHighB_uid1043_i_arrayidx10_avgpooling20_mult_x_im9_a = {1'b0, add_uid1039_i_arrayidx10_avgpooling20_mult_x_im9_q};
    assign a_subconst_25_sumAHighB_uid1043_i_arrayidx10_avgpooling20_mult_x_im9_b = {6'b000000, highBBits_uid1042_i_arrayidx10_avgpooling20_mult_x_im9_b};
    assign a_subconst_25_sumAHighB_uid1043_i_arrayidx10_avgpooling20_mult_x_im9_o = $unsigned(a_subconst_25_sumAHighB_uid1043_i_arrayidx10_avgpooling20_mult_x_im9_a) + $unsigned(a_subconst_25_sumAHighB_uid1043_i_arrayidx10_avgpooling20_mult_x_im9_b);
    assign a_subconst_25_sumAHighB_uid1043_i_arrayidx10_avgpooling20_mult_x_im9_q = a_subconst_25_sumAHighB_uid1043_i_arrayidx10_avgpooling20_mult_x_im9_o[12:0];

    // lowRangeB_uid1041_i_arrayidx10_avgpooling20_mult_x_im9(BITSELECT,1040)@134
    assign lowRangeB_uid1041_i_arrayidx10_avgpooling20_mult_x_im9_in = sel_for_coalesced_delay_2_e[2:0];
    assign lowRangeB_uid1041_i_arrayidx10_avgpooling20_mult_x_im9_b = lowRangeB_uid1041_i_arrayidx10_avgpooling20_mult_x_im9_in[2:0];

    // a_subconst_25_uid1044_i_arrayidx10_avgpooling20_mult_x_im9(BITJOIN,1043)@134
    assign a_subconst_25_uid1044_i_arrayidx10_avgpooling20_mult_x_im9_q = {a_subconst_25_sumAHighB_uid1043_i_arrayidx10_avgpooling20_mult_x_im9_q, lowRangeB_uid1041_i_arrayidx10_avgpooling20_mult_x_im9_b};

    // sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9(BITSELECT,1047)@134
    assign sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_in = a_subconst_25_uid1044_i_arrayidx10_avgpooling20_mult_x_im9_q[14:0];
    assign sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b = sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_in[14:0];

    // redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0(REG,3529)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_q <= $unsigned(15'b000000000000000);
        end
        else if (SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_q <= $unsigned(sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b);
        end
    end

    // sR_mergedSignalTM_uid2985_i_arrayidx42_avgpooling20_mult_x_im9(BITJOIN,2984)@135
    assign sR_mergedSignalTM_uid2985_i_arrayidx42_avgpooling20_mult_x_im9_q = {redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_q, i_arrayidx10_avgpooling20_c_i2_03_x_q};

    // i_arrayidx42_avgpooling20_mult_x_sums_align_3(BITSHIFT,563)@135
    assign i_arrayidx42_avgpooling20_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid2985_i_arrayidx42_avgpooling20_mult_x_im9_q, 11'b00000000000 };
    assign i_arrayidx42_avgpooling20_mult_x_sums_align_3_q = i_arrayidx42_avgpooling20_mult_x_sums_align_3_qint[27:0];

    // highBBits_uid904_i_arrayidx10_avgpooling20_mult_x_im3(BITSELECT,903)@134
    assign highBBits_uid904_i_arrayidx10_avgpooling20_mult_x_im3_b = sel_for_coalesced_delay_2_c[17:3];

    // highBBits_uid899_i_arrayidx10_avgpooling20_mult_x_im3(BITSELECT,898)@133
    assign highBBits_uid899_i_arrayidx10_avgpooling20_mult_x_im3_b = i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select_c[17:1];

    // addsumAHighB_uid900_i_arrayidx10_avgpooling20_mult_x_im3(ADD,899)@133 + 1
    assign addsumAHighB_uid900_i_arrayidx10_avgpooling20_mult_x_im3_a = {1'b0, i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select_c};
    assign addsumAHighB_uid900_i_arrayidx10_avgpooling20_mult_x_im3_b = {2'b00, highBBits_uid899_i_arrayidx10_avgpooling20_mult_x_im3_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid900_i_arrayidx10_avgpooling20_mult_x_im3_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid900_i_arrayidx10_avgpooling20_mult_x_im3_o <= $unsigned(addsumAHighB_uid900_i_arrayidx10_avgpooling20_mult_x_im3_a) + $unsigned(addsumAHighB_uid900_i_arrayidx10_avgpooling20_mult_x_im3_b);
        end
    end
    assign addsumAHighB_uid900_i_arrayidx10_avgpooling20_mult_x_im3_q = addsumAHighB_uid900_i_arrayidx10_avgpooling20_mult_x_im3_o[18:0];

    // lowRangeB_uid898_i_arrayidx10_avgpooling20_mult_x_im3(BITSELECT,897)@134
    assign lowRangeB_uid898_i_arrayidx10_avgpooling20_mult_x_im3_in = sel_for_coalesced_delay_2_c[0:0];
    assign lowRangeB_uid898_i_arrayidx10_avgpooling20_mult_x_im3_b = lowRangeB_uid898_i_arrayidx10_avgpooling20_mult_x_im3_in[0:0];

    // add_uid901_i_arrayidx10_avgpooling20_mult_x_im3(BITJOIN,900)@134
    assign add_uid901_i_arrayidx10_avgpooling20_mult_x_im3_q = {addsumAHighB_uid900_i_arrayidx10_avgpooling20_mult_x_im3_q, lowRangeB_uid898_i_arrayidx10_avgpooling20_mult_x_im3_b};

    // a_subconst_25_sumAHighB_uid905_i_arrayidx10_avgpooling20_mult_x_im3(ADD,904)@134
    assign a_subconst_25_sumAHighB_uid905_i_arrayidx10_avgpooling20_mult_x_im3_a = {1'b0, add_uid901_i_arrayidx10_avgpooling20_mult_x_im3_q};
    assign a_subconst_25_sumAHighB_uid905_i_arrayidx10_avgpooling20_mult_x_im3_b = {6'b000000, highBBits_uid904_i_arrayidx10_avgpooling20_mult_x_im3_b};
    assign a_subconst_25_sumAHighB_uid905_i_arrayidx10_avgpooling20_mult_x_im3_o = $unsigned(a_subconst_25_sumAHighB_uid905_i_arrayidx10_avgpooling20_mult_x_im3_a) + $unsigned(a_subconst_25_sumAHighB_uid905_i_arrayidx10_avgpooling20_mult_x_im3_b);
    assign a_subconst_25_sumAHighB_uid905_i_arrayidx10_avgpooling20_mult_x_im3_q = a_subconst_25_sumAHighB_uid905_i_arrayidx10_avgpooling20_mult_x_im3_o[20:0];

    // lowRangeB_uid903_i_arrayidx10_avgpooling20_mult_x_im3(BITSELECT,902)@134
    assign lowRangeB_uid903_i_arrayidx10_avgpooling20_mult_x_im3_in = sel_for_coalesced_delay_2_c[2:0];
    assign lowRangeB_uid903_i_arrayidx10_avgpooling20_mult_x_im3_b = lowRangeB_uid903_i_arrayidx10_avgpooling20_mult_x_im3_in[2:0];

    // a_subconst_25_uid906_i_arrayidx10_avgpooling20_mult_x_im3(BITJOIN,905)@134
    assign a_subconst_25_uid906_i_arrayidx10_avgpooling20_mult_x_im3_q = {a_subconst_25_sumAHighB_uid905_i_arrayidx10_avgpooling20_mult_x_im3_q, lowRangeB_uid903_i_arrayidx10_avgpooling20_mult_x_im3_b};

    // sR_bottomRange_uid910_i_arrayidx10_avgpooling20_mult_x_im3(BITSELECT,909)@134
    assign sR_bottomRange_uid910_i_arrayidx10_avgpooling20_mult_x_im3_in = a_subconst_25_uid906_i_arrayidx10_avgpooling20_mult_x_im3_q[22:0];
    assign sR_bottomRange_uid910_i_arrayidx10_avgpooling20_mult_x_im3_b = sR_bottomRange_uid910_i_arrayidx10_avgpooling20_mult_x_im3_in[22:0];

    // redist48_sR_bottomRange_uid910_i_arrayidx10_avgpooling20_mult_x_im3_b_1_0(REG,3531)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_sR_bottomRange_uid910_i_arrayidx10_avgpooling20_mult_x_im3_b_1_0_q <= $unsigned(23'b00000000000000000000000);
        end
        else if (SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist48_sR_bottomRange_uid910_i_arrayidx10_avgpooling20_mult_x_im3_b_1_0_q <= $unsigned(sR_bottomRange_uid910_i_arrayidx10_avgpooling20_mult_x_im3_b);
        end
    end

    // sR_mergedSignalTM_uid2847_i_arrayidx42_avgpooling20_mult_x_im3(BITJOIN,2846)@135
    assign sR_mergedSignalTM_uid2847_i_arrayidx42_avgpooling20_mult_x_im3_q = {redist48_sR_bottomRange_uid910_i_arrayidx10_avgpooling20_mult_x_im3_b_1_0_q, i_arrayidx10_avgpooling20_c_i2_03_x_q};

    // i_arrayidx42_avgpooling20_mult_x_sums_align_2(BITSHIFT,562)@135
    assign i_arrayidx42_avgpooling20_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid2847_i_arrayidx42_avgpooling20_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx42_avgpooling20_mult_x_sums_align_2_q = i_arrayidx42_avgpooling20_mult_x_sums_align_2_qint[42:0];

    // i_arrayidx42_avgpooling20_mult_x_sums_join_4(BITJOIN,564)@135
    assign i_arrayidx42_avgpooling20_mult_x_sums_join_4_q = {i_arrayidx42_avgpooling20_mult_x_sums_align_3_q, i_arrayidx42_avgpooling20_mult_x_sums_align_2_q};

    // i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b(BITJOIN,3238)@135
    assign i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b_q = {GND_q, i_arrayidx42_avgpooling20_mult_x_sums_join_4_q};

    // i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b(BITSELECT,3241)@135
    assign i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_b = i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[51:0];
    assign i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_c = i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[71:52];

    // i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a(CONSTANT,3156)
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q = $unsigned(11'b00000000000);

    // highBBits_uid973_i_arrayidx10_avgpooling20_mult_x_im6(BITSELECT,972)@134
    assign highBBits_uid973_i_arrayidx10_avgpooling20_mult_x_im6_b = sel_for_coalesced_delay_2_d[17:3];

    // highBBits_uid968_i_arrayidx10_avgpooling20_mult_x_im6(BITSELECT,967)@133
    assign highBBits_uid968_i_arrayidx10_avgpooling20_mult_x_im6_b = i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select_d[17:1];

    // addsumAHighB_uid969_i_arrayidx10_avgpooling20_mult_x_im6(ADD,968)@133 + 1
    assign addsumAHighB_uid969_i_arrayidx10_avgpooling20_mult_x_im6_a = {1'b0, i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select_d};
    assign addsumAHighB_uid969_i_arrayidx10_avgpooling20_mult_x_im6_b = {2'b00, highBBits_uid968_i_arrayidx10_avgpooling20_mult_x_im6_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid969_i_arrayidx10_avgpooling20_mult_x_im6_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid969_i_arrayidx10_avgpooling20_mult_x_im6_o <= $unsigned(addsumAHighB_uid969_i_arrayidx10_avgpooling20_mult_x_im6_a) + $unsigned(addsumAHighB_uid969_i_arrayidx10_avgpooling20_mult_x_im6_b);
        end
    end
    assign addsumAHighB_uid969_i_arrayidx10_avgpooling20_mult_x_im6_q = addsumAHighB_uid969_i_arrayidx10_avgpooling20_mult_x_im6_o[18:0];

    // lowRangeB_uid967_i_arrayidx10_avgpooling20_mult_x_im6(BITSELECT,966)@134
    assign lowRangeB_uid967_i_arrayidx10_avgpooling20_mult_x_im6_in = sel_for_coalesced_delay_2_d[0:0];
    assign lowRangeB_uid967_i_arrayidx10_avgpooling20_mult_x_im6_b = lowRangeB_uid967_i_arrayidx10_avgpooling20_mult_x_im6_in[0:0];

    // add_uid970_i_arrayidx10_avgpooling20_mult_x_im6(BITJOIN,969)@134
    assign add_uid970_i_arrayidx10_avgpooling20_mult_x_im6_q = {addsumAHighB_uid969_i_arrayidx10_avgpooling20_mult_x_im6_q, lowRangeB_uid967_i_arrayidx10_avgpooling20_mult_x_im6_b};

    // a_subconst_25_sumAHighB_uid974_i_arrayidx10_avgpooling20_mult_x_im6(ADD,973)@134
    assign a_subconst_25_sumAHighB_uid974_i_arrayidx10_avgpooling20_mult_x_im6_a = {1'b0, add_uid970_i_arrayidx10_avgpooling20_mult_x_im6_q};
    assign a_subconst_25_sumAHighB_uid974_i_arrayidx10_avgpooling20_mult_x_im6_b = {6'b000000, highBBits_uid973_i_arrayidx10_avgpooling20_mult_x_im6_b};
    assign a_subconst_25_sumAHighB_uid974_i_arrayidx10_avgpooling20_mult_x_im6_o = $unsigned(a_subconst_25_sumAHighB_uid974_i_arrayidx10_avgpooling20_mult_x_im6_a) + $unsigned(a_subconst_25_sumAHighB_uid974_i_arrayidx10_avgpooling20_mult_x_im6_b);
    assign a_subconst_25_sumAHighB_uid974_i_arrayidx10_avgpooling20_mult_x_im6_q = a_subconst_25_sumAHighB_uid974_i_arrayidx10_avgpooling20_mult_x_im6_o[20:0];

    // lowRangeB_uid972_i_arrayidx10_avgpooling20_mult_x_im6(BITSELECT,971)@134
    assign lowRangeB_uid972_i_arrayidx10_avgpooling20_mult_x_im6_in = sel_for_coalesced_delay_2_d[2:0];
    assign lowRangeB_uid972_i_arrayidx10_avgpooling20_mult_x_im6_b = lowRangeB_uid972_i_arrayidx10_avgpooling20_mult_x_im6_in[2:0];

    // a_subconst_25_uid975_i_arrayidx10_avgpooling20_mult_x_im6(BITJOIN,974)@134
    assign a_subconst_25_uid975_i_arrayidx10_avgpooling20_mult_x_im6_q = {a_subconst_25_sumAHighB_uid974_i_arrayidx10_avgpooling20_mult_x_im6_q, lowRangeB_uid972_i_arrayidx10_avgpooling20_mult_x_im6_b};

    // sR_bottomRange_uid979_i_arrayidx10_avgpooling20_mult_x_im6(BITSELECT,978)@134
    assign sR_bottomRange_uid979_i_arrayidx10_avgpooling20_mult_x_im6_in = a_subconst_25_uid975_i_arrayidx10_avgpooling20_mult_x_im6_q[22:0];
    assign sR_bottomRange_uid979_i_arrayidx10_avgpooling20_mult_x_im6_b = sR_bottomRange_uid979_i_arrayidx10_avgpooling20_mult_x_im6_in[22:0];

    // redist47_sR_bottomRange_uid979_i_arrayidx10_avgpooling20_mult_x_im6_b_1_0(REG,3530)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sR_bottomRange_uid979_i_arrayidx10_avgpooling20_mult_x_im6_b_1_0_q <= $unsigned(23'b00000000000000000000000);
        end
        else if (SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist47_sR_bottomRange_uid979_i_arrayidx10_avgpooling20_mult_x_im6_b_1_0_q <= $unsigned(sR_bottomRange_uid979_i_arrayidx10_avgpooling20_mult_x_im6_b);
        end
    end

    // sR_mergedSignalTM_uid2916_i_arrayidx42_avgpooling20_mult_x_im6(BITJOIN,2915)@135
    assign sR_mergedSignalTM_uid2916_i_arrayidx42_avgpooling20_mult_x_im6_q = {redist47_sR_bottomRange_uid979_i_arrayidx10_avgpooling20_mult_x_im6_b_1_0_q, i_arrayidx10_avgpooling20_c_i2_03_x_q};

    // i_arrayidx42_avgpooling20_mult_x_sums_align_0(BITSHIFT,560)@135
    assign i_arrayidx42_avgpooling20_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid2916_i_arrayidx42_avgpooling20_mult_x_im6_q, 11'b00000000000 };
    assign i_arrayidx42_avgpooling20_mult_x_sums_align_0_q = i_arrayidx42_avgpooling20_mult_x_sums_align_0_qint[35:0];

    // highBBits_uid835_i_arrayidx10_avgpooling20_mult_x_im0(BITSELECT,834)@134
    assign highBBits_uid835_i_arrayidx10_avgpooling20_mult_x_im0_b = sel_for_coalesced_delay_2_b[17:3];

    // highBBits_uid830_i_arrayidx10_avgpooling20_mult_x_im0(BITSELECT,829)@133
    assign highBBits_uid830_i_arrayidx10_avgpooling20_mult_x_im0_b = i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select_b[17:1];

    // addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0(ADD,830)@133 + 1
    assign addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_a = {1'b0, i_arrayidx10_avgpooling20_mult_x_bs1_merged_bit_select_b};
    assign addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_b = {2'b00, highBBits_uid830_i_arrayidx10_avgpooling20_mult_x_im0_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_o <= $unsigned(addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_a) + $unsigned(addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_b);
        end
    end
    assign addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_q = addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_o[18:0];

    // lowRangeB_uid829_i_arrayidx10_avgpooling20_mult_x_im0(BITSELECT,828)@134
    assign lowRangeB_uid829_i_arrayidx10_avgpooling20_mult_x_im0_in = sel_for_coalesced_delay_2_b[0:0];
    assign lowRangeB_uid829_i_arrayidx10_avgpooling20_mult_x_im0_b = lowRangeB_uid829_i_arrayidx10_avgpooling20_mult_x_im0_in[0:0];

    // add_uid832_i_arrayidx10_avgpooling20_mult_x_im0(BITJOIN,831)@134
    assign add_uid832_i_arrayidx10_avgpooling20_mult_x_im0_q = {addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_q, lowRangeB_uid829_i_arrayidx10_avgpooling20_mult_x_im0_b};

    // a_subconst_25_sumAHighB_uid836_i_arrayidx10_avgpooling20_mult_x_im0(ADD,835)@134
    assign a_subconst_25_sumAHighB_uid836_i_arrayidx10_avgpooling20_mult_x_im0_a = {1'b0, add_uid832_i_arrayidx10_avgpooling20_mult_x_im0_q};
    assign a_subconst_25_sumAHighB_uid836_i_arrayidx10_avgpooling20_mult_x_im0_b = {6'b000000, highBBits_uid835_i_arrayidx10_avgpooling20_mult_x_im0_b};
    assign a_subconst_25_sumAHighB_uid836_i_arrayidx10_avgpooling20_mult_x_im0_o = $unsigned(a_subconst_25_sumAHighB_uid836_i_arrayidx10_avgpooling20_mult_x_im0_a) + $unsigned(a_subconst_25_sumAHighB_uid836_i_arrayidx10_avgpooling20_mult_x_im0_b);
    assign a_subconst_25_sumAHighB_uid836_i_arrayidx10_avgpooling20_mult_x_im0_q = a_subconst_25_sumAHighB_uid836_i_arrayidx10_avgpooling20_mult_x_im0_o[20:0];

    // lowRangeB_uid834_i_arrayidx10_avgpooling20_mult_x_im0(BITSELECT,833)@134
    assign lowRangeB_uid834_i_arrayidx10_avgpooling20_mult_x_im0_in = sel_for_coalesced_delay_2_b[2:0];
    assign lowRangeB_uid834_i_arrayidx10_avgpooling20_mult_x_im0_b = lowRangeB_uid834_i_arrayidx10_avgpooling20_mult_x_im0_in[2:0];

    // a_subconst_25_uid837_i_arrayidx10_avgpooling20_mult_x_im0(BITJOIN,836)@134
    assign a_subconst_25_uid837_i_arrayidx10_avgpooling20_mult_x_im0_q = {a_subconst_25_sumAHighB_uid836_i_arrayidx10_avgpooling20_mult_x_im0_q, lowRangeB_uid834_i_arrayidx10_avgpooling20_mult_x_im0_b};

    // sR_bottomRange_uid841_i_arrayidx10_avgpooling20_mult_x_im0(BITSELECT,840)@134
    assign sR_bottomRange_uid841_i_arrayidx10_avgpooling20_mult_x_im0_in = a_subconst_25_uid837_i_arrayidx10_avgpooling20_mult_x_im0_q[22:0];
    assign sR_bottomRange_uid841_i_arrayidx10_avgpooling20_mult_x_im0_b = sR_bottomRange_uid841_i_arrayidx10_avgpooling20_mult_x_im0_in[22:0];

    // redist49_sR_bottomRange_uid841_i_arrayidx10_avgpooling20_mult_x_im0_b_1_0(REG,3532)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_sR_bottomRange_uid841_i_arrayidx10_avgpooling20_mult_x_im0_b_1_0_q <= $unsigned(23'b00000000000000000000000);
        end
        else if (SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_backEN == 1'b1)
        begin
            redist49_sR_bottomRange_uid841_i_arrayidx10_avgpooling20_mult_x_im0_b_1_0_q <= $unsigned(sR_bottomRange_uid841_i_arrayidx10_avgpooling20_mult_x_im0_b);
        end
    end

    // sR_mergedSignalTM_uid2778_i_arrayidx42_avgpooling20_mult_x_im0(BITJOIN,2777)@135
    assign sR_mergedSignalTM_uid2778_i_arrayidx42_avgpooling20_mult_x_im0_q = {redist49_sR_bottomRange_uid841_i_arrayidx10_avgpooling20_mult_x_im0_b_1_0_q, i_arrayidx10_avgpooling20_c_i2_03_x_q};

    // i_arrayidx42_avgpooling20_mult_x_sums_join_1(BITJOIN,561)@135
    assign i_arrayidx42_avgpooling20_mult_x_sums_join_1_q = {i_arrayidx42_avgpooling20_mult_x_sums_align_0_q, sR_mergedSignalTM_uid2778_i_arrayidx42_avgpooling20_mult_x_im0_q};

    // i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a(BITJOIN,3236)@135
    assign i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a_q = {i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, i_arrayidx42_avgpooling20_mult_x_sums_join_1_q};

    // i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a(BITSELECT,3240)@135
    assign i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_b = i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[51:0];
    assign i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_c = i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[71:52];

    // sR_bottomExtension_uid840_i_arrayidx10_avgpooling20_mult_x_im0(CONSTANT,839)
    assign sR_bottomExtension_uid840_i_arrayidx10_avgpooling20_mult_x_im0_q = $unsigned(4'b0000);

    // sR_mergedSignalTM_uid1049_i_arrayidx10_avgpooling20_mult_x_im9(BITJOIN,1048)@135
    assign sR_mergedSignalTM_uid1049_i_arrayidx10_avgpooling20_mult_x_im9_q = {redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_q, sR_bottomExtension_uid840_i_arrayidx10_avgpooling20_mult_x_im0_q};

    // i_arrayidx33_avgpooling20_mult_x_sums_align_3(BITSHIFT,527)@135
    assign i_arrayidx33_avgpooling20_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid1049_i_arrayidx10_avgpooling20_mult_x_im9_q, 9'b000000000 };
    assign i_arrayidx33_avgpooling20_mult_x_sums_align_3_q = i_arrayidx33_avgpooling20_mult_x_sums_align_3_qint[27:0];

    // sR_mergedSignalTM_uid911_i_arrayidx10_avgpooling20_mult_x_im3(BITJOIN,910)@135
    assign sR_mergedSignalTM_uid911_i_arrayidx10_avgpooling20_mult_x_im3_q = {redist48_sR_bottomRange_uid910_i_arrayidx10_avgpooling20_mult_x_im3_b_1_0_q, sR_bottomExtension_uid840_i_arrayidx10_avgpooling20_mult_x_im0_q};

    // i_arrayidx33_avgpooling20_mult_x_sums_align_2(BITSHIFT,526)@135
    assign i_arrayidx33_avgpooling20_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid911_i_arrayidx10_avgpooling20_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx33_avgpooling20_mult_x_sums_align_2_q = i_arrayidx33_avgpooling20_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx33_avgpooling20_mult_x_sums_join_4(BITJOIN,528)@135
    assign i_arrayidx33_avgpooling20_mult_x_sums_join_4_q = {i_arrayidx33_avgpooling20_mult_x_sums_align_3_q, i_arrayidx33_avgpooling20_mult_x_sums_align_2_q};

    // i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b(BITJOIN,3220)@135
    assign i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b_q = {GND_q, i_arrayidx33_avgpooling20_mult_x_sums_join_4_q};

    // i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b(BITSELECT,3223)@135
    assign i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_b = i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[51:0];
    assign i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_c = i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[73:52];

    // sR_mergedSignalTM_uid980_i_arrayidx10_avgpooling20_mult_x_im6(BITJOIN,979)@135
    assign sR_mergedSignalTM_uid980_i_arrayidx10_avgpooling20_mult_x_im6_q = {redist47_sR_bottomRange_uid979_i_arrayidx10_avgpooling20_mult_x_im6_b_1_0_q, sR_bottomExtension_uid840_i_arrayidx10_avgpooling20_mult_x_im0_q};

    // i_arrayidx33_avgpooling20_mult_x_sums_align_0(BITSHIFT,524)@135
    assign i_arrayidx33_avgpooling20_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid980_i_arrayidx10_avgpooling20_mult_x_im6_q, 9'b000000000 };
    assign i_arrayidx33_avgpooling20_mult_x_sums_align_0_q = i_arrayidx33_avgpooling20_mult_x_sums_align_0_qint[35:0];

    // sR_mergedSignalTM_uid842_i_arrayidx10_avgpooling20_mult_x_im0(BITJOIN,841)@135
    assign sR_mergedSignalTM_uid842_i_arrayidx10_avgpooling20_mult_x_im0_q = {redist49_sR_bottomRange_uid841_i_arrayidx10_avgpooling20_mult_x_im0_b_1_0_q, sR_bottomExtension_uid840_i_arrayidx10_avgpooling20_mult_x_im0_q};

    // i_arrayidx33_avgpooling20_mult_x_sums_join_1(BITJOIN,525)@135
    assign i_arrayidx33_avgpooling20_mult_x_sums_join_1_q = {i_arrayidx33_avgpooling20_mult_x_sums_align_0_q, sR_mergedSignalTM_uid842_i_arrayidx10_avgpooling20_mult_x_im0_q};

    // i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a(BITJOIN,3218)@135
    assign i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a_q = {i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, i_arrayidx33_avgpooling20_mult_x_sums_join_1_q};

    // i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a(BITSELECT,3222)@135
    assign i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_b = i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[51:0];
    assign i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_c = i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[73:52];

    // i_arrayidx24_avgpooling20_mult_x_sums_align_3(BITSHIFT,491)@135
    assign i_arrayidx24_avgpooling20_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid1049_i_arrayidx10_avgpooling20_mult_x_im9_q, 9'b000000000 };
    assign i_arrayidx24_avgpooling20_mult_x_sums_align_3_q = i_arrayidx24_avgpooling20_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx24_avgpooling20_mult_x_sums_align_2(BITSHIFT,490)@135
    assign i_arrayidx24_avgpooling20_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid911_i_arrayidx10_avgpooling20_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx24_avgpooling20_mult_x_sums_align_2_q = i_arrayidx24_avgpooling20_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx24_avgpooling20_mult_x_sums_join_4(BITJOIN,492)@135
    assign i_arrayidx24_avgpooling20_mult_x_sums_join_4_q = {i_arrayidx24_avgpooling20_mult_x_sums_align_3_q, i_arrayidx24_avgpooling20_mult_x_sums_align_2_q};

    // i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b(BITJOIN,3202)@135
    assign i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b_q = {GND_q, i_arrayidx24_avgpooling20_mult_x_sums_join_4_q};

    // i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b(BITSELECT,3205)@135
    assign i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_b = i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[51:0];
    assign i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_c = i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[73:52];

    // i_arrayidx24_avgpooling20_mult_x_sums_align_0(BITSHIFT,488)@135
    assign i_arrayidx24_avgpooling20_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid980_i_arrayidx10_avgpooling20_mult_x_im6_q, 9'b000000000 };
    assign i_arrayidx24_avgpooling20_mult_x_sums_align_0_q = i_arrayidx24_avgpooling20_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx24_avgpooling20_mult_x_sums_join_1(BITJOIN,489)@135
    assign i_arrayidx24_avgpooling20_mult_x_sums_join_1_q = {i_arrayidx24_avgpooling20_mult_x_sums_align_0_q, sR_mergedSignalTM_uid842_i_arrayidx10_avgpooling20_mult_x_im0_q};

    // i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a(BITJOIN,3200)@135
    assign i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a_q = {i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, i_arrayidx24_avgpooling20_mult_x_sums_join_1_q};

    // i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a(BITSELECT,3204)@135
    assign i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_b = i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[51:0];
    assign i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_c = i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[73:52];

    // i_arrayidx16_avgpooling20_mult_x_sums_align_3(BITSHIFT,455)@135
    assign i_arrayidx16_avgpooling20_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid1049_i_arrayidx10_avgpooling20_mult_x_im9_q, 9'b000000000 };
    assign i_arrayidx16_avgpooling20_mult_x_sums_align_3_q = i_arrayidx16_avgpooling20_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx16_avgpooling20_mult_x_sums_align_2(BITSHIFT,454)@135
    assign i_arrayidx16_avgpooling20_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid911_i_arrayidx10_avgpooling20_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx16_avgpooling20_mult_x_sums_align_2_q = i_arrayidx16_avgpooling20_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx16_avgpooling20_mult_x_sums_join_4(BITJOIN,456)@135
    assign i_arrayidx16_avgpooling20_mult_x_sums_join_4_q = {i_arrayidx16_avgpooling20_mult_x_sums_align_3_q, i_arrayidx16_avgpooling20_mult_x_sums_align_2_q};

    // i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b(BITJOIN,3184)@135
    assign i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b_q = {GND_q, i_arrayidx16_avgpooling20_mult_x_sums_join_4_q};

    // i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b(BITSELECT,3187)@135
    assign i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_b = i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[51:0];
    assign i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_c = i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[73:52];

    // i_arrayidx16_avgpooling20_mult_x_sums_align_0(BITSHIFT,452)@135
    assign i_arrayidx16_avgpooling20_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid980_i_arrayidx10_avgpooling20_mult_x_im6_q, 9'b000000000 };
    assign i_arrayidx16_avgpooling20_mult_x_sums_align_0_q = i_arrayidx16_avgpooling20_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx16_avgpooling20_mult_x_sums_join_1(BITJOIN,453)@135
    assign i_arrayidx16_avgpooling20_mult_x_sums_join_1_q = {i_arrayidx16_avgpooling20_mult_x_sums_align_0_q, sR_mergedSignalTM_uid842_i_arrayidx10_avgpooling20_mult_x_im0_q};

    // i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a(BITJOIN,3182)@135
    assign i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a_q = {i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, i_arrayidx16_avgpooling20_mult_x_sums_join_1_q};

    // i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a(BITSELECT,3186)@135
    assign i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_b = i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[51:0];
    assign i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_c = i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[73:52];

    // i_arrayidx10_avgpooling20_mult_x_sums_align_3(BITSHIFT,419)@135
    assign i_arrayidx10_avgpooling20_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid1049_i_arrayidx10_avgpooling20_mult_x_im9_q, 9'b000000000 };
    assign i_arrayidx10_avgpooling20_mult_x_sums_align_3_q = i_arrayidx10_avgpooling20_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx10_avgpooling20_mult_x_sums_align_2(BITSHIFT,418)@135
    assign i_arrayidx10_avgpooling20_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid911_i_arrayidx10_avgpooling20_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx10_avgpooling20_mult_x_sums_align_2_q = i_arrayidx10_avgpooling20_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx10_avgpooling20_mult_x_sums_join_4(BITJOIN,420)@135
    assign i_arrayidx10_avgpooling20_mult_x_sums_join_4_q = {i_arrayidx10_avgpooling20_mult_x_sums_align_3_q, i_arrayidx10_avgpooling20_mult_x_sums_align_2_q};

    // i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b(BITJOIN,3166)@135
    assign i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b_q = {GND_q, i_arrayidx10_avgpooling20_mult_x_sums_join_4_q};

    // i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b(BITSELECT,3169)@135
    assign i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_b = i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[51:0];
    assign i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_c = i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[73:52];

    // i_arrayidx10_avgpooling20_mult_x_sums_align_0(BITSHIFT,416)@135
    assign i_arrayidx10_avgpooling20_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid980_i_arrayidx10_avgpooling20_mult_x_im6_q, 9'b000000000 };
    assign i_arrayidx10_avgpooling20_mult_x_sums_align_0_q = i_arrayidx10_avgpooling20_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx10_avgpooling20_mult_x_sums_join_1(BITJOIN,417)@135
    assign i_arrayidx10_avgpooling20_mult_x_sums_join_1_q = {i_arrayidx10_avgpooling20_mult_x_sums_align_0_q, sR_mergedSignalTM_uid842_i_arrayidx10_avgpooling20_mult_x_im0_q};

    // i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a(BITJOIN,3164)@135
    assign i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a_q = {i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, i_arrayidx10_avgpooling20_mult_x_sums_join_1_q};

    // i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a(BITSELECT,3168)@135
    assign i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_b = i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[51:0];
    assign i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_c = i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[73:52];

    // SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0(STALLENABLE,4175)
    // Valid signal propagation
    assign SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_V0 = SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_s_tv_0 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backStall & SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_backEN = ~ (SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_v_s_0 = SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_backEN & SE_addsumAHighB_uid831_i_arrayidx10_avgpooling20_mult_x_im0_V0;
    // Backward Stall generation
    assign SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_backStall = ~ (SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_backEN == 1'b0)
            begin
                SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_R_v_0 <= SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_R_v_0 & SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_R_v_0 <= SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2(STALLREG,4401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data5 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data6 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data7 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data8 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data9 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data10 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data11 <= 44'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data12 <= 44'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data13 <= 44'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data14 <= 44'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data15 <= 40'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backStall & (SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid | SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= $unsigned(i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= $unsigned(i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= $unsigned(i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data5 <= $unsigned(i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data6 <= $unsigned(i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data7 <= $unsigned(i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data8 <= $unsigned(i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data9 <= $unsigned(i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data10 <= $unsigned(redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_1_q);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data11 <= $unsigned(join_for_coalesced_delay_5_q);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data12 <= $unsigned(join_for_coalesced_delay_7_q);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data13 <= $unsigned(join_for_coalesced_delay_9_q);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data14 <= $unsigned(join_for_coalesced_delay_11_q);
                SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data15 <= $unsigned(join_for_coalesced_delay_13_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_i_valid = SE_redist46_sR_bottomRange_uid1048_i_arrayidx10_avgpooling20_mult_x_im9_b_1_0_V0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backStall = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_V = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid : SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D0 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data0 : i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    // Data1
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D1 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data1 : i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    // Data2
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D2 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data2 : i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    // Data3
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D3 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data3 : i_arrayidx16_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    // Data4
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D4 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data4 : i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    // Data5
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D5 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data5 : i_arrayidx24_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    // Data6
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D6 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data6 : i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    // Data7
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D7 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data7 : i_arrayidx33_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    // Data8
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D8 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data8 : i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    // Data9
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D9 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data9 : i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    // Data10
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D10 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data10 : redist52_i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_data_out_5_1_q;
    // Data11
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D11 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data11 : join_for_coalesced_delay_5_q;
    // Data12
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D12 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data12 : join_for_coalesced_delay_7_q;
    // Data13
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D13 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data13 : join_for_coalesced_delay_9_q;
    // Data14
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D14 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data14 : join_for_coalesced_delay_11_q;
    // Data15
    assign SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D15 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_r_data15 : join_for_coalesced_delay_13_q;

    // i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2(ADD,3242)@135 + 1
    assign i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D8};
    assign i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_D9};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1(STALLENABLE,4235)
    // Valid signal propagation
    assign SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_out_stall_out | ~ (SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_wireValid = bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x(BLACKBOX,168)@135
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0_0_tpl@136
    // out out_dest_data_out_0_0_1_tpl@136
    // out out_stall_out@20000000
    // out out_valid_out@136
    avgpooling2_i_llvm_fpga_ffwd_dest_s_stru0000oling24_avgpooling20 thei_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x (
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_backStall),
        .in_valid_in(SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_0_0_0_tpl(),
        .out_dest_data_out_0_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_out_dest_data_out_0_0_1_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x(BITJOIN,3581)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_q = i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_out_dest_data_out_0_0_1_tpl;

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x(BITSELECT,3582)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_q[63:0]);

    // i_arrayidx42_avgpooling20_add_x_BitExpansion_for_a(BITJOIN,3146)@136
    assign i_arrayidx42_avgpooling20_add_x_BitExpansion_for_a_q = {GND_q, bubble_select_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_b};

    // i_arrayidx42_avgpooling20_add_x_BitSelect_for_a(BITSELECT,3150)@136
    assign i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_b = i_arrayidx42_avgpooling20_add_x_BitExpansion_for_a_q[51:0];
    assign i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c = i_arrayidx42_avgpooling20_add_x_BitExpansion_for_a_q[64:52];

    // SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2(STALLENABLE,4009)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_V0 = SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_V1 = SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_V2 = SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_backStall & SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 = SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p2_of_2_backStall & SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2 = SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_backStall & SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_or0 = SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_or1 = SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 | SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_or0;
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backEN = ~ (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2 | SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_v_s_0 = SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backEN & SR_SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backStall = ~ (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= 1'b0;
            SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 & SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 & SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 & SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x(STALLENABLE,3707)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_consumed0 = (~ (SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_consumed1 = (~ (SE_redist36_i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_StallValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_backStall & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_or0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_backStall = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_V1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_wireValid = i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_out_valid_out;

    // SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2(STALLREG,4402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_r_valid <= SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_b);
                SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_and0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling24_avgpooling20_aunroll_x_V0;
    assign SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_i_valid = SE_i_arrayidx10_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_V2 & SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_backStall = SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_V = SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_D0 = SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_r_data0 : i_arrayidx42_avgpooling20_add_x_BitSelect_for_a_b;
    // Data1
    assign SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_D1 = SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_r_data1 : i_arrayidx42_avgpooling20_mult_x_sums_result_add_0_0_p1_of_2_q;

    // i_arrayidx42_avgpooling20_add_x_p1_of_2(ADD,3152)@136 + 1
    assign i_arrayidx42_avgpooling20_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_D0};
    assign i_arrayidx42_avgpooling20_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx42_avgpooling20_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx42_avgpooling20_add_x_p1_of_2_o <= $unsigned(i_arrayidx42_avgpooling20_add_x_p1_of_2_a) + $unsigned(i_arrayidx42_avgpooling20_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx42_avgpooling20_add_x_p1_of_2_c[0] = i_arrayidx42_avgpooling20_add_x_p1_of_2_o[52];
    assign i_arrayidx42_avgpooling20_add_x_p1_of_2_q = i_arrayidx42_avgpooling20_add_x_p1_of_2_o[51:0];

    // SE_i_arrayidx42_avgpooling20_add_x_p1_of_2(STALLENABLE,3997)
    // Valid signal propagation
    assign SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_V0 = SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_V1 = SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx42_avgpooling20_add_x_p2_of_2_backStall & SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_or0 = SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_v_s_0 = SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_backEN & SR_SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_R_v_0 & SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_R_v_1 & SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2(STALLREG,4404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_r_valid <= SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx42_avgpooling20_add_x_p1_of_2_q);
                SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_and0 = SE_i_arrayidx42_avgpooling20_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_i_valid = SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V2 & SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_backStall = SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_V = SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_D0 = SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_r_data0 : i_arrayidx42_avgpooling20_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_D1 = SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_r_data1 : i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;

    // i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2(ADD,3134)@137 + 1
    assign i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_D0};
    assign i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_o <= $unsigned(i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_a) + $unsigned(i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_c[0] = i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_o[52];
    assign i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_q = i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_o[51:0];

    // SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2(STALLENABLE,3990)
    // Valid signal propagation
    assign SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_V0 = SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_V1 = SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_backStall & SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_or0 = SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_v_s_0 = SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_backEN & SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_R_v_0 & SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_R_v_1 & SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2(STALLREG,4405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_r_valid <= SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_q);
                SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_and0 = SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_i_valid = SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_V0 & SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_backStall = SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_V = SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_D0 = SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_r_data0 : i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_D1 = SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_r_data1 : i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2(ADD,3143)@138 + 1
    assign i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_D0};
    assign i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_o <= $unsigned(i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_a) + $unsigned(i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_c[0] = i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_o[52];
    assign i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q = i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_o[51:0];

    // SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2(STALLENABLE,3992)
    // Valid signal propagation
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_V0 = SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_V1 = SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_backStall & SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_s_tv_1 = SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_or0 = SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_v_s_0 = SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_backEN & SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_R_v_0 & SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_R_v_1 & SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0(STALLREG,4411)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid <= SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_V = SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q;

    // SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0(STALLENABLE,4169)
    // Valid signal propagation
    assign SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_V0 = SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_backStall & SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2(STALLENABLE,3993)
    // Valid signal propagation
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_V0 = SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_s_tv_0 = SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_backStall & SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_backEN = ~ (SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_v_s_0 = SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_backEN & SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_backStall = ~ (SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_R_v_0 & SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_R_v_0 <= SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q(STALLENABLE,3994)
    // Valid signal propagation
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_V0 = SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_backStall = coalesced_delay_3_fifo_stall_out | ~ (SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_and0 = SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_V0;
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_and1 = SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_V0 & SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_and0;
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_wireValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_V4 & SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_and1;

    // leftShiftStage0Idx1Rng1_uid570_i_cleanups_shl_avgpooling20_shift_x(BITSELECT,569)@140
    assign leftShiftStage0Idx1Rng1_uid570_i_cleanups_shl_avgpooling20_shift_x_in = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_b[0:0];
    assign leftShiftStage0Idx1Rng1_uid570_i_cleanups_shl_avgpooling20_shift_x_b = leftShiftStage0Idx1Rng1_uid570_i_cleanups_shl_avgpooling20_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid571_i_cleanups_shl_avgpooling20_shift_x(BITJOIN,570)@140
    assign leftShiftStage0Idx1_uid571_i_cleanups_shl_avgpooling20_shift_x_q = {leftShiftStage0Idx1Rng1_uid570_i_cleanups_shl_avgpooling20_shift_x_b, GND_q};

    // leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x(MUX,572)@140
    assign leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_b or leftShiftStage0Idx1_uid571_i_cleanups_shl_avgpooling20_shift_x_q)
    begin
        unique case (leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_s)
            1'b0 : leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_b;
            1'b1 : leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_q = leftShiftStage0Idx1_uid571_i_cleanups_shl_avgpooling20_shift_x_q;
            default : leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_avgpooling219_vt_select_1(BITSELECT,201)@140
    assign i_cleanups_shl_avgpooling219_vt_select_1_b = leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_q[1:1];

    // i_cleanups_shl_avgpooling219_vt_join(BITJOIN,200)@140
    assign i_cleanups_shl_avgpooling219_vt_join_q = {i_cleanups_shl_avgpooling219_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_avgpooling241(LOGICAL,210)@140
    assign i_first_cleanup_xor_avgpooling241_q = i_first_cleanup_avgpooling218_sel_x_b ^ VCC_q;

    // i_or_avgpooling256(LOGICAL,283)@140
    assign i_or_avgpooling256_q = i_notcmp_avgpooling247_q | i_first_cleanup_xor_avgpooling241_q;

    // i_next_cleanups_avgpooling263(MUX,278)@140
    assign i_next_cleanups_avgpooling263_s = i_or_avgpooling256_q;
    always @(i_next_cleanups_avgpooling263_s or bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_b or i_cleanups_shl_avgpooling219_vt_join_q)
    begin
        unique case (i_next_cleanups_avgpooling263_s)
            1'b0 : i_next_cleanups_avgpooling263_q = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_b;
            1'b1 : i_next_cleanups_avgpooling263_q = i_cleanups_shl_avgpooling219_vt_join_q;
            default : i_next_cleanups_avgpooling263_q = 2'b0;
        endcase
    end

    // SE_out_i_llvm_fpga_push_i2_cleanups_push24_avgpooling266(STALLENABLE,3794)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push24_avgpooling266_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push24_avgpooling266_wireValid = i_llvm_fpga_push_i2_cleanups_push24_avgpooling266_out_valid_out;

    // i_llvm_fpga_push_i2_cleanups_push24_avgpooling266(BLACKBOX,271)@140
    // in in_stall_in@20000000
    // out out_data_out@141
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@141
    avgpooling2_i_llvm_fpga_push_i2_cleanups_push24_0 thei_llvm_fpga_push_i2_cleanups_push24_avgpooling266 (
        .in_data_in(SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_D0),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_out_feedback_stall_out_24),
        .in_keep_going(SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_cleanups_push24_avgpooling266_backStall),
        .in_valid_in(SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_V0),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i2_cleanups_push24_avgpooling266_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i2_cleanups_push24_avgpooling266_out_feedback_valid_out_24),
        .out_stall_out(i_llvm_fpga_push_i2_cleanups_push24_avgpooling266_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_cleanups_push24_avgpooling266_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x(STALLENABLE,3867)
    // Valid signal propagation
    assign SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_V0 = SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_wireValid;
    // Backward Stall generation
    assign SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_backStall = i_llvm_fpga_push_i2_cleanups_push24_avgpooling266_out_stall_out | ~ (SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_wireValid = SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_V;

    // SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x(STALLREG,4431)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_r_valid <= 1'b0;
            SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_r_data0 <= 2'bxx;
            SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_r_valid <= SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_backStall & (SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_r_valid | SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_i_valid);

            if (SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_r_data0 <= i_next_cleanups_avgpooling263_q;
                SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_r_data1 <= $unsigned(redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_and0 = SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_V1;
    assign SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_and1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_V0 & SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_and0;
    assign SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_i_valid = SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_V0 & SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_and1;
    // Stall signal propagation
    assign SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_backStall = SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_r_valid | ~ (SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_i_valid);

    // Valid
    assign SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_V = SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_r_valid : SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_i_valid;

    // Data0
    assign SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_D0 = SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_r_data0 : i_next_cleanups_avgpooling263_q;
    // Data1
    assign SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_D1 = SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_r_data1 : redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_q;

    // SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22(STALLENABLE,3764)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg2 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg3 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg4 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_consumed0 = (~ (SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_consumed2 = (~ (SR_SE_i_masked_avgpooling257_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_consumed3 = (~ (SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_consumed4 = (~ (SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_StallValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_backStall & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_toReg0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_toReg1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_consumed1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_toReg2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_consumed2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_toReg3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_consumed3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_toReg4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_or0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_or1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_consumed1 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_or0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_or2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_consumed2 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_or1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_or3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_consumed3 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_or2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_consumed4 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_or3);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_backStall = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_V0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_V1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_V2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_V3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_V4 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_wireValid = i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_out_valid_out;

    // i_masked_avgpooling257(LOGICAL,277)@140 + 1
    assign i_masked_avgpooling257_qi = SR_SE_i_masked_avgpooling257_D0 & SR_SE_i_masked_avgpooling257_D1;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_avgpooling257_delay ( .xin(i_masked_avgpooling257_qi), .xout(i_masked_avgpooling257_q), .ena(SE_i_masked_avgpooling257_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist51_i_masked_avgpooling257_q_136_fifo(STALLFIFO,3534)
    assign redist51_i_masked_avgpooling257_q_136_fifo_valid_in = SE_in_redist51_i_masked_avgpooling257_q_136_fifo_V0;
    assign redist51_i_masked_avgpooling257_q_136_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_backStall;
    assign redist51_i_masked_avgpooling257_q_136_fifo_data_in = i_masked_avgpooling257_q;
    assign redist51_i_masked_avgpooling257_q_136_fifo_valid_in_bitsignaltemp = redist51_i_masked_avgpooling257_q_136_fifo_valid_in[0];
    assign redist51_i_masked_avgpooling257_q_136_fifo_stall_in_bitsignaltemp = redist51_i_masked_avgpooling257_q_136_fifo_stall_in[0];
    assign redist51_i_masked_avgpooling257_q_136_fifo_valid_out[0] = redist51_i_masked_avgpooling257_q_136_fifo_valid_out_bitsignaltemp;
    assign redist51_i_masked_avgpooling257_q_136_fifo_stall_out[0] = redist51_i_masked_avgpooling257_q_136_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(136),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist51_i_masked_avgpooling257_q_136_fifo (
        .valid_in(redist51_i_masked_avgpooling257_q_136_fifo_valid_in_bitsignaltemp),
        .stall_in(redist51_i_masked_avgpooling257_q_136_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_avgpooling257_q),
        .valid_out(redist51_i_masked_avgpooling257_q_136_fifo_valid_out_bitsignaltemp),
        .stall_out(redist51_i_masked_avgpooling257_q_136_fifo_stall_out_bitsignaltemp),
        .data_out(redist51_i_masked_avgpooling257_q_136_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_redist51_i_masked_avgpooling257_q_136_fifo(STALLENABLE,4180)
    // Valid signal propagation
    assign SE_in_redist51_i_masked_avgpooling257_q_136_fifo_V0 = SE_in_redist51_i_masked_avgpooling257_q_136_fifo_wireValid;
    // Backward Stall generation
    assign SE_in_redist51_i_masked_avgpooling257_q_136_fifo_backStall = redist51_i_masked_avgpooling257_q_136_fifo_stall_out | ~ (SE_in_redist51_i_masked_avgpooling257_q_136_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_redist51_i_masked_avgpooling257_q_136_fifo_wireValid = SE_i_masked_avgpooling257_V0;

    // SE_i_masked_avgpooling257(STALLENABLE,3805)
    // Valid signal propagation
    assign SE_i_masked_avgpooling257_V0 = SE_i_masked_avgpooling257_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_avgpooling257_s_tv_0 = SE_in_redist51_i_masked_avgpooling257_q_136_fifo_backStall & SE_i_masked_avgpooling257_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_avgpooling257_backEN = ~ (SE_i_masked_avgpooling257_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_avgpooling257_v_s_0 = SE_i_masked_avgpooling257_backEN & SR_SE_i_masked_avgpooling257_V;
    // Backward Stall generation
    assign SE_i_masked_avgpooling257_backStall = ~ (SE_i_masked_avgpooling257_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_avgpooling257_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_avgpooling257_backEN == 1'b0)
            begin
                SE_i_masked_avgpooling257_R_v_0 <= SE_i_masked_avgpooling257_R_v_0 & SE_i_masked_avgpooling257_s_tv_0;
            end
            else
            begin
                SE_i_masked_avgpooling257_R_v_0 <= SE_i_masked_avgpooling257_v_s_0;
            end

        end
    end

    // SR_SE_i_masked_avgpooling257(STALLREG,4397)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_masked_avgpooling257_r_valid <= 1'b0;
            SR_SE_i_masked_avgpooling257_r_data0 <= 1'bx;
            SR_SE_i_masked_avgpooling257_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_masked_avgpooling257_r_valid <= SE_i_masked_avgpooling257_backStall & (SR_SE_i_masked_avgpooling257_r_valid | SR_SE_i_masked_avgpooling257_i_valid);

            if (SR_SE_i_masked_avgpooling257_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_masked_avgpooling257_r_data0 <= i_notcmp_avgpooling247_q;
                SR_SE_i_masked_avgpooling257_r_data1 <= i_first_cleanup_avgpooling218_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_masked_avgpooling257_and0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_V2;
    assign SR_SE_i_masked_avgpooling257_i_valid = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_V3 & SR_SE_i_masked_avgpooling257_and0;
    // Stall signal propagation
    assign SR_SE_i_masked_avgpooling257_backStall = SR_SE_i_masked_avgpooling257_r_valid | ~ (SR_SE_i_masked_avgpooling257_i_valid);

    // Valid
    assign SR_SE_i_masked_avgpooling257_V = SR_SE_i_masked_avgpooling257_r_valid == 1'b1 ? SR_SE_i_masked_avgpooling257_r_valid : SR_SE_i_masked_avgpooling257_i_valid;

    // Data0
    assign SR_SE_i_masked_avgpooling257_D0 = SR_SE_i_masked_avgpooling257_r_valid == 1'b1 ? SR_SE_i_masked_avgpooling257_r_data0 : i_notcmp_avgpooling247_q;
    // Data1
    assign SR_SE_i_masked_avgpooling257_D1 = SR_SE_i_masked_avgpooling257_r_valid == 1'b1 ? SR_SE_i_masked_avgpooling257_r_data1 : i_first_cleanup_avgpooling218_sel_x_b;

    // c_i4_179(CONSTANT,184)
    assign c_i4_179_q = $unsigned(4'b1111);

    // i_fpga_indvars_iv_next_avgpooling227(ADD,211)@140
    assign i_fpga_indvars_iv_next_avgpooling227_a = {1'b0, bubble_select_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_b};
    assign i_fpga_indvars_iv_next_avgpooling227_b = {1'b0, c_i4_179_q};
    assign i_fpga_indvars_iv_next_avgpooling227_o = $unsigned(i_fpga_indvars_iv_next_avgpooling227_a) + $unsigned(i_fpga_indvars_iv_next_avgpooling227_b);
    assign i_fpga_indvars_iv_next_avgpooling227_q = i_fpga_indvars_iv_next_avgpooling227_o[4:0];

    // bgTrunc_i_fpga_indvars_iv_next_avgpooling227_sel_x(BITSELECT,4)@140
    assign bgTrunc_i_fpga_indvars_iv_next_avgpooling227_sel_x_b = i_fpga_indvars_iv_next_avgpooling227_q[3:0];

    // SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249(STALLENABLE,3803)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_V0 = SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_backStall = i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_wireValid = SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_V;

    // SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249(STALLREG,4434)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_r_data0 <= 4'bxxxx;
            SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_r_valid <= SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_backStall & (SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_r_valid | SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_r_data0 <= bgTrunc_i_fpga_indvars_iv_next_avgpooling227_sel_x_b;
                SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_r_data1 <= $unsigned(redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_and0 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_V2;
    assign SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_i_valid = SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_V1 & SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_backStall = SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_V = SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_r_valid : SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_D0 = SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_r_data0 : bgTrunc_i_fpga_indvars_iv_next_avgpooling227_sel_x_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_D1 = SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_r_data1 : redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_q;

    // SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248(STALLENABLE,3791)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_fromReg0 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_fromReg0 <= SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_fromReg1 <= SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond_avgpooling248_out_stall_out) & SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_fromReg0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_consumed1 = (~ (SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_StallValid = SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_backStall & SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_wireValid;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_toReg0 = SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_toReg1 = SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_or0 = SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_wireStall = ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_consumed1 & SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_or0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_backStall = SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_fromReg0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_V1 = SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_and0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_V1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_wireValid = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_V1 & SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_and0;

    // bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg(STALLFIFO,4388)
    assign bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_V0;
    assign bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(137),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27(STALLENABLE,3774)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_fromReg2 <= SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_fromReg3 <= SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_wireValid) | SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_backStall) & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_wireValid) | SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_consumed2 = (~ (SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_backStall) & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_wireValid) | SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_consumed3 = (~ (SR_SE_i_masked_avgpooling257_backStall) & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_wireValid) | SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_StallValid = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_backStall & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_toReg0 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_StallValid & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_toReg1 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_StallValid & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_consumed1;
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_toReg2 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_StallValid & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_consumed2;
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_toReg3 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_StallValid & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_or0 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_or1 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_consumed1 & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_or0;
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_or2 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_consumed2 & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_or1;
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_consumed3 & SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_or2);
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_backStall = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_V0 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_V1 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_V2 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_V3 = SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_wireValid = i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_out_valid_out;

    // SE_out_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249(STALLENABLE,3804)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_wireValid = i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_out_valid_out;

    // i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249(BLACKBOX,276)@140
    // in in_stall_in@20000000
    // out out_data_out@141
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@141
    avgpooling2_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_0 thei_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_D0),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_out_feedback_stall_out_20),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_V0),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_out_feedback_valid_out_20),
        .out_stall_out(i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_375(CONSTANT,185)
    assign c_i4_375_q = $unsigned(4'b0011);

    // i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27(BLACKBOX,261)@139
    // in in_stall_in@20000000
    // out out_data_out@140
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@140
    avgpooling2_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_0 thei_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27 (
        .in_data_in(c_i4_375_q),
        .in_dir(redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_backStall),
        .in_valid_in(SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V2),
        .out_data_out(i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_172(CONSTANT,180)
    assign c_i2_172_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22(BLACKBOX,256)@139
    // in in_stall_in@20000000
    // out out_data_out@140
    // out out_feedback_stall_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@140
    avgpooling2_i_llvm_fpga_pop_i2_cleanups_pop24_0 thei_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22 (
        .in_data_in(c_i2_172_q),
        .in_dir(redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i2_cleanups_push24_avgpooling266_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i2_cleanups_push24_avgpooling266_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_backStall),
        .in_valid_in(SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V1),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_out_feedback_stall_out_24),
        .out_stall_out(i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271(STALLENABLE,3786)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_wireValid = i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271(BLACKBOX,267)@276
    // in in_stall_in@20000000
    // out out_data_out@277
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@277
    avgpooling2_i_llvm_fpga_push_i1_memdep_phi_push22_0 thei_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_D0),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_out_feedback_stall_out_22),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_V0),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_out_feedback_valid_out_22),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26(BLACKBOX,253)@139
    // in in_stall_in@20000000
    // out out_data_out@140
    // out out_feedback_stall_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@140
    avgpooling2_i_llvm_fpga_pop_i1_memdep_phi_pop22_0 thei_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26 (
        .in_data_in(GND_q),
        .in_dir(redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_backStall),
        .in_valid_in(SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_out_feedback_stall_out_22),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1(STALLENABLE,4206)
    // Valid signal propagation
    assign SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V0 = SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_0;
    assign SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V1 = SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_1;
    assign SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V2 = SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_2;
    assign SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V3 = SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_3;
    // Stall signal propagation
    assign SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_out_stall_out & SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_0;
    assign SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_1 = i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_out_stall_out & SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_1;
    assign SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_2 = i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_out_stall_out & SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_2;
    assign SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_3 = redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_out & SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_3;
    // Backward Enable generation
    assign SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_or0 = SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_0;
    assign SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_or1 = SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_1 | SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_or0;
    assign SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_or2 = SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_2 | SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_or1;
    assign SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backEN = ~ (SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_3 | SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_v_s_0 = SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backEN & SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V;
    // Backward Stall generation
    assign SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backStall = ~ (SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_0 <= 1'b0;
            SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_1 <= 1'b0;
            SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_2 <= 1'b0;
            SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backEN == 1'b0)
            begin
                SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_0 <= SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_0 & SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_0;
            end
            else
            begin
                SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_0 <= SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_v_s_0;
            end

            if (SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backEN == 1'b0)
            begin
                SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_1 <= SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_1 & SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_1;
            end
            else
            begin
                SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_1 <= SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_v_s_0;
            end

            if (SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backEN == 1'b0)
            begin
                SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_2 <= SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_2 & SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_2;
            end
            else
            begin
                SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_2 <= SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_v_s_0;
            end

            if (SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_backEN == 1'b0)
            begin
                SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_3 <= SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_3 & SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_s_tv_3;
            end
            else
            begin
                SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_R_v_3 <= SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_v_s_0;
            end

        end
    end

    // redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo(STALLFIFO,3557)
    assign redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_in = SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_V3;
    assign redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_in = SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_backStall;
    assign redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_data_in = redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_q;
    assign redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_in_bitsignaltemp = redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_in[0];
    assign redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_in_bitsignaltemp = redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_in[0];
    assign redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_out[0] = redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_out_bitsignaltemp;
    assign redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_out[0] = redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(135),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo (
        .valid_in(redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_in_bitsignaltemp),
        .stall_in(redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_in_bitsignaltemp),
        .data_in(redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_1_q),
        .valid_out(redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_out_bitsignaltemp),
        .stall_out(redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_stall_out_bitsignaltemp),
        .data_out(redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo(BITJOIN,3671)
    assign bubble_join_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_q = redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_data_out;

    // bubble_select_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo(BITSELECT,3672)
    assign bubble_select_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_b = $unsigned(bubble_join_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_q[0:0]);

    // rightShiftStage0Idx1Rng1_uid593_i_next_initerations_avgpooling20_shift_x(BITSELECT,592)@274
    assign rightShiftStage0Idx1Rng1_uid593_i_next_initerations_avgpooling20_shift_x_b = bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_b[1:1];

    // rightShiftStage0Idx1_uid595_i_next_initerations_avgpooling20_shift_x(BITJOIN,594)@274
    assign rightShiftStage0Idx1_uid595_i_next_initerations_avgpooling20_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid593_i_next_initerations_avgpooling20_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24(BITJOIN,3638)
    assign bubble_join_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_q = i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24(BITSELECT,3639)
    assign bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_q[1:0]);

    // rightShiftStage0_uid597_i_next_initerations_avgpooling20_shift_x(MUX,596)@274
    assign rightShiftStage0_uid597_i_next_initerations_avgpooling20_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid597_i_next_initerations_avgpooling20_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_b or rightShiftStage0Idx1_uid595_i_next_initerations_avgpooling20_shift_x_q)
    begin
        unique case (rightShiftStage0_uid597_i_next_initerations_avgpooling20_shift_x_s)
            1'b0 : rightShiftStage0_uid597_i_next_initerations_avgpooling20_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_b;
            1'b1 : rightShiftStage0_uid597_i_next_initerations_avgpooling20_shift_x_q = rightShiftStage0Idx1_uid595_i_next_initerations_avgpooling20_shift_x_q;
            default : rightShiftStage0_uid597_i_next_initerations_avgpooling20_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_avgpooling220_vt_select_0(BITSELECT,281)@274
    assign i_next_initerations_avgpooling220_vt_select_0_b = rightShiftStage0_uid597_i_next_initerations_avgpooling20_shift_x_q[0:0];

    // i_next_initerations_avgpooling220_vt_join(BITJOIN,280)@274
    assign i_next_initerations_avgpooling220_vt_join_q = {GND_q, i_next_initerations_avgpooling220_vt_select_0_b};

    // i_last_initeration_avgpooling243_sel_x(BITSELECT,167)@274
    assign i_last_initeration_avgpooling243_sel_x_b = i_next_initerations_avgpooling220_vt_join_q[0:0];

    // SE_i_next_initerations_avgpooling220_vt_select_0(STALLENABLE,3808)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_avgpooling220_vt_select_0_fromReg0 <= '0;
            SE_i_next_initerations_avgpooling220_vt_select_0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_avgpooling220_vt_select_0_fromReg0 <= SE_i_next_initerations_avgpooling220_vt_select_0_toReg0;
            // Successor 1
            SE_i_next_initerations_avgpooling220_vt_select_0_fromReg1 <= SE_i_next_initerations_avgpooling220_vt_select_0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_avgpooling220_vt_select_0_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_avgpooling254_out_stall_out) & SE_i_next_initerations_avgpooling220_vt_select_0_wireValid) | SE_i_next_initerations_avgpooling220_vt_select_0_fromReg0;
    assign SE_i_next_initerations_avgpooling220_vt_select_0_consumed1 = (~ (i_llvm_fpga_push_i2_initerations_push23_avgpooling242_out_stall_out) & SE_i_next_initerations_avgpooling220_vt_select_0_wireValid) | SE_i_next_initerations_avgpooling220_vt_select_0_fromReg1;
    // Consuming
    assign SE_i_next_initerations_avgpooling220_vt_select_0_StallValid = SE_i_next_initerations_avgpooling220_vt_select_0_backStall & SE_i_next_initerations_avgpooling220_vt_select_0_wireValid;
    assign SE_i_next_initerations_avgpooling220_vt_select_0_toReg0 = SE_i_next_initerations_avgpooling220_vt_select_0_StallValid & SE_i_next_initerations_avgpooling220_vt_select_0_consumed0;
    assign SE_i_next_initerations_avgpooling220_vt_select_0_toReg1 = SE_i_next_initerations_avgpooling220_vt_select_0_StallValid & SE_i_next_initerations_avgpooling220_vt_select_0_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_avgpooling220_vt_select_0_or0 = SE_i_next_initerations_avgpooling220_vt_select_0_consumed0;
    assign SE_i_next_initerations_avgpooling220_vt_select_0_wireStall = ~ (SE_i_next_initerations_avgpooling220_vt_select_0_consumed1 & SE_i_next_initerations_avgpooling220_vt_select_0_or0);
    assign SE_i_next_initerations_avgpooling220_vt_select_0_backStall = SE_i_next_initerations_avgpooling220_vt_select_0_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_avgpooling220_vt_select_0_V0 = SE_i_next_initerations_avgpooling220_vt_select_0_wireValid & ~ (SE_i_next_initerations_avgpooling220_vt_select_0_fromReg0);
    assign SE_i_next_initerations_avgpooling220_vt_select_0_V1 = SE_i_next_initerations_avgpooling220_vt_select_0_wireValid & ~ (SE_i_next_initerations_avgpooling220_vt_select_0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_avgpooling220_vt_select_0_wireValid = SR_SE_i_next_initerations_avgpooling220_vt_select_0_V;

    // SR_SE_i_next_initerations_avgpooling220_vt_select_0(STALLREG,4427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_valid <= 1'b0;
            SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_data0 <= 1'bx;
            SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_data1 <= 1'bx;
            SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_data2 <= 1'bx;
            SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_data3 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_valid <= SE_i_next_initerations_avgpooling220_vt_select_0_backStall & (SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_valid | SR_SE_i_next_initerations_avgpooling220_vt_select_0_i_valid);

            if (SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_data0 <= i_last_initeration_avgpooling243_sel_x_b;
                SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_data1 <= $unsigned(bubble_select_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_b);
                SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_data2 <= $unsigned(bubble_select_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_b);
                SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_data3 <= i_next_initerations_avgpooling220_vt_join_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_next_initerations_avgpooling220_vt_select_0_and0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_V1;
    assign SR_SE_i_next_initerations_avgpooling220_vt_select_0_i_valid = SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_V0 & SR_SE_i_next_initerations_avgpooling220_vt_select_0_and0;
    // Stall signal propagation
    assign SR_SE_i_next_initerations_avgpooling220_vt_select_0_backStall = SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_valid | ~ (SR_SE_i_next_initerations_avgpooling220_vt_select_0_i_valid);

    // Valid
    assign SR_SE_i_next_initerations_avgpooling220_vt_select_0_V = SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_valid : SR_SE_i_next_initerations_avgpooling220_vt_select_0_i_valid;

    // Data0
    assign SR_SE_i_next_initerations_avgpooling220_vt_select_0_D0 = SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_data0 : i_last_initeration_avgpooling243_sel_x_b;
    // Data1
    assign SR_SE_i_next_initerations_avgpooling220_vt_select_0_D1 = SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_data1 : bubble_select_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_b;
    // Data2
    assign SR_SE_i_next_initerations_avgpooling220_vt_select_0_D2 = SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_data2 : bubble_select_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_b;
    // Data3
    assign SR_SE_i_next_initerations_avgpooling220_vt_select_0_D3 = SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_avgpooling220_vt_select_0_r_data3 : i_next_initerations_avgpooling220_vt_join_q;

    // bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg(STALLFIFO,4387)
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_V0;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24(STALLENABLE,3766)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_consumed1 = (~ (SR_SE_i_next_initerations_avgpooling220_vt_select_0_backStall) & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_StallValid = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_backStall & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_toReg0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_toReg1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_or0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_consumed1 & SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_or0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_backStall = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_V0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_V1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_wireValid = i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_out_valid_out;

    // SE_out_i_llvm_fpga_push_i2_initerations_push23_avgpooling242(STALLENABLE,3796)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_initerations_push23_avgpooling242_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_initerations_push23_avgpooling242_wireValid = i_llvm_fpga_push_i2_initerations_push23_avgpooling242_out_valid_out;

    // i_llvm_fpga_push_i2_initerations_push23_avgpooling242(BLACKBOX,272)@274
    // in in_stall_in@20000000
    // out out_data_out@275
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@275
    avgpooling2_i_llvm_fpga_push_i2_initerations_push23_0 thei_llvm_fpga_push_i2_initerations_push23_avgpooling242 (
        .in_data_in(SR_SE_i_next_initerations_avgpooling220_vt_select_0_D3),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_out_feedback_stall_out_23),
        .in_keep_going(SR_SE_i_next_initerations_avgpooling220_vt_select_0_D2),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_initerations_push23_avgpooling242_backStall),
        .in_valid_in(SE_i_next_initerations_avgpooling220_vt_select_0_V1),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i2_initerations_push23_avgpooling242_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i2_initerations_push23_avgpooling242_out_feedback_valid_out_23),
        .out_stall_out(i_llvm_fpga_push_i2_initerations_push23_avgpooling242_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_initerations_push23_avgpooling242_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24(BLACKBOX,257)@273
    // in in_stall_in@20000000
    // out out_data_out@274
    // out out_feedback_stall_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@274
    avgpooling2_i_llvm_fpga_pop_i2_initerations_pop23_0 thei_llvm_fpga_pop_i2_initerations_pop23_avgpooling24 (
        .in_data_in(c_i2_172_q),
        .in_dir(bubble_select_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_b),
        .in_feedback_in_23(i_llvm_fpga_push_i2_initerations_push23_avgpooling242_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i2_initerations_push23_avgpooling242_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_backStall),
        .in_valid_in(SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_out_feedback_stall_out_23),
        .out_stall_out(i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo(STALLENABLE,4208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_fromReg0 <= '0;
            SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_fromReg0 <= SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_toReg0;
            // Successor 1
            SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_fromReg1 <= SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_consumed0 = (~ (SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backStall) & SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_wireValid) | SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_fromReg0;
    assign SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_consumed1 = (~ (i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_out_stall_out) & SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_wireValid) | SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_fromReg1;
    // Consuming
    assign SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_StallValid = SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_backStall & SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_wireValid;
    assign SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_toReg0 = SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_StallValid & SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_consumed0;
    assign SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_toReg1 = SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_StallValid & SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_or0 = SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_consumed0;
    assign SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_wireStall = ~ (SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_consumed1 & SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_or0);
    assign SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_backStall = SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_V0 = SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_wireValid & ~ (SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_fromReg0);
    assign SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_V1 = SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_wireValid & ~ (SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_wireValid = redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_valid_out;

    // SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0(STALLREG,4398)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_valid <= 1'b0;
            SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_valid <= SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backStall & (SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_valid | SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_i_valid);

            if (SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_data0 <= $unsigned(bubble_select_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_i_valid = SE_out_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backStall = SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_valid | ~ (SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_i_valid);

    // Valid
    assign SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_V = SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_valid == 1'b1 ? SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_valid : SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_i_valid;

    assign SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_D0 = SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_valid == 1'b1 ? SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_r_data0 : bubble_select_redist65_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_272_fifo_b;

    // redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0(REG,3558)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backEN == 1'b1)
        begin
            redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_q <= $unsigned(SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_D0);
        end
    end

    // SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0(STALLENABLE,4209)
    // Valid signal propagation
    assign SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_V0 = SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_R_v_0;
    // Stall signal propagation
    assign SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_s_tv_0 = SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backStall & SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_R_v_0;
    // Backward Enable generation
    assign SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backEN = ~ (SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_v_s_0 = SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backEN & SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_V;
    // Backward Stall generation
    assign SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backStall = ~ (SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_backEN == 1'b0)
            begin
                SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_R_v_0 <= SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_R_v_0 & SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_s_tv_0;
            end
            else
            begin
                SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_R_v_0 <= SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_v_s_0;
            end

        end
    end

    // SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1(STALLREG,4399)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_valid <= 1'b0;
            SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_valid <= SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backStall & (SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_valid | SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_i_valid);

            if (SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_data0 <= $unsigned(redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_i_valid = SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_V0;
    // Stall signal propagation
    assign SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backStall = SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_valid | ~ (SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_i_valid);

    // Valid
    assign SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_V = SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_valid == 1'b1 ? SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_valid : SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_i_valid;

    assign SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_D0 = SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_valid == 1'b1 ? SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_r_data0 : redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_0_q;

    // redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1(REG,3559)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backEN == 1'b1)
        begin
            redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q <= $unsigned(SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_D0);
        end
    end

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,3680)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,3681)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[3:0]);

    // sel_for_coalesced_delay_1(BITSELECT,3473)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1:1]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[2:2]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[3:3]);

    // SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1(STALLENABLE,4210)
    // Valid signal propagation
    assign SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_V0 = SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_R_v_0;
    // Stall signal propagation
    assign SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_s_tv_0 = SR_SE_out_coalesced_delay_1_fifo_backStall & SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_R_v_0;
    // Backward Enable generation
    assign SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backEN = ~ (SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_v_s_0 = SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backEN & SR_SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_V;
    // Backward Stall generation
    assign SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backStall = ~ (SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_backEN == 1'b0)
            begin
                SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_R_v_0 <= SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_R_v_0 & SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_s_tv_0;
            end
            else
            begin
                SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_R_v_0 <= SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213(BITJOIN,3631)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_q = i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213(BITSELECT,3632)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_q[0:0]);

    // SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236(STALLENABLE,3789)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_V0 = SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_backStall = i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_wireValid = SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_V;

    // SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236(STALLREG,4430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_r_valid <= SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_backStall & (SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_r_valid | SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_b);
                SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_r_data1 <= $unsigned(redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_and0 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_V4;
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_i_valid = SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_V1 & SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_backStall = SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_V = SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_r_valid : SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_D0 = SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_r_data0 : bubble_select_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_D1 = SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_r_data1 : redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_q;

    // SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213(STALLENABLE,3762)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_wireValid = i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236(STALLENABLE,3790)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_wireValid = i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_out_valid_out;

    // i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236(BLACKBOX,269)@276
    // in in_stall_in@20000000
    // out out_data_out@277
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@277
    avgpooling2_i_llvm_fpga_push_i1_notcmp2034_push26_0 thei_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_D0),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_out_feedback_stall_out_26),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_V0),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_out_feedback_valid_out_26),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213(BLACKBOX,255)@275
    // in in_stall_in@20000000
    // out out_data_out@276
    // out out_feedback_stall_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@276
    avgpooling2_i_llvm_fpga_pop_i1_notcmp2034_pop26_0 thei_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D7),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D4),
        .in_feedback_in_26(i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V3),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_out_feedback_stall_out_26),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29(BITJOIN,3627)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_q = i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29(BITSELECT,3628)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_q[0:0]);

    // SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229(STALLENABLE,3787)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_V0 = SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_backStall = i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_wireValid = SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_V;

    // SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229(STALLREG,4429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_r_valid <= SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_backStall & (SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_r_valid | SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_b);
                SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_r_data1 <= $unsigned(redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_and0 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_V3;
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_i_valid = SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_V1 & SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_backStall = SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_V = SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_r_valid : SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_D0 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_r_data0 : bubble_select_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_D1 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_r_data1 : redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_q;

    // SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29(STALLENABLE,3760)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_wireValid = i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229(STALLENABLE,3788)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_wireValid = i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_out_valid_out;

    // i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229(BLACKBOX,268)@276
    // in in_stall_in@20000000
    // out out_data_out@277
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    // out out_stall_out@20000000
    // out out_valid_out@277
    avgpooling2_i_llvm_fpga_push_i1_notcmp1540_push30_0 thei_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_D0),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_out_feedback_stall_out_30),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_V0),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_out_feedback_valid_out_30),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29(BLACKBOX,254)@275
    // in in_stall_in@20000000
    // out out_data_out@276
    // out out_feedback_stall_out_30@20000000
    // out out_stall_out@20000000
    // out out_valid_out@276
    avgpooling2_i_llvm_fpga_pop_i1_notcmp1540_pop30_0 thei_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D6),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D3),
        .in_feedback_in_30(i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V2),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_out_feedback_stall_out_30),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212(BITJOIN,3614)
    assign bubble_join_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_q = i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212(BITSELECT,3615)
    assign bubble_select_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_q[0:0]);

    // SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235(STALLENABLE,3777)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_V0 = SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_backStall = i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_wireValid = SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_V;

    // SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235(STALLREG,4426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_r_valid <= SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_backStall & (SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_r_valid | SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_b);
                SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_r_data1 <= $unsigned(redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_and0 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_V1;
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_i_valid = SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_V1 & SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_backStall = SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_V = SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_r_valid : SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_D0 = SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_r_data0 : bubble_select_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_D1 = SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_r_data1 : redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_q;

    // SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212(STALLENABLE,3752)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_StallValid = SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_backStall & SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_toReg0 = SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_toReg1 = SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_or0 = SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_consumed1 & SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_or0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_backStall = SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_V0 = SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_V1 = SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_wireValid = i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235(STALLENABLE,3778)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_wireValid = i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_out_valid_out;

    // i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235(BLACKBOX,263)@276
    // in in_stall_in@20000000
    // out out_data_out@277
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@277
    avgpooling2_i_llvm_fpga_push_i1_exitcond1432_push25_0 thei_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_D0),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_out_feedback_stall_out_25),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_V0),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_out_feedback_valid_out_25),
        .out_stall_out(i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212(BLACKBOX,250)@275
    // in in_stall_in@20000000
    // out out_data_out@276
    // out out_feedback_stall_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@276
    avgpooling2_i_llvm_fpga_pop_i1_exitcond1432_pop25_0 thei_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D5),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D2),
        .in_feedback_in_25(i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_out_feedback_stall_out_25),
        .out_stall_out(i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28(BITJOIN,3610)
    assign bubble_join_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_q = i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28(BITSELECT,3611)
    assign bubble_select_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_q[0:0]);

    // SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228(STALLENABLE,3775)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_V0 = SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_backStall = i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_wireValid = SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_V;

    // SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228(STALLREG,4425)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_r_valid <= SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_backStall & (SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_r_valid | SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_b);
                SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_r_data1 <= $unsigned(redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_and0 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_V0;
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_i_valid = SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_V1 & SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_backStall = SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_V = SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_r_valid : SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_D0 = SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_r_data0 : bubble_select_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_D1 = SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_r_data1 : redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_q;

    // SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28(STALLENABLE,3750)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_StallValid = SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_backStall & SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_toReg0 = SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_toReg1 = SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_or0 = SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_consumed1 & SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_or0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_backStall = SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_V0 = SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_V1 = SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_wireValid = i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228(STALLENABLE,3776)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_wireValid = i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_out_valid_out;

    // i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228(BLACKBOX,262)@276
    // in in_stall_in@20000000
    // out out_data_out@277
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    // out out_stall_out@20000000
    // out out_valid_out@277
    avgpooling2_i_llvm_fpga_push_i1_exitcond1139_push29_0 thei_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_D0),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_out_feedback_stall_out_29),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_V0),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_out_feedback_valid_out_29),
        .out_stall_out(i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28(BLACKBOX,249)@275
    // in in_stall_in@20000000
    // out out_data_out@276
    // out out_feedback_stall_out_29@20000000
    // out out_stall_out@20000000
    // out out_valid_out@276
    avgpooling2_i_llvm_fpga_pop_i1_exitcond1139_pop29_0 thei_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28 (
        .in_data_in(SR_SE_out_coalesced_delay_1_fifo_D0),
        .in_dir(SR_SE_out_coalesced_delay_1_fifo_D1),
        .in_feedback_in_29(i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_out_feedback_stall_out_29),
        .out_stall_out(i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,4216)
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
    assign SE_out_coalesced_delay_1_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg0;
    assign SE_out_coalesced_delay_1_fifo_consumed1 = (~ (i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg1;
    assign SE_out_coalesced_delay_1_fifo_consumed2 = (~ (i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg2;
    assign SE_out_coalesced_delay_1_fifo_consumed3 = (~ (i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg3;
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

    // SR_SE_out_coalesced_delay_1_fifo(STALLREG,4400)
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
                SR_SE_out_coalesced_delay_1_fifo_r_data1 <= $unsigned(redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data2 <= $unsigned(redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data3 <= $unsigned(redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data4 <= $unsigned(redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q);
                SR_SE_out_coalesced_delay_1_fifo_r_data5 <= $unsigned(sel_for_coalesced_delay_1_d);
                SR_SE_out_coalesced_delay_1_fifo_r_data6 <= $unsigned(sel_for_coalesced_delay_1_c);
                SR_SE_out_coalesced_delay_1_fifo_r_data7 <= $unsigned(sel_for_coalesced_delay_1_e);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SR_SE_out_coalesced_delay_1_fifo_i_valid = SE_redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_V0 & SR_SE_out_coalesced_delay_1_fifo_and0;
    // Stall signal propagation
    assign SR_SE_out_coalesced_delay_1_fifo_backStall = SR_SE_out_coalesced_delay_1_fifo_r_valid | ~ (SR_SE_out_coalesced_delay_1_fifo_i_valid);

    // Valid
    assign SR_SE_out_coalesced_delay_1_fifo_V = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_valid : SR_SE_out_coalesced_delay_1_fifo_i_valid;

    // Data0
    assign SR_SE_out_coalesced_delay_1_fifo_D0 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data0 : sel_for_coalesced_delay_1_b;
    // Data1
    assign SR_SE_out_coalesced_delay_1_fifo_D1 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data1 : redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q;
    // Data2
    assign SR_SE_out_coalesced_delay_1_fifo_D2 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data2 : redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q;
    // Data3
    assign SR_SE_out_coalesced_delay_1_fifo_D3 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data3 : redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q;
    // Data4
    assign SR_SE_out_coalesced_delay_1_fifo_D4 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data4 : redist66_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_274_1_q;
    // Data5
    assign SR_SE_out_coalesced_delay_1_fifo_D5 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data5 : sel_for_coalesced_delay_1_d;
    // Data6
    assign SR_SE_out_coalesced_delay_1_fifo_D6 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data6 : sel_for_coalesced_delay_1_c;
    // Data7
    assign SR_SE_out_coalesced_delay_1_fifo_D7 = SR_SE_out_coalesced_delay_1_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_1_fifo_r_data7 : sel_for_coalesced_delay_1_e;

    // coalesced_delay_1_fifo(STALLFIFO,3562)
    assign coalesced_delay_1_fifo_valid_in = SE_out_avgpooling2_B4_merge_reg_aunroll_x_V6;
    assign coalesced_delay_1_fifo_stall_in = SR_SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(275),
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

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215(BITJOIN,3621)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_q = i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215(BITSELECT,3622)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_q[0:0]);

    // bubble_join_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo(BITJOIN,3662)
    assign bubble_join_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_q = redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_data_out;

    // bubble_select_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo(BITSELECT,3663)
    assign bubble_select_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_b = $unsigned(bubble_join_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211(BITJOIN,3618)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_q = i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211(BITSELECT,3619)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_q[0:0]);

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211(STALLENABLE,3754)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_backStall = redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_wireValid = i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_valid_out;

    // redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo(STALLFIFO,3544)
    assign redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_V0;
    assign redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_stall_in = SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_backStall;
    assign redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_b;
    assign redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_valid_in_bitsignaltemp = redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_valid_in[0];
    assign redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_stall_in_bitsignaltemp = redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_stall_in[0];
    assign redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_valid_out[0] = redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_valid_out_bitsignaltemp;
    assign redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_stall_out[0] = redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(137),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo (
        .valid_in(redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_valid_in_bitsignaltemp),
        .stall_in(redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_b),
        .valid_out(redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_valid_out_bitsignaltemp),
        .stall_out(redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_stall_out_bitsignaltemp),
        .data_out(redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo(BITJOIN,3665)
    assign bubble_join_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_q = redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_data_out;

    // bubble_select_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo(BITSELECT,3666)
    assign bubble_select_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_b = $unsigned(bubble_join_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_q[0:0]);

    // i_reduction_avgpooling2_0_avgpooling240(LOGICAL,284)@138 + 1
    assign i_reduction_avgpooling2_0_avgpooling240_qi = bubble_select_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_b | bubble_select_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_avgpooling2_0_avgpooling240_delay ( .xin(i_reduction_avgpooling2_0_avgpooling240_qi), .xout(i_reduction_avgpooling2_0_avgpooling240_q), .ena(SE_i_reduction_avgpooling2_0_avgpooling240_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0(STALLENABLE,4179)
    // Valid signal propagation
    assign SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_V0 = SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_s_tv_0 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_backStall & SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_backEN = ~ (SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_v_s_0 = SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_backEN & SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_V;
    // Backward Stall generation
    assign SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_backStall = ~ (SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_backEN == 1'b0)
            begin
                SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_R_v_0 <= SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_R_v_0 & SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_s_tv_0;
            end
            else
            begin
                SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_R_v_0 <= SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_v_s_0;
            end

        end
    end

    // SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0(STALLREG,4412)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_r_valid <= 1'b0;
            SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_r_valid <= SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_backStall & (SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_r_valid | SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_i_valid);

            if (SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_r_data0 <= i_reduction_avgpooling2_0_avgpooling240_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_i_valid = SE_i_reduction_avgpooling2_0_avgpooling240_V0;
    // Stall signal propagation
    assign SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_backStall = SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_r_valid | ~ (SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_i_valid);

    // Valid
    assign SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_V = SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_r_valid == 1'b1 ? SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_r_valid : SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_i_valid;

    assign SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_D0 = SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_r_valid == 1'b1 ? SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_r_data0 : i_reduction_avgpooling2_0_avgpooling240_q;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234(STALLENABLE,3782)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_wireValid = i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234(BLACKBOX,265)@138
    // in in_stall_in@20000000
    // out out_data_out@139
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    // out out_stall_out@20000000
    // out out_valid_out@139
    avgpooling2_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_0 thei_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234 (
        .in_data_in(bubble_select_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_b),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_feedback_stall_out_32),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling23_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_V0),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_out_feedback_valid_out_32),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234(STALLENABLE,3781)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_backStall = i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_and0 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_wireValid = SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_and0;

    // SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo(STALLENABLE,4193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_fromReg0 <= '0;
            SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_fromReg0 <= SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_toReg0;
            // Successor 1
            SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_fromReg1 <= SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_backStall) & SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_wireValid) | SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_fromReg0;
    assign SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_consumed1 = (~ (SE_i_reduction_avgpooling2_0_avgpooling240_backStall) & SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_wireValid) | SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_fromReg1;
    // Consuming
    assign SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_StallValid = SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_backStall & SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_wireValid;
    assign SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_toReg0 = SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_StallValid & SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_consumed0;
    assign SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_toReg1 = SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_StallValid & SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_or0 = SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_consumed0;
    assign SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_wireStall = ~ (SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_consumed1 & SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_or0);
    assign SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_backStall = SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_V0 = SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_wireValid & ~ (SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_fromReg0);
    assign SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_V1 = SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_wireValid & ~ (SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_wireValid = redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_valid_out;

    // SE_i_reduction_avgpooling2_0_avgpooling240(STALLENABLE,3811)
    // Valid signal propagation
    assign SE_i_reduction_avgpooling2_0_avgpooling240_V0 = SE_i_reduction_avgpooling2_0_avgpooling240_R_v_0;
    // Stall signal propagation
    assign SE_i_reduction_avgpooling2_0_avgpooling240_s_tv_0 = SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_backStall & SE_i_reduction_avgpooling2_0_avgpooling240_R_v_0;
    // Backward Enable generation
    assign SE_i_reduction_avgpooling2_0_avgpooling240_backEN = ~ (SE_i_reduction_avgpooling2_0_avgpooling240_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_reduction_avgpooling2_0_avgpooling240_and0 = SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_V1 & SE_i_reduction_avgpooling2_0_avgpooling240_backEN;
    assign SE_i_reduction_avgpooling2_0_avgpooling240_v_s_0 = SE_out_redist55_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out_136_fifo_V1 & SE_i_reduction_avgpooling2_0_avgpooling240_and0;
    // Backward Stall generation
    assign SE_i_reduction_avgpooling2_0_avgpooling240_backStall = ~ (SE_i_reduction_avgpooling2_0_avgpooling240_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_avgpooling2_0_avgpooling240_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_reduction_avgpooling2_0_avgpooling240_backEN == 1'b0)
            begin
                SE_i_reduction_avgpooling2_0_avgpooling240_R_v_0 <= SE_i_reduction_avgpooling2_0_avgpooling240_R_v_0 & SE_i_reduction_avgpooling2_0_avgpooling240_s_tv_0;
            end
            else
            begin
                SE_i_reduction_avgpooling2_0_avgpooling240_R_v_0 <= SE_i_reduction_avgpooling2_0_avgpooling240_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239(STALLENABLE,3783)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_backStall = i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_and0 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V2;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_wireValid = SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_and0;

    // SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo(STALLENABLE,4191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_fromReg0 <= '0;
            SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_fromReg0 <= SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_toReg0;
            // Successor 1
            SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_fromReg1 <= SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_backStall) & SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_wireValid) | SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_fromReg0;
    assign SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_consumed1 = (~ (SE_i_reduction_avgpooling2_0_avgpooling240_backStall) & SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_wireValid) | SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_fromReg1;
    // Consuming
    assign SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_StallValid = SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_backStall & SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_wireValid;
    assign SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_toReg0 = SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_StallValid & SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_consumed0;
    assign SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_toReg1 = SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_StallValid & SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_or0 = SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_consumed0;
    assign SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_wireStall = ~ (SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_consumed1 & SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_or0);
    assign SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_backStall = SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_V0 = SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_wireValid & ~ (SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_fromReg0);
    assign SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_V1 = SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_wireValid & ~ (SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_wireValid = redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_valid_out;

    // redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo(STALLFIFO,3543)
    assign redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_V0;
    assign redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_stall_in = SE_out_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_backStall;
    assign redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_b;
    assign redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_valid_in_bitsignaltemp = redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_valid_in[0];
    assign redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_stall_in_bitsignaltemp = redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_stall_in[0];
    assign redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_valid_out[0] = redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_valid_out_bitsignaltemp;
    assign redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_stall_out[0] = redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(137),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo (
        .valid_in(redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_valid_in_bitsignaltemp),
        .stall_in(redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_b),
        .valid_out(redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_valid_out_bitsignaltemp),
        .stall_out(redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_stall_out_bitsignaltemp),
        .data_out(redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215(STALLENABLE,3756)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_backStall = redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_wireValid = i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239(STALLENABLE,3784)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_wireValid = i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239(BLACKBOX,266)@138
    // in in_stall_in@20000000
    // out out_data_out@139
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@139
    avgpooling2_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_0 thei_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239 (
        .in_data_in(bubble_select_redist54_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out_136_fifo_b),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_feedback_stall_out_28),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling23_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_V0),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_out_feedback_valid_out_28),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215(BLACKBOX,252)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    avgpooling2_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215 (
        .in_data_in(bubble_select_avgpooling2_B4_merge_reg_aunroll_x_j),
        .in_dir(bubble_select_avgpooling2_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_28(i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_backStall),
        .in_valid_in(SE_out_avgpooling2_B4_merge_reg_aunroll_x_V3),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_feedback_stall_out_28),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211(BLACKBOX,251)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_32@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    avgpooling2_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_0 thei_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211 (
        .in_data_in(bubble_select_avgpooling2_B4_merge_reg_aunroll_x_f),
        .in_dir(bubble_select_avgpooling2_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_32(i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_backStall),
        .in_valid_in(SE_out_avgpooling2_B4_merge_reg_aunroll_x_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_feedback_stall_out_32),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg(STALLFIFO,4385)
    assign bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_valid_in = SE_out_avgpooling2_B4_merge_reg_aunroll_x_V1;
    assign bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(135),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg(STALLFIFO,4384)
    assign bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_valid_in = SE_out_avgpooling2_B4_merge_reg_aunroll_x_V0;
    assign bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(135),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_avgpooling2_B4_merge_reg_aunroll_x(STALLENABLE,3686)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg0 <= SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg1 <= SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg2 <= SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg3 <= SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg4 <= SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg5 <= SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg6 <= SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_avgpooling2_B4_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_avgpooling2_B4_merge_reg_aunroll_x_wireValid) | SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg0;
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_avgpooling2_B4_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_avgpooling2_B4_merge_reg_aunroll_x_wireValid) | SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg1;
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_pop_i1_memdep_phi1_pop1542_pop32_avgpooling211_out_stall_out) & SE_out_avgpooling2_B4_merge_reg_aunroll_x_wireValid) | SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg2;
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_pop_i1_memdep_phi2_pop1238_pop28_avgpooling215_out_stall_out) & SE_out_avgpooling2_B4_merge_reg_aunroll_x_wireValid) | SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg3;
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed4 = (~ (redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_stall_out) & SE_out_avgpooling2_B4_merge_reg_aunroll_x_wireValid) | SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg4;
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed5 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_avgpooling2_B4_merge_reg_aunroll_x_wireValid) | SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg5;
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed6 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_avgpooling2_B4_merge_reg_aunroll_x_wireValid) | SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg6;
    // Consuming
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_StallValid = SE_out_avgpooling2_B4_merge_reg_aunroll_x_backStall & SE_out_avgpooling2_B4_merge_reg_aunroll_x_wireValid;
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg0 = SE_out_avgpooling2_B4_merge_reg_aunroll_x_StallValid & SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg1 = SE_out_avgpooling2_B4_merge_reg_aunroll_x_StallValid & SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed1;
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg2 = SE_out_avgpooling2_B4_merge_reg_aunroll_x_StallValid & SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed2;
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg3 = SE_out_avgpooling2_B4_merge_reg_aunroll_x_StallValid & SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed3;
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg4 = SE_out_avgpooling2_B4_merge_reg_aunroll_x_StallValid & SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed4;
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg5 = SE_out_avgpooling2_B4_merge_reg_aunroll_x_StallValid & SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed5;
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_toReg6 = SE_out_avgpooling2_B4_merge_reg_aunroll_x_StallValid & SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed6;
    // Backward Stall generation
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_or0 = SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_or1 = SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed1 & SE_out_avgpooling2_B4_merge_reg_aunroll_x_or0;
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_or2 = SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed2 & SE_out_avgpooling2_B4_merge_reg_aunroll_x_or1;
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_or3 = SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed3 & SE_out_avgpooling2_B4_merge_reg_aunroll_x_or2;
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_or4 = SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed4 & SE_out_avgpooling2_B4_merge_reg_aunroll_x_or3;
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_or5 = SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed5 & SE_out_avgpooling2_B4_merge_reg_aunroll_x_or4;
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_wireStall = ~ (SE_out_avgpooling2_B4_merge_reg_aunroll_x_consumed6 & SE_out_avgpooling2_B4_merge_reg_aunroll_x_or5);
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_backStall = SE_out_avgpooling2_B4_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_V0 = SE_out_avgpooling2_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg0);
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_V1 = SE_out_avgpooling2_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg1);
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_V2 = SE_out_avgpooling2_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg2);
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_V3 = SE_out_avgpooling2_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg3);
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_V4 = SE_out_avgpooling2_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg4);
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_V5 = SE_out_avgpooling2_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg5);
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_V6 = SE_out_avgpooling2_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_avgpooling2_B4_merge_reg_aunroll_x_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_avgpooling2_B4_merge_reg_aunroll_x_wireValid = avgpooling2_B4_merge_reg_aunroll_x_out_valid_out;

    // coalesced_delay_0_fifo(STALLFIFO,3561)
    assign coalesced_delay_0_fifo_valid_in = SE_out_avgpooling2_B4_merge_reg_aunroll_x_V5;
    assign coalesced_delay_0_fifo_stall_in = SR_SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(132),
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

    // SR_SE_out_coalesced_delay_0_fifo(STALLREG,4389)
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

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,4214)
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
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (i_llvm_fpga_pop_i32_n_channel_027_pop1136_pop27_avgpooling214_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
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

    // SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0(STALLREG,4390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_r_valid <= 1'b0;
            SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_r_valid <= SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_backStall & (SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_r_valid | SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_i_valid);

            if (SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_r_data0 <= $unsigned(SR_SE_out_coalesced_delay_0_fifo_D2);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_i_valid = SE_out_coalesced_delay_0_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_backStall = SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_r_valid | ~ (SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_i_valid);

    // Valid
    assign SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_V = SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_r_valid == 1'b1 ? SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_r_valid : SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_i_valid;

    assign SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_D0 = SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_r_valid == 1'b1 ? SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_r_data0 : SR_SE_out_coalesced_delay_0_fifo_D2;

    // redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0(REG,3550)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_backEN == 1'b1)
        begin
            redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_q <= $unsigned(SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_D0);
        end
    end

    // SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0(STALLENABLE,4200)
    // Valid signal propagation
    assign SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_V0 = SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_R_v_0;
    // Stall signal propagation
    assign SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_s_tv_0 = SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_backStall & SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_R_v_0;
    // Backward Enable generation
    assign SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_backEN = ~ (SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_v_s_0 = SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_backEN & SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_V;
    // Backward Stall generation
    assign SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_backStall = ~ (SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_backEN == 1'b0)
            begin
                SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_R_v_0 <= SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_R_v_0 & SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_s_tv_0;
            end
            else
            begin
                SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_R_v_0 <= SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_v_s_0;
            end

        end
    end

    // SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1(STALLREG,4391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_r_valid <= 1'b0;
            SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_r_valid <= SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_backStall & (SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_r_valid | SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_i_valid);

            if (SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_r_data0 <= $unsigned(redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_i_valid = SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_V0;
    // Stall signal propagation
    assign SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_backStall = SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_r_valid | ~ (SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_i_valid);

    // Valid
    assign SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_V = SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_r_valid == 1'b1 ? SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_r_valid : SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_i_valid;

    assign SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_D0 = SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_r_valid == 1'b1 ? SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_r_data0 : redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_0_q;

    // SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1(STALLENABLE,4201)
    // Valid signal propagation
    assign SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_V0 = SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_R_v_0;
    assign SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_V1 = SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_R_v_1;
    // Stall signal propagation
    assign SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_s_tv_0 = SE_out_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_backStall & SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_R_v_0;
    assign SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_s_tv_1 = SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_0_backStall & SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_R_v_1;
    // Backward Enable generation
    assign SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_or0 = SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_s_tv_0;
    assign SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_backEN = ~ (SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_s_tv_1 | SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_v_s_0 = SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_backEN & SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_V;
    // Backward Stall generation
    assign SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_backStall = ~ (SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_R_v_0 <= 1'b0;
            SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_backEN == 1'b0)
            begin
                SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_R_v_0 <= SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_R_v_0 & SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_s_tv_0;
            end
            else
            begin
                SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_R_v_0 <= SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_v_s_0;
            end

            if (SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_backEN == 1'b0)
            begin
                SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_R_v_1 <= SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_R_v_1 & SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_s_tv_1;
            end
            else
            begin
                SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_R_v_1 <= SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_v_s_0;
            end

        end
    end

    // redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo(STALLFIFO,3560)
    assign redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_valid_in = SE_out_avgpooling2_B4_merge_reg_aunroll_x_V4;
    assign redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_stall_in = SE_out_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_backStall;
    assign redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_data_in = bubble_select_avgpooling2_B4_merge_reg_aunroll_x_e;
    assign redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_valid_in_bitsignaltemp = redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_valid_in[0];
    assign redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_stall_in_bitsignaltemp = redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_stall_in[0];
    assign redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_valid_out[0] = redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_valid_out_bitsignaltemp;
    assign redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_stall_out[0] = redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(134),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo (
        .valid_in(redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_valid_in_bitsignaltemp),
        .stall_in(redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_avgpooling2_B4_merge_reg_aunroll_x_e),
        .valid_out(redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_valid_out_bitsignaltemp),
        .stall_out(redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_stall_out_bitsignaltemp),
        .data_out(redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo(STALLENABLE,4212)
    // Valid signal propagation
    assign SE_out_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_V0 = SE_out_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_backStall = i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_stall_out | ~ (SE_out_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_and0 = redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_valid_out;
    assign SE_out_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_wireValid = SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_V0 & SE_out_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_and0;

    // SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210(STALLENABLE,3768)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_V0 = SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_backStall = SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backStall | ~ (SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_wireValid = i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230(STALLENABLE,3798)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_wireValid = i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_out_valid_out;

    // i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230(BLACKBOX,273)@138
    // in in_stall_in@20000000
    // out out_data_out@139
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    // out out_stall_out@20000000
    // out out_valid_out@139
    avgpooling2_i_llvm_fpga_push_i32_i_026_pop1441_push31_0 thei_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_D0),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_feedback_stall_out_31),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_V0),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_out_feedback_valid_out_31),
        .out_stall_out(i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1(REG,3551)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_backEN == 1'b1)
        begin
            redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_q <= $unsigned(SR_SE_redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_D0);
        end
    end

    // bubble_join_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo(BITJOIN,3674)
    assign bubble_join_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_q = redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_data_out;

    // bubble_select_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo(BITSELECT,3675)
    assign bubble_select_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_b = $unsigned(bubble_join_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_q[31:0]);

    // i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210(BLACKBOX,258)@134
    // in in_stall_in@20000000
    // out out_data_out@135
    // out out_feedback_stall_out_31@20000000
    // out out_stall_out@20000000
    // out out_valid_out@135
    avgpooling2_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_0 thei_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210 (
        .in_data_in(bubble_select_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_b),
        .in_dir(redist62_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_133_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_backStall),
        .in_valid_in(SE_out_redist69_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_3_tpl_133_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_feedback_stall_out_31),
        .out_stall_out(i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210(BITJOIN,3642)
    assign bubble_join_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_q = i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210(BITSELECT,3643)
    assign bubble_select_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_q[31:0]);

    // redist53_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out_3_0(REG,3540)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out_3_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist53_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out_3_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_b);
        end
    end

    // join_for_coalesced_delay_12(BITJOIN,3505)
    assign join_for_coalesced_delay_12_q = {i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c, i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c};

    // lowRangeB_uid2718_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_merged_bit_select(BITSELECT,3390)@135
    assign lowRangeB_uid2718_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b = i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_e[1:0];
    assign lowRangeB_uid2718_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_c = i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_e[9:2];

    // rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_BitSelect_for_a(BITSELECT,3246)@135
    assign rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_BitSelect_for_a_b = bubble_select_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_b[30:0];
    assign rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_BitSelect_for_a_c = bubble_select_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_b[31:31];

    // rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_p1(MUX,3248)@135
    assign rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_p1_s = VCC_q;
    always @(rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_p1_s or rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_BitSelect_for_a_c or GND_q)
    begin
        unique case (rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_p1_s)
            1'b0 : rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_p1_q = rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_BitSelect_for_a_c;
            1'b1 : rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_p1_q = GND_q;
            default : rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_p1_q = 1'b0;
        endcase
    end

    // rightShiftStage0Idx1Rng1_uid577_i_div37_avgpooling20_shift_x(BITSELECT,576)@135
    assign rightShiftStage0Idx1Rng1_uid577_i_div37_avgpooling20_shift_x_b = bubble_select_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_b[31:1];

    // rightShiftStage0Idx1_uid579_i_div37_avgpooling20_shift_x(BITJOIN,578)@135
    assign rightShiftStage0Idx1_uid579_i_div37_avgpooling20_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid577_i_div37_avgpooling20_shift_x_b};

    // rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_BitSelect_for_b(BITSELECT,3245)@135
    assign rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_BitSelect_for_b_b = rightShiftStage0Idx1_uid579_i_div37_avgpooling20_shift_x_q[30:0];

    // rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_p0(MUX,3247)@135
    assign rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_p0_s = VCC_q;
    always @(rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_p0_s or rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_BitSelect_for_a_b or rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_BitSelect_for_b_b)
    begin
        unique case (rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_p0_s)
            1'b0 : rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_p0_q = rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_BitSelect_for_a_b;
            1'b1 : rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_p0_q = rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_BitSelect_for_b_b;
            default : rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_p0_q = 31'b0;
        endcase
    end

    // rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_BitJoin_for_q(BITJOIN,3249)@135
    assign rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_BitJoin_for_q_q = {rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_p1_q, rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_p0_q};

    // i_div37_avgpooling231_vt_select_30(BITSELECT,204)@135
    assign i_div37_avgpooling231_vt_select_30_b = rightShiftStage0_uid581_i_div37_avgpooling20_shift_x_BitJoin_for_q_q[30:0];

    // i_div37_avgpooling231_vt_join(BITJOIN,203)@135
    assign i_div37_avgpooling231_vt_join_q = {GND_q, i_div37_avgpooling231_vt_select_30_b};

    // i_idxprom38_avgpooling250_sel_x(BITSELECT,162)@135
    assign i_idxprom38_avgpooling250_sel_x_b = {32'b00000000000000000000000000000000, i_div37_avgpooling231_vt_join_q[31:0]};

    // i_idxprom38_avgpooling250_vt_select_30(BITSELECT,225)@135
    assign i_idxprom38_avgpooling250_vt_select_30_b = i_idxprom38_avgpooling250_sel_x_b[30:0];

    // i_idxprom38_avgpooling250_vt_join(BITJOIN,224)@135
    assign i_idxprom38_avgpooling250_vt_join_q = {i_idxprom38_avgpooling250_vt_const_63_q, i_idxprom38_avgpooling250_vt_select_30_b};

    // i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select(BITSELECT,3380)@135
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_b = i_idxprom38_avgpooling250_vt_join_q[17:0];
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_c = i_idxprom38_avgpooling250_vt_join_q[35:18];
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_d = i_idxprom38_avgpooling250_vt_join_q[53:36];
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_e = i_idxprom38_avgpooling250_vt_join_q[63:54];

    // addsumAHighB_uid2720_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9(ADD,2719)@135 + 1
    assign addsumAHighB_uid2720_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_a = {1'b0, i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_e};
    assign addsumAHighB_uid2720_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_b = {3'b000, lowRangeB_uid2718_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid2720_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_o <= 11'b0;
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid2720_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_o <= $unsigned(addsumAHighB_uid2720_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_a) + $unsigned(addsumAHighB_uid2720_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_b);
        end
    end
    assign addsumAHighB_uid2720_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_q = addsumAHighB_uid2720_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_o[10:0];

    // redist4_lowRangeB_uid2718_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b_1_0(REG,3514)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_lowRangeB_uid2718_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist4_lowRangeB_uid2718_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid2718_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b);
        end
    end

    // add_uid2721_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9(BITJOIN,2720)@136
    assign add_uid2721_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_q = {addsumAHighB_uid2720_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_q, redist4_lowRangeB_uid2718_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid2726_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9(BITJOIN,2725)@136
    assign sR_mergedSignalTM_uid2726_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_q = {add_uid2721_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_q, i_arrayidx10_avgpooling20_c_i2_03_x_q};

    // i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_3(BITSHIFT,545)@136
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid2726_i_arrayidx42_avgpooling20_dupName_0_mult_x_im9_q, 13'b0000000000000 };
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_3_q = i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_3_qint[27:0];

    // lowRangeB_uid2602_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_merged_bit_select(BITSELECT,3388)@135
    assign lowRangeB_uid2602_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b = i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_c[1:0];
    assign lowRangeB_uid2602_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_c = i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_c[17:2];

    // addsumAHighB_uid2604_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3(ADD,2603)@135 + 1
    assign addsumAHighB_uid2604_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_a = {1'b0, i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_c};
    assign addsumAHighB_uid2604_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_b = {3'b000, lowRangeB_uid2602_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid2604_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid2604_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_o <= $unsigned(addsumAHighB_uid2604_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_a) + $unsigned(addsumAHighB_uid2604_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_b);
        end
    end
    assign addsumAHighB_uid2604_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_q = addsumAHighB_uid2604_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_o[18:0];

    // redist6_lowRangeB_uid2602_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b_1_0(REG,3516)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_lowRangeB_uid2602_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist6_lowRangeB_uid2602_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid2602_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b);
        end
    end

    // add_uid2605_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3(BITJOIN,2604)@136
    assign add_uid2605_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_q = {addsumAHighB_uid2604_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_q, redist6_lowRangeB_uid2602_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid2610_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3(BITJOIN,2609)@136
    assign sR_mergedSignalTM_uid2610_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_q = {add_uid2605_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_q, i_arrayidx10_avgpooling20_c_i2_03_x_q};

    // i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_2(BITSHIFT,544)@136
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid2610_i_arrayidx42_avgpooling20_dupName_0_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_2_q = i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_2_qint[40:0];

    // i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_join_4(BITJOIN,546)@136
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_join_4_q = {i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_3_q, i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b(BITJOIN,3229)@136
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q = {GND_q, i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_join_4_q};

    // i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b(BITSELECT,3232)@136
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b = i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[51:0];
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c = i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[69:52];

    // lowRangeB_uid2660_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_merged_bit_select(BITSELECT,3389)@135
    assign lowRangeB_uid2660_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b = i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_d[1:0];
    assign lowRangeB_uid2660_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_c = i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_d[17:2];

    // addsumAHighB_uid2662_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6(ADD,2661)@135 + 1
    assign addsumAHighB_uid2662_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_a = {1'b0, i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_d};
    assign addsumAHighB_uid2662_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_b = {3'b000, lowRangeB_uid2660_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid2662_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid2662_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_o <= $unsigned(addsumAHighB_uid2662_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_a) + $unsigned(addsumAHighB_uid2662_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_b);
        end
    end
    assign addsumAHighB_uid2662_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_q = addsumAHighB_uid2662_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_o[18:0];

    // redist5_lowRangeB_uid2660_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b_1_0(REG,3515)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_lowRangeB_uid2660_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist5_lowRangeB_uid2660_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid2660_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b);
        end
    end

    // add_uid2663_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6(BITJOIN,2662)@136
    assign add_uid2663_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_q = {addsumAHighB_uid2662_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_q, redist5_lowRangeB_uid2660_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid2668_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6(BITJOIN,2667)@136
    assign sR_mergedSignalTM_uid2668_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_q = {add_uid2663_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_q, i_arrayidx10_avgpooling20_c_i2_03_x_q};

    // i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_0(BITSHIFT,542)@136
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid2668_i_arrayidx42_avgpooling20_dupName_0_mult_x_im6_q, 13'b0000000000000 };
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_0_q = i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_0_qint[35:0];

    // lowRangeB_uid2544_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_merged_bit_select(BITSELECT,3387)@135
    assign lowRangeB_uid2544_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b = i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_b[1:0];
    assign lowRangeB_uid2544_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_c = i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_b[17:2];

    // addsumAHighB_uid2546_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0(ADD,2545)@135 + 1
    assign addsumAHighB_uid2546_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_a = {1'b0, i_arrayidx42_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_b};
    assign addsumAHighB_uid2546_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_b = {3'b000, lowRangeB_uid2544_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid2546_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid2546_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_o <= $unsigned(addsumAHighB_uid2546_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_a) + $unsigned(addsumAHighB_uid2546_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_b);
        end
    end
    assign addsumAHighB_uid2546_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_q = addsumAHighB_uid2546_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_o[18:0];

    // redist7_lowRangeB_uid2544_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b_1_0(REG,3517)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_lowRangeB_uid2544_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist7_lowRangeB_uid2544_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid2544_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b);
        end
    end

    // add_uid2547_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0(BITJOIN,2546)@136
    assign add_uid2547_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_q = {addsumAHighB_uid2546_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_q, redist7_lowRangeB_uid2544_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid2552_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0(BITJOIN,2551)@136
    assign sR_mergedSignalTM_uid2552_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_q = {add_uid2547_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_q, i_arrayidx10_avgpooling20_c_i2_03_x_q};

    // i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_join_1(BITJOIN,543)@136
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_join_1_q = {i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid2552_i_arrayidx42_avgpooling20_dupName_0_mult_x_im0_q};

    // i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a(BITJOIN,3227)@136
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q = {i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_join_1_q};

    // i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a(BITSELECT,3231)@136
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b = i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[51:0];
    assign i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c = i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[69:52];

    // lowRangeB_uid1266_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_merged_bit_select(BITSELECT,3386)@135
    assign lowRangeB_uid1266_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b = i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_e[1:0];
    assign lowRangeB_uid1266_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_c = i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_e[9:2];

    // c_i32_176(CONSTANT,182)
    assign c_i32_176_q = $unsigned(32'b00000000000000000000000000000001);

    // i_add_avgpooling232(LOGICAL,195)@135
    assign i_add_avgpooling232_q = bubble_select_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_b | c_i32_176_q;

    // i_add_avgpooling232_vt_select_31(BITSELECT,198)@135
    assign i_add_avgpooling232_vt_select_31_b = i_add_avgpooling232_q[31:1];

    // i_add_avgpooling232_vt_join(BITJOIN,197)@135
    assign i_add_avgpooling232_vt_join_q = {i_add_avgpooling232_vt_select_31_b, VCC_q};

    // i_idxprom13_avgpooling251_sel_x(BITSELECT,160)@135
    assign i_idxprom13_avgpooling251_sel_x_b = {32'b00000000000000000000000000000000, i_add_avgpooling232_vt_join_q[31:0]};

    // i_idxprom13_avgpooling251_vt_select_31(BITSELECT,216)@135
    assign i_idxprom13_avgpooling251_vt_select_31_b = i_idxprom13_avgpooling251_sel_x_b[31:1];

    // i_idxprom13_avgpooling251_vt_join(BITJOIN,215)@135
    assign i_idxprom13_avgpooling251_vt_join_q = {c_i32_074_q, i_idxprom13_avgpooling251_vt_select_31_b, VCC_q};

    // i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select(BITSELECT,3378)@135
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_b = i_idxprom13_avgpooling251_vt_join_q[17:0];
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_c = i_idxprom13_avgpooling251_vt_join_q[35:18];
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_d = i_idxprom13_avgpooling251_vt_join_q[53:36];
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_e = i_idxprom13_avgpooling251_vt_join_q[63:54];

    // addsumAHighB_uid1268_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9(ADD,1267)@135 + 1
    assign addsumAHighB_uid1268_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_a = {1'b0, i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_e};
    assign addsumAHighB_uid1268_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_b = {3'b000, lowRangeB_uid1266_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid1268_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_o <= 11'b0;
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid1268_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_o <= $unsigned(addsumAHighB_uid1268_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_a) + $unsigned(addsumAHighB_uid1268_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_b);
        end
    end
    assign addsumAHighB_uid1268_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_q = addsumAHighB_uid1268_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_o[10:0];

    // redist8_lowRangeB_uid1266_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b_1_0(REG,3518)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_lowRangeB_uid1266_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist8_lowRangeB_uid1266_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid1266_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b);
        end
    end

    // add_uid1269_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9(BITJOIN,1268)@136
    assign add_uid1269_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_q = {addsumAHighB_uid1268_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_q, redist8_lowRangeB_uid1266_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b_1_0_q};

    // sR_bottomExtension_uid614_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0(CONSTANT,613)
    assign sR_bottomExtension_uid614_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_q = $unsigned(3'b000);

    // sR_mergedSignalTM_uid1274_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9(BITJOIN,1273)@136
    assign sR_mergedSignalTM_uid1274_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_q = {add_uid1269_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_q, sR_bottomExtension_uid614_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_q};

    // i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_3(BITSHIFT,509)@136
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid1274_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_q, 12'b000000000000 };
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_3_q = i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_3_qint[27:0];

    // lowRangeB_uid1150_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_merged_bit_select(BITSELECT,3384)@135
    assign lowRangeB_uid1150_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b = i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_c[1:0];
    assign lowRangeB_uid1150_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_c = i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_c[17:2];

    // addsumAHighB_uid1152_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3(ADD,1151)@135 + 1
    assign addsumAHighB_uid1152_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_a = {1'b0, i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_c};
    assign addsumAHighB_uid1152_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_b = {3'b000, lowRangeB_uid1150_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid1152_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid1152_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_o <= $unsigned(addsumAHighB_uid1152_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_a) + $unsigned(addsumAHighB_uid1152_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_b);
        end
    end
    assign addsumAHighB_uid1152_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_q = addsumAHighB_uid1152_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_o[18:0];

    // redist10_lowRangeB_uid1150_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b_1_0(REG,3520)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_lowRangeB_uid1150_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist10_lowRangeB_uid1150_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid1150_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b);
        end
    end

    // add_uid1153_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3(BITJOIN,1152)@136
    assign add_uid1153_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_q = {addsumAHighB_uid1152_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_q, redist10_lowRangeB_uid1150_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid1158_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3(BITJOIN,1157)@136
    assign sR_mergedSignalTM_uid1158_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_q = {add_uid1153_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_q, sR_bottomExtension_uid614_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_q};

    // i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_2(BITSHIFT,508)@136
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid1158_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_2_q = i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_join_4(BITJOIN,510)@136
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_join_4_q = {i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_3_q, i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b(BITJOIN,3211)@136
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q = {GND_q, i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_join_4_q};

    // i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b(BITSELECT,3214)@136
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b = i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[51:0];
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c = i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[70:52];

    // lowRangeB_uid1208_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_merged_bit_select(BITSELECT,3385)@135
    assign lowRangeB_uid1208_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b = i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_d[1:0];
    assign lowRangeB_uid1208_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_c = i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_d[17:2];

    // addsumAHighB_uid1210_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6(ADD,1209)@135 + 1
    assign addsumAHighB_uid1210_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_a = {1'b0, i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_d};
    assign addsumAHighB_uid1210_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_b = {3'b000, lowRangeB_uid1208_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid1210_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid1210_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_o <= $unsigned(addsumAHighB_uid1210_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_a) + $unsigned(addsumAHighB_uid1210_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_b);
        end
    end
    assign addsumAHighB_uid1210_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_q = addsumAHighB_uid1210_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_o[18:0];

    // redist9_lowRangeB_uid1208_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b_1_0(REG,3519)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_lowRangeB_uid1208_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist9_lowRangeB_uid1208_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid1208_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b);
        end
    end

    // add_uid1211_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6(BITJOIN,1210)@136
    assign add_uid1211_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_q = {addsumAHighB_uid1210_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_q, redist9_lowRangeB_uid1208_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid1216_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6(BITJOIN,1215)@136
    assign sR_mergedSignalTM_uid1216_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_q = {add_uid1211_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_q, sR_bottomExtension_uid614_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_q};

    // i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_0(BITSHIFT,506)@136
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid1216_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_q, 12'b000000000000 };
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_0_q = i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_0_qint[35:0];

    // lowRangeB_uid1092_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_merged_bit_select(BITSELECT,3383)@135
    assign lowRangeB_uid1092_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b = i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_b[1:0];
    assign lowRangeB_uid1092_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_c = i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_b[17:2];

    // addsumAHighB_uid1094_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0(ADD,1093)@135 + 1
    assign addsumAHighB_uid1094_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_a = {1'b0, i_arrayidx16_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_b};
    assign addsumAHighB_uid1094_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_b = {3'b000, lowRangeB_uid1092_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid1094_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid1094_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_o <= $unsigned(addsumAHighB_uid1094_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_a) + $unsigned(addsumAHighB_uid1094_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_b);
        end
    end
    assign addsumAHighB_uid1094_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_q = addsumAHighB_uid1094_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_o[18:0];

    // redist11_lowRangeB_uid1092_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b_1_0(REG,3521)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_lowRangeB_uid1092_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist11_lowRangeB_uid1092_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid1092_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b);
        end
    end

    // add_uid1095_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0(BITJOIN,1094)@136
    assign add_uid1095_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_q = {addsumAHighB_uid1094_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_q, redist11_lowRangeB_uid1092_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid1100_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0(BITJOIN,1099)@136
    assign sR_mergedSignalTM_uid1100_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_q = {add_uid1095_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_q, sR_bottomExtension_uid614_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_q};

    // i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_join_1(BITJOIN,507)@136
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_join_1_q = {i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid1100_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_q};

    // i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a(BITJOIN,3209)@136
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q = {i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_join_1_q};

    // i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a(BITSELECT,3213)@136
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b = i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[51:0];
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c = i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[70:52];

    // i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_3(BITSHIFT,437)@136
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid1274_i_arrayidx16_avgpooling20_dupName_0_mult_x_im9_q, 12'b000000000000 };
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_3_q = i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_2(BITSHIFT,436)@136
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid1158_i_arrayidx16_avgpooling20_dupName_0_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_2_q = i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_join_4(BITJOIN,438)@136
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_join_4_q = {i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_3_q, i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b(BITJOIN,3175)@136
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q = {GND_q, i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_join_4_q};

    // i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b(BITSELECT,3178)@136
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b = i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[51:0];
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c = i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[70:52];

    // i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_0(BITSHIFT,434)@136
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid1216_i_arrayidx16_avgpooling20_dupName_0_mult_x_im6_q, 12'b000000000000 };
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_0_q = i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_join_1(BITJOIN,435)@136
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_join_1_q = {i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid1100_i_arrayidx16_avgpooling20_dupName_0_mult_x_im0_q};

    // i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a(BITJOIN,3173)@136
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q = {i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_join_1_q};

    // i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a(BITSELECT,3177)@136
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b = i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[51:0];
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c = i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[70:52];

    // join_for_coalesced_delay_8(BITJOIN,3493)
    assign join_for_coalesced_delay_8_q = {i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c, i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c};

    // join_for_coalesced_delay_4(BITJOIN,3481)
    assign join_for_coalesced_delay_4_q = {i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c, i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c};

    // lowRangeB_uid782_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_merged_bit_select(BITSELECT,3394)@135
    assign lowRangeB_uid782_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b = i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_e[1:0];
    assign lowRangeB_uid782_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_c = i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_e[9:2];

    // i_idxprom7_avgpooling233_sel_x(BITSELECT,164)@135
    assign i_idxprom7_avgpooling233_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_b[31:0]};

    // i_idxprom7_avgpooling233_vt_select_31(BITSELECT,233)@135
    assign i_idxprom7_avgpooling233_vt_select_31_b = i_idxprom7_avgpooling233_sel_x_b[31:0];

    // i_idxprom7_avgpooling233_vt_join(BITJOIN,232)@135
    assign i_idxprom7_avgpooling233_vt_join_q = {c_i32_074_q, i_idxprom7_avgpooling233_vt_select_31_b};

    // i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select(BITSELECT,3381)@135
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_b = i_idxprom7_avgpooling233_vt_join_q[17:0];
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_c = i_idxprom7_avgpooling233_vt_join_q[35:18];
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_d = i_idxprom7_avgpooling233_vt_join_q[53:36];
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_e = i_idxprom7_avgpooling233_vt_join_q[63:54];

    // addsumAHighB_uid784_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9(ADD,783)@135 + 1
    assign addsumAHighB_uid784_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_a = {1'b0, i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_e};
    assign addsumAHighB_uid784_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_b = {3'b000, lowRangeB_uid782_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid784_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_o <= 11'b0;
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid784_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_o <= $unsigned(addsumAHighB_uid784_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_a) + $unsigned(addsumAHighB_uid784_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_b);
        end
    end
    assign addsumAHighB_uid784_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_q = addsumAHighB_uid784_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_o[10:0];

    // redist0_lowRangeB_uid782_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b_1_0(REG,3510)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_lowRangeB_uid782_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist0_lowRangeB_uid782_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid782_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b);
        end
    end

    // add_uid785_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9(BITJOIN,784)@136
    assign add_uid785_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_q = {addsumAHighB_uid784_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_q, redist0_lowRangeB_uid782_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid790_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9(BITJOIN,789)@136
    assign sR_mergedSignalTM_uid790_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_q = {add_uid785_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_q, sR_bottomExtension_uid614_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_q};

    // i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_3(BITSHIFT,473)@136
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid790_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_q, 12'b000000000000 };
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_3_q = i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_3_qint[27:0];

    // lowRangeB_uid666_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_merged_bit_select(BITSELECT,3392)@135
    assign lowRangeB_uid666_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b = i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_c[1:0];
    assign lowRangeB_uid666_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_c = i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_c[17:2];

    // addsumAHighB_uid668_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3(ADD,667)@135 + 1
    assign addsumAHighB_uid668_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_a = {1'b0, i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_c};
    assign addsumAHighB_uid668_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_b = {3'b000, lowRangeB_uid666_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid668_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid668_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_o <= $unsigned(addsumAHighB_uid668_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_a) + $unsigned(addsumAHighB_uid668_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_b);
        end
    end
    assign addsumAHighB_uid668_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_q = addsumAHighB_uid668_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_o[18:0];

    // redist2_lowRangeB_uid666_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b_1_0(REG,3512)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_lowRangeB_uid666_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist2_lowRangeB_uid666_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid666_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b);
        end
    end

    // add_uid669_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3(BITJOIN,668)@136
    assign add_uid669_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_q = {addsumAHighB_uid668_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_q, redist2_lowRangeB_uid666_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid674_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3(BITJOIN,673)@136
    assign sR_mergedSignalTM_uid674_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_q = {add_uid669_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_q, sR_bottomExtension_uid614_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_q};

    // i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_2(BITSHIFT,472)@136
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid674_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_2_q = i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_join_4(BITJOIN,474)@136
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_join_4_q = {i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_3_q, i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b(BITJOIN,3193)@136
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q = {GND_q, i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_join_4_q};

    // i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b(BITSELECT,3196)@136
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b = i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[51:0];
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c = i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[70:52];

    // lowRangeB_uid724_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_merged_bit_select(BITSELECT,3393)@135
    assign lowRangeB_uid724_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b = i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_d[1:0];
    assign lowRangeB_uid724_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_c = i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_d[17:2];

    // addsumAHighB_uid726_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6(ADD,725)@135 + 1
    assign addsumAHighB_uid726_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_a = {1'b0, i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_d};
    assign addsumAHighB_uid726_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_b = {3'b000, lowRangeB_uid724_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid726_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid726_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_o <= $unsigned(addsumAHighB_uid726_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_a) + $unsigned(addsumAHighB_uid726_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_b);
        end
    end
    assign addsumAHighB_uid726_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_q = addsumAHighB_uid726_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_o[18:0];

    // redist1_lowRangeB_uid724_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b_1_0(REG,3511)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_lowRangeB_uid724_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist1_lowRangeB_uid724_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid724_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b);
        end
    end

    // add_uid727_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6(BITJOIN,726)@136
    assign add_uid727_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_q = {addsumAHighB_uid726_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_q, redist1_lowRangeB_uid724_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid732_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6(BITJOIN,731)@136
    assign sR_mergedSignalTM_uid732_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_q = {add_uid727_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_q, sR_bottomExtension_uid614_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_q};

    // i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_0(BITSHIFT,470)@136
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid732_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_q, 12'b000000000000 };
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_0_q = i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_0_qint[35:0];

    // lowRangeB_uid608_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_merged_bit_select(BITSELECT,3391)@135
    assign lowRangeB_uid608_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b = i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_b[1:0];
    assign lowRangeB_uid608_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_c = i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_b[17:2];

    // addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0(ADD,609)@135 + 1
    assign addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_a = {1'b0, i_arrayidx10_avgpooling20_dupName_0_mult_x_bs1_merged_bit_select_b};
    assign addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_b = {3'b000, lowRangeB_uid608_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_o <= 19'b0;
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_o <= $unsigned(addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_a) + $unsigned(addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_b);
        end
    end
    assign addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_q = addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_o[18:0];

    // redist3_lowRangeB_uid608_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b_1_0(REG,3513)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_lowRangeB_uid608_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b_1_0_q <= $unsigned(2'b00);
        end
        else if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b1)
        begin
            redist3_lowRangeB_uid608_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b_1_0_q <= $unsigned(lowRangeB_uid608_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b);
        end
    end

    // add_uid611_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0(BITJOIN,610)@136
    assign add_uid611_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_q = {addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_q, redist3_lowRangeB_uid608_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_merged_bit_select_b_1_0_q};

    // sR_mergedSignalTM_uid616_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0(BITJOIN,615)@136
    assign sR_mergedSignalTM_uid616_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_q = {add_uid611_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_q, sR_bottomExtension_uid614_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_q};

    // i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_join_1(BITJOIN,471)@136
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_join_1_q = {i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid616_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_q};

    // i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a(BITJOIN,3191)@136
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q = {i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_join_1_q};

    // i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a(BITSELECT,3195)@136
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b = i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[51:0];
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c = i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[70:52];

    // i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_3(BITSHIFT,401)@136
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid790_i_arrayidx10_avgpooling20_dupName_0_mult_x_im9_q, 12'b000000000000 };
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_3_q = i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_2(BITSHIFT,400)@136
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid674_i_arrayidx10_avgpooling20_dupName_0_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_2_q = i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_join_4(BITJOIN,402)@136
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_join_4_q = {i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_3_q, i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b(BITJOIN,3157)@136
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q = {GND_q, i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_join_4_q};

    // i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b(BITSELECT,3160)@136
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b = i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[51:0];
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_c = i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_b_q[70:52];

    // i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_0(BITSHIFT,398)@136
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid732_i_arrayidx10_avgpooling20_dupName_0_mult_x_im6_q, 12'b000000000000 };
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_0_q = i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_join_1(BITJOIN,399)@136
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_join_1_q = {i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid616_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_q};

    // i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a(BITJOIN,3155)@136
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q = {i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_join_1_q};

    // i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a(BITSELECT,3159)@136
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b = i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[51:0];
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_c = i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitExpansion_for_a_q[70:52];

    // SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0(STALLENABLE,3876)
    // Valid signal propagation
    assign SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_V0 = SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_R_v_0;
    // Stall signal propagation
    assign SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_s_tv_0 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall & SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_R_v_0;
    // Backward Enable generation
    assign SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN = ~ (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_v_s_0 = SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN & SE_out_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_V0;
    // Backward Stall generation
    assign SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backStall = ~ (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_backEN == 1'b0)
            begin
                SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_R_v_0 <= SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_R_v_0 & SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_s_tv_0;
            end
            else
            begin
                SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_R_v_0 <= SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(STALLREG,4403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= 38'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data5 <= 38'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data6 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data7 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data8 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data9 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data10 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data11 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data12 <= 36'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data13 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data14 <= 38'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data15 <= 38'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid <= SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall & (SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid | SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data2 <= $unsigned(i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data3 <= $unsigned(i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data4 <= $unsigned(join_for_coalesced_delay_4_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data5 <= $unsigned(join_for_coalesced_delay_8_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data6 <= $unsigned(i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data7 <= $unsigned(i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data8 <= $unsigned(i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data9 <= $unsigned(i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data10 <= $unsigned(i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data11 <= $unsigned(i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data12 <= $unsigned(join_for_coalesced_delay_12_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data13 <= $unsigned(redist53_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out_3_0_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data14 <= $unsigned(join_for_coalesced_delay_6_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data15 <= $unsigned(join_for_coalesced_delay_10_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_i_valid = SE_addsumAHighB_uid610_i_arrayidx10_avgpooling20_dupName_0_mult_x_im0_V0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid : SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D0 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data0 : i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    // Data1
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D1 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data1 : i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    // Data2
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D2 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data2 : i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    // Data3
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D3 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data3 : i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    // Data4
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D4 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data4 : join_for_coalesced_delay_4_q;
    // Data5
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D5 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data5 : join_for_coalesced_delay_8_q;
    // Data6
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D6 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data6 : i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    // Data7
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D7 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data7 : i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    // Data8
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D8 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data8 : i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    // Data9
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D9 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data9 : i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    // Data10
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D10 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data10 : i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_b;
    // Data11
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D11 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data11 : i_arrayidx42_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_b;
    // Data12
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D12 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data12 : join_for_coalesced_delay_12_q;
    // Data13
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D13 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data13 : redist53_i_llvm_fpga_pop_i32_i_026_pop1441_pop31_avgpooling210_out_data_out_3_0_q;
    // Data14
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D14 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data14 : join_for_coalesced_delay_6_q;
    // Data15
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D15 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_r_data15 : join_for_coalesced_delay_10_q;

    // i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(ADD,3215)@136 + 1
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D8};
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D9};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // i_arrayidx33_avgpooling20_add_x_p1_of_2(ADD,3125)@136 + 1
    assign i_arrayidx33_avgpooling20_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D3};
    assign i_arrayidx33_avgpooling20_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D7};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx33_avgpooling20_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx33_avgpooling20_add_x_p1_of_2_o <= $unsigned(i_arrayidx33_avgpooling20_add_x_p1_of_2_a) + $unsigned(i_arrayidx33_avgpooling20_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx33_avgpooling20_add_x_p1_of_2_c[0] = i_arrayidx33_avgpooling20_add_x_p1_of_2_o[52];
    assign i_arrayidx33_avgpooling20_add_x_p1_of_2_q = i_arrayidx33_avgpooling20_add_x_p1_of_2_o[51:0];

    // i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(ADD,3179)@136 + 1
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D6};
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D7};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // i_arrayidx16_avgpooling20_add_x_p1_of_2(ADD,3071)@136 + 1
    assign i_arrayidx16_avgpooling20_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D1};
    assign i_arrayidx16_avgpooling20_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D5};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_avgpooling20_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx16_avgpooling20_add_x_p1_of_2_o <= $unsigned(i_arrayidx16_avgpooling20_add_x_p1_of_2_a) + $unsigned(i_arrayidx16_avgpooling20_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx16_avgpooling20_add_x_p1_of_2_c[0] = i_arrayidx16_avgpooling20_add_x_p1_of_2_o[52];
    assign i_arrayidx16_avgpooling20_add_x_p1_of_2_q = i_arrayidx16_avgpooling20_add_x_p1_of_2_o[51:0];

    // i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(ADD,3197)@136 + 1
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D2};
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D3};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // i_arrayidx24_avgpooling20_add_x_p1_of_2(ADD,3098)@136 + 1
    assign i_arrayidx24_avgpooling20_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D2};
    assign i_arrayidx24_avgpooling20_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D6};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_avgpooling20_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx24_avgpooling20_add_x_p1_of_2_o <= $unsigned(i_arrayidx24_avgpooling20_add_x_p1_of_2_a) + $unsigned(i_arrayidx24_avgpooling20_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx24_avgpooling20_add_x_p1_of_2_c[0] = i_arrayidx24_avgpooling20_add_x_p1_of_2_o[52];
    assign i_arrayidx24_avgpooling20_add_x_p1_of_2_q = i_arrayidx24_avgpooling20_add_x_p1_of_2_o[51:0];

    // i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(ADD,3161)@136 + 1
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D0};
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // i_arrayidx10_avgpooling20_add_x_p1_of_2(ADD,3044)@136 + 1
    assign i_arrayidx10_avgpooling20_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D0};
    assign i_arrayidx10_avgpooling20_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_D4};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_avgpooling20_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_avgpooling20_add_x_p1_of_2_o <= $unsigned(i_arrayidx10_avgpooling20_add_x_p1_of_2_a) + $unsigned(i_arrayidx10_avgpooling20_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx10_avgpooling20_add_x_p1_of_2_c[0] = i_arrayidx10_avgpooling20_add_x_p1_of_2_o[52];
    assign i_arrayidx10_avgpooling20_add_x_p1_of_2_q = i_arrayidx10_avgpooling20_add_x_p1_of_2_o[51:0];

    // SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(STALLENABLE,4003)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V0 = SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V1 = SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V2 = SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    // Stall signal propagation
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_backStall & SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1;
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2 = SR_SE_i_arrayidx42_avgpooling20_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2;
    // Backward Enable generation
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or0 = SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or1 = SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1 | SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or0;
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN = ~ (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2 | SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_v_s_0 = SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN & SR_SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backStall = ~ (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= 1'b0;
            SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 & SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 & SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 & SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_s_tv_2;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_R_v_2 <= SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_arrayidx10_avgpooling20_add_x_p1_of_2(STALLENABLE,3965)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_V0 = SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_V1 = SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_backStall & SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx10_avgpooling20_add_x_p2_of_2_backStall & SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_or0 = SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_v_s_0 = SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_backEN & SR_SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_R_v_0 & SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_R_v_1 & SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2(STALLREG,4414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data2 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data3 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data4 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data5 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data6 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data7 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_valid <= SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_avgpooling20_add_x_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data2 <= $unsigned(i_arrayidx24_avgpooling20_add_x_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data3 <= $unsigned(i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data4 <= $unsigned(i_arrayidx16_avgpooling20_add_x_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data5 <= $unsigned(i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data6 <= $unsigned(i_arrayidx33_avgpooling20_add_x_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data7 <= $unsigned(i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_and0 = SE_i_arrayidx10_avgpooling20_add_x_p1_of_2_V0;
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_i_valid = SE_i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_V0 & SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_backStall = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_V = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D0 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data0 : i_arrayidx10_avgpooling20_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D1 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data1 : i_arrayidx10_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    // Data2
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D2 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data2 : i_arrayidx24_avgpooling20_add_x_p1_of_2_q;
    // Data3
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D3 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data3 : i_arrayidx24_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    // Data4
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D4 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data4 : i_arrayidx16_avgpooling20_add_x_p1_of_2_q;
    // Data5
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D5 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data5 : i_arrayidx16_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    // Data6
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D6 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data6 : i_arrayidx33_avgpooling20_add_x_p1_of_2_q;
    // Data7
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D7 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_r_data7 : i_arrayidx33_avgpooling20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;

    // i_arrayidx33_avgpooling20_dupName_0_add_x_p1_of_2(ADD,3107)@137 + 1
    assign i_arrayidx33_avgpooling20_dupName_0_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D6};
    assign i_arrayidx33_avgpooling20_dupName_0_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D7};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx33_avgpooling20_dupName_0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx33_avgpooling20_dupName_0_add_x_p1_of_2_o <= $unsigned(i_arrayidx33_avgpooling20_dupName_0_add_x_p1_of_2_a) + $unsigned(i_arrayidx33_avgpooling20_dupName_0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx33_avgpooling20_dupName_0_add_x_p1_of_2_c[0] = i_arrayidx33_avgpooling20_dupName_0_add_x_p1_of_2_o[52];
    assign i_arrayidx33_avgpooling20_dupName_0_add_x_p1_of_2_q = i_arrayidx33_avgpooling20_dupName_0_add_x_p1_of_2_o[51:0];

    // i_arrayidx16_avgpooling20_dupName_0_add_x_p1_of_2(ADD,3053)@137 + 1
    assign i_arrayidx16_avgpooling20_dupName_0_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D4};
    assign i_arrayidx16_avgpooling20_dupName_0_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D5};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_avgpooling20_dupName_0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx16_avgpooling20_dupName_0_add_x_p1_of_2_o <= $unsigned(i_arrayidx16_avgpooling20_dupName_0_add_x_p1_of_2_a) + $unsigned(i_arrayidx16_avgpooling20_dupName_0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx16_avgpooling20_dupName_0_add_x_p1_of_2_c[0] = i_arrayidx16_avgpooling20_dupName_0_add_x_p1_of_2_o[52];
    assign i_arrayidx16_avgpooling20_dupName_0_add_x_p1_of_2_q = i_arrayidx16_avgpooling20_dupName_0_add_x_p1_of_2_o[51:0];

    // i_add22_avgpooling222(LOGICAL,190)@138
    assign i_add22_avgpooling222_q = bubble_select_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_b | c_i32_176_q;

    // i_add22_avgpooling222_vt_select_31(BITSELECT,193)@138
    assign i_add22_avgpooling222_vt_select_31_b = i_add22_avgpooling222_q[31:1];

    // i_add22_avgpooling222_vt_join(BITJOIN,192)@138
    assign i_add22_avgpooling222_vt_join_q = {i_add22_avgpooling222_vt_select_31_b, VCC_q};

    // i_idxprom23_avgpooling244_sel_x(BITSELECT,161)@138
    assign i_idxprom23_avgpooling244_sel_x_b = {32'b00000000000000000000000000000000, i_add22_avgpooling222_vt_join_q[31:0]};

    // i_idxprom23_avgpooling244_vt_select_31(BITSELECT,221)@138
    assign i_idxprom23_avgpooling244_vt_select_31_b = i_idxprom23_avgpooling244_sel_x_b[31:1];

    // i_idxprom23_avgpooling244_vt_join(BITJOIN,220)@138
    assign i_idxprom23_avgpooling244_vt_join_q = {c_i32_074_q, i_idxprom23_avgpooling244_vt_select_31_b, VCC_q};

    // i_arrayidx24_avgpooling20_narrow_x(BITSELECT,92)@138
    assign i_arrayidx24_avgpooling20_narrow_x_b = i_idxprom23_avgpooling244_vt_join_q[61:0];

    // i_arrayidx24_avgpooling20_shift_join_x(BITJOIN,93)@138
    assign i_arrayidx24_avgpooling20_shift_join_x_q = {i_arrayidx24_avgpooling20_narrow_x_b, i_arrayidx10_avgpooling20_c_i2_03_x_q};

    // i_arrayidx24_avgpooling20_dupName_1_add_x_BitExpansion_for_b(BITJOIN,3085)@138
    assign i_arrayidx24_avgpooling20_dupName_1_add_x_BitExpansion_for_b_q = {GND_q, i_arrayidx24_avgpooling20_shift_join_x_q};

    // i_arrayidx24_avgpooling20_dupName_1_add_x_BitSelect_for_b(BITSELECT,3088)@138
    assign i_arrayidx24_avgpooling20_dupName_1_add_x_BitSelect_for_b_b = i_arrayidx24_avgpooling20_dupName_1_add_x_BitExpansion_for_b_q[51:0];

    // i_arrayidx24_avgpooling20_dupName_0_add_x_p1_of_2(ADD,3080)@137 + 1
    assign i_arrayidx24_avgpooling20_dupName_0_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D2};
    assign i_arrayidx24_avgpooling20_dupName_0_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D3};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_avgpooling20_dupName_0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx24_avgpooling20_dupName_0_add_x_p1_of_2_o <= $unsigned(i_arrayidx24_avgpooling20_dupName_0_add_x_p1_of_2_a) + $unsigned(i_arrayidx24_avgpooling20_dupName_0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx24_avgpooling20_dupName_0_add_x_p1_of_2_c[0] = i_arrayidx24_avgpooling20_dupName_0_add_x_p1_of_2_o[52];
    assign i_arrayidx24_avgpooling20_dupName_0_add_x_p1_of_2_q = i_arrayidx24_avgpooling20_dupName_0_add_x_p1_of_2_o[51:0];

    // i_idxprom9_avgpooling221_sel_x(BITSELECT,165)@138
    assign i_idxprom9_avgpooling221_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_b[31:0]};

    // i_idxprom9_avgpooling221_vt_select_31(BITSELECT,237)@138
    assign i_idxprom9_avgpooling221_vt_select_31_b = i_idxprom9_avgpooling221_sel_x_b[31:0];

    // i_idxprom9_avgpooling221_vt_join(BITJOIN,236)@138
    assign i_idxprom9_avgpooling221_vt_join_q = {c_i32_074_q, i_idxprom9_avgpooling221_vt_select_31_b};

    // i_arrayidx10_avgpooling20_narrow_x(BITSELECT,40)@138
    assign i_arrayidx10_avgpooling20_narrow_x_b = i_idxprom9_avgpooling221_vt_join_q[61:0];

    // i_arrayidx10_avgpooling20_shift_join_x(BITJOIN,41)@138
    assign i_arrayidx10_avgpooling20_shift_join_x_q = {i_arrayidx10_avgpooling20_narrow_x_b, i_arrayidx10_avgpooling20_c_i2_03_x_q};

    // i_arrayidx10_avgpooling20_dupName_1_add_x_BitExpansion_for_b(BITJOIN,3031)@138
    assign i_arrayidx10_avgpooling20_dupName_1_add_x_BitExpansion_for_b_q = {GND_q, i_arrayidx10_avgpooling20_shift_join_x_q};

    // i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b(BITSELECT,3034)@138
    assign i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_b = i_arrayidx10_avgpooling20_dupName_1_add_x_BitExpansion_for_b_q[51:0];

    // i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2(ADD,3026)@137 + 1
    assign i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_a = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D0};
    assign i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_b = {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_o <= $unsigned(i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_a) + $unsigned(i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_c[0] = i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_o[52];
    assign i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_q = i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_o[51:0];

    // SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2(STALLENABLE,3956)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_V0 = SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_V1 = SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p2_of_2_backStall & SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_s_tv_1 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_backStall & SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_or0 = SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_v_s_0 = SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_backEN & SR_SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_R_v_0 & SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_R_v_1 & SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0(STALLENABLE,4171)
    // Valid signal propagation
    assign SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_V0 = SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_backStall & SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0(STALLREG,4419)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_data2 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_data3 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid <= SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q);
                SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_data1 <= $unsigned(i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_q);
                SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_data2 <= $unsigned(i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_q);
                SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_data3 <= $unsigned(i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_i_valid = SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_V = SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_i_valid;

    // Data0
    assign SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_data0 : i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_D1 = SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_data1 : i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_q;
    // Data2
    assign SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_D2 = SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_data2 : i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_q;
    // Data3
    assign SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_D3 = SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_r_data3 : i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_q;

    // SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2(STALLENABLE,3960)
    // Valid signal propagation
    assign SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_V0 = SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_V1 = SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_s_tv_0 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_backStall & SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_R_v_0;
    assign SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_s_tv_1 = SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backStall & SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_or0 = SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_s_tv_0;
    assign SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_backEN = ~ (SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_s_tv_1 | SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_v_s_0 = SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_backEN & SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_backStall = ~ (SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_R_v_0 & SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_R_v_0 <= SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_R_v_1 & SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_R_v_1 <= SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2(STALLREG,4415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data0 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data1 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data2 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data3 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data4 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data5 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data6 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data7 <= 52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_valid <= SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_backStall & (SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_valid | SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_i_valid);

            if (SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data0 <= $unsigned(i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data1 <= $unsigned(i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data2 <= $unsigned(i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data3 <= $unsigned(i_arrayidx24_avgpooling20_dupName_0_add_x_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data4 <= $unsigned(i_arrayidx24_avgpooling20_dupName_1_add_x_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data5 <= $unsigned(i_arrayidx24_avgpooling20_dupName_1_add_x_BitSelect_for_b_b);
                SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data6 <= $unsigned(i_arrayidx16_avgpooling20_dupName_0_add_x_p1_of_2_q);
                SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data7 <= $unsigned(i_arrayidx33_avgpooling20_dupName_0_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_and0 = SE_i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_V1;
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_V2 & SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_backStall = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_valid | ~ (SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_V = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_valid : SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D0 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data0 : i_arrayidx10_avgpooling20_dupName_0_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D1 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data1 : i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_b;
    // Data2
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D2 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data2 : i_arrayidx10_avgpooling20_dupName_1_add_x_BitSelect_for_b_b;
    // Data3
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D3 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data3 : i_arrayidx24_avgpooling20_dupName_0_add_x_p1_of_2_q;
    // Data4
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D4 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data4 : i_arrayidx24_avgpooling20_dupName_1_add_x_BitSelect_for_b_b;
    // Data5
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D5 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data5 : i_arrayidx24_avgpooling20_dupName_1_add_x_BitSelect_for_b_b;
    // Data6
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D6 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data6 : i_arrayidx16_avgpooling20_dupName_0_add_x_p1_of_2_q;
    // Data7
    assign SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_D7 = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_r_data7 : i_arrayidx33_avgpooling20_dupName_0_add_x_p1_of_2_q;

    // SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,4107)
    // Valid signal propagation
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_backStall | ~ (SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_V1;
    assign SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V0 & SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling246(STALLENABLE,3799)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling246_V0 = SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling246_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling246_backStall = i_llvm_fpga_push_i32_j_025_push21_avgpooling246_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling246_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling246_and0 = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_V0;
    assign SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling246_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V4 & SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling246_and0;

    // SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25(STALLENABLE,3770)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_fromReg2 <= SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_consumed0 = (~ (SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling246_backStall) & SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_consumed1 = (~ (SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_backStall) & SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_consumed2 = (~ (SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_StallValid = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_backStall & SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_toReg0 = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_StallValid & SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_toReg1 = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_StallValid & SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_consumed1;
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_toReg2 = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_StallValid & SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_or0 = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_or1 = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_consumed1 & SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_or0;
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_consumed2 & SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_or1);
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_backStall = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_V0 = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_V1 = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_V2 = SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_wireValid = i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_j_025_push21_avgpooling246(STALLENABLE,3800)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_j_025_push21_avgpooling246_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_j_025_push21_avgpooling246_wireValid = i_llvm_fpga_push_i32_j_025_push21_avgpooling246_out_valid_out;

    // c_i32_277(CONSTANT,183)
    assign c_i32_277_q = $unsigned(32'b00000000000000000000000000000010);

    // i_add43_avgpooling224(ADD,194)@138
    assign i_add43_avgpooling224_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_b};
    assign i_add43_avgpooling224_b = {1'b0, c_i32_277_q};
    assign i_add43_avgpooling224_o = $unsigned(i_add43_avgpooling224_a) + $unsigned(i_add43_avgpooling224_b);
    assign i_add43_avgpooling224_q = i_add43_avgpooling224_o[32:0];

    // bgTrunc_i_add43_avgpooling224_sel_x(BITSELECT,3)@138
    assign bgTrunc_i_add43_avgpooling224_sel_x_b = i_add43_avgpooling224_q[31:0];

    // i_llvm_fpga_push_i32_j_025_push21_avgpooling246(BLACKBOX,274)@138
    // in in_stall_in@20000000
    // out out_data_out@139
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@139
    avgpooling2_i_llvm_fpga_push_i32_j_025_push21_0 thei_llvm_fpga_push_i32_j_025_push21_avgpooling246 (
        .in_data_in(bgTrunc_i_add43_avgpooling224_sel_x_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_out_feedback_stall_out_21),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling23_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_j_025_push21_avgpooling246_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling246_V0),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_j_025_push21_avgpooling246_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_j_025_push21_avgpooling246_out_feedback_valid_out_21),
        .out_stall_out(i_llvm_fpga_push_i32_j_025_push21_avgpooling246_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_j_025_push21_avgpooling246_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_074(CONSTANT,181)
    assign c_i32_074_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25(BLACKBOX,259)@137
    // in in_stall_in@20000000
    // out out_data_out@138
    // out out_feedback_stall_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@138
    avgpooling2_i_llvm_fpga_pop_i32_j_025_pop21_0 thei_llvm_fpga_pop_i32_j_025_pop21_avgpooling25 (
        .in_data_in(c_i32_074_q),
        .in_dir(redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_q),
        .in_feedback_in_21(i_llvm_fpga_push_i32_j_025_push21_avgpooling246_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_j_025_push21_avgpooling246_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_backStall),
        .in_valid_in(SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_V2),
        .out_data_out(i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_out_feedback_stall_out_21),
        .out_stall_out(i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0(STALLREG,4395)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_valid <= 1'b0;
            SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_valid <= SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backStall & (SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_valid | SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_i_valid);

            if (SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_data0 <= $unsigned(redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_i_valid = SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_V0;
    // Stall signal propagation
    assign SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backStall = SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_valid | ~ (SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_i_valid);

    // Valid
    assign SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_V = SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_valid == 1'b1 ? SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_valid : SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_i_valid;

    assign SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_D0 = SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_valid == 1'b1 ? SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_r_data0 : redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_q;

    // redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1(REG,3553)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_backEN == 1'b1)
        begin
            redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_q <= $unsigned(SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_D0);
        end
    end

    // SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2(STALLREG,4394)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_r_valid <= 1'b0;
            SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_r_valid <= SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_backStall & (SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_r_valid | SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_i_valid);

            if (SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_r_data0 <= $unsigned(redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_i_valid = SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_V0;
    // Stall signal propagation
    assign SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_backStall = SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_r_valid | ~ (SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_i_valid);

    // Valid
    assign SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_V = SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_r_valid == 1'b1 ? SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_r_valid : SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_i_valid;

    assign SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_D0 = SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_r_valid == 1'b1 ? SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_r_data0 : redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_1_q;

    // SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2(STALLENABLE,4204)
    // Valid signal propagation
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_V0 = SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_0;
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_V1 = SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_1;
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_V2 = SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_2;
    // Stall signal propagation
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_s_tv_0 = SR_SE_redist64_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_138_0_backStall & SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_0;
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_s_tv_1 = i_llvm_fpga_pipeline_keep_going_avgpooling23_out_stall_out & SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_1;
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_s_tv_2 = i_llvm_fpga_pop_i32_j_025_pop21_avgpooling25_out_stall_out & SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_2;
    // Backward Enable generation
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_or0 = SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_s_tv_0;
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_or1 = SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_s_tv_1 | SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_or0;
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_backEN = ~ (SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_s_tv_2 | SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_v_s_0 = SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_backEN & SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_V;
    // Backward Stall generation
    assign SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_backStall = ~ (SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_0 <= 1'b0;
            SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_1 <= 1'b0;
            SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_backEN == 1'b0)
            begin
                SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_0 <= SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_0 & SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_s_tv_0;
            end
            else
            begin
                SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_0 <= SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_v_s_0;
            end

            if (SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_backEN == 1'b0)
            begin
                SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_1 <= SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_1 & SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_s_tv_1;
            end
            else
            begin
                SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_1 <= SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_v_s_0;
            end

            if (SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_backEN == 1'b0)
            begin
                SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_2 <= SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_2 & SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_s_tv_2;
            end
            else
            begin
                SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_R_v_2 <= SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i1_notexitcond_avgpooling248(STALLENABLE,3792)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_avgpooling248_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_avgpooling248_wireValid = i_llvm_fpga_push_i1_notexitcond_avgpooling248_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_avgpooling248(BLACKBOX,270)@140
    // in in_stall_in@20000000
    // out out_data_out@141
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@141
    avgpooling2_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_avgpooling248 (
        .in_data_in(i_exitcond_avgpooling225_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_avgpooling23_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_avgpooling218_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_avgpooling248_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_avgpooling248_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_avgpooling248_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_avgpooling248_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_avgpooling248_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_avgpooling248_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_avgpooling254(STALLENABLE,3780)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_avgpooling254_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_avgpooling254_wireValid = i_llvm_fpga_push_i1_lastiniteration_avgpooling254_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration_avgpooling254(BLACKBOX,264)@274
    // in in_stall_in@20000000
    // out out_data_out@275
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@275
    avgpooling2_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_avgpooling254 (
        .in_data_in(SR_SE_i_next_initerations_avgpooling220_vt_select_0_D0),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_avgpooling23_out_initeration_stall_out),
        .in_keep_going(SR_SE_i_next_initerations_avgpooling220_vt_select_0_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_avgpooling254_backStall),
        .in_valid_in(SE_i_next_initerations_avgpooling220_vt_select_0_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_avgpooling254_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_avgpooling254_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_avgpooling254_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_avgpooling254_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2(REG,3554)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_backEN == 1'b1)
        begin
            redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_q <= $unsigned(SR_SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_D0);
        end
    end

    // i_llvm_fpga_pipeline_keep_going_avgpooling23(BLACKBOX,248)@137
    // in in_stall_in@20000000
    // out out_data_out@138
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@138
    avgpooling2_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_avgpooling23 (
        .in_data_in(redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_avgpooling254_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_avgpooling254_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_avgpooling248_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_avgpooling248_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_backStall),
        .in_valid_in(SE_redist63_avgpooling2_B4_merge_reg_aunroll_x_out_data_out_0_tpl_136_2_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_avgpooling23_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_avgpooling23_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_avgpooling23_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_avgpooling23_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_avgpooling23_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_avgpooling23_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_avgpooling23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pipeline_keep_going_avgpooling23(BITJOIN,3606)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_avgpooling23_q = i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling23(BITSELECT,3607)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling23_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_avgpooling23_q[0:0]);

    // bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg(STALLFIFO,4386)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(139),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23(STALLENABLE,3748)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg5 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg5 <= SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg5;
            // Successor 6
            SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg6 <= SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1542_push32_avgpooling234_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed2 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi2_pop1238_push28_avgpooling239_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed3 = (~ (SR_SE_in_i_llvm_fpga_push_i32_i_026_pop1441_push31_avgpooling230_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed4 = (~ (SE_in_i_llvm_fpga_push_i32_j_025_push21_avgpooling246_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed5 = (~ (SE_in_i_llvm_fpga_push_i32_n_channel_027_pop1136_push27_avgpooling237_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed6 = (~ (SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg6;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg5 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_toReg6 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed6;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_or3 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_or4 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_or3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_or5 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed5 & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_or4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_consumed6 & SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_or5);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V4 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg4);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V5 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg5);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V6 = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_wireValid = i_llvm_fpga_pipeline_keep_going_avgpooling23_out_valid_out;

    // SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0(STALLREG,4421)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_r_valid <= 1'b0;
            SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_r_valid <= SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_backStall & (SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_r_valid | SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_i_valid);

            if (SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling23_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_V6;
    // Stall signal propagation
    assign SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_backStall = SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_r_valid | ~ (SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_i_valid);

    // Valid
    assign SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_V = SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_r_valid == 1'b1 ? SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_r_valid : SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_i_valid;

    assign SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_D0 = SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_r_valid == 1'b1 ? SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_r_data0 : bubble_select_i_llvm_fpga_pipeline_keep_going_avgpooling23_b;

    // redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0(REG,3545)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_backEN == 1'b1)
        begin
            redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_q <= $unsigned(SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_D0);
        end
    end

    // SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0(STALLENABLE,4194)
    // Valid signal propagation
    assign SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_V0 = SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_s_tv_0 = SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_backStall & SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_backEN = ~ (SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_v_s_0 = SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_backEN & SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_V;
    // Backward Stall generation
    assign SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_backStall = ~ (SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_backEN == 1'b0)
            begin
                SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_R_v_0 <= SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_R_v_0 & SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_s_tv_0;
            end
            else
            begin
                SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_R_v_0 <= SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_v_s_0;
            end

        end
    end

    // SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1(STALLREG,4422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_r_valid <= 1'b0;
            SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_r_valid <= SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_backStall & (SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_r_valid | SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_i_valid);

            if (SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_r_data0 <= $unsigned(redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_i_valid = SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_V0;
    // Stall signal propagation
    assign SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_backStall = SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_r_valid | ~ (SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_i_valid);

    // Valid
    assign SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_V = SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_r_valid == 1'b1 ? SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_r_valid : SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_i_valid;

    assign SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_D0 = SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_r_valid == 1'b1 ? SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_r_data0 : redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_0_q;

    // redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1(REG,3546)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_backEN == 1'b1)
        begin
            redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_q <= $unsigned(SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_D0);
        end
    end

    // SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1(STALLENABLE,4195)
    // Valid signal propagation
    assign SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_V0 = SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_0;
    assign SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_V1 = SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_1;
    assign SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_V2 = SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_2;
    // Stall signal propagation
    assign SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_s_tv_0 = SR_SE_leftShiftStage0_uid573_i_cleanups_shl_avgpooling20_shift_x_backStall & SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_0;
    assign SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_s_tv_1 = SR_SE_in_i_llvm_fpga_push_i4_fpga_indvars_iv_push20_avgpooling249_backStall & SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_1;
    assign SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_s_tv_2 = redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_stall_out & SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_2;
    // Backward Enable generation
    assign SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_or0 = SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_s_tv_0;
    assign SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_or1 = SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_s_tv_1 | SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_or0;
    assign SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_backEN = ~ (SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_s_tv_2 | SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_v_s_0 = SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_backEN & SR_SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_V;
    // Backward Stall generation
    assign SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_backStall = ~ (SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_0 <= 1'b0;
            SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_1 <= 1'b0;
            SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_0 <= SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_0 & SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_s_tv_0;
            end
            else
            begin
                SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_0 <= SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_v_s_0;
            end

            if (SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_1 <= SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_1 & SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_s_tv_1;
            end
            else
            begin
                SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_1 <= SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_v_s_0;
            end

            if (SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_2 <= SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_2 & SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_s_tv_2;
            end
            else
            begin
                SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_R_v_2 <= SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_v_s_0;
            end

        end
    end

    // redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo(STALLFIFO,3547)
    assign redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_valid_in = SE_redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_V2;
    assign redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_stall_in = SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_backStall;
    assign redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_data_in = redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_q;
    assign redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_valid_in_bitsignaltemp = redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_valid_in[0];
    assign redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_stall_in_bitsignaltemp = redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_stall_in[0];
    assign redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_valid_out[0] = redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_valid_out_bitsignaltemp;
    assign redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_stall_out[0] = redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(135),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo (
        .valid_in(redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_valid_in_bitsignaltemp),
        .stall_in(redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_stall_in_bitsignaltemp),
        .data_in(redist56_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_2_1_q),
        .valid_out(redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_valid_out_bitsignaltemp),
        .stall_out(redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_stall_out_bitsignaltemp),
        .data_out(redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo(BITJOIN,3668)
    assign bubble_join_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_q = redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_data_out;

    // bubble_select_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo(BITSELECT,3669)
    assign bubble_select_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_b = $unsigned(bubble_join_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_q[0:0]);

    // SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo(STALLENABLE,4197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_fromReg0 <= '0;
            SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_fromReg0 <= SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_toReg0;
            // Successor 1
            SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_fromReg1 <= SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_consumed0 = (~ (SR_SE_i_next_initerations_avgpooling220_vt_select_0_backStall) & SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_wireValid) | SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_fromReg0;
    assign SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_consumed1 = (~ (SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_backStall) & SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_wireValid) | SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_fromReg1;
    // Consuming
    assign SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_StallValid = SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_backStall & SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_wireValid;
    assign SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_toReg0 = SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_StallValid & SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_consumed0;
    assign SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_toReg1 = SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_StallValid & SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_or0 = SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_consumed0;
    assign SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_wireStall = ~ (SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_consumed1 & SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_or0);
    assign SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_backStall = SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_V0 = SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_wireValid & ~ (SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_fromReg0);
    assign SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_V1 = SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_wireValid & ~ (SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_wireValid = redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_valid_out;

    // SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0(STALLREG,4423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_r_valid <= 1'b0;
            SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_r_valid <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_backStall & (SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_r_valid | SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_i_valid);

            if (SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_r_data0 <= $unsigned(bubble_select_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_i_valid = SE_out_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_V1;
    // Stall signal propagation
    assign SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_backStall = SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_r_valid | ~ (SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_i_valid);

    // Valid
    assign SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_V = SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_r_valid == 1'b1 ? SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_r_valid : SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_i_valid;

    assign SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_D0 = SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_r_valid == 1'b1 ? SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_r_data0 : bubble_select_redist57_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_136_fifo_b;

    // redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0(REG,3548)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_backEN == 1'b1)
        begin
            redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_q <= $unsigned(SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_D0);
        end
    end

    // SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0(STALLENABLE,4198)
    // Valid signal propagation
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_V0 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_R_v_0;
    // Stall signal propagation
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_s_tv_0 = SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_backStall & SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_R_v_0;
    // Backward Enable generation
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_backEN = ~ (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_v_s_0 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_backEN & SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_V;
    // Backward Stall generation
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_backStall = ~ (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_backEN == 1'b0)
            begin
                SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_R_v_0 <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_R_v_0 & SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_s_tv_0;
            end
            else
            begin
                SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_R_v_0 <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_v_s_0;
            end

        end
    end

    // SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1(STALLREG,4424)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_r_valid <= 1'b0;
            SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_r_valid <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_backStall & (SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_r_valid | SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_i_valid);

            if (SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_r_data0 <= $unsigned(redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_i_valid = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_V0;
    // Stall signal propagation
    assign SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_backStall = SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_r_valid | ~ (SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_i_valid);

    // Valid
    assign SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_V = SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_r_valid == 1'b1 ? SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_r_valid : SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_i_valid;

    assign SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_D0 = SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_r_valid == 1'b1 ? SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_r_data0 : redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_0_q;

    // redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1(REG,3549)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_backEN == 1'b1)
        begin
            redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_q <= $unsigned(SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_D0);
        end
    end

    // bubble_join_i_llvm_fpga_mem_memdep_avgpooling270(BITJOIN,3590)
    assign bubble_join_i_llvm_fpga_mem_memdep_avgpooling270_q = i_llvm_fpga_mem_memdep_avgpooling270_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_avgpooling270(BITSELECT,3591)
    assign bubble_select_i_llvm_fpga_mem_memdep_avgpooling270_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_avgpooling270_q[0:0]);

    // SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1(STALLENABLE,4199)
    // Valid signal propagation
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_V0 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_0;
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_V1 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_1;
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_V2 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_2;
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_V3 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_3;
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_V4 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_4;
    // Stall signal propagation
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_s_tv_0 = SR_SE_in_i_llvm_fpga_push_i1_exitcond1139_push29_avgpooling228_backStall & SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_0;
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_s_tv_1 = SR_SE_in_i_llvm_fpga_push_i1_exitcond1432_push25_avgpooling235_backStall & SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_1;
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_s_tv_2 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_backStall & SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_2;
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_s_tv_3 = SR_SE_in_i_llvm_fpga_push_i1_notcmp1540_push30_avgpooling229_backStall & SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_3;
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_s_tv_4 = SR_SE_in_i_llvm_fpga_push_i1_notcmp2034_push26_avgpooling236_backStall & SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_4;
    // Backward Enable generation
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_or0 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_s_tv_0;
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_or1 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_s_tv_1 | SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_or0;
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_or2 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_s_tv_2 | SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_or1;
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_or3 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_s_tv_3 | SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_or2;
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_backEN = ~ (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_s_tv_4 | SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_or3);
    // Determine whether to write valid data into the first register stage
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_v_s_0 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_backEN & SR_SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_V;
    // Backward Stall generation
    assign SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_backStall = ~ (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_0 <= 1'b0;
            SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_1 <= 1'b0;
            SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_2 <= 1'b0;
            SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_3 <= 1'b0;
            SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_4 <= 1'b0;
        end
        else
        begin
            if (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_backEN == 1'b0)
            begin
                SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_0 <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_0 & SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_s_tv_0;
            end
            else
            begin
                SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_0 <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_v_s_0;
            end

            if (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_backEN == 1'b0)
            begin
                SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_1 <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_1 & SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_s_tv_1;
            end
            else
            begin
                SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_1 <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_v_s_0;
            end

            if (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_backEN == 1'b0)
            begin
                SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_2 <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_2 & SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_s_tv_2;
            end
            else
            begin
                SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_2 <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_v_s_0;
            end

            if (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_backEN == 1'b0)
            begin
                SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_3 <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_3 & SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_s_tv_3;
            end
            else
            begin
                SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_3 <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_v_s_0;
            end

            if (SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_backEN == 1'b0)
            begin
                SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_4 <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_4 & SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_s_tv_4;
            end
            else
            begin
                SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_R_v_4 <= SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271(STALLENABLE,3785)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_backStall = i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_wireValid = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_V;

    // SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271(STALLREG,4428)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_r_valid <= SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_backStall & (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_r_valid | SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_mem_memdep_avgpooling270_b);
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_r_data1 <= $unsigned(redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_and0 = SE_redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_V2;
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_i_valid = SE_out_i_llvm_fpga_mem_memdep_avgpooling270_V1 & SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_backStall = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_V = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_r_valid : SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_D0 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_r_data0 : bubble_select_i_llvm_fpga_mem_memdep_avgpooling270_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_D1 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_r_data1 : redist58_i_llvm_fpga_pipeline_keep_going_avgpooling23_out_data_out_138_1_q;

    // SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1(STALLENABLE,4341)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and0 = bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and1 = redist51_i_masked_avgpooling257_q_136_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and2 = bubble_out_i_llvm_fpga_pop_i2_initerations_pop23_avgpooling24_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and3 = bubble_out_i_llvm_fpga_pipeline_keep_going_avgpooling23_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and4 = SE_out_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and5 = SE_out_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and6 = SE_out_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and7 = SE_out_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and6;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_avgpooling270_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_and7;

    // SE_out_i_llvm_fpga_mem_memdep_avgpooling270(STALLENABLE,3738)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_avgpooling270_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_avgpooling270_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_avgpooling270_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_avgpooling270_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_avgpooling270_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_avgpooling270_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling270_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_backStall) & SE_out_i_llvm_fpga_mem_memdep_avgpooling270_wireValid) | SE_out_i_llvm_fpga_mem_memdep_avgpooling270_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling270_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push22_avgpooling271_backStall) & SE_out_i_llvm_fpga_mem_memdep_avgpooling270_wireValid) | SE_out_i_llvm_fpga_mem_memdep_avgpooling270_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling270_StallValid = SE_out_i_llvm_fpga_mem_memdep_avgpooling270_backStall & SE_out_i_llvm_fpga_mem_memdep_avgpooling270_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling270_toReg0 = SE_out_i_llvm_fpga_mem_memdep_avgpooling270_StallValid & SE_out_i_llvm_fpga_mem_memdep_avgpooling270_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling270_toReg1 = SE_out_i_llvm_fpga_mem_memdep_avgpooling270_StallValid & SE_out_i_llvm_fpga_mem_memdep_avgpooling270_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling270_or0 = SE_out_i_llvm_fpga_mem_memdep_avgpooling270_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling270_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_avgpooling270_consumed1 & SE_out_i_llvm_fpga_mem_memdep_avgpooling270_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling270_backStall = SE_out_i_llvm_fpga_mem_memdep_avgpooling270_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling270_V0 = SE_out_i_llvm_fpga_mem_memdep_avgpooling270_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_avgpooling270_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling270_V1 = SE_out_i_llvm_fpga_mem_memdep_avgpooling270_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_avgpooling270_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_avgpooling270_wireValid = i_llvm_fpga_mem_memdep_avgpooling270_out_o_valid;

    // bubble_join_coalesced_delay_3_fifo(BITJOIN,3683)
    assign bubble_join_coalesced_delay_3_fifo_q = coalesced_delay_3_fifo_data_out;

    // bubble_select_coalesced_delay_3_fifo(BITSELECT,3684)
    assign bubble_select_coalesced_delay_3_fifo_b = $unsigned(bubble_join_coalesced_delay_3_fifo_q[64:0]);

    // sel_for_coalesced_delay_3(BITSELECT,3479)
    assign sel_for_coalesced_delay_3_b = $unsigned(bubble_select_coalesced_delay_3_fifo_b[63:0]);
    assign sel_for_coalesced_delay_3_c = $unsigned(bubble_select_coalesced_delay_3_fifo_b[64:64]);

    // i_llvm_fpga_mem_memdep_avgpooling270(BLACKBOX,243)@245
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_avgpooling2_avm_address@20000000
    // out out_memdep_avgpooling2_avm_burstcount@20000000
    // out out_memdep_avgpooling2_avm_byteenable@20000000
    // out out_memdep_avgpooling2_avm_enable@20000000
    // out out_memdep_avgpooling2_avm_read@20000000
    // out out_memdep_avgpooling2_avm_write@20000000
    // out out_memdep_avgpooling2_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@276
    // out out_o_writeack@276
    avgpooling2_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_avgpooling270 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_3_b),
        .in_i_predicate(sel_for_coalesced_delay_3_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_avgpooling270_backStall),
        .in_i_valid(SE_out_coalesced_delay_3_fifo_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_body6_avgpooling2s_c0_enter9112_avgpooling268_aunroll_x_b),
        .in_memdep_avgpooling2_avm_readdata(in_memdep_avgpooling2_avm_readdata),
        .in_memdep_avgpooling2_avm_readdatavalid(in_memdep_avgpooling2_avm_readdatavalid),
        .in_memdep_avgpooling2_avm_waitrequest(in_memdep_avgpooling2_avm_waitrequest),
        .in_memdep_avgpooling2_avm_writeack(in_memdep_avgpooling2_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_avgpooling270_out_lsu_memdep_o_active),
        .out_memdep_avgpooling2_avm_address(i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_address),
        .out_memdep_avgpooling2_avm_burstcount(i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_burstcount),
        .out_memdep_avgpooling2_avm_byteenable(i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_byteenable),
        .out_memdep_avgpooling2_avm_enable(i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_enable),
        .out_memdep_avgpooling2_avm_read(i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_read),
        .out_memdep_avgpooling2_avm_write(i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_write),
        .out_memdep_avgpooling2_avm_writedata(i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_avgpooling270_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_avgpooling270_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_avgpooling270_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2(ADD,3144)@139 + 1
    assign i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_cin = SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_D2;
    assign i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_D1}, i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_o <= $unsigned(i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_a) + $unsigned(i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_q = i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_o[13:1];

    // redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0(REG,3523)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q(BITJOIN,3145)@140
    assign i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_q = {i_arrayidx42_avgpooling20_dupName_1_add_x_p2_of_2_q, redist37_i_arrayidx42_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx42_avgpooling20_dupName_4_trunc_sel_x(BITSELECT,126)@140
    assign i_arrayidx42_avgpooling20_dupName_4_trunc_sel_x_b = i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_q[63:0];

    // join_for_coalesced_delay_3(BITJOIN,3478)
    assign join_for_coalesced_delay_3_q = {i_first_cleanup_xor_avgpooling241_q, i_arrayidx42_avgpooling20_dupName_4_trunc_sel_x_b};

    // coalesced_delay_3_fifo(STALLFIFO,3564)
    assign coalesced_delay_3_fifo_valid_in = SE_i_arrayidx42_avgpooling20_dupName_1_add_x_BitJoin_for_q_V0;
    assign coalesced_delay_3_fifo_stall_in = SE_out_coalesced_delay_3_fifo_backStall;
    assign coalesced_delay_3_fifo_data_in = join_for_coalesced_delay_3_q;
    assign coalesced_delay_3_fifo_valid_in_bitsignaltemp = coalesced_delay_3_fifo_valid_in[0];
    assign coalesced_delay_3_fifo_stall_in_bitsignaltemp = coalesced_delay_3_fifo_stall_in[0];
    assign coalesced_delay_3_fifo_valid_out[0] = coalesced_delay_3_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_3_fifo_stall_out[0] = coalesced_delay_3_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(106),
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

    // SE_out_coalesced_delay_3_fifo(STALLENABLE,4219)
    // Valid signal propagation
    assign SE_out_coalesced_delay_3_fifo_V0 = SE_out_coalesced_delay_3_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_3_fifo_backStall = i_llvm_fpga_mem_memdep_avgpooling270_out_o_stall | ~ (SE_out_coalesced_delay_3_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_3_fifo_and0 = coalesced_delay_3_fifo_valid_out;
    assign SE_out_coalesced_delay_3_fifo_wireValid = i_sfc_s_c0_in_for_body6_avgpooling2s_c0_enter9112_avgpooling268_aunroll_x_out_o_valid & SE_out_coalesced_delay_3_fifo_and0;

    // bubble_join_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265(BITJOIN,3603)
    assign bubble_join_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_q = i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265(BITSELECT,3604)
    assign bubble_select_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262(BITJOIN,3597)
    assign bubble_join_i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_q = i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262(BITSELECT,3598)
    assign bubble_select_i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264(BITJOIN,3600)
    assign bubble_join_i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_q = i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264(BITSELECT,3601)
    assign bubble_select_i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261(BITJOIN,3594)
    assign bubble_join_i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_q = i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261(BITSELECT,3595)
    assign bubble_select_i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_q[31:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_body6_avgpooling2s_c0_enter9112_avgpooling268_aunroll_x(BLACKBOX,174)@172
    // in in_i_stall@20000000
    // out out_c0_exit97_0_tpl@245
    // out out_c0_exit97_1_tpl@245
    // out out_o_stall@20000000
    // out out_o_valid@245
    avgpooling2_i_sfc_s_c0_in_for_body6_s_c0_enter9112_avgpooling268 thei_sfc_s_c0_in_for_body6_avgpooling2s_c0_enter9112_avgpooling268_aunroll_x (
        .in_c0_eni490_0_tpl(GND_q),
        .in_c0_eni490_1_tpl(bubble_select_i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_b),
        .in_c0_eni490_2_tpl(bubble_select_i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_b),
        .in_c0_eni490_3_tpl(bubble_select_i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_b),
        .in_c0_eni490_4_tpl(bubble_select_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_b),
        .in_i_stall(SE_out_coalesced_delay_3_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_V0),
        .out_c0_exit97_0_tpl(),
        .out_c0_exit97_1_tpl(i_sfc_s_c0_in_for_body6_avgpooling2s_c0_enter9112_avgpooling268_aunroll_x_out_c0_exit97_1_tpl),
        .out_o_stall(i_sfc_s_c0_in_for_body6_avgpooling2s_c0_enter9112_avgpooling268_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body6_avgpooling2s_c0_enter9112_avgpooling268_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265(STALLENABLE,3746)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_V0 = SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_backStall = i_sfc_s_c0_in_for_body6_avgpooling2s_c0_enter9112_avgpooling268_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_and0 = i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_and1 = i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_o_valid & SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_and0;
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_and2 = i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_o_valid & SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_and1;
    assign SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_wireValid = i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_o_valid & SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_and2;

    // i_arrayidx33_avgpooling20_dupName_1_add_x_p2_of_2(ADD,3117)@139 + 1
    assign i_arrayidx33_avgpooling20_dupName_1_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D11;
    assign i_arrayidx33_avgpooling20_dupName_1_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D10}, 1'b1 };
    assign i_arrayidx33_avgpooling20_dupName_1_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D4}, i_arrayidx33_avgpooling20_dupName_1_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx33_avgpooling20_dupName_1_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx33_avgpooling20_dupName_1_add_x_p2_of_2_o <= $unsigned(i_arrayidx33_avgpooling20_dupName_1_add_x_p2_of_2_a) + $unsigned(i_arrayidx33_avgpooling20_dupName_1_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx33_avgpooling20_dupName_1_add_x_p2_of_2_q = i_arrayidx33_avgpooling20_dupName_1_add_x_p2_of_2_o[13:1];

    // redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0(REG,3525)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_arrayidx33_avgpooling20_dupName_1_add_x_BitJoin_for_q(BITJOIN,3118)@140
    assign i_arrayidx33_avgpooling20_dupName_1_add_x_BitJoin_for_q_q = {i_arrayidx33_avgpooling20_dupName_1_add_x_p2_of_2_q, redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx33_avgpooling20_dupName_4_trunc_sel_x(BITSELECT,100)@140
    assign i_arrayidx33_avgpooling20_dupName_4_trunc_sel_x_b = i_arrayidx33_avgpooling20_dupName_1_add_x_BitJoin_for_q_q[63:0];

    // i_arrayidx16_avgpooling20_dupName_1_add_x_p2_of_2(ADD,3063)@139 + 1
    assign i_arrayidx16_avgpooling20_dupName_1_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D9;
    assign i_arrayidx16_avgpooling20_dupName_1_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D8}, 1'b1 };
    assign i_arrayidx16_avgpooling20_dupName_1_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D2}, i_arrayidx16_avgpooling20_dupName_1_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx16_avgpooling20_dupName_1_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx16_avgpooling20_dupName_1_add_x_p2_of_2_o <= $unsigned(i_arrayidx16_avgpooling20_dupName_1_add_x_p2_of_2_a) + $unsigned(i_arrayidx16_avgpooling20_dupName_1_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx16_avgpooling20_dupName_1_add_x_p2_of_2_q = i_arrayidx16_avgpooling20_dupName_1_add_x_p2_of_2_o[13:1];

    // redist43_i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0(REG,3527)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist43_i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_D1);
        end
    end

    // i_arrayidx16_avgpooling20_dupName_1_add_x_BitJoin_for_q(BITJOIN,3064)@140
    assign i_arrayidx16_avgpooling20_dupName_1_add_x_BitJoin_for_q_q = {i_arrayidx16_avgpooling20_dupName_1_add_x_p2_of_2_q, redist43_i_arrayidx16_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx16_avgpooling20_dupName_4_trunc_sel_x(BITSELECT,48)@140
    assign i_arrayidx16_avgpooling20_dupName_4_trunc_sel_x_b = i_arrayidx16_avgpooling20_dupName_1_add_x_BitJoin_for_q_q[63:0];

    // i_arrayidx24_avgpooling20_dupName_1_add_x_p2_of_2(ADD,3090)@139 + 1
    assign i_arrayidx24_avgpooling20_dupName_1_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D7;
    assign i_arrayidx24_avgpooling20_dupName_1_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D6}, 1'b1 };
    assign i_arrayidx24_avgpooling20_dupName_1_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D3}, i_arrayidx24_avgpooling20_dupName_1_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx24_avgpooling20_dupName_1_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx24_avgpooling20_dupName_1_add_x_p2_of_2_o <= $unsigned(i_arrayidx24_avgpooling20_dupName_1_add_x_p2_of_2_a) + $unsigned(i_arrayidx24_avgpooling20_dupName_1_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx24_avgpooling20_dupName_1_add_x_p2_of_2_q = i_arrayidx24_avgpooling20_dupName_1_add_x_p2_of_2_o[13:1];

    // redist41_i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0(REG,3526)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist41_i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_D2);
        end
    end

    // i_arrayidx24_avgpooling20_dupName_1_add_x_BitJoin_for_q(BITJOIN,3091)@140
    assign i_arrayidx24_avgpooling20_dupName_1_add_x_BitJoin_for_q_q = {i_arrayidx24_avgpooling20_dupName_1_add_x_p2_of_2_q, redist41_i_arrayidx24_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx24_avgpooling20_dupName_4_trunc_sel_x(BITSELECT,74)@140
    assign i_arrayidx24_avgpooling20_dupName_4_trunc_sel_x_b = i_arrayidx24_avgpooling20_dupName_1_add_x_BitJoin_for_q_q[63:0];

    // redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0(REG,3533)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_backEN == 1'b1)
        begin
            redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_q <= $unsigned(SR_SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_D0);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26(BITJOIN,3624)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_q = i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26(BITSELECT,3625)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_q[0:0]);

    // i_reduction_avgpooling2_1_avgpooling253(LOGICAL,285)@140
    assign i_reduction_avgpooling2_1_avgpooling253_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_b | redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_q;

    // i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2(ADD,3036)@139 + 1
    assign i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_cin = SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D5;
    assign i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_a = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D0}, 1'b1 };
    assign i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_b = { {1'b0, SR_SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_D1}, i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_o <= 15'b0;
        end
        else if (SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_o <= $unsigned(i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_a) + $unsigned(i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_q = i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_o[13:1];

    // redist45_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0(REG,3528)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(52'b0000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist45_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_D3);
        end
    end

    // i_arrayidx10_avgpooling20_dupName_1_add_x_BitJoin_for_q(BITJOIN,3037)@140
    assign i_arrayidx10_avgpooling20_dupName_1_add_x_BitJoin_for_q_q = {i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_q, redist45_i_arrayidx10_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_q};

    // i_arrayidx10_avgpooling20_dupName_4_trunc_sel_x(BITSELECT,22)@140
    assign i_arrayidx10_avgpooling20_dupName_4_trunc_sel_x_b = i_arrayidx10_avgpooling20_dupName_1_add_x_BitJoin_for_q_q[63:0];

    // SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26(STALLREG,4420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_valid <= 1'b0;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data1 <= 1'bx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data2 <= 1'bx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data3 <= 1'bx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data4 <= 1'bx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data5 <= 1'bx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data6 <= 1'bx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data7 <= 1'bx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data8 <= 1'bx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data9 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data10 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data11 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_valid <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_backStall & (SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_valid | SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_i_valid);

            if (SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data0 <= i_arrayidx10_avgpooling20_dupName_4_trunc_sel_x_b;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data1 <= i_reduction_avgpooling2_1_avgpooling253_q;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data2 <= i_reduction_avgpooling2_1_avgpooling253_q;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data3 <= i_reduction_avgpooling2_1_avgpooling253_q;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data4 <= i_reduction_avgpooling2_1_avgpooling253_q;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data5 <= i_first_cleanup_xor_avgpooling241_q;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data6 <= i_first_cleanup_xor_avgpooling241_q;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data7 <= i_first_cleanup_xor_avgpooling241_q;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data8 <= i_first_cleanup_xor_avgpooling241_q;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data9 <= i_arrayidx24_avgpooling20_dupName_4_trunc_sel_x_b;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data10 <= i_arrayidx16_avgpooling20_dupName_4_trunc_sel_x_b;
                SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data11 <= i_arrayidx33_avgpooling20_dupName_4_trunc_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_out_valid_out;
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_and1 = SE_redist50_i_reduction_avgpooling2_0_avgpooling240_q_2_0_V0 & SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_and0;
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_and2 = SE_i_arrayidx10_avgpooling20_dupName_1_add_x_p2_of_2_V0 & SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_and1;
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_and3 = SE_redist39_i_arrayidx33_avgpooling20_dupName_1_add_x_p1_of_2_q_1_0_V0 & SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_and2;
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_i_valid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop24_avgpooling22_V3 & SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_and3;
    // Stall signal propagation
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_backStall = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_valid | ~ (SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_i_valid);

    // Valid
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_V = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_valid : SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_i_valid;

    // Data0
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D0 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data0 : i_arrayidx10_avgpooling20_dupName_4_trunc_sel_x_b;
    // Data1
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D1 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data1 : i_reduction_avgpooling2_1_avgpooling253_q;
    // Data2
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D2 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data2 : i_reduction_avgpooling2_1_avgpooling253_q;
    // Data3
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D3 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data3 : i_reduction_avgpooling2_1_avgpooling253_q;
    // Data4
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D4 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data4 : i_reduction_avgpooling2_1_avgpooling253_q;
    // Data5
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D5 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data5 : i_first_cleanup_xor_avgpooling241_q;
    // Data6
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D6 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data6 : i_first_cleanup_xor_avgpooling241_q;
    // Data7
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D7 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data7 : i_first_cleanup_xor_avgpooling241_q;
    // Data8
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D8 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data8 : i_first_cleanup_xor_avgpooling241_q;
    // Data9
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D9 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data9 : i_arrayidx24_avgpooling20_dupName_4_trunc_sel_x_b;
    // Data10
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D10 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data10 : i_arrayidx16_avgpooling20_dupName_4_trunc_sel_x_b;
    // Data11
    assign SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D11 = SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_r_data11 : i_arrayidx33_avgpooling20_dupName_4_trunc_sel_x_b;

    // i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261(BLACKBOX,244)@140
    // in in_i_stall@20000000
    // out out_o_readdata@172
    // out out_o_stall@20000000
    // out out_o_valid@172
    // out out_unnamed_avgpooling26_avgpooling2_avm_address@20000000
    // out out_unnamed_avgpooling26_avgpooling2_avm_burstcount@20000000
    // out out_unnamed_avgpooling26_avgpooling2_avm_byteenable@20000000
    // out out_unnamed_avgpooling26_avgpooling2_avm_enable@20000000
    // out out_unnamed_avgpooling26_avgpooling2_avm_read@20000000
    // out out_unnamed_avgpooling26_avgpooling2_avm_write@20000000
    // out out_unnamed_avgpooling26_avgpooling2_avm_writedata@20000000
    avgpooling2_i_llvm_fpga_mem_unnamed_6_avgpooling20 thei_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D0),
        .in_i_dependence(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D1),
        .in_i_predicate(SR_SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_D5),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop22_avgpooling26_V0),
        .in_unnamed_avgpooling26_avgpooling2_avm_readdata(in_unnamed_avgpooling26_avgpooling2_avm_readdata),
        .in_unnamed_avgpooling26_avgpooling2_avm_readdatavalid(in_unnamed_avgpooling26_avgpooling2_avm_readdatavalid),
        .in_unnamed_avgpooling26_avgpooling2_avm_waitrequest(in_unnamed_avgpooling26_avgpooling2_avm_waitrequest),
        .in_unnamed_avgpooling26_avgpooling2_avm_writeack(in_unnamed_avgpooling26_avgpooling2_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_o_valid),
        .out_unnamed_avgpooling26_avgpooling2_avm_address(i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_address),
        .out_unnamed_avgpooling26_avgpooling2_avm_burstcount(i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_burstcount),
        .out_unnamed_avgpooling26_avgpooling2_avm_byteenable(i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_byteenable),
        .out_unnamed_avgpooling26_avgpooling2_avm_enable(i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_enable),
        .out_unnamed_avgpooling26_avgpooling2_avm_read(i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_read),
        .out_unnamed_avgpooling26_avgpooling2_avm_write(i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_write),
        .out_unnamed_avgpooling26_avgpooling2_avm_writedata(i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,7)
    assign out_unnamed_avgpooling26_avgpooling2_avm_address = i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_address;
    assign out_unnamed_avgpooling26_avgpooling2_avm_enable = i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_enable;
    assign out_unnamed_avgpooling26_avgpooling2_avm_read = i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_read;
    assign out_unnamed_avgpooling26_avgpooling2_avm_write = i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_write;
    assign out_unnamed_avgpooling26_avgpooling2_avm_writedata = i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_writedata;
    assign out_unnamed_avgpooling26_avgpooling2_avm_byteenable = i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_byteenable;
    assign out_unnamed_avgpooling26_avgpooling2_avm_burstcount = i_llvm_fpga_mem_unnamed_avgpooling26_avgpooling261_out_unnamed_avgpooling26_avgpooling2_avm_burstcount;

    // bubble_join_redist51_i_masked_avgpooling257_q_136_fifo(BITJOIN,3659)
    assign bubble_join_redist51_i_masked_avgpooling257_q_136_fifo_q = redist51_i_masked_avgpooling257_q_136_fifo_data_out;

    // bubble_select_redist51_i_masked_avgpooling257_q_136_fifo(BITSELECT,3660)
    assign bubble_select_redist51_i_masked_avgpooling257_q_136_fifo_b = $unsigned(bubble_join_redist51_i_masked_avgpooling257_q_136_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,8)@276
    assign out_exitcond1139_pop29 = bubble_select_i_llvm_fpga_pop_i1_exitcond1139_pop29_avgpooling28_b;
    assign out_exitcond1432_pop25 = bubble_select_i_llvm_fpga_pop_i1_exitcond1432_pop25_avgpooling212_b;
    assign out_masked = bubble_select_redist51_i_masked_avgpooling257_q_136_fifo_b;
    assign out_memdep = bubble_select_i_llvm_fpga_mem_memdep_avgpooling270_b;
    assign out_notcmp1540_pop30 = bubble_select_i_llvm_fpga_pop_i1_notcmp1540_pop30_avgpooling29_b;
    assign out_notcmp2034_pop26 = bubble_select_i_llvm_fpga_pop_i1_notcmp2034_pop26_avgpooling213_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop20_avgpooling27_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,10)
    assign out_unnamed_avgpooling27_avgpooling2_avm_address = i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_address;
    assign out_unnamed_avgpooling27_avgpooling2_avm_enable = i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_enable;
    assign out_unnamed_avgpooling27_avgpooling2_avm_read = i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_read;
    assign out_unnamed_avgpooling27_avgpooling2_avm_write = i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_write;
    assign out_unnamed_avgpooling27_avgpooling2_avm_writedata = i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_writedata;
    assign out_unnamed_avgpooling27_avgpooling2_avm_byteenable = i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_byteenable;
    assign out_unnamed_avgpooling27_avgpooling2_avm_burstcount = i_llvm_fpga_mem_unnamed_avgpooling27_avgpooling262_out_unnamed_avgpooling27_avgpooling2_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,12)
    assign out_unnamed_avgpooling28_avgpooling2_avm_address = i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_address;
    assign out_unnamed_avgpooling28_avgpooling2_avm_enable = i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_enable;
    assign out_unnamed_avgpooling28_avgpooling2_avm_read = i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_read;
    assign out_unnamed_avgpooling28_avgpooling2_avm_write = i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_write;
    assign out_unnamed_avgpooling28_avgpooling2_avm_writedata = i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_writedata;
    assign out_unnamed_avgpooling28_avgpooling2_avm_byteenable = i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_byteenable;
    assign out_unnamed_avgpooling28_avgpooling2_avm_burstcount = i_llvm_fpga_mem_unnamed_avgpooling28_avgpooling264_out_unnamed_avgpooling28_avgpooling2_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,14)
    assign out_unnamed_avgpooling29_avgpooling2_avm_address = i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_address;
    assign out_unnamed_avgpooling29_avgpooling2_avm_enable = i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_enable;
    assign out_unnamed_avgpooling29_avgpooling2_avm_read = i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_read;
    assign out_unnamed_avgpooling29_avgpooling2_avm_write = i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_write;
    assign out_unnamed_avgpooling29_avgpooling2_avm_writedata = i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_writedata;
    assign out_unnamed_avgpooling29_avgpooling2_avm_byteenable = i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_byteenable;
    assign out_unnamed_avgpooling29_avgpooling2_avm_burstcount = i_llvm_fpga_mem_unnamed_avgpooling29_avgpooling265_out_unnamed_avgpooling29_avgpooling2_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,15)
    assign out_memdep_avgpooling2_avm_address = i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_address;
    assign out_memdep_avgpooling2_avm_enable = i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_enable;
    assign out_memdep_avgpooling2_avm_read = i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_read;
    assign out_memdep_avgpooling2_avm_write = i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_write;
    assign out_memdep_avgpooling2_avm_writedata = i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_writedata;
    assign out_memdep_avgpooling2_avm_byteenable = i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_byteenable;
    assign out_memdep_avgpooling2_avm_burstcount = i_llvm_fpga_mem_memdep_avgpooling270_out_memdep_avgpooling2_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,16)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_avgpooling270_out_lsu_memdep_o_active;

    // ext_sig_sync_out(GPOUT,189)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpooling23_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_avgpooling23_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpooling23_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_avgpooling23_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,364)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_avgpooling23_out_pipeline_valid_out;

    // sync_out(GPOUT,369)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
