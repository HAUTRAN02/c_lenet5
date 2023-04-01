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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv21_data_fifo
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_i_llvm_fpga_sfc_exit_s_c0_out_for_0000529_conv21_data_fifo (
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [31:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [31:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [0:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [31:0] out_o_data_10_tpl,
    output wire [0:0] out_o_data_11_tpl,
    output wire [63:0] out_o_data_12_tpl,
    output wire [63:0] out_o_data_13_tpl,
    output wire [31:0] out_o_data_14_tpl,
    output wire [63:0] out_o_data_15_tpl,
    output wire [0:0] out_o_data_16_tpl,
    output wire [0:0] out_o_data_17_tpl,
    output wire [0:0] out_o_data_18_tpl,
    output wire [0:0] out_o_data_19_tpl,
    output wire [0:0] out_o_data_20_tpl,
    output wire [0:0] out_o_data_21_tpl,
    output wire [31:0] out_o_data_22_tpl,
    output wire [0:0] out_o_data_23_tpl,
    output wire [0:0] out_o_data_24_tpl,
    output wire [0:0] out_o_data_25_tpl,
    output wire [31:0] out_o_data_26_tpl,
    output wire [0:0] out_o_data_27_tpl,
    output wire [0:0] out_o_data_28_tpl,
    output wire [0:0] out_o_data_29_tpl,
    output wire [31:0] out_o_data_30_tpl,
    output wire [0:0] out_o_data_31_tpl,
    output wire [31:0] out_o_data_32_tpl,
    output wire [31:0] out_o_data_33_tpl,
    output wire [63:0] out_o_data_34_tpl,
    output wire [63:0] out_o_data_35_tpl,
    output wire [31:0] out_o_data_36_tpl,
    output wire [63:0] out_o_data_37_tpl,
    output wire [0:0] out_o_data_38_tpl,
    output wire [0:0] out_o_data_39_tpl,
    output wire [0:0] out_o_data_40_tpl,
    output wire [0:0] out_o_data_41_tpl,
    output wire [0:0] out_o_data_42_tpl,
    output wire [0:0] out_o_data_43_tpl,
    output wire [0:0] out_o_data_44_tpl,
    output wire [0:0] out_o_data_45_tpl,
    output wire [0:0] out_o_data_46_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [31:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [31:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [0:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [31:0] in_i_data_10_tpl,
    input wire [0:0] in_i_data_11_tpl,
    input wire [63:0] in_i_data_12_tpl,
    input wire [63:0] in_i_data_13_tpl,
    input wire [31:0] in_i_data_14_tpl,
    input wire [63:0] in_i_data_15_tpl,
    input wire [0:0] in_i_data_16_tpl,
    input wire [0:0] in_i_data_17_tpl,
    input wire [0:0] in_i_data_18_tpl,
    input wire [0:0] in_i_data_19_tpl,
    input wire [0:0] in_i_data_20_tpl,
    input wire [0:0] in_i_data_21_tpl,
    input wire [31:0] in_i_data_22_tpl,
    input wire [0:0] in_i_data_23_tpl,
    input wire [0:0] in_i_data_24_tpl,
    input wire [0:0] in_i_data_25_tpl,
    input wire [31:0] in_i_data_26_tpl,
    input wire [0:0] in_i_data_27_tpl,
    input wire [0:0] in_i_data_28_tpl,
    input wire [0:0] in_i_data_29_tpl,
    input wire [31:0] in_i_data_30_tpl,
    input wire [0:0] in_i_data_31_tpl,
    input wire [31:0] in_i_data_32_tpl,
    input wire [31:0] in_i_data_33_tpl,
    input wire [63:0] in_i_data_34_tpl,
    input wire [63:0] in_i_data_35_tpl,
    input wire [31:0] in_i_data_36_tpl,
    input wire [63:0] in_i_data_37_tpl,
    input wire [0:0] in_i_data_38_tpl,
    input wire [0:0] in_i_data_39_tpl,
    input wire [0:0] in_i_data_40_tpl,
    input wire [0:0] in_i_data_41_tpl,
    input wire [0:0] in_i_data_42_tpl,
    input wire [0:0] in_i_data_43_tpl,
    input wire [0:0] in_i_data_44_tpl,
    input wire [0:0] in_i_data_45_tpl,
    input wire [0:0] in_i_data_46_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc100_in;
    wire [0:0] adapt_scalar_trunc100_q;
    wire [0:0] adapt_scalar_trunc110_in;
    wire [0:0] adapt_scalar_trunc110_q;
    wire [0:0] adapt_scalar_trunc112_in;
    wire [0:0] adapt_scalar_trunc112_q;
    wire [0:0] adapt_scalar_trunc114_in;
    wire [0:0] adapt_scalar_trunc114_q;
    wire [0:0] adapt_scalar_trunc116_in;
    wire [0:0] adapt_scalar_trunc116_q;
    wire [0:0] adapt_scalar_trunc118_in;
    wire [0:0] adapt_scalar_trunc118_q;
    wire [0:0] adapt_scalar_trunc120_in;
    wire [0:0] adapt_scalar_trunc120_q;
    wire [0:0] adapt_scalar_trunc124_in;
    wire [0:0] adapt_scalar_trunc124_q;
    wire [0:0] adapt_scalar_trunc126_in;
    wire [0:0] adapt_scalar_trunc126_q;
    wire [0:0] adapt_scalar_trunc128_in;
    wire [0:0] adapt_scalar_trunc128_q;
    wire [0:0] adapt_scalar_trunc132_in;
    wire [0:0] adapt_scalar_trunc132_q;
    wire [0:0] adapt_scalar_trunc134_in;
    wire [0:0] adapt_scalar_trunc134_q;
    wire [0:0] adapt_scalar_trunc136_in;
    wire [0:0] adapt_scalar_trunc136_q;
    wire [0:0] adapt_scalar_trunc140_in;
    wire [0:0] adapt_scalar_trunc140_q;
    wire [0:0] adapt_scalar_trunc154_in;
    wire [0:0] adapt_scalar_trunc154_q;
    wire [0:0] adapt_scalar_trunc156_in;
    wire [0:0] adapt_scalar_trunc156_q;
    wire [0:0] adapt_scalar_trunc158_in;
    wire [0:0] adapt_scalar_trunc158_q;
    wire [0:0] adapt_scalar_trunc160_in;
    wire [0:0] adapt_scalar_trunc160_q;
    wire [0:0] adapt_scalar_trunc162_in;
    wire [0:0] adapt_scalar_trunc162_q;
    wire [0:0] adapt_scalar_trunc164_in;
    wire [0:0] adapt_scalar_trunc164_q;
    wire [0:0] adapt_scalar_trunc166_in;
    wire [0:0] adapt_scalar_trunc166_q;
    wire [0:0] adapt_scalar_trunc168_in;
    wire [0:0] adapt_scalar_trunc168_q;
    wire [0:0] adapt_scalar_trunc170_in;
    wire [0:0] adapt_scalar_trunc170_q;
    wire [0:0] adapt_scalar_trunc78_in;
    wire [0:0] adapt_scalar_trunc78_q;
    wire [0:0] adapt_scalar_trunc80_in;
    wire [0:0] adapt_scalar_trunc80_q;
    wire [0:0] adapt_scalar_trunc82_in;
    wire [0:0] adapt_scalar_trunc82_q;
    wire [0:0] adapt_scalar_trunc86_in;
    wire [0:0] adapt_scalar_trunc86_q;
    wire [0:0] adapt_scalar_trunc88_in;
    wire [0:0] adapt_scalar_trunc88_q;
    wire [0:0] adapt_scalar_trunc92_in;
    wire [0:0] adapt_scalar_trunc92_q;
    wire [0:0] adapt_scalar_trunc94_in;
    wire [0:0] adapt_scalar_trunc94_q;
    wire [0:0] adapt_scalar_trunc96_in;
    wire [0:0] adapt_scalar_trunc96_q;
    wire [15:0] c_i16_014_q;
    wire [23:0] c_i24_055_q;
    wire [31:0] c_i32_025_q;
    wire [55:0] c_i56_024_q;
    wire [6:0] c_i7_011_q;
    wire [7:0] c_i8_021_q;
    wire [1215:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension15_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension22_q;
    wire [7:0] element_extension26_q;
    wire [7:0] element_extension28_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension30_q;
    wire [7:0] element_extension32_q;
    wire [7:0] element_extension34_q;
    wire [7:0] element_extension36_q;
    wire [7:0] element_extension39_q;
    wire [7:0] element_extension41_q;
    wire [7:0] element_extension43_q;
    wire [7:0] element_extension46_q;
    wire [7:0] element_extension48_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension50_q;
    wire [7:0] element_extension53_q;
    wire [7:0] element_extension57_q;
    wire [7:0] element_extension59_q;
    wire [7:0] element_extension61_q;
    wire [7:0] element_extension63_q;
    wire [7:0] element_extension65_q;
    wire [7:0] element_extension67_q;
    wire [7:0] element_extension69_q;
    wire [7:0] element_extension7_q;
    wire [7:0] element_extension71_q;
    wire [7:0] element_extension73_q;
    wire [1215:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_almost_full_bitsignaltemp;
    wire [1215:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_valid_bitsignaltemp;
    wire [63:0] ip_dsdk_adapt_bitselect101_b;
    wire [63:0] ip_dsdk_adapt_bitselect103_b;
    wire [31:0] ip_dsdk_adapt_bitselect105_b;
    wire [63:0] ip_dsdk_adapt_bitselect107_b;
    wire [0:0] ip_dsdk_adapt_bitselect109_b;
    wire [0:0] ip_dsdk_adapt_bitselect111_b;
    wire [0:0] ip_dsdk_adapt_bitselect113_b;
    wire [0:0] ip_dsdk_adapt_bitselect115_b;
    wire [0:0] ip_dsdk_adapt_bitselect117_b;
    wire [0:0] ip_dsdk_adapt_bitselect119_b;
    wire [31:0] ip_dsdk_adapt_bitselect121_b;
    wire [0:0] ip_dsdk_adapt_bitselect123_b;
    wire [0:0] ip_dsdk_adapt_bitselect125_b;
    wire [0:0] ip_dsdk_adapt_bitselect127_b;
    wire [31:0] ip_dsdk_adapt_bitselect129_b;
    wire [0:0] ip_dsdk_adapt_bitselect131_b;
    wire [0:0] ip_dsdk_adapt_bitselect133_b;
    wire [0:0] ip_dsdk_adapt_bitselect135_b;
    wire [31:0] ip_dsdk_adapt_bitselect137_b;
    wire [0:0] ip_dsdk_adapt_bitselect139_b;
    wire [31:0] ip_dsdk_adapt_bitselect141_b;
    wire [31:0] ip_dsdk_adapt_bitselect143_b;
    wire [63:0] ip_dsdk_adapt_bitselect145_b;
    wire [63:0] ip_dsdk_adapt_bitselect147_b;
    wire [31:0] ip_dsdk_adapt_bitselect149_b;
    wire [63:0] ip_dsdk_adapt_bitselect151_b;
    wire [0:0] ip_dsdk_adapt_bitselect153_b;
    wire [0:0] ip_dsdk_adapt_bitselect155_b;
    wire [0:0] ip_dsdk_adapt_bitselect157_b;
    wire [0:0] ip_dsdk_adapt_bitselect159_b;
    wire [0:0] ip_dsdk_adapt_bitselect161_b;
    wire [0:0] ip_dsdk_adapt_bitselect163_b;
    wire [0:0] ip_dsdk_adapt_bitselect165_b;
    wire [0:0] ip_dsdk_adapt_bitselect167_b;
    wire [0:0] ip_dsdk_adapt_bitselect169_b;
    wire [0:0] ip_dsdk_adapt_bitselect77_b;
    wire [0:0] ip_dsdk_adapt_bitselect79_b;
    wire [0:0] ip_dsdk_adapt_bitselect81_b;
    wire [31:0] ip_dsdk_adapt_bitselect83_b;
    wire [0:0] ip_dsdk_adapt_bitselect85_b;
    wire [0:0] ip_dsdk_adapt_bitselect87_b;
    wire [31:0] ip_dsdk_adapt_bitselect89_b;
    wire [0:0] ip_dsdk_adapt_bitselect91_b;
    wire [0:0] ip_dsdk_adapt_bitselect93_b;
    wire [0:0] ip_dsdk_adapt_bitselect95_b;
    wire [31:0] ip_dsdk_adapt_bitselect97_b;
    wire [0:0] ip_dsdk_adapt_bitselect99_b;


    // ip_dsdk_adapt_bitselect169(BITSELECT,144)
    assign ip_dsdk_adapt_bitselect169_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[1152:1152];

    // adapt_scalar_trunc170(ROUND,26)
    assign adapt_scalar_trunc170_in = ip_dsdk_adapt_bitselect169_b;
    assign adapt_scalar_trunc170_q = adapt_scalar_trunc170_in[0:0];

    // ip_dsdk_adapt_bitselect167(BITSELECT,143)
    assign ip_dsdk_adapt_bitselect167_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[1144:1144];

    // adapt_scalar_trunc168(ROUND,25)
    assign adapt_scalar_trunc168_in = ip_dsdk_adapt_bitselect167_b;
    assign adapt_scalar_trunc168_q = adapt_scalar_trunc168_in[0:0];

    // ip_dsdk_adapt_bitselect165(BITSELECT,142)
    assign ip_dsdk_adapt_bitselect165_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[1136:1136];

    // adapt_scalar_trunc166(ROUND,24)
    assign adapt_scalar_trunc166_in = ip_dsdk_adapt_bitselect165_b;
    assign adapt_scalar_trunc166_q = adapt_scalar_trunc166_in[0:0];

    // ip_dsdk_adapt_bitselect163(BITSELECT,141)
    assign ip_dsdk_adapt_bitselect163_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[1128:1128];

    // adapt_scalar_trunc164(ROUND,23)
    assign adapt_scalar_trunc164_in = ip_dsdk_adapt_bitselect163_b;
    assign adapt_scalar_trunc164_q = adapt_scalar_trunc164_in[0:0];

    // ip_dsdk_adapt_bitselect161(BITSELECT,140)
    assign ip_dsdk_adapt_bitselect161_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[1120:1120];

    // adapt_scalar_trunc162(ROUND,22)
    assign adapt_scalar_trunc162_in = ip_dsdk_adapt_bitselect161_b;
    assign adapt_scalar_trunc162_q = adapt_scalar_trunc162_in[0:0];

    // ip_dsdk_adapt_bitselect159(BITSELECT,139)
    assign ip_dsdk_adapt_bitselect159_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[1112:1112];

    // adapt_scalar_trunc160(ROUND,21)
    assign adapt_scalar_trunc160_in = ip_dsdk_adapt_bitselect159_b;
    assign adapt_scalar_trunc160_q = adapt_scalar_trunc160_in[0:0];

    // ip_dsdk_adapt_bitselect157(BITSELECT,138)
    assign ip_dsdk_adapt_bitselect157_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[1104:1104];

    // adapt_scalar_trunc158(ROUND,20)
    assign adapt_scalar_trunc158_in = ip_dsdk_adapt_bitselect157_b;
    assign adapt_scalar_trunc158_q = adapt_scalar_trunc158_in[0:0];

    // ip_dsdk_adapt_bitselect155(BITSELECT,137)
    assign ip_dsdk_adapt_bitselect155_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[1096:1096];

    // adapt_scalar_trunc156(ROUND,19)
    assign adapt_scalar_trunc156_in = ip_dsdk_adapt_bitselect155_b;
    assign adapt_scalar_trunc156_q = adapt_scalar_trunc156_in[0:0];

    // ip_dsdk_adapt_bitselect153(BITSELECT,136)
    assign ip_dsdk_adapt_bitselect153_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[1088:1088];

    // adapt_scalar_trunc154(ROUND,18)
    assign adapt_scalar_trunc154_in = ip_dsdk_adapt_bitselect153_b;
    assign adapt_scalar_trunc154_q = adapt_scalar_trunc154_in[0:0];

    // ip_dsdk_adapt_bitselect151(BITSELECT,135)
    assign ip_dsdk_adapt_bitselect151_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[1087:1024];

    // ip_dsdk_adapt_bitselect149(BITSELECT,134)
    assign ip_dsdk_adapt_bitselect149_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[991:960];

    // ip_dsdk_adapt_bitselect147(BITSELECT,133)
    assign ip_dsdk_adapt_bitselect147_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[959:896];

    // ip_dsdk_adapt_bitselect145(BITSELECT,132)
    assign ip_dsdk_adapt_bitselect145_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[895:832];

    // ip_dsdk_adapt_bitselect143(BITSELECT,131)
    assign ip_dsdk_adapt_bitselect143_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[831:800];

    // ip_dsdk_adapt_bitselect141(BITSELECT,130)
    assign ip_dsdk_adapt_bitselect141_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[799:768];

    // ip_dsdk_adapt_bitselect139(BITSELECT,129)
    assign ip_dsdk_adapt_bitselect139_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[736:736];

    // adapt_scalar_trunc140(ROUND,17)
    assign adapt_scalar_trunc140_in = ip_dsdk_adapt_bitselect139_b;
    assign adapt_scalar_trunc140_q = adapt_scalar_trunc140_in[0:0];

    // ip_dsdk_adapt_bitselect137(BITSELECT,128)
    assign ip_dsdk_adapt_bitselect137_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[735:704];

    // ip_dsdk_adapt_bitselect135(BITSELECT,127)
    assign ip_dsdk_adapt_bitselect135_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[688:688];

    // adapt_scalar_trunc136(ROUND,16)
    assign adapt_scalar_trunc136_in = ip_dsdk_adapt_bitselect135_b;
    assign adapt_scalar_trunc136_q = adapt_scalar_trunc136_in[0:0];

    // ip_dsdk_adapt_bitselect133(BITSELECT,126)
    assign ip_dsdk_adapt_bitselect133_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[680:680];

    // adapt_scalar_trunc134(ROUND,15)
    assign adapt_scalar_trunc134_in = ip_dsdk_adapt_bitselect133_b;
    assign adapt_scalar_trunc134_q = adapt_scalar_trunc134_in[0:0];

    // ip_dsdk_adapt_bitselect131(BITSELECT,125)
    assign ip_dsdk_adapt_bitselect131_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[672:672];

    // adapt_scalar_trunc132(ROUND,14)
    assign adapt_scalar_trunc132_in = ip_dsdk_adapt_bitselect131_b;
    assign adapt_scalar_trunc132_q = adapt_scalar_trunc132_in[0:0];

    // ip_dsdk_adapt_bitselect129(BITSELECT,124)
    assign ip_dsdk_adapt_bitselect129_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[671:640];

    // ip_dsdk_adapt_bitselect127(BITSELECT,123)
    assign ip_dsdk_adapt_bitselect127_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[624:624];

    // adapt_scalar_trunc128(ROUND,13)
    assign adapt_scalar_trunc128_in = ip_dsdk_adapt_bitselect127_b;
    assign adapt_scalar_trunc128_q = adapt_scalar_trunc128_in[0:0];

    // ip_dsdk_adapt_bitselect125(BITSELECT,122)
    assign ip_dsdk_adapt_bitselect125_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[616:616];

    // adapt_scalar_trunc126(ROUND,12)
    assign adapt_scalar_trunc126_in = ip_dsdk_adapt_bitselect125_b;
    assign adapt_scalar_trunc126_q = adapt_scalar_trunc126_in[0:0];

    // ip_dsdk_adapt_bitselect123(BITSELECT,121)
    assign ip_dsdk_adapt_bitselect123_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[608:608];

    // adapt_scalar_trunc124(ROUND,11)
    assign adapt_scalar_trunc124_in = ip_dsdk_adapt_bitselect123_b;
    assign adapt_scalar_trunc124_q = adapt_scalar_trunc124_in[0:0];

    // ip_dsdk_adapt_bitselect121(BITSELECT,120)
    assign ip_dsdk_adapt_bitselect121_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[607:576];

    // ip_dsdk_adapt_bitselect119(BITSELECT,119)
    assign ip_dsdk_adapt_bitselect119_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[552:552];

    // adapt_scalar_trunc120(ROUND,10)
    assign adapt_scalar_trunc120_in = ip_dsdk_adapt_bitselect119_b;
    assign adapt_scalar_trunc120_q = adapt_scalar_trunc120_in[0:0];

    // ip_dsdk_adapt_bitselect117(BITSELECT,118)
    assign ip_dsdk_adapt_bitselect117_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[544:544];

    // adapt_scalar_trunc118(ROUND,9)
    assign adapt_scalar_trunc118_in = ip_dsdk_adapt_bitselect117_b;
    assign adapt_scalar_trunc118_q = adapt_scalar_trunc118_in[0:0];

    // ip_dsdk_adapt_bitselect115(BITSELECT,117)
    assign ip_dsdk_adapt_bitselect115_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[536:536];

    // adapt_scalar_trunc116(ROUND,8)
    assign adapt_scalar_trunc116_in = ip_dsdk_adapt_bitselect115_b;
    assign adapt_scalar_trunc116_q = adapt_scalar_trunc116_in[0:0];

    // ip_dsdk_adapt_bitselect113(BITSELECT,116)
    assign ip_dsdk_adapt_bitselect113_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[528:528];

    // adapt_scalar_trunc114(ROUND,7)
    assign adapt_scalar_trunc114_in = ip_dsdk_adapt_bitselect113_b;
    assign adapt_scalar_trunc114_q = adapt_scalar_trunc114_in[0:0];

    // ip_dsdk_adapt_bitselect111(BITSELECT,115)
    assign ip_dsdk_adapt_bitselect111_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[520:520];

    // adapt_scalar_trunc112(ROUND,6)
    assign adapt_scalar_trunc112_in = ip_dsdk_adapt_bitselect111_b;
    assign adapt_scalar_trunc112_q = adapt_scalar_trunc112_in[0:0];

    // ip_dsdk_adapt_bitselect109(BITSELECT,114)
    assign ip_dsdk_adapt_bitselect109_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[512:512];

    // adapt_scalar_trunc110(ROUND,5)
    assign adapt_scalar_trunc110_in = ip_dsdk_adapt_bitselect109_b;
    assign adapt_scalar_trunc110_q = adapt_scalar_trunc110_in[0:0];

    // ip_dsdk_adapt_bitselect107(BITSELECT,113)
    assign ip_dsdk_adapt_bitselect107_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[511:448];

    // ip_dsdk_adapt_bitselect105(BITSELECT,112)
    assign ip_dsdk_adapt_bitselect105_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[415:384];

    // ip_dsdk_adapt_bitselect103(BITSELECT,111)
    assign ip_dsdk_adapt_bitselect103_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[383:320];

    // ip_dsdk_adapt_bitselect101(BITSELECT,110)
    assign ip_dsdk_adapt_bitselect101_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[319:256];

    // ip_dsdk_adapt_bitselect99(BITSELECT,156)
    assign ip_dsdk_adapt_bitselect99_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[192:192];

    // adapt_scalar_trunc100(ROUND,4)
    assign adapt_scalar_trunc100_in = ip_dsdk_adapt_bitselect99_b;
    assign adapt_scalar_trunc100_q = adapt_scalar_trunc100_in[0:0];

    // ip_dsdk_adapt_bitselect97(BITSELECT,155)
    assign ip_dsdk_adapt_bitselect97_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[191:160];

    // ip_dsdk_adapt_bitselect95(BITSELECT,154)
    assign ip_dsdk_adapt_bitselect95_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[144:144];

    // adapt_scalar_trunc96(ROUND,34)
    assign adapt_scalar_trunc96_in = ip_dsdk_adapt_bitselect95_b;
    assign adapt_scalar_trunc96_q = adapt_scalar_trunc96_in[0:0];

    // ip_dsdk_adapt_bitselect93(BITSELECT,153)
    assign ip_dsdk_adapt_bitselect93_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[136:136];

    // adapt_scalar_trunc94(ROUND,33)
    assign adapt_scalar_trunc94_in = ip_dsdk_adapt_bitselect93_b;
    assign adapt_scalar_trunc94_q = adapt_scalar_trunc94_in[0:0];

    // ip_dsdk_adapt_bitselect91(BITSELECT,152)
    assign ip_dsdk_adapt_bitselect91_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[128:128];

    // adapt_scalar_trunc92(ROUND,32)
    assign adapt_scalar_trunc92_in = ip_dsdk_adapt_bitselect91_b;
    assign adapt_scalar_trunc92_q = adapt_scalar_trunc92_in[0:0];

    // ip_dsdk_adapt_bitselect89(BITSELECT,151)
    assign ip_dsdk_adapt_bitselect89_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[127:96];

    // ip_dsdk_adapt_bitselect87(BITSELECT,150)
    assign ip_dsdk_adapt_bitselect87_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[72:72];

    // adapt_scalar_trunc88(ROUND,31)
    assign adapt_scalar_trunc88_in = ip_dsdk_adapt_bitselect87_b;
    assign adapt_scalar_trunc88_q = adapt_scalar_trunc88_in[0:0];

    // ip_dsdk_adapt_bitselect85(BITSELECT,149)
    assign ip_dsdk_adapt_bitselect85_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[64:64];

    // adapt_scalar_trunc86(ROUND,30)
    assign adapt_scalar_trunc86_in = ip_dsdk_adapt_bitselect85_b;
    assign adapt_scalar_trunc86_q = adapt_scalar_trunc86_in[0:0];

    // ip_dsdk_adapt_bitselect83(BITSELECT,148)
    assign ip_dsdk_adapt_bitselect83_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[63:32];

    // ip_dsdk_adapt_bitselect81(BITSELECT,147)
    assign ip_dsdk_adapt_bitselect81_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[16:16];

    // adapt_scalar_trunc82(ROUND,29)
    assign adapt_scalar_trunc82_in = ip_dsdk_adapt_bitselect81_b;
    assign adapt_scalar_trunc82_q = adapt_scalar_trunc82_in[0:0];

    // ip_dsdk_adapt_bitselect79(BITSELECT,146)
    assign ip_dsdk_adapt_bitselect79_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[8:8];

    // adapt_scalar_trunc80(ROUND,28)
    assign adapt_scalar_trunc80_in = ip_dsdk_adapt_bitselect79_b;
    assign adapt_scalar_trunc80_q = adapt_scalar_trunc80_in[0:0];

    // ip_dsdk_adapt_bitselect77(BITSELECT,145)
    assign ip_dsdk_adapt_bitselect77_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data[0:0];

    // adapt_scalar_trunc78(ROUND,27)
    assign adapt_scalar_trunc78_in = ip_dsdk_adapt_bitselect77_b;
    assign adapt_scalar_trunc78_q = adapt_scalar_trunc78_in[0:0];

    // c_i7_011(CONSTANT,42)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension73(BITJOIN,108)
    assign element_extension73_q = {c_i7_011_q, in_i_data_46_tpl};

    // element_extension71(BITJOIN,107)
    assign element_extension71_q = {c_i7_011_q, in_i_data_45_tpl};

    // element_extension69(BITJOIN,105)
    assign element_extension69_q = {c_i7_011_q, in_i_data_44_tpl};

    // element_extension67(BITJOIN,104)
    assign element_extension67_q = {c_i7_011_q, in_i_data_43_tpl};

    // element_extension65(BITJOIN,103)
    assign element_extension65_q = {c_i7_011_q, in_i_data_42_tpl};

    // element_extension63(BITJOIN,102)
    assign element_extension63_q = {c_i7_011_q, in_i_data_41_tpl};

    // element_extension61(BITJOIN,101)
    assign element_extension61_q = {c_i7_011_q, in_i_data_40_tpl};

    // element_extension59(BITJOIN,100)
    assign element_extension59_q = {c_i7_011_q, in_i_data_39_tpl};

    // element_extension57(BITJOIN,99)
    assign element_extension57_q = {c_i7_011_q, in_i_data_38_tpl};

    // c_i24_055(CONSTANT,37)
    assign c_i24_055_q = $unsigned(24'b000000000000000000000000);

    // element_extension53(BITJOIN,98)
    assign element_extension53_q = {c_i7_011_q, in_i_data_31_tpl};

    // element_extension50(BITJOIN,97)
    assign element_extension50_q = {c_i7_011_q, in_i_data_29_tpl};

    // element_extension48(BITJOIN,95)
    assign element_extension48_q = {c_i7_011_q, in_i_data_28_tpl};

    // element_extension46(BITJOIN,94)
    assign element_extension46_q = {c_i7_011_q, in_i_data_27_tpl};

    // element_extension43(BITJOIN,93)
    assign element_extension43_q = {c_i7_011_q, in_i_data_25_tpl};

    // element_extension41(BITJOIN,92)
    assign element_extension41_q = {c_i7_011_q, in_i_data_24_tpl};

    // element_extension39(BITJOIN,91)
    assign element_extension39_q = {c_i7_011_q, in_i_data_23_tpl};

    // element_extension36(BITJOIN,90)
    assign element_extension36_q = {c_i7_011_q, in_i_data_21_tpl};

    // element_extension34(BITJOIN,89)
    assign element_extension34_q = {c_i7_011_q, in_i_data_20_tpl};

    // element_extension32(BITJOIN,88)
    assign element_extension32_q = {c_i7_011_q, in_i_data_19_tpl};

    // element_extension30(BITJOIN,87)
    assign element_extension30_q = {c_i7_011_q, in_i_data_18_tpl};

    // element_extension28(BITJOIN,85)
    assign element_extension28_q = {c_i7_011_q, in_i_data_17_tpl};

    // element_extension26(BITJOIN,84)
    assign element_extension26_q = {c_i7_011_q, in_i_data_16_tpl};

    // c_i32_025(CONSTANT,38)
    assign c_i32_025_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i56_024(CONSTANT,40)
    assign c_i56_024_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // element_extension22(BITJOIN,83)
    assign element_extension22_q = {c_i7_011_q, in_i_data_11_tpl};

    // element_extension19(BITJOIN,82)
    assign element_extension19_q = {c_i7_011_q, in_i_data_9_tpl};

    // element_extension17(BITJOIN,81)
    assign element_extension17_q = {c_i7_011_q, in_i_data_8_tpl};

    // element_extension15(BITJOIN,80)
    assign element_extension15_q = {c_i7_011_q, in_i_data_7_tpl};

    // c_i16_014(CONSTANT,35)
    assign c_i16_014_q = $unsigned(16'b0000000000000000);

    // element_extension12(BITJOIN,79)
    assign element_extension12_q = {c_i7_011_q, in_i_data_5_tpl};

    // element_extension10(BITJOIN,78)
    assign element_extension10_q = {c_i7_011_q, in_i_data_4_tpl};

    // c_i8_021(CONSTANT,73)
    assign c_i8_021_q = $unsigned(8'b00000000);

    // element_extension7(BITJOIN,106)
    assign element_extension7_q = {c_i7_011_q, in_i_data_2_tpl};

    // element_extension5(BITJOIN,96)
    assign element_extension5_q = {c_i7_011_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,86)
    assign element_extension3_q = {c_i7_011_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,77)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i56_024_q, element_extension73_q, element_extension71_q, element_extension69_q, element_extension67_q, element_extension65_q, element_extension63_q, element_extension61_q, element_extension59_q, element_extension57_q, in_i_data_37_tpl, c_i32_025_q, in_i_data_36_tpl, in_i_data_35_tpl, in_i_data_34_tpl, in_i_data_33_tpl, in_i_data_32_tpl, c_i24_055_q, element_extension53_q, in_i_data_30_tpl, c_i8_021_q, element_extension50_q, element_extension48_q, element_extension46_q, in_i_data_26_tpl, c_i8_021_q, element_extension43_q, element_extension41_q, element_extension39_q, in_i_data_22_tpl, c_i16_014_q, element_extension36_q, element_extension34_q, element_extension32_q, element_extension30_q, element_extension28_q, element_extension26_q, in_i_data_15_tpl, c_i32_025_q, in_i_data_14_tpl, in_i_data_13_tpl, in_i_data_12_tpl, c_i56_024_q, element_extension22_q, in_i_data_10_tpl, c_i8_021_q, element_extension19_q, element_extension17_q, element_extension15_q, in_i_data_6_tpl, c_i16_014_q, element_extension12_q, element_extension10_q, in_i_data_3_tpl, c_i8_021_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20(EXTIFACE,109)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(1216)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@20000000
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc78_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc80_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc82_q;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect83_b;
    assign out_o_data_4_tpl = adapt_scalar_trunc86_q;
    assign out_o_data_5_tpl = adapt_scalar_trunc88_q;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect89_b;
    assign out_o_data_7_tpl = adapt_scalar_trunc92_q;
    assign out_o_data_8_tpl = adapt_scalar_trunc94_q;
    assign out_o_data_9_tpl = adapt_scalar_trunc96_q;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect97_b;
    assign out_o_data_11_tpl = adapt_scalar_trunc100_q;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect101_b;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect103_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect105_b;
    assign out_o_data_15_tpl = ip_dsdk_adapt_bitselect107_b;
    assign out_o_data_16_tpl = adapt_scalar_trunc110_q;
    assign out_o_data_17_tpl = adapt_scalar_trunc112_q;
    assign out_o_data_18_tpl = adapt_scalar_trunc114_q;
    assign out_o_data_19_tpl = adapt_scalar_trunc116_q;
    assign out_o_data_20_tpl = adapt_scalar_trunc118_q;
    assign out_o_data_21_tpl = adapt_scalar_trunc120_q;
    assign out_o_data_22_tpl = ip_dsdk_adapt_bitselect121_b;
    assign out_o_data_23_tpl = adapt_scalar_trunc124_q;
    assign out_o_data_24_tpl = adapt_scalar_trunc126_q;
    assign out_o_data_25_tpl = adapt_scalar_trunc128_q;
    assign out_o_data_26_tpl = ip_dsdk_adapt_bitselect129_b;
    assign out_o_data_27_tpl = adapt_scalar_trunc132_q;
    assign out_o_data_28_tpl = adapt_scalar_trunc134_q;
    assign out_o_data_29_tpl = adapt_scalar_trunc136_q;
    assign out_o_data_30_tpl = ip_dsdk_adapt_bitselect137_b;
    assign out_o_data_31_tpl = adapt_scalar_trunc140_q;
    assign out_o_data_32_tpl = ip_dsdk_adapt_bitselect141_b;
    assign out_o_data_33_tpl = ip_dsdk_adapt_bitselect143_b;
    assign out_o_data_34_tpl = ip_dsdk_adapt_bitselect145_b;
    assign out_o_data_35_tpl = ip_dsdk_adapt_bitselect147_b;
    assign out_o_data_36_tpl = ip_dsdk_adapt_bitselect149_b;
    assign out_o_data_37_tpl = ip_dsdk_adapt_bitselect151_b;
    assign out_o_data_38_tpl = adapt_scalar_trunc154_q;
    assign out_o_data_39_tpl = adapt_scalar_trunc156_q;
    assign out_o_data_40_tpl = adapt_scalar_trunc158_q;
    assign out_o_data_41_tpl = adapt_scalar_trunc160_q;
    assign out_o_data_42_tpl = adapt_scalar_trunc162_q;
    assign out_o_data_43_tpl = adapt_scalar_trunc164_q;
    assign out_o_data_44_tpl = adapt_scalar_trunc166_q;
    assign out_o_data_45_tpl = adapt_scalar_trunc168_q;
    assign out_o_data_46_tpl = adapt_scalar_trunc170_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_valid;

    // sync_out(GPOUT,174)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond10_preheader_conv2s_c0_exit529_conv20_o_stall;

endmodule
