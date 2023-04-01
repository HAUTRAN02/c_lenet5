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

// SystemVerilog created from i_sfc_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu21
// Created for function/kernel relu2
// SystemVerilog created on Sat Apr  1 13:10:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module relu2_i_sfc_s_c0_in_for_cond4_preheader_s_c0_enter7211_relu21 (
    output wire [0:0] out_c0_exit78_0_tpl,
    output wire [0:0] out_c0_exit78_1_tpl,
    output wire [0:0] out_c0_exit78_2_tpl,
    output wire [31:0] out_c0_exit78_3_tpl,
    output wire [0:0] out_c0_exit78_4_tpl,
    output wire [0:0] out_c0_exit78_5_tpl,
    output wire [31:0] out_c0_exit78_6_tpl,
    output wire [0:0] out_c0_exit78_7_tpl,
    output wire [0:0] out_c0_exit78_8_tpl,
    output wire [0:0] out_c0_exit78_9_tpl,
    output wire [0:0] out_c0_exit78_10_tpl,
    output wire [31:0] out_c0_exit78_11_tpl,
    output wire [0:0] out_c0_exit78_12_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_relu22_exiting_valid_out,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [0:0] in_c0_eni5_1_tpl,
    input wire [0:0] in_c0_eni5_2_tpl,
    input wire [0:0] in_c0_eni5_3_tpl,
    input wire [31:0] in_c0_eni5_4_tpl,
    input wire [0:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_relu22_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_2_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_3_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_4_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_5_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_6_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_7_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_8_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_9_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_10_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_11_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_12_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_1_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_2_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_3_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_4_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_5_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_6_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_7_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_8_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_9_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_10_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_11_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_12_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_relu22_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_relu22_exiting_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_pipeline_valid_out;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,9)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,8)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x(BLACKBOX,5)@1
    // out out_c0_exi12_0_tpl@2
    // out out_c0_exi12_1_tpl@2
    // out out_c0_exi12_2_tpl@2
    // out out_c0_exi12_3_tpl@2
    // out out_c0_exi12_4_tpl@2
    // out out_c0_exi12_5_tpl@2
    // out out_c0_exi12_6_tpl@2
    // out out_c0_exi12_7_tpl@2
    // out out_c0_exi12_8_tpl@2
    // out out_c0_exi12_9_tpl@2
    // out out_c0_exi12_10_tpl@2
    // out out_c0_exi12_11_tpl@2
    // out out_c0_exi12_12_tpl@2
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_relu22_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_relu22_exiting_valid_out@20000000
    // out out_o_valid@2
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_relu21@2
    relu2_i_sfc_logic_s_c0_in_for_cond4_preh0000_c0_enter7211_relu20 thei_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x (
        .in_c0_eni5_0_tpl(in_c0_eni5_0_tpl),
        .in_c0_eni5_1_tpl(in_c0_eni5_1_tpl),
        .in_c0_eni5_2_tpl(in_c0_eni5_2_tpl),
        .in_c0_eni5_3_tpl(in_c0_eni5_3_tpl),
        .in_c0_eni5_4_tpl(in_c0_eni5_4_tpl),
        .in_c0_eni5_5_tpl(in_c0_eni5_5_tpl),
        .in_i_valid(input_accepted_and_q),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exi12_0_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_0_tpl),
        .out_c0_exi12_1_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_1_tpl),
        .out_c0_exi12_2_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_2_tpl),
        .out_c0_exi12_3_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_3_tpl),
        .out_c0_exi12_4_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_4_tpl),
        .out_c0_exi12_5_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_5_tpl),
        .out_c0_exi12_6_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_6_tpl),
        .out_c0_exi12_7_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_7_tpl),
        .out_c0_exi12_8_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_8_tpl),
        .out_c0_exi12_9_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_9_tpl),
        .out_c0_exi12_10_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_10_tpl),
        .out_c0_exi12_11_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_11_tpl),
        .out_c0_exi12_12_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_12_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_relu22_exiting_stall_out(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_relu22_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_relu22_exiting_valid_out(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_relu22_exiting_valid_out),
        .out_o_valid(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_relu21(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x(BLACKBOX,4)@2
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
    // out out_stall_entry@20000000
    // out out_valid_out@5
    relu2_i_llvm_fpga_sfc_exit_s_c0_out_for_0000r_s_c0_exit78_relu20 thei_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x (
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_c0_exi12_12_tpl),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_o_valid),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_12_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@5
    assign out_c0_exit78_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit78_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit78_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit78_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit78_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit78_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit78_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit78_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit78_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit78_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit78_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit78_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit78_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_data_out_12_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,3)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_relu22_exiting_valid_out = i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_relu22_exiting_valid_out;

    // pipeline_valid_out_sync(GPOUT,11)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,12)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_relu22_exiting_stall_out = i_sfc_logic_s_c0_in_for_cond4_preheader_relu2s_c0_enter7211_relu20_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_relu22_exiting_stall_out;

    // sync_out(GPOUT,14)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond4_preheader_relu2s_c0_exit78_relu21_aunroll_x_out_stall_entry;

endmodule