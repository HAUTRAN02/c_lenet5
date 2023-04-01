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

// SystemVerilog created from i_sfc_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv21
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_i_sfc_s_c0_in_for_cond10_preheader_s_c0_enter48840_conv21 (
    output wire [0:0] out_c0_exit529_0_tpl,
    output wire [0:0] out_c0_exit529_1_tpl,
    output wire [0:0] out_c0_exit529_2_tpl,
    output wire [31:0] out_c0_exit529_3_tpl,
    output wire [0:0] out_c0_exit529_4_tpl,
    output wire [0:0] out_c0_exit529_5_tpl,
    output wire [31:0] out_c0_exit529_6_tpl,
    output wire [0:0] out_c0_exit529_7_tpl,
    output wire [0:0] out_c0_exit529_8_tpl,
    output wire [0:0] out_c0_exit529_9_tpl,
    output wire [31:0] out_c0_exit529_10_tpl,
    output wire [0:0] out_c0_exit529_11_tpl,
    output wire [63:0] out_c0_exit529_12_tpl,
    output wire [63:0] out_c0_exit529_13_tpl,
    output wire [31:0] out_c0_exit529_14_tpl,
    output wire [63:0] out_c0_exit529_15_tpl,
    output wire [0:0] out_c0_exit529_16_tpl,
    output wire [0:0] out_c0_exit529_17_tpl,
    output wire [0:0] out_c0_exit529_18_tpl,
    output wire [0:0] out_c0_exit529_19_tpl,
    output wire [0:0] out_c0_exit529_20_tpl,
    output wire [0:0] out_c0_exit529_21_tpl,
    output wire [31:0] out_c0_exit529_22_tpl,
    output wire [0:0] out_c0_exit529_23_tpl,
    output wire [0:0] out_c0_exit529_24_tpl,
    output wire [0:0] out_c0_exit529_25_tpl,
    output wire [31:0] out_c0_exit529_26_tpl,
    output wire [0:0] out_c0_exit529_27_tpl,
    output wire [0:0] out_c0_exit529_28_tpl,
    output wire [0:0] out_c0_exit529_29_tpl,
    output wire [31:0] out_c0_exit529_30_tpl,
    output wire [0:0] out_c0_exit529_31_tpl,
    output wire [31:0] out_c0_exit529_32_tpl,
    output wire [31:0] out_c0_exit529_33_tpl,
    output wire [63:0] out_c0_exit529_34_tpl,
    output wire [63:0] out_c0_exit529_35_tpl,
    output wire [31:0] out_c0_exit529_36_tpl,
    output wire [63:0] out_c0_exit529_37_tpl,
    output wire [0:0] out_c0_exit529_38_tpl,
    output wire [0:0] out_c0_exit529_39_tpl,
    output wire [0:0] out_c0_exit529_40_tpl,
    output wire [0:0] out_c0_exit529_41_tpl,
    output wire [0:0] out_c0_exit529_42_tpl,
    output wire [0:0] out_c0_exit529_43_tpl,
    output wire [0:0] out_c0_exit529_44_tpl,
    output wire [0:0] out_c0_exit529_45_tpl,
    output wire [0:0] out_c0_exit529_46_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_valid_out,
    input wire [0:0] in_c0_eni28_0_tpl,
    input wire [0:0] in_c0_eni28_1_tpl,
    input wire [0:0] in_c0_eni28_2_tpl,
    input wire [0:0] in_c0_eni28_3_tpl,
    input wire [31:0] in_c0_eni28_4_tpl,
    input wire [0:0] in_c0_eni28_5_tpl,
    input wire [0:0] in_c0_eni28_6_tpl,
    input wire [0:0] in_c0_eni28_7_tpl,
    input wire [31:0] in_c0_eni28_8_tpl,
    input wire [0:0] in_c0_eni28_9_tpl,
    input wire [63:0] in_c0_eni28_10_tpl,
    input wire [63:0] in_c0_eni28_11_tpl,
    input wire [31:0] in_c0_eni28_12_tpl,
    input wire [63:0] in_c0_eni28_13_tpl,
    input wire [0:0] in_c0_eni28_14_tpl,
    input wire [0:0] in_c0_eni28_15_tpl,
    input wire [0:0] in_c0_eni28_16_tpl,
    input wire [0:0] in_c0_eni28_17_tpl,
    input wire [0:0] in_c0_eni28_18_tpl,
    input wire [31:0] in_c0_eni28_19_tpl,
    input wire [0:0] in_c0_eni28_20_tpl,
    input wire [0:0] in_c0_eni28_21_tpl,
    input wire [0:0] in_c0_eni28_22_tpl,
    input wire [31:0] in_c0_eni28_23_tpl,
    input wire [0:0] in_c0_eni28_24_tpl,
    input wire [0:0] in_c0_eni28_25_tpl,
    input wire [0:0] in_c0_eni28_26_tpl,
    input wire [31:0] in_c0_eni28_27_tpl,
    input wire [0:0] in_c0_eni28_28_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_2_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_3_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_4_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_5_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_6_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_7_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_8_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_9_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_10_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_11_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_12_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_13_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_14_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_15_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_16_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_17_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_18_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_19_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_20_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_21_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_22_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_23_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_24_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_25_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_26_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_27_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_28_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_29_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_30_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_31_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_32_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_33_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_34_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_35_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_36_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_37_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_38_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_39_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_40_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_41_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_42_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_43_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_44_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_45_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_46_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_1_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_2_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_3_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_4_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_5_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_6_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_7_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_8_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_9_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_10_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_11_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_12_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_13_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_14_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_15_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_16_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_17_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_18_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_19_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_20_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_21_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_22_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_23_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_24_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_25_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_26_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_27_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_28_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_29_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_30_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_31_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_32_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_33_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_34_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_35_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_36_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_37_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_38_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_39_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_40_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_41_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_42_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_43_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_44_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_45_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_46_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_pipeline_valid_out;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,9)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,8)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x(BLACKBOX,5)@1
    // out out_c0_exi46_0_tpl@2
    // out out_c0_exi46_1_tpl@2
    // out out_c0_exi46_2_tpl@2
    // out out_c0_exi46_3_tpl@2
    // out out_c0_exi46_4_tpl@2
    // out out_c0_exi46_5_tpl@2
    // out out_c0_exi46_6_tpl@2
    // out out_c0_exi46_7_tpl@2
    // out out_c0_exi46_8_tpl@2
    // out out_c0_exi46_9_tpl@2
    // out out_c0_exi46_10_tpl@2
    // out out_c0_exi46_11_tpl@2
    // out out_c0_exi46_12_tpl@2
    // out out_c0_exi46_13_tpl@2
    // out out_c0_exi46_14_tpl@2
    // out out_c0_exi46_15_tpl@2
    // out out_c0_exi46_16_tpl@2
    // out out_c0_exi46_17_tpl@2
    // out out_c0_exi46_18_tpl@2
    // out out_c0_exi46_19_tpl@2
    // out out_c0_exi46_20_tpl@2
    // out out_c0_exi46_21_tpl@2
    // out out_c0_exi46_22_tpl@2
    // out out_c0_exi46_23_tpl@2
    // out out_c0_exi46_24_tpl@2
    // out out_c0_exi46_25_tpl@2
    // out out_c0_exi46_26_tpl@2
    // out out_c0_exi46_27_tpl@2
    // out out_c0_exi46_28_tpl@2
    // out out_c0_exi46_29_tpl@2
    // out out_c0_exi46_30_tpl@2
    // out out_c0_exi46_31_tpl@2
    // out out_c0_exi46_32_tpl@2
    // out out_c0_exi46_33_tpl@2
    // out out_c0_exi46_34_tpl@2
    // out out_c0_exi46_35_tpl@2
    // out out_c0_exi46_36_tpl@2
    // out out_c0_exi46_37_tpl@2
    // out out_c0_exi46_38_tpl@2
    // out out_c0_exi46_39_tpl@2
    // out out_c0_exi46_40_tpl@2
    // out out_c0_exi46_41_tpl@2
    // out out_c0_exi46_42_tpl@2
    // out out_c0_exi46_43_tpl@2
    // out out_c0_exi46_44_tpl@2
    // out out_c0_exi46_45_tpl@2
    // out out_c0_exi46_46_tpl@2
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_valid_out@20000000
    // out out_o_valid@2
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_conv21@2
    conv2_i_sfc_logic_s_c0_in_for_cond10_pre0000c0_enter48840_conv20 thei_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x (
        .in_c0_eni28_0_tpl(in_c0_eni28_0_tpl),
        .in_c0_eni28_1_tpl(in_c0_eni28_1_tpl),
        .in_c0_eni28_2_tpl(in_c0_eni28_2_tpl),
        .in_c0_eni28_3_tpl(in_c0_eni28_3_tpl),
        .in_c0_eni28_4_tpl(in_c0_eni28_4_tpl),
        .in_c0_eni28_5_tpl(in_c0_eni28_5_tpl),
        .in_c0_eni28_6_tpl(in_c0_eni28_6_tpl),
        .in_c0_eni28_7_tpl(in_c0_eni28_7_tpl),
        .in_c0_eni28_8_tpl(in_c0_eni28_8_tpl),
        .in_c0_eni28_9_tpl(in_c0_eni28_9_tpl),
        .in_c0_eni28_10_tpl(in_c0_eni28_10_tpl),
        .in_c0_eni28_11_tpl(in_c0_eni28_11_tpl),
        .in_c0_eni28_12_tpl(in_c0_eni28_12_tpl),
        .in_c0_eni28_13_tpl(in_c0_eni28_13_tpl),
        .in_c0_eni28_14_tpl(in_c0_eni28_14_tpl),
        .in_c0_eni28_15_tpl(in_c0_eni28_15_tpl),
        .in_c0_eni28_16_tpl(in_c0_eni28_16_tpl),
        .in_c0_eni28_17_tpl(in_c0_eni28_17_tpl),
        .in_c0_eni28_18_tpl(in_c0_eni28_18_tpl),
        .in_c0_eni28_19_tpl(in_c0_eni28_19_tpl),
        .in_c0_eni28_20_tpl(in_c0_eni28_20_tpl),
        .in_c0_eni28_21_tpl(in_c0_eni28_21_tpl),
        .in_c0_eni28_22_tpl(in_c0_eni28_22_tpl),
        .in_c0_eni28_23_tpl(in_c0_eni28_23_tpl),
        .in_c0_eni28_24_tpl(in_c0_eni28_24_tpl),
        .in_c0_eni28_25_tpl(in_c0_eni28_25_tpl),
        .in_c0_eni28_26_tpl(in_c0_eni28_26_tpl),
        .in_c0_eni28_27_tpl(in_c0_eni28_27_tpl),
        .in_c0_eni28_28_tpl(in_c0_eni28_28_tpl),
        .in_i_valid(input_accepted_and_q),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exi46_0_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_0_tpl),
        .out_c0_exi46_1_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_1_tpl),
        .out_c0_exi46_2_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_2_tpl),
        .out_c0_exi46_3_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_3_tpl),
        .out_c0_exi46_4_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_4_tpl),
        .out_c0_exi46_5_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_5_tpl),
        .out_c0_exi46_6_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_6_tpl),
        .out_c0_exi46_7_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_7_tpl),
        .out_c0_exi46_8_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_8_tpl),
        .out_c0_exi46_9_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_9_tpl),
        .out_c0_exi46_10_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_10_tpl),
        .out_c0_exi46_11_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_11_tpl),
        .out_c0_exi46_12_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_12_tpl),
        .out_c0_exi46_13_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_13_tpl),
        .out_c0_exi46_14_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_14_tpl),
        .out_c0_exi46_15_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_15_tpl),
        .out_c0_exi46_16_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_16_tpl),
        .out_c0_exi46_17_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_17_tpl),
        .out_c0_exi46_18_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_18_tpl),
        .out_c0_exi46_19_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_19_tpl),
        .out_c0_exi46_20_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_20_tpl),
        .out_c0_exi46_21_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_21_tpl),
        .out_c0_exi46_22_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_22_tpl),
        .out_c0_exi46_23_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_23_tpl),
        .out_c0_exi46_24_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_24_tpl),
        .out_c0_exi46_25_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_25_tpl),
        .out_c0_exi46_26_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_26_tpl),
        .out_c0_exi46_27_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_27_tpl),
        .out_c0_exi46_28_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_28_tpl),
        .out_c0_exi46_29_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_29_tpl),
        .out_c0_exi46_30_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_30_tpl),
        .out_c0_exi46_31_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_31_tpl),
        .out_c0_exi46_32_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_32_tpl),
        .out_c0_exi46_33_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_33_tpl),
        .out_c0_exi46_34_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_34_tpl),
        .out_c0_exi46_35_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_35_tpl),
        .out_c0_exi46_36_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_36_tpl),
        .out_c0_exi46_37_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_37_tpl),
        .out_c0_exi46_38_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_38_tpl),
        .out_c0_exi46_39_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_39_tpl),
        .out_c0_exi46_40_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_40_tpl),
        .out_c0_exi46_41_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_41_tpl),
        .out_c0_exi46_42_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_42_tpl),
        .out_c0_exi46_43_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_43_tpl),
        .out_c0_exi46_44_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_44_tpl),
        .out_c0_exi46_45_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_45_tpl),
        .out_c0_exi46_46_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_46_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_stall_out(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_valid_out(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_valid_out),
        .out_o_valid(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_conv21(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x(BLACKBOX,4)@2
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@5
    // out out_data_out_1_tpl@5
    // out out_data_out_2_tpl@5
    // out out_data_out_3_tpl@5
    // out out_data_out_4_tpl@5
    // out out_data_out_5_tpl@5
    // out out_data_out_6_tpl@5
    // out out_data_out_7_tpl@5
    // out out_data_out_8_tpl@5
    // out out_data_out_9_tpl@5
    // out out_data_out_10_tpl@5
    // out out_data_out_11_tpl@5
    // out out_data_out_12_tpl@5
    // out out_data_out_13_tpl@5
    // out out_data_out_14_tpl@5
    // out out_data_out_15_tpl@5
    // out out_data_out_16_tpl@5
    // out out_data_out_17_tpl@5
    // out out_data_out_18_tpl@5
    // out out_data_out_19_tpl@5
    // out out_data_out_20_tpl@5
    // out out_data_out_21_tpl@5
    // out out_data_out_22_tpl@5
    // out out_data_out_23_tpl@5
    // out out_data_out_24_tpl@5
    // out out_data_out_25_tpl@5
    // out out_data_out_26_tpl@5
    // out out_data_out_27_tpl@5
    // out out_data_out_28_tpl@5
    // out out_data_out_29_tpl@5
    // out out_data_out_30_tpl@5
    // out out_data_out_31_tpl@5
    // out out_data_out_32_tpl@5
    // out out_data_out_33_tpl@5
    // out out_data_out_34_tpl@5
    // out out_data_out_35_tpl@5
    // out out_data_out_36_tpl@5
    // out out_data_out_37_tpl@5
    // out out_data_out_38_tpl@5
    // out out_data_out_39_tpl@5
    // out out_data_out_40_tpl@5
    // out out_data_out_41_tpl@5
    // out out_data_out_42_tpl@5
    // out out_data_out_43_tpl@5
    // out out_data_out_44_tpl@5
    // out out_data_out_45_tpl@5
    // out out_data_out_46_tpl@5
    // out out_stall_entry@20000000
    // out out_valid_out@5
    conv2_i_llvm_fpga_sfc_exit_s_c0_out_for_0000_s_c0_exit529_conv20 thei_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x (
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_16_tpl),
        .in_data_in_17_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_17_tpl),
        .in_data_in_18_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_18_tpl),
        .in_data_in_19_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_19_tpl),
        .in_data_in_20_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_20_tpl),
        .in_data_in_21_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_21_tpl),
        .in_data_in_22_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_22_tpl),
        .in_data_in_23_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_23_tpl),
        .in_data_in_24_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_24_tpl),
        .in_data_in_25_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_25_tpl),
        .in_data_in_26_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_26_tpl),
        .in_data_in_27_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_27_tpl),
        .in_data_in_28_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_28_tpl),
        .in_data_in_29_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_29_tpl),
        .in_data_in_30_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_30_tpl),
        .in_data_in_31_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_31_tpl),
        .in_data_in_32_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_32_tpl),
        .in_data_in_33_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_33_tpl),
        .in_data_in_34_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_34_tpl),
        .in_data_in_35_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_35_tpl),
        .in_data_in_36_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_36_tpl),
        .in_data_in_37_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_37_tpl),
        .in_data_in_38_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_38_tpl),
        .in_data_in_39_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_39_tpl),
        .in_data_in_40_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_40_tpl),
        .in_data_in_41_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_41_tpl),
        .in_data_in_42_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_42_tpl),
        .in_data_in_43_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_43_tpl),
        .in_data_in_44_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_44_tpl),
        .in_data_in_45_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_45_tpl),
        .in_data_in_46_tpl(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_c0_exi46_46_tpl),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_o_valid),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_24_tpl),
        .out_data_out_25_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_25_tpl),
        .out_data_out_26_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_26_tpl),
        .out_data_out_27_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_27_tpl),
        .out_data_out_28_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_28_tpl),
        .out_data_out_29_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_29_tpl),
        .out_data_out_30_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_30_tpl),
        .out_data_out_31_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_31_tpl),
        .out_data_out_32_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_32_tpl),
        .out_data_out_33_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_33_tpl),
        .out_data_out_34_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_34_tpl),
        .out_data_out_35_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_35_tpl),
        .out_data_out_36_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_36_tpl),
        .out_data_out_37_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_37_tpl),
        .out_data_out_38_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_38_tpl),
        .out_data_out_39_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_39_tpl),
        .out_data_out_40_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_40_tpl),
        .out_data_out_41_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_41_tpl),
        .out_data_out_42_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_42_tpl),
        .out_data_out_43_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_43_tpl),
        .out_data_out_44_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_44_tpl),
        .out_data_out_45_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_45_tpl),
        .out_data_out_46_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_46_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@5
    assign out_c0_exit529_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit529_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit529_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit529_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit529_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit529_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit529_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit529_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit529_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit529_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit529_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit529_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit529_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_12_tpl;
    assign out_c0_exit529_13_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_13_tpl;
    assign out_c0_exit529_14_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_14_tpl;
    assign out_c0_exit529_15_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_15_tpl;
    assign out_c0_exit529_16_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_16_tpl;
    assign out_c0_exit529_17_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_17_tpl;
    assign out_c0_exit529_18_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_18_tpl;
    assign out_c0_exit529_19_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_19_tpl;
    assign out_c0_exit529_20_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_20_tpl;
    assign out_c0_exit529_21_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_21_tpl;
    assign out_c0_exit529_22_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_22_tpl;
    assign out_c0_exit529_23_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_23_tpl;
    assign out_c0_exit529_24_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_24_tpl;
    assign out_c0_exit529_25_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_25_tpl;
    assign out_c0_exit529_26_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_26_tpl;
    assign out_c0_exit529_27_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_27_tpl;
    assign out_c0_exit529_28_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_28_tpl;
    assign out_c0_exit529_29_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_29_tpl;
    assign out_c0_exit529_30_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_30_tpl;
    assign out_c0_exit529_31_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_31_tpl;
    assign out_c0_exit529_32_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_32_tpl;
    assign out_c0_exit529_33_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_33_tpl;
    assign out_c0_exit529_34_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_34_tpl;
    assign out_c0_exit529_35_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_35_tpl;
    assign out_c0_exit529_36_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_36_tpl;
    assign out_c0_exit529_37_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_37_tpl;
    assign out_c0_exit529_38_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_38_tpl;
    assign out_c0_exit529_39_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_39_tpl;
    assign out_c0_exit529_40_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_40_tpl;
    assign out_c0_exit529_41_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_41_tpl;
    assign out_c0_exit529_42_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_42_tpl;
    assign out_c0_exit529_43_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_43_tpl;
    assign out_c0_exit529_44_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_44_tpl;
    assign out_c0_exit529_45_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_45_tpl;
    assign out_c0_exit529_46_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_data_out_46_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,3)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_valid_out = i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_valid_out;

    // pipeline_valid_out_sync(GPOUT,11)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,12)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_stall_out = i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_stall_out;

    // sync_out(GPOUT,14)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_aunroll_x_out_stall_entry;

endmodule
