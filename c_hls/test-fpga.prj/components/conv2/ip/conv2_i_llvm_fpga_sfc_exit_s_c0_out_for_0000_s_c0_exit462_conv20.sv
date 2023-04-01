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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv20
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_i_llvm_fpga_sfc_exit_s_c0_out_for_0000_s_c0_exit462_conv20 (
    output wire [0:0] out_data_out_0_tpl,
    output wire [31:0] out_data_out_1_tpl,
    output wire [31:0] out_data_out_2_tpl,
    output wire [63:0] out_data_out_3_tpl,
    output wire [63:0] out_data_out_4_tpl,
    output wire [31:0] out_data_out_5_tpl,
    output wire [63:0] out_data_out_6_tpl,
    output wire [0:0] out_data_out_7_tpl,
    output wire [0:0] out_data_out_8_tpl,
    output wire [0:0] out_data_out_9_tpl,
    output wire [0:0] out_data_out_10_tpl,
    output wire [0:0] out_data_out_11_tpl,
    output wire [0:0] out_data_out_12_tpl,
    output wire [0:0] out_data_out_13_tpl,
    output wire [0:0] out_data_out_14_tpl,
    output wire [0:0] out_data_out_15_tpl,
    output wire [0:0] out_data_out_16_tpl,
    output wire [0:0] out_data_out_17_tpl,
    output wire [31:0] out_data_out_18_tpl,
    output wire [0:0] out_data_out_19_tpl,
    output wire [0:0] out_data_out_20_tpl,
    output wire [0:0] out_data_out_21_tpl,
    output wire [31:0] out_data_out_22_tpl,
    output wire [0:0] out_data_out_23_tpl,
    output wire [0:0] out_data_out_24_tpl,
    output wire [0:0] out_data_out_25_tpl,
    output wire [31:0] out_data_out_26_tpl,
    output wire [0:0] out_data_out_27_tpl,
    output wire [0:0] out_enable,
    output wire [0:0] out_valid_mask,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_data_in_0_tpl,
    input wire [31:0] in_data_in_1_tpl,
    input wire [31:0] in_data_in_2_tpl,
    input wire [63:0] in_data_in_3_tpl,
    input wire [63:0] in_data_in_4_tpl,
    input wire [31:0] in_data_in_5_tpl,
    input wire [63:0] in_data_in_6_tpl,
    input wire [0:0] in_data_in_7_tpl,
    input wire [0:0] in_data_in_8_tpl,
    input wire [0:0] in_data_in_9_tpl,
    input wire [0:0] in_data_in_10_tpl,
    input wire [0:0] in_data_in_11_tpl,
    input wire [0:0] in_data_in_12_tpl,
    input wire [0:0] in_data_in_13_tpl,
    input wire [0:0] in_data_in_14_tpl,
    input wire [0:0] in_data_in_15_tpl,
    input wire [0:0] in_data_in_16_tpl,
    input wire [0:0] in_data_in_17_tpl,
    input wire [31:0] in_data_in_18_tpl,
    input wire [0:0] in_data_in_19_tpl,
    input wire [0:0] in_data_in_20_tpl,
    input wire [0:0] in_data_in_21_tpl,
    input wire [31:0] in_data_in_22_tpl,
    input wire [0:0] in_data_in_23_tpl,
    input wire [0:0] in_data_in_24_tpl,
    input wire [0:0] in_data_in_25_tpl,
    input wire [31:0] in_data_in_26_tpl,
    input wire [0:0] in_data_in_27_tpl,
    input wire [0:0] in_input_accepted,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_entry,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [23:0] c_i24_06_q;
    wire [31:0] c_i32_07_q;
    wire [55:0] c_i56_048_q;
    wire [6:0] c_i7_010_q;
    wire [7:0] c_i8_031_q;
    wire [703:0] dsdk_ip_adapt_bitjoin2_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension15_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension21_q;
    wire [7:0] element_extension23_q;
    wire [7:0] element_extension25_q;
    wire [7:0] element_extension27_q;
    wire [7:0] element_extension29_q;
    wire [7:0] element_extension32_q;
    wire [7:0] element_extension34_q;
    wire [7:0] element_extension36_q;
    wire [7:0] element_extension39_q;
    wire [7:0] element_extension4_q;
    wire [7:0] element_extension41_q;
    wire [7:0] element_extension43_q;
    wire [7:0] element_extension46_q;
    wire [7:0] element_extension9_q;
    wire [703:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_in;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_dec_pipelined_thread;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_dec_pipelined_thread_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_inc_pipelined_thread;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_inc_pipelined_thread_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_input_accepted;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_input_accepted_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_stall_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_valid_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_valid_in_bitsignaltemp;
    wire [703:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_enable;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_enable_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_stall_entry;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_stall_entry_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_valid_mask;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_valid_mask_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_valid_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_valid_out_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect100_b;
    wire [31:0] ip_dsdk_adapt_bitselect102_b;
    wire [0:0] ip_dsdk_adapt_bitselect104_b;
    wire [0:0] ip_dsdk_adapt_bitselect50_b;
    wire [31:0] ip_dsdk_adapt_bitselect52_b;
    wire [31:0] ip_dsdk_adapt_bitselect54_b;
    wire [63:0] ip_dsdk_adapt_bitselect56_b;
    wire [63:0] ip_dsdk_adapt_bitselect58_b;
    wire [31:0] ip_dsdk_adapt_bitselect60_b;
    wire [63:0] ip_dsdk_adapt_bitselect62_b;
    wire [0:0] ip_dsdk_adapt_bitselect64_b;
    wire [0:0] ip_dsdk_adapt_bitselect66_b;
    wire [0:0] ip_dsdk_adapt_bitselect68_b;
    wire [0:0] ip_dsdk_adapt_bitselect70_b;
    wire [0:0] ip_dsdk_adapt_bitselect72_b;
    wire [0:0] ip_dsdk_adapt_bitselect74_b;
    wire [0:0] ip_dsdk_adapt_bitselect76_b;
    wire [0:0] ip_dsdk_adapt_bitselect78_b;
    wire [0:0] ip_dsdk_adapt_bitselect80_b;
    wire [0:0] ip_dsdk_adapt_bitselect82_b;
    wire [0:0] ip_dsdk_adapt_bitselect84_b;
    wire [31:0] ip_dsdk_adapt_bitselect86_b;
    wire [0:0] ip_dsdk_adapt_bitselect88_b;
    wire [0:0] ip_dsdk_adapt_bitselect90_b;
    wire [0:0] ip_dsdk_adapt_bitselect92_b;
    wire [31:0] ip_dsdk_adapt_bitselect94_b;
    wire [0:0] ip_dsdk_adapt_bitselect96_b;
    wire [0:0] ip_dsdk_adapt_bitselect98_b;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i56_048(CONSTANT,9)
    assign c_i56_048_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // c_i7_010(CONSTANT,10)
    assign c_i7_010_q = $unsigned(7'b0000000);

    // element_extension46(BITJOIN,50)
    assign element_extension46_q = {c_i7_010_q, in_data_in_27_tpl};

    // element_extension43(BITJOIN,49)
    assign element_extension43_q = {c_i7_010_q, in_data_in_25_tpl};

    // element_extension41(BITJOIN,48)
    assign element_extension41_q = {c_i7_010_q, in_data_in_24_tpl};

    // element_extension39(BITJOIN,46)
    assign element_extension39_q = {c_i7_010_q, in_data_in_23_tpl};

    // element_extension36(BITJOIN,45)
    assign element_extension36_q = {c_i7_010_q, in_data_in_21_tpl};

    // element_extension34(BITJOIN,44)
    assign element_extension34_q = {c_i7_010_q, in_data_in_20_tpl};

    // element_extension32(BITJOIN,43)
    assign element_extension32_q = {c_i7_010_q, in_data_in_19_tpl};

    // c_i8_031(CONSTANT,29)
    assign c_i8_031_q = $unsigned(8'b00000000);

    // element_extension29(BITJOIN,42)
    assign element_extension29_q = {c_i7_010_q, in_data_in_17_tpl};

    // element_extension27(BITJOIN,41)
    assign element_extension27_q = {c_i7_010_q, in_data_in_16_tpl};

    // element_extension25(BITJOIN,40)
    assign element_extension25_q = {c_i7_010_q, in_data_in_15_tpl};

    // element_extension23(BITJOIN,39)
    assign element_extension23_q = {c_i7_010_q, in_data_in_14_tpl};

    // element_extension21(BITJOIN,38)
    assign element_extension21_q = {c_i7_010_q, in_data_in_13_tpl};

    // element_extension19(BITJOIN,37)
    assign element_extension19_q = {c_i7_010_q, in_data_in_12_tpl};

    // element_extension17(BITJOIN,36)
    assign element_extension17_q = {c_i7_010_q, in_data_in_11_tpl};

    // element_extension15(BITJOIN,35)
    assign element_extension15_q = {c_i7_010_q, in_data_in_10_tpl};

    // element_extension13(BITJOIN,34)
    assign element_extension13_q = {c_i7_010_q, in_data_in_9_tpl};

    // element_extension11(BITJOIN,33)
    assign element_extension11_q = {c_i7_010_q, in_data_in_8_tpl};

    // element_extension9(BITJOIN,51)
    assign element_extension9_q = {c_i7_010_q, in_data_in_7_tpl};

    // c_i32_07(CONSTANT,7)
    assign c_i32_07_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i24_06(CONSTANT,6)
    assign c_i24_06_q = $unsigned(24'b000000000000000000000000);

    // element_extension4(BITJOIN,47)
    assign element_extension4_q = {c_i7_010_q, in_data_in_0_tpl};

    // dsdk_ip_adapt_bitjoin2(BITJOIN,32)
    assign dsdk_ip_adapt_bitjoin2_q = {c_i56_048_q, element_extension46_q, in_data_in_26_tpl, c_i8_031_q, element_extension43_q, element_extension41_q, element_extension39_q, in_data_in_22_tpl, c_i8_031_q, element_extension36_q, element_extension34_q, element_extension32_q, in_data_in_18_tpl, c_i8_031_q, element_extension29_q, element_extension27_q, element_extension25_q, element_extension23_q, element_extension21_q, element_extension19_q, element_extension17_q, element_extension15_q, element_extension13_q, element_extension11_q, element_extension9_q, in_data_in_6_tpl, c_i32_07_q, in_data_in_5_tpl, in_data_in_4_tpl, in_data_in_3_tpl, c_i32_07_q, in_data_in_2_tpl, in_data_in_1_tpl, c_i24_06_q, element_extension4_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21(EXTIFACE,52)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_in = dsdk_ip_adapt_bitjoin2_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_dec_pipelined_thread = GND_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_inc_pipelined_thread = GND_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_input_accepted = in_input_accepted;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_stall_in = in_stall_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_valid_in = in_valid_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_dec_pipelined_thread_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_dec_pipelined_thread[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_inc_pipelined_thread_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_inc_pipelined_thread[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_input_accepted_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_input_accepted[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_stall_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_stall_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_valid_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_valid_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_enable[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_enable_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_stall_entry[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_stall_entry_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_valid_mask[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_valid_mask_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_valid_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_valid_out_bitsignaltemp;
    acl_enable_sink #(
        .PIPELINE_DEPTH(9),
        .SCHEDULEII(1),
        .ASYNC_RESET(1),
        .DATA_WIDTH(704),
        .IP_PIPELINE_LATENCY_PLUS1(1),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21 (
        .data_in(dsdk_ip_adapt_bitjoin2_q),
        .dec_pipelined_thread(i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_dec_pipelined_thread_bitsignaltemp),
        .inc_pipelined_thread(i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_inc_pipelined_thread_bitsignaltemp),
        .input_accepted(i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_input_accepted_bitsignaltemp),
        .stall_in(i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out),
        .enable(i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_enable_bitsignaltemp),
        .stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_stall_entry_bitsignaltemp),
        .valid_mask(i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_valid_mask_bitsignaltemp),
        .valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // ip_dsdk_adapt_bitselect104(BITSELECT,55)
    assign ip_dsdk_adapt_bitselect104_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[640:640];

    // ip_dsdk_adapt_bitselect102(BITSELECT,54)
    assign ip_dsdk_adapt_bitselect102_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[639:608];

    // ip_dsdk_adapt_bitselect100(BITSELECT,53)
    assign ip_dsdk_adapt_bitselect100_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[592:592];

    // ip_dsdk_adapt_bitselect98(BITSELECT,80)
    assign ip_dsdk_adapt_bitselect98_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[584:584];

    // ip_dsdk_adapt_bitselect96(BITSELECT,79)
    assign ip_dsdk_adapt_bitselect96_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[576:576];

    // ip_dsdk_adapt_bitselect94(BITSELECT,78)
    assign ip_dsdk_adapt_bitselect94_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[575:544];

    // ip_dsdk_adapt_bitselect92(BITSELECT,77)
    assign ip_dsdk_adapt_bitselect92_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[528:528];

    // ip_dsdk_adapt_bitselect90(BITSELECT,76)
    assign ip_dsdk_adapt_bitselect90_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[520:520];

    // ip_dsdk_adapt_bitselect88(BITSELECT,75)
    assign ip_dsdk_adapt_bitselect88_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[512:512];

    // ip_dsdk_adapt_bitselect86(BITSELECT,74)
    assign ip_dsdk_adapt_bitselect86_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[511:480];

    // ip_dsdk_adapt_bitselect84(BITSELECT,73)
    assign ip_dsdk_adapt_bitselect84_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[464:464];

    // ip_dsdk_adapt_bitselect82(BITSELECT,72)
    assign ip_dsdk_adapt_bitselect82_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[456:456];

    // ip_dsdk_adapt_bitselect80(BITSELECT,71)
    assign ip_dsdk_adapt_bitselect80_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[448:448];

    // ip_dsdk_adapt_bitselect78(BITSELECT,70)
    assign ip_dsdk_adapt_bitselect78_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[440:440];

    // ip_dsdk_adapt_bitselect76(BITSELECT,69)
    assign ip_dsdk_adapt_bitselect76_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[432:432];

    // ip_dsdk_adapt_bitselect74(BITSELECT,68)
    assign ip_dsdk_adapt_bitselect74_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[424:424];

    // ip_dsdk_adapt_bitselect72(BITSELECT,67)
    assign ip_dsdk_adapt_bitselect72_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[416:416];

    // ip_dsdk_adapt_bitselect70(BITSELECT,66)
    assign ip_dsdk_adapt_bitselect70_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[408:408];

    // ip_dsdk_adapt_bitselect68(BITSELECT,65)
    assign ip_dsdk_adapt_bitselect68_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[400:400];

    // ip_dsdk_adapt_bitselect66(BITSELECT,64)
    assign ip_dsdk_adapt_bitselect66_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[392:392];

    // ip_dsdk_adapt_bitselect64(BITSELECT,63)
    assign ip_dsdk_adapt_bitselect64_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[384:384];

    // ip_dsdk_adapt_bitselect62(BITSELECT,62)
    assign ip_dsdk_adapt_bitselect62_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[383:320];

    // ip_dsdk_adapt_bitselect60(BITSELECT,61)
    assign ip_dsdk_adapt_bitselect60_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[287:256];

    // ip_dsdk_adapt_bitselect58(BITSELECT,60)
    assign ip_dsdk_adapt_bitselect58_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[255:192];

    // ip_dsdk_adapt_bitselect56(BITSELECT,59)
    assign ip_dsdk_adapt_bitselect56_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[191:128];

    // ip_dsdk_adapt_bitselect54(BITSELECT,58)
    assign ip_dsdk_adapt_bitselect54_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[95:64];

    // ip_dsdk_adapt_bitselect52(BITSELECT,57)
    assign ip_dsdk_adapt_bitselect52_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[63:32];

    // ip_dsdk_adapt_bitselect50(BITSELECT,56)
    assign ip_dsdk_adapt_bitselect50_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_data_out[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@10
    assign out_data_out_0_tpl = ip_dsdk_adapt_bitselect50_b;
    assign out_data_out_1_tpl = ip_dsdk_adapt_bitselect52_b;
    assign out_data_out_2_tpl = ip_dsdk_adapt_bitselect54_b;
    assign out_data_out_3_tpl = ip_dsdk_adapt_bitselect56_b;
    assign out_data_out_4_tpl = ip_dsdk_adapt_bitselect58_b;
    assign out_data_out_5_tpl = ip_dsdk_adapt_bitselect60_b;
    assign out_data_out_6_tpl = ip_dsdk_adapt_bitselect62_b;
    assign out_data_out_7_tpl = ip_dsdk_adapt_bitselect64_b;
    assign out_data_out_8_tpl = ip_dsdk_adapt_bitselect66_b;
    assign out_data_out_9_tpl = ip_dsdk_adapt_bitselect68_b;
    assign out_data_out_10_tpl = ip_dsdk_adapt_bitselect70_b;
    assign out_data_out_11_tpl = ip_dsdk_adapt_bitselect72_b;
    assign out_data_out_12_tpl = ip_dsdk_adapt_bitselect74_b;
    assign out_data_out_13_tpl = ip_dsdk_adapt_bitselect76_b;
    assign out_data_out_14_tpl = ip_dsdk_adapt_bitselect78_b;
    assign out_data_out_15_tpl = ip_dsdk_adapt_bitselect80_b;
    assign out_data_out_16_tpl = ip_dsdk_adapt_bitselect82_b;
    assign out_data_out_17_tpl = ip_dsdk_adapt_bitselect84_b;
    assign out_data_out_18_tpl = ip_dsdk_adapt_bitselect86_b;
    assign out_data_out_19_tpl = ip_dsdk_adapt_bitselect88_b;
    assign out_data_out_20_tpl = ip_dsdk_adapt_bitselect90_b;
    assign out_data_out_21_tpl = ip_dsdk_adapt_bitselect92_b;
    assign out_data_out_22_tpl = ip_dsdk_adapt_bitselect94_b;
    assign out_data_out_23_tpl = ip_dsdk_adapt_bitselect96_b;
    assign out_data_out_24_tpl = ip_dsdk_adapt_bitselect98_b;
    assign out_data_out_25_tpl = ip_dsdk_adapt_bitselect100_b;
    assign out_data_out_26_tpl = ip_dsdk_adapt_bitselect102_b;
    assign out_data_out_27_tpl = ip_dsdk_adapt_bitselect104_b;
    assign out_enable = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_enable;
    assign out_valid_mask = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_valid_mask;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_valid_out;

    // sync_out(GPOUT,82)@20000000
    assign out_stall_entry = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_conv2s_c0_exit462_conv21_stall_entry;

endmodule
