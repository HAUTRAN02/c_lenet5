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

// SystemVerilog created from conv2_function
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_function (
    input wire [63:0] in_arg_bias,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_in0,
    input wire [63:0] in_arg_kernel,
    input wire [63:0] in_arg_out0,
    input wire [63:0] in_arg_return,
    input wire [255:0] in_iord_bl_call_conv2_i_fifodata,
    input wire [0:0] in_iord_bl_call_conv2_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_conv2_i_fifoready,
    input wire [63:0] in_memdep_conv2_avm_readdata,
    input wire [0:0] in_memdep_conv2_avm_readdatavalid,
    input wire [0:0] in_memdep_conv2_avm_waitrequest,
    input wire [0:0] in_memdep_conv2_avm_writeack,
    input wire [63:0] in_pn1_conv2_avm_readdata,
    input wire [0:0] in_pn1_conv2_avm_readdatavalid,
    input wire [0:0] in_pn1_conv2_avm_waitrequest,
    input wire [0:0] in_pn1_conv2_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [63:0] in_unnamed_conv28_conv2_avm_readdata,
    input wire [0:0] in_unnamed_conv28_conv2_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv28_conv2_avm_waitrequest,
    input wire [0:0] in_unnamed_conv28_conv2_avm_writeack,
    input wire [63:0] in_unnamed_conv29_conv2_avm_readdata,
    input wire [0:0] in_unnamed_conv29_conv2_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv29_conv2_avm_waitrequest,
    input wire [0:0] in_unnamed_conv29_conv2_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_conv2_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_conv2_o_fifoready,
    output wire [0:0] out_iowr_bl_return_conv2_o_fifodata,
    output wire [0:0] out_iowr_bl_return_conv2_o_fifovalid,
    output wire [63:0] out_memdep_conv2_avm_address,
    output wire [0:0] out_memdep_conv2_avm_burstcount,
    output wire [7:0] out_memdep_conv2_avm_byteenable,
    output wire [0:0] out_memdep_conv2_avm_enable,
    output wire [0:0] out_memdep_conv2_avm_read,
    output wire [0:0] out_memdep_conv2_avm_write,
    output wire [63:0] out_memdep_conv2_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [63:0] out_pn1_conv2_avm_address,
    output wire [0:0] out_pn1_conv2_avm_burstcount,
    output wire [7:0] out_pn1_conv2_avm_byteenable,
    output wire [0:0] out_pn1_conv2_avm_enable,
    output wire [0:0] out_pn1_conv2_avm_read,
    output wire [0:0] out_pn1_conv2_avm_write,
    output wire [63:0] out_pn1_conv2_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [63:0] out_unnamed_conv28_conv2_avm_address,
    output wire [0:0] out_unnamed_conv28_conv2_avm_burstcount,
    output wire [7:0] out_unnamed_conv28_conv2_avm_byteenable,
    output wire [0:0] out_unnamed_conv28_conv2_avm_enable,
    output wire [0:0] out_unnamed_conv28_conv2_avm_read,
    output wire [0:0] out_unnamed_conv28_conv2_avm_write,
    output wire [63:0] out_unnamed_conv28_conv2_avm_writedata,
    output wire [63:0] out_unnamed_conv29_conv2_avm_address,
    output wire [0:0] out_unnamed_conv29_conv2_avm_burstcount,
    output wire [7:0] out_unnamed_conv29_conv2_avm_byteenable,
    output wire [0:0] out_unnamed_conv29_conv2_avm_enable,
    output wire [0:0] out_unnamed_conv29_conv2_avm_read,
    output wire [0:0] out_unnamed_conv29_conv2_avm_write,
    output wire [63:0] out_unnamed_conv29_conv2_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_conv2_B10_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2_B10_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2_B10_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv2_B10_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2_B10_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2_B10_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2_B10_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2_B10_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2_B10_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2_B11_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2_B11_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2_B11_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv2_B11_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2_B11_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2_B11_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2_B11_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2_B12_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2_B12_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2_B12_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv2_B12_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2_B12_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2_B13_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2_B13_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2_B3_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2_B3_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2_B4_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2_B4_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2_B4_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2_B4_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2_B4_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2_B4_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2_B4_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2_B4_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_conv2_B4_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_conv2_B4_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [63:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [63:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [63:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_21_tpl;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_22_tpl;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_23_tpl;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_24_tpl;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_25_tpl;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_26_tpl;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_data_27_tpl;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [63:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [63:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [63:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_21_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_22_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_23_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_24_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_25_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_26_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_27_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_28_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_29_tpl;
    wire [31:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_30_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_31_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_32_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_33_tpl;
    wire [31:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_34_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_35_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_36_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_37_tpl;
    wire [31:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_38_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_39_tpl;
    wire [63:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_40_tpl;
    wire [63:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_41_tpl;
    wire [31:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_42_tpl;
    wire [63:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_43_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_44_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_45_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_data_46_tpl;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2_B6_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [63:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [63:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [63:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [0:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [0:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_21_tpl;
    wire [0:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_22_tpl;
    wire [0:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_23_tpl;
    wire [0:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_24_tpl;
    wire [0:0] bb_conv2_B7_sr_1_aunroll_x_out_o_data_25_tpl;
    wire [0:0] bb_conv2_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2_B7_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2_B8_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2_B8_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2_B8_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv2_B8_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2_B8_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2_B8_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2_B8_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2_B8_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2_B8_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2_B8_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv2_B8_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv2_B8_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2_B8_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2_B9_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv2_B9_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv2_B9_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv2_B9_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv2_B9_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv2_B9_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv2_B9_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv2_B9_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv2_B9_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv2_B9_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv2_B9_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv2_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_conv2_B10_out_exitcond2891_pop8614;
    wire [0:0] bb_conv2_B10_out_exitcond3171_pop825;
    wire [0:0] bb_conv2_B10_out_feedback_out_28;
    wire [0:0] bb_conv2_B10_out_feedback_valid_out_28;
    wire [0:0] bb_conv2_B10_out_memdep_33;
    wire [0:0] bb_conv2_B10_out_notcmp5195_pop8718;
    wire [0:0] bb_conv2_B10_out_notcmp5676_pop8310;
    wire [0:0] bb_conv2_B10_out_stall_in_0;
    wire [0:0] bb_conv2_B10_out_stall_out_0;
    wire [0:0] bb_conv2_B10_out_valid_out_0;
    wire [0:0] bb_conv2_B11_out_exitcond3171_pop824;
    wire [0:0] bb_conv2_B11_out_feedback_out_21;
    wire [0:0] bb_conv2_B11_out_feedback_valid_out_21;
    wire [0:0] bb_conv2_B11_out_memdep_32;
    wire [0:0] bb_conv2_B11_out_notcmp5676_pop839;
    wire [0:0] bb_conv2_B11_out_stall_in_0;
    wire [0:0] bb_conv2_B11_out_stall_out_0;
    wire [0:0] bb_conv2_B11_out_valid_out_0;
    wire [0:0] bb_conv2_B12_out_feedback_out_18;
    wire [0:0] bb_conv2_B12_out_feedback_valid_out_18;
    wire [0:0] bb_conv2_B12_out_stall_in_0;
    wire [0:0] bb_conv2_B12_out_stall_out_0;
    wire [0:0] bb_conv2_B12_out_valid_out_0;
    wire [0:0] bb_conv2_B13_out_feedback_out_1;
    wire [0:0] bb_conv2_B13_out_feedback_valid_out_1;
    wire [0:0] bb_conv2_B13_out_iowr_bl_return_conv2_o_fifodata;
    wire [0:0] bb_conv2_B13_out_iowr_bl_return_conv2_o_fifovalid;
    wire [0:0] bb_conv2_B13_out_stall_in_0;
    wire [0:0] bb_conv2_B13_out_stall_out_0;
    wire [0:0] bb_conv2_B13_out_valid_out_0;
    wire [0:0] bb_conv2_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_conv2_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_conv2_B1_start_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_conv2_B1_start_out_intel_reserved_ffwd_2_0;
    wire [63:0] bb_conv2_B1_start_out_intel_reserved_ffwd_3_0;
    wire [0:0] bb_conv2_B1_start_out_iord_bl_call_conv2_o_fifoalmost_full;
    wire [0:0] bb_conv2_B1_start_out_iord_bl_call_conv2_o_fifoready;
    wire [0:0] bb_conv2_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_conv2_B1_start_out_stall_out_0;
    wire [0:0] bb_conv2_B1_start_out_valid_in_0;
    wire [0:0] bb_conv2_B1_start_out_valid_in_1;
    wire [0:0] bb_conv2_B1_start_out_valid_out_0;
    wire [0:0] bb_conv2_B2_out_c0_exe1426;
    wire [0:0] bb_conv2_B2_out_c0_exe2;
    wire [31:0] bb_conv2_B2_out_c0_exe3;
    wire [0:0] bb_conv2_B2_out_exiting_stall_out;
    wire [0:0] bb_conv2_B2_out_exiting_valid_out;
    wire [0:0] bb_conv2_B2_out_feedback_stall_out_18;
    wire [0:0] bb_conv2_B2_out_memdep_phi6_pop18;
    wire [0:0] bb_conv2_B2_out_pipeline_valid_out;
    wire [0:0] bb_conv2_B2_out_stall_out_0;
    wire [0:0] bb_conv2_B2_out_stall_out_1;
    wire [0:0] bb_conv2_B2_out_valid_in_0;
    wire [0:0] bb_conv2_B2_out_valid_in_1;
    wire [0:0] bb_conv2_B2_out_valid_out_0;
    wire [0:0] bb_conv2_B3_out_c0_exe10;
    wire [31:0] bb_conv2_B3_out_c0_exe11;
    wire [0:0] bb_conv2_B3_out_c0_exe12;
    wire [0:0] bb_conv2_B3_out_c0_exe1435;
    wire [0:0] bb_conv2_B3_out_c0_exe2436;
    wire [31:0] bb_conv2_B3_out_c0_exe3437;
    wire [0:0] bb_conv2_B3_out_c0_exe4438;
    wire [0:0] bb_conv2_B3_out_c0_exe5;
    wire [31:0] bb_conv2_B3_out_c0_exe6;
    wire [0:0] bb_conv2_B3_out_c0_exe7;
    wire [0:0] bb_conv2_B3_out_c0_exe9;
    wire [0:0] bb_conv2_B3_out_exiting_stall_out;
    wire [0:0] bb_conv2_B3_out_exiting_valid_out;
    wire [0:0] bb_conv2_B3_out_feedback_stall_out_21;
    wire [0:0] bb_conv2_B3_out_memdep_phi5_pop21;
    wire [0:0] bb_conv2_B3_out_pipeline_valid_out;
    wire [0:0] bb_conv2_B3_out_stall_out_0;
    wire [0:0] bb_conv2_B3_out_stall_out_1;
    wire [0:0] bb_conv2_B3_out_valid_in_0;
    wire [0:0] bb_conv2_B3_out_valid_in_1;
    wire [0:0] bb_conv2_B3_out_valid_out_0;
    wire [0:0] bb_conv2_B4_out_c0_exe10472;
    wire [0:0] bb_conv2_B4_out_c0_exe11473;
    wire [0:0] bb_conv2_B4_out_c0_exe12474;
    wire [0:0] bb_conv2_B4_out_c0_exe13;
    wire [0:0] bb_conv2_B4_out_c0_exe14;
    wire [31:0] bb_conv2_B4_out_c0_exe1463;
    wire [0:0] bb_conv2_B4_out_c0_exe16;
    wire [0:0] bb_conv2_B4_out_c0_exe17;
    wire [31:0] bb_conv2_B4_out_c0_exe18;
    wire [0:0] bb_conv2_B4_out_c0_exe19;
    wire [0:0] bb_conv2_B4_out_c0_exe20;
    wire [0:0] bb_conv2_B4_out_c0_exe21;
    wire [31:0] bb_conv2_B4_out_c0_exe22;
    wire [0:0] bb_conv2_B4_out_c0_exe23;
    wire [0:0] bb_conv2_B4_out_c0_exe24;
    wire [31:0] bb_conv2_B4_out_c0_exe2464;
    wire [0:0] bb_conv2_B4_out_c0_exe25;
    wire [31:0] bb_conv2_B4_out_c0_exe26;
    wire [0:0] bb_conv2_B4_out_c0_exe27;
    wire [63:0] bb_conv2_B4_out_c0_exe3465;
    wire [63:0] bb_conv2_B4_out_c0_exe4466;
    wire [31:0] bb_conv2_B4_out_c0_exe5467;
    wire [63:0] bb_conv2_B4_out_c0_exe6468;
    wire [0:0] bb_conv2_B4_out_c0_exe7469;
    wire [0:0] bb_conv2_B4_out_c0_exe8470;
    wire [0:0] bb_conv2_B4_out_c0_exe9471;
    wire [0:0] bb_conv2_B4_out_exiting_stall_out;
    wire [0:0] bb_conv2_B4_out_exiting_valid_out;
    wire [0:0] bb_conv2_B4_out_feedback_stall_out_28;
    wire [0:0] bb_conv2_B4_out_memdep_phi4_pop28;
    wire [0:0] bb_conv2_B4_out_pipeline_valid_out;
    wire [0:0] bb_conv2_B4_out_stall_out_0;
    wire [0:0] bb_conv2_B4_out_stall_out_1;
    wire [0:0] bb_conv2_B4_out_valid_in_0;
    wire [0:0] bb_conv2_B4_out_valid_in_1;
    wire [0:0] bb_conv2_B4_out_valid_out_0;
    wire [31:0] bb_conv2_B5_out_c0_exe10539;
    wire [0:0] bb_conv2_B5_out_c0_exe11540;
    wire [63:0] bb_conv2_B5_out_c0_exe12541;
    wire [63:0] bb_conv2_B5_out_c0_exe13542;
    wire [31:0] bb_conv2_B5_out_c0_exe14543;
    wire [0:0] bb_conv2_B5_out_c0_exe1530;
    wire [63:0] bb_conv2_B5_out_c0_exe15544;
    wire [0:0] bb_conv2_B5_out_c0_exe16545;
    wire [0:0] bb_conv2_B5_out_c0_exe17546;
    wire [0:0] bb_conv2_B5_out_c0_exe18547;
    wire [0:0] bb_conv2_B5_out_c0_exe20549;
    wire [0:0] bb_conv2_B5_out_c0_exe21550;
    wire [31:0] bb_conv2_B5_out_c0_exe22551;
    wire [0:0] bb_conv2_B5_out_c0_exe23552;
    wire [0:0] bb_conv2_B5_out_c0_exe24553;
    wire [0:0] bb_conv2_B5_out_c0_exe2531;
    wire [0:0] bb_conv2_B5_out_c0_exe25554;
    wire [31:0] bb_conv2_B5_out_c0_exe26555;
    wire [0:0] bb_conv2_B5_out_c0_exe27556;
    wire [0:0] bb_conv2_B5_out_c0_exe28;
    wire [0:0] bb_conv2_B5_out_c0_exe29;
    wire [31:0] bb_conv2_B5_out_c0_exe30;
    wire [0:0] bb_conv2_B5_out_c0_exe31;
    wire [31:0] bb_conv2_B5_out_c0_exe32;
    wire [31:0] bb_conv2_B5_out_c0_exe33;
    wire [63:0] bb_conv2_B5_out_c0_exe34;
    wire [63:0] bb_conv2_B5_out_c0_exe35;
    wire [31:0] bb_conv2_B5_out_c0_exe3532;
    wire [31:0] bb_conv2_B5_out_c0_exe36;
    wire [63:0] bb_conv2_B5_out_c0_exe37;
    wire [0:0] bb_conv2_B5_out_c0_exe38;
    wire [0:0] bb_conv2_B5_out_c0_exe39;
    wire [0:0] bb_conv2_B5_out_c0_exe40;
    wire [0:0] bb_conv2_B5_out_c0_exe41;
    wire [0:0] bb_conv2_B5_out_c0_exe42;
    wire [0:0] bb_conv2_B5_out_c0_exe43;
    wire [0:0] bb_conv2_B5_out_c0_exe44;
    wire [0:0] bb_conv2_B5_out_c0_exe45;
    wire [0:0] bb_conv2_B5_out_c0_exe4533;
    wire [0:0] bb_conv2_B5_out_c0_exe46;
    wire [0:0] bb_conv2_B5_out_c0_exe5534;
    wire [31:0] bb_conv2_B5_out_c0_exe6535;
    wire [0:0] bb_conv2_B5_out_c0_exe7536;
    wire [0:0] bb_conv2_B5_out_c0_exe8537;
    wire [0:0] bb_conv2_B5_out_c0_exe9538;
    wire [0:0] bb_conv2_B5_out_exiting_stall_out;
    wire [0:0] bb_conv2_B5_out_exiting_valid_out;
    wire [0:0] bb_conv2_B5_out_feedback_stall_out_39;
    wire [0:0] bb_conv2_B5_out_memdep_phi3_pop39;
    wire [0:0] bb_conv2_B5_out_pipeline_valid_out;
    wire [0:0] bb_conv2_B5_out_stall_out_0;
    wire [0:0] bb_conv2_B5_out_stall_out_1;
    wire [0:0] bb_conv2_B5_out_valid_in_0;
    wire [0:0] bb_conv2_B5_out_valid_in_1;
    wire [0:0] bb_conv2_B5_out_valid_out_0;
    wire [31:0] bb_conv2_B6_out_c0_exe10670;
    wire [0:0] bb_conv2_B6_out_c0_exe11671;
    wire [0:0] bb_conv2_B6_out_c0_exe12672;
    wire [0:0] bb_conv2_B6_out_c0_exe13673;
    wire [0:0] bb_conv2_B6_out_c0_exe14674;
    wire [63:0] bb_conv2_B6_out_c0_exe15675;
    wire [31:0] bb_conv2_B6_out_c0_exe1661;
    wire [63:0] bb_conv2_B6_out_c0_exe16676;
    wire [31:0] bb_conv2_B6_out_c0_exe17677;
    wire [63:0] bb_conv2_B6_out_c0_exe18678;
    wire [0:0] bb_conv2_B6_out_c0_exe19679;
    wire [0:0] bb_conv2_B6_out_c0_exe20680;
    wire [0:0] bb_conv2_B6_out_c0_exe21681;
    wire [0:0] bb_conv2_B6_out_c0_exe22682;
    wire [0:0] bb_conv2_B6_out_c0_exe23683;
    wire [0:0] bb_conv2_B6_out_c0_exe24684;
    wire [31:0] bb_conv2_B6_out_c0_exe2662;
    wire [31:0] bb_conv2_B6_out_c0_exe3663;
    wire [31:0] bb_conv2_B6_out_c0_exe4664;
    wire [31:0] bb_conv2_B6_out_c0_exe5665;
    wire [0:0] bb_conv2_B6_out_c0_exe6666;
    wire [0:0] bb_conv2_B6_out_c0_exe7667;
    wire [0:0] bb_conv2_B6_out_c0_exe8668;
    wire [0:0] bb_conv2_B6_out_c0_exe9669;
    wire [0:0] bb_conv2_B6_out_exiting_stall_out;
    wire [0:0] bb_conv2_B6_out_exiting_valid_out;
    wire [0:0] bb_conv2_B6_out_feedback_stall_out_57;
    wire [0:0] bb_conv2_B6_out_memdep_phi2_pop57;
    wire [0:0] bb_conv2_B6_out_pipeline_valid_out;
    wire [0:0] bb_conv2_B6_out_stall_out_0;
    wire [0:0] bb_conv2_B6_out_stall_out_1;
    wire [0:0] bb_conv2_B6_out_valid_in_0;
    wire [0:0] bb_conv2_B6_out_valid_in_1;
    wire [0:0] bb_conv2_B6_out_valid_out_0;
    wire [0:0] bb_conv2_B7_out_exitcond19137_pop104;
    wire [0:0] bb_conv2_B7_out_exitcond22128_pop97;
    wire [0:0] bb_conv2_B7_out_exitcond25119_pop94;
    wire [0:0] bb_conv2_B7_out_exitcond2891_pop86;
    wire [0:0] bb_conv2_B7_out_exitcond3171_pop82;
    wire [0:0] bb_conv2_B7_out_exiting_stall_out;
    wire [0:0] bb_conv2_B7_out_exiting_valid_out;
    wire [0:0] bb_conv2_B7_out_lsu_memdep_o_active;
    wire [0:0] bb_conv2_B7_out_memdep;
    wire [63:0] bb_conv2_B7_out_memdep_conv2_avm_address;
    wire [0:0] bb_conv2_B7_out_memdep_conv2_avm_burstcount;
    wire [7:0] bb_conv2_B7_out_memdep_conv2_avm_byteenable;
    wire [0:0] bb_conv2_B7_out_memdep_conv2_avm_enable;
    wire [0:0] bb_conv2_B7_out_memdep_conv2_avm_read;
    wire [0:0] bb_conv2_B7_out_memdep_conv2_avm_write;
    wire [63:0] bb_conv2_B7_out_memdep_conv2_avm_writedata;
    wire [0:0] bb_conv2_B7_out_notcmp36138_pop105;
    wire [0:0] bb_conv2_B7_out_notcmp41130_pop98;
    wire [0:0] bb_conv2_B7_out_notcmp46122_pop95;
    wire [0:0] bb_conv2_B7_out_notcmp5195_pop87;
    wire [0:0] bb_conv2_B7_out_notcmp5676_pop83;
    wire [0:0] bb_conv2_B7_out_pipeline_valid_out;
    wire [63:0] bb_conv2_B7_out_pn1_conv2_avm_address;
    wire [0:0] bb_conv2_B7_out_pn1_conv2_avm_burstcount;
    wire [7:0] bb_conv2_B7_out_pn1_conv2_avm_byteenable;
    wire [0:0] bb_conv2_B7_out_pn1_conv2_avm_enable;
    wire [0:0] bb_conv2_B7_out_pn1_conv2_avm_read;
    wire [0:0] bb_conv2_B7_out_pn1_conv2_avm_write;
    wire [63:0] bb_conv2_B7_out_pn1_conv2_avm_writedata;
    wire [0:0] bb_conv2_B7_out_stall_in_0;
    wire [0:0] bb_conv2_B7_out_stall_out_0;
    wire [0:0] bb_conv2_B7_out_stall_out_1;
    wire [63:0] bb_conv2_B7_out_unnamed_conv28_conv2_avm_address;
    wire [0:0] bb_conv2_B7_out_unnamed_conv28_conv2_avm_burstcount;
    wire [7:0] bb_conv2_B7_out_unnamed_conv28_conv2_avm_byteenable;
    wire [0:0] bb_conv2_B7_out_unnamed_conv28_conv2_avm_enable;
    wire [0:0] bb_conv2_B7_out_unnamed_conv28_conv2_avm_read;
    wire [0:0] bb_conv2_B7_out_unnamed_conv28_conv2_avm_write;
    wire [63:0] bb_conv2_B7_out_unnamed_conv28_conv2_avm_writedata;
    wire [63:0] bb_conv2_B7_out_unnamed_conv29_conv2_avm_address;
    wire [0:0] bb_conv2_B7_out_unnamed_conv29_conv2_avm_burstcount;
    wire [7:0] bb_conv2_B7_out_unnamed_conv29_conv2_avm_byteenable;
    wire [0:0] bb_conv2_B7_out_unnamed_conv29_conv2_avm_enable;
    wire [0:0] bb_conv2_B7_out_unnamed_conv29_conv2_avm_read;
    wire [0:0] bb_conv2_B7_out_unnamed_conv29_conv2_avm_write;
    wire [63:0] bb_conv2_B7_out_unnamed_conv29_conv2_avm_writedata;
    wire [0:0] bb_conv2_B7_out_valid_in_0;
    wire [0:0] bb_conv2_B7_out_valid_in_1;
    wire [0:0] bb_conv2_B7_out_valid_out_0;
    wire [0:0] bb_conv2_B8_out_exitcond22128_pop9728;
    wire [0:0] bb_conv2_B8_out_exitcond25119_pop9423;
    wire [0:0] bb_conv2_B8_out_exitcond2891_pop8616;
    wire [0:0] bb_conv2_B8_out_exitcond3171_pop827;
    wire [0:0] bb_conv2_B8_out_feedback_out_57;
    wire [0:0] bb_conv2_B8_out_feedback_valid_out_57;
    wire [0:0] bb_conv2_B8_out_memdep_35;
    wire [0:0] bb_conv2_B8_out_notcmp41130_pop9830;
    wire [0:0] bb_conv2_B8_out_notcmp46122_pop9526;
    wire [0:0] bb_conv2_B8_out_notcmp5195_pop8720;
    wire [0:0] bb_conv2_B8_out_notcmp5676_pop8312;
    wire [0:0] bb_conv2_B8_out_stall_in_0;
    wire [0:0] bb_conv2_B8_out_stall_out_0;
    wire [0:0] bb_conv2_B8_out_valid_out_0;
    wire [0:0] bb_conv2_B9_out_exitcond25119_pop9422;
    wire [0:0] bb_conv2_B9_out_exitcond2891_pop8615;
    wire [0:0] bb_conv2_B9_out_exitcond3171_pop826;
    wire [0:0] bb_conv2_B9_out_feedback_out_39;
    wire [0:0] bb_conv2_B9_out_feedback_valid_out_39;
    wire [0:0] bb_conv2_B9_out_memdep_34;
    wire [0:0] bb_conv2_B9_out_notcmp46122_pop9525;
    wire [0:0] bb_conv2_B9_out_notcmp5195_pop8719;
    wire [0:0] bb_conv2_B9_out_notcmp5676_pop8311;
    wire [0:0] bb_conv2_B9_out_stall_in_0;
    wire [0:0] bb_conv2_B9_out_stall_out_0;
    wire [0:0] bb_conv2_B9_out_valid_out_0;
    wire [63:0] c_float_addrspace_1024_undef142_q;
    wire [1:0] c_i2_0295_q;
    wire [31:0] c_i32_undef116_q;
    wire [0:0] conv2_B1_start_x_i_capture;
    wire conv2_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] conv2_B1_start_x_i_clear;
    wire conv2_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] conv2_B1_start_x_i_enable;
    wire conv2_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] conv2_B1_start_x_i_shift;
    wire conv2_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] conv2_B1_start_x_i_stall_pred;
    wire conv2_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2_B1_start_x_i_stall_succ;
    wire conv2_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2_B1_start_x_i_valid_loop;
    wire conv2_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2_B1_start_x_i_valid_pred;
    wire conv2_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2_B1_start_x_i_valid_succ;
    wire conv2_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv2_B2_x_i_capture;
    wire conv2_B2_x_i_capture_bitsignaltemp;
    wire [0:0] conv2_B2_x_i_clear;
    wire conv2_B2_x_i_clear_bitsignaltemp;
    wire [0:0] conv2_B2_x_i_enable;
    wire conv2_B2_x_i_enable_bitsignaltemp;
    wire [0:0] conv2_B2_x_i_shift;
    wire conv2_B2_x_i_shift_bitsignaltemp;
    wire [0:0] conv2_B2_x_i_stall_pred;
    wire conv2_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2_B2_x_i_stall_succ;
    wire conv2_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2_B2_x_i_valid_loop;
    wire conv2_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2_B2_x_i_valid_pred;
    wire conv2_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2_B2_x_i_valid_succ;
    wire conv2_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv2_B3_x_i_capture;
    wire conv2_B3_x_i_capture_bitsignaltemp;
    wire [0:0] conv2_B3_x_i_clear;
    wire conv2_B3_x_i_clear_bitsignaltemp;
    wire [0:0] conv2_B3_x_i_enable;
    wire conv2_B3_x_i_enable_bitsignaltemp;
    wire [0:0] conv2_B3_x_i_shift;
    wire conv2_B3_x_i_shift_bitsignaltemp;
    wire [0:0] conv2_B3_x_i_stall_pred;
    wire conv2_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2_B3_x_i_stall_succ;
    wire conv2_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2_B3_x_i_valid_loop;
    wire conv2_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2_B3_x_i_valid_pred;
    wire conv2_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2_B3_x_i_valid_succ;
    wire conv2_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv2_B4_x_i_capture;
    wire conv2_B4_x_i_capture_bitsignaltemp;
    wire [0:0] conv2_B4_x_i_clear;
    wire conv2_B4_x_i_clear_bitsignaltemp;
    wire [0:0] conv2_B4_x_i_enable;
    wire conv2_B4_x_i_enable_bitsignaltemp;
    wire [0:0] conv2_B4_x_i_shift;
    wire conv2_B4_x_i_shift_bitsignaltemp;
    wire [0:0] conv2_B4_x_i_stall_pred;
    wire conv2_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2_B4_x_i_stall_succ;
    wire conv2_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2_B4_x_i_valid_loop;
    wire conv2_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2_B4_x_i_valid_pred;
    wire conv2_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2_B4_x_i_valid_succ;
    wire conv2_B4_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv2_B5_x_i_capture;
    wire conv2_B5_x_i_capture_bitsignaltemp;
    wire [0:0] conv2_B5_x_i_clear;
    wire conv2_B5_x_i_clear_bitsignaltemp;
    wire [0:0] conv2_B5_x_i_enable;
    wire conv2_B5_x_i_enable_bitsignaltemp;
    wire [0:0] conv2_B5_x_i_shift;
    wire conv2_B5_x_i_shift_bitsignaltemp;
    wire [0:0] conv2_B5_x_i_stall_pred;
    wire conv2_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2_B5_x_i_stall_succ;
    wire conv2_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2_B5_x_i_valid_loop;
    wire conv2_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2_B5_x_i_valid_pred;
    wire conv2_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2_B5_x_i_valid_succ;
    wire conv2_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv2_B6_x_i_capture;
    wire conv2_B6_x_i_capture_bitsignaltemp;
    wire [0:0] conv2_B6_x_i_clear;
    wire conv2_B6_x_i_clear_bitsignaltemp;
    wire [0:0] conv2_B6_x_i_enable;
    wire conv2_B6_x_i_enable_bitsignaltemp;
    wire [0:0] conv2_B6_x_i_shift;
    wire conv2_B6_x_i_shift_bitsignaltemp;
    wire [0:0] conv2_B6_x_i_stall_pred;
    wire conv2_B6_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2_B6_x_i_stall_succ;
    wire conv2_B6_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2_B6_x_i_valid_loop;
    wire conv2_B6_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2_B6_x_i_valid_pred;
    wire conv2_B6_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2_B6_x_i_valid_succ;
    wire conv2_B6_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv2_B7_x_i_capture;
    wire conv2_B7_x_i_capture_bitsignaltemp;
    wire [0:0] conv2_B7_x_i_clear;
    wire conv2_B7_x_i_clear_bitsignaltemp;
    wire [0:0] conv2_B7_x_i_enable;
    wire conv2_B7_x_i_enable_bitsignaltemp;
    wire [0:0] conv2_B7_x_i_shift;
    wire conv2_B7_x_i_shift_bitsignaltemp;
    wire [0:0] conv2_B7_x_i_stall_pred;
    wire conv2_B7_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv2_B7_x_i_stall_succ;
    wire conv2_B7_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv2_B7_x_i_valid_loop;
    wire conv2_B7_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv2_B7_x_i_valid_pred;
    wire conv2_B7_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv2_B7_x_i_valid_succ;
    wire conv2_B7_x_i_valid_succ_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_conv22_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_conv22_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_conv22_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_conv22_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_conv22_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_conv22_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_conv22_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_conv22_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_conv22_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_conv22_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_conv22_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_conv22_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_conv22_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_conv22_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_conv22_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_conv22_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going58_conv22_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going58_conv22_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going58_conv22_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going58_conv22_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going62_conv21_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going62_conv21_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going62_conv21_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going62_conv21_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv23_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv23_sr_out_o_valid;
    wire [0:0] loop_limiter_conv20_out_o_stall;
    wire [0:0] loop_limiter_conv20_out_o_valid;
    wire [0:0] loop_limiter_conv21_out_o_stall;
    wire [0:0] loop_limiter_conv21_out_o_valid;
    wire [0:0] loop_limiter_conv22_out_o_stall;
    wire [0:0] loop_limiter_conv22_out_o_valid;
    wire [0:0] loop_limiter_conv23_out_o_stall;
    wire [0:0] loop_limiter_conv23_out_o_valid;
    wire [0:0] loop_limiter_conv24_out_o_stall;
    wire [0:0] loop_limiter_conv24_out_o_valid;
    wire [0:0] loop_limiter_conv25_out_o_stall;
    wire [0:0] loop_limiter_conv25_out_o_valid;


    // c_i2_0295(CONSTANT,153)
    assign c_i2_0295_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going62_conv21_valid_fifo(BLACKBOX,209)
    conv2_i_llvm_fpga_pipeline_keep_going62_1_valid_fifo thei_llvm_fpga_pipeline_keep_going62_conv21_valid_fifo (
        .in_data_in(c_i2_0295_q),
        .in_stall_in(bb_conv2_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going62_conv21_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going62_conv21_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going62_conv21_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going58_conv22_valid_fifo(BLACKBOX,207)
    conv2_i_llvm_fpga_pipeline_keep_going58_2_valid_fifo thei_llvm_fpga_pipeline_keep_going58_conv22_valid_fifo (
        .in_data_in(c_i2_0295_q),
        .in_stall_in(bb_conv2_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going58_conv22_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going58_conv22_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going58_conv22_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going53_conv22_valid_fifo(BLACKBOX,205)
    conv2_i_llvm_fpga_pipeline_keep_going53_2_valid_fifo thei_llvm_fpga_pipeline_keep_going53_conv22_valid_fifo (
        .in_data_in(c_i2_0295_q),
        .in_stall_in(bb_conv2_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going53_conv22_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going53_conv22_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going53_conv22_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going48_conv22_valid_fifo(BLACKBOX,203)
    conv2_i_llvm_fpga_pipeline_keep_going48_2_valid_fifo thei_llvm_fpga_pipeline_keep_going48_conv22_valid_fifo (
        .in_data_in(c_i2_0295_q),
        .in_stall_in(bb_conv2_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going48_conv22_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going48_conv22_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going48_conv22_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going43_conv22_valid_fifo(BLACKBOX,201)
    conv2_i_llvm_fpga_pipeline_keep_going43_2_valid_fifo thei_llvm_fpga_pipeline_keep_going43_conv22_valid_fifo (
        .in_data_in(c_i2_0295_q),
        .in_stall_in(bb_conv2_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going43_conv22_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going43_conv22_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going43_conv22_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going38_conv22_valid_fifo(BLACKBOX,199)
    conv2_i_llvm_fpga_pipeline_keep_going38_2_valid_fifo thei_llvm_fpga_pipeline_keep_going38_conv22_valid_fifo (
        .in_data_in(c_i2_0295_q),
        .in_stall_in(bb_conv2_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going38_conv22_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going38_conv22_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going38_conv22_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B8_sr_0_aunroll_x(BLACKBOX,12)
    conv2_bb_B8_sr_0 thebb_conv2_B8_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_conv2_B7_out_exitcond19137_pop104),
        .in_i_data_1_tpl(bb_conv2_B7_out_notcmp36138_pop105),
        .in_i_data_2_tpl(bb_conv2_B7_out_exitcond3171_pop82),
        .in_i_data_3_tpl(bb_conv2_B7_out_notcmp5676_pop83),
        .in_i_data_4_tpl(bb_conv2_B7_out_exitcond2891_pop86),
        .in_i_data_5_tpl(bb_conv2_B7_out_notcmp5195_pop87),
        .in_i_data_6_tpl(bb_conv2_B7_out_exitcond25119_pop94),
        .in_i_data_7_tpl(bb_conv2_B7_out_notcmp46122_pop95),
        .in_i_data_8_tpl(bb_conv2_B7_out_exitcond22128_pop97),
        .in_i_data_9_tpl(bb_conv2_B7_out_notcmp41130_pop98),
        .in_i_data_10_tpl(bb_conv2_B7_out_memdep),
        .in_i_stall(bb_conv2_B8_out_stall_out_0),
        .in_i_valid(bb_conv2_B7_out_valid_out_0),
        .out_o_data_0_tpl(bb_conv2_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2_B8_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2_B8_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2_B8_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2_B8_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2_B8_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2_B8_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2_B8_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2_B8_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_stall(bb_conv2_B8_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2_B8_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_conv23_sr(BLACKBOX,210)
    conv2_i_llvm_fpga_pipeline_keep_going_3_sr thei_llvm_fpga_pipeline_keep_going_conv23_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_conv2_B7_out_stall_out_0),
        .in_i_valid(bb_conv2_B7_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_conv23_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_conv23_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B7(BLACKBOX,25)
    conv2_bb_B7 thebb_conv2_B7 (
        .in_add367_0(c_i32_undef116_q),
        .in_add367_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_arrayidx34109_pop67379_0(c_float_addrspace_1024_undef142_q),
        .in_arrayidx34109_pop67379_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_arrayidx64115_pop69381_0(c_float_addrspace_1024_undef142_q),
        .in_arrayidx64115_pop69381_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_channel_039_pop1780_pop60373_0(c_i32_undef116_q),
        .in_channel_039_pop1780_pop60373_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_col_037_pop27112_pop68380_0(c_i32_undef116_q),
        .in_col_037_pop27112_pop68380_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_exitcond19368_0(GND_q),
        .in_exitcond19368_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_exitcond22127_pop73385_0(GND_q),
        .in_exitcond22127_pop73385_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_23_tpl),
        .in_exitcond25118_pop70382_0(GND_q),
        .in_exitcond25118_pop70382_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_exitcond2890_pop62375_0(GND_q),
        .in_exitcond2890_pop62375_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_exitcond3170_pop58371_0(GND_q),
        .in_exitcond3170_pop58371_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_035_pop56364_0(c_i32_undef116_q),
        .in_i_035_pop56364_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_idxprom25106_pop66378_0(c_float_addrspace_1024_undef142_q),
        .in_idxprom25106_pop66378_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_intel_reserved_ffwd_0_0(bb_conv2_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_conv2_B1_start_out_intel_reserved_ffwd_1_0),
        .in_k_036_pop38131_pop75365_0(c_i32_undef116_q),
        .in_k_036_pop38131_pop75365_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_conv2_avm_readdata(in_memdep_conv2_avm_readdata),
        .in_memdep_conv2_avm_readdatavalid(in_memdep_conv2_avm_readdatavalid),
        .in_memdep_conv2_avm_waitrequest(in_memdep_conv2_avm_waitrequest),
        .in_memdep_conv2_avm_writeack(in_memdep_conv2_avm_writeack),
        .in_memdep_phi2_pop57370_0(GND_q),
        .in_memdep_phi2_pop57370_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_memdep_phi3_pop39133_pop76387_0(GND_q),
        .in_memdep_phi3_pop39133_pop76387_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_25_tpl),
        .in_memdep_phi4_pop28124_pop72384_0(GND_q),
        .in_memdep_phi4_pop28124_pop72384_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_22_tpl),
        .in_memdep_phi5_pop21102_pop65377_0(GND_q),
        .in_memdep_phi5_pop21102_pop65377_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_memdep_phi6_pop1885_pop61374_0(GND_q),
        .in_memdep_phi6_pop1885_pop61374_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_notcmp36369_0(GND_q),
        .in_notcmp36369_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_notcmp41129_pop74386_0(GND_q),
        .in_notcmp41129_pop74386_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_24_tpl),
        .in_notcmp46121_pop71383_0(GND_q),
        .in_notcmp46121_pop71383_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_notcmp5194_pop63376_0(GND_q),
        .in_notcmp5194_pop63376_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_notcmp5675_pop59372_0(GND_q),
        .in_notcmp5675_pop59372_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_conv23_sr_out_o_stall),
        .in_pn1_conv2_avm_readdata(in_pn1_conv2_avm_readdata),
        .in_pn1_conv2_avm_readdatavalid(in_pn1_conv2_avm_readdatavalid),
        .in_pn1_conv2_avm_waitrequest(in_pn1_conv2_avm_waitrequest),
        .in_pn1_conv2_avm_writeack(in_pn1_conv2_avm_writeack),
        .in_row_038_pop2098_pop64366_0(c_i32_undef116_q),
        .in_row_038_pop2098_pop64366_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_stall_in_0(bb_conv2_B8_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_conv27_0(c_i32_undef116_q),
        .in_unnamed_conv27_1(bb_conv2_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_unnamed_conv28_conv2_avm_readdata(in_unnamed_conv28_conv2_avm_readdata),
        .in_unnamed_conv28_conv2_avm_readdatavalid(in_unnamed_conv28_conv2_avm_readdatavalid),
        .in_unnamed_conv28_conv2_avm_waitrequest(in_unnamed_conv28_conv2_avm_waitrequest),
        .in_unnamed_conv28_conv2_avm_writeack(in_unnamed_conv28_conv2_avm_writeack),
        .in_unnamed_conv29_conv2_avm_readdata(in_unnamed_conv29_conv2_avm_readdata),
        .in_unnamed_conv29_conv2_avm_readdatavalid(in_unnamed_conv29_conv2_avm_readdatavalid),
        .in_unnamed_conv29_conv2_avm_waitrequest(in_unnamed_conv29_conv2_avm_waitrequest),
        .in_unnamed_conv29_conv2_avm_writeack(in_unnamed_conv29_conv2_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_conv23_sr_out_o_valid),
        .in_valid_in_1(bb_conv2_B7_sr_1_aunroll_x_out_o_valid),
        .out_exitcond19137_pop104(bb_conv2_B7_out_exitcond19137_pop104),
        .out_exitcond22128_pop97(bb_conv2_B7_out_exitcond22128_pop97),
        .out_exitcond25119_pop94(bb_conv2_B7_out_exitcond25119_pop94),
        .out_exitcond2891_pop86(bb_conv2_B7_out_exitcond2891_pop86),
        .out_exitcond3171_pop82(bb_conv2_B7_out_exitcond3171_pop82),
        .out_exiting_stall_out(bb_conv2_B7_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv2_B7_out_exiting_valid_out),
        .out_lsu_memdep_o_active(bb_conv2_B7_out_lsu_memdep_o_active),
        .out_memdep(bb_conv2_B7_out_memdep),
        .out_memdep_conv2_avm_address(bb_conv2_B7_out_memdep_conv2_avm_address),
        .out_memdep_conv2_avm_burstcount(bb_conv2_B7_out_memdep_conv2_avm_burstcount),
        .out_memdep_conv2_avm_byteenable(bb_conv2_B7_out_memdep_conv2_avm_byteenable),
        .out_memdep_conv2_avm_enable(bb_conv2_B7_out_memdep_conv2_avm_enable),
        .out_memdep_conv2_avm_read(bb_conv2_B7_out_memdep_conv2_avm_read),
        .out_memdep_conv2_avm_write(bb_conv2_B7_out_memdep_conv2_avm_write),
        .out_memdep_conv2_avm_writedata(bb_conv2_B7_out_memdep_conv2_avm_writedata),
        .out_notcmp36138_pop105(bb_conv2_B7_out_notcmp36138_pop105),
        .out_notcmp41130_pop98(bb_conv2_B7_out_notcmp41130_pop98),
        .out_notcmp46122_pop95(bb_conv2_B7_out_notcmp46122_pop95),
        .out_notcmp5195_pop87(bb_conv2_B7_out_notcmp5195_pop87),
        .out_notcmp5676_pop83(bb_conv2_B7_out_notcmp5676_pop83),
        .out_pipeline_valid_out(bb_conv2_B7_out_pipeline_valid_out),
        .out_pn1_conv2_avm_address(bb_conv2_B7_out_pn1_conv2_avm_address),
        .out_pn1_conv2_avm_burstcount(bb_conv2_B7_out_pn1_conv2_avm_burstcount),
        .out_pn1_conv2_avm_byteenable(bb_conv2_B7_out_pn1_conv2_avm_byteenable),
        .out_pn1_conv2_avm_enable(bb_conv2_B7_out_pn1_conv2_avm_enable),
        .out_pn1_conv2_avm_read(bb_conv2_B7_out_pn1_conv2_avm_read),
        .out_pn1_conv2_avm_write(bb_conv2_B7_out_pn1_conv2_avm_write),
        .out_pn1_conv2_avm_writedata(bb_conv2_B7_out_pn1_conv2_avm_writedata),
        .out_stall_in_0(bb_conv2_B7_out_stall_in_0),
        .out_stall_out_0(bb_conv2_B7_out_stall_out_0),
        .out_stall_out_1(bb_conv2_B7_out_stall_out_1),
        .out_unnamed_conv28_conv2_avm_address(bb_conv2_B7_out_unnamed_conv28_conv2_avm_address),
        .out_unnamed_conv28_conv2_avm_burstcount(bb_conv2_B7_out_unnamed_conv28_conv2_avm_burstcount),
        .out_unnamed_conv28_conv2_avm_byteenable(bb_conv2_B7_out_unnamed_conv28_conv2_avm_byteenable),
        .out_unnamed_conv28_conv2_avm_enable(bb_conv2_B7_out_unnamed_conv28_conv2_avm_enable),
        .out_unnamed_conv28_conv2_avm_read(bb_conv2_B7_out_unnamed_conv28_conv2_avm_read),
        .out_unnamed_conv28_conv2_avm_write(bb_conv2_B7_out_unnamed_conv28_conv2_avm_write),
        .out_unnamed_conv28_conv2_avm_writedata(bb_conv2_B7_out_unnamed_conv28_conv2_avm_writedata),
        .out_unnamed_conv29_conv2_avm_address(bb_conv2_B7_out_unnamed_conv29_conv2_avm_address),
        .out_unnamed_conv29_conv2_avm_burstcount(bb_conv2_B7_out_unnamed_conv29_conv2_avm_burstcount),
        .out_unnamed_conv29_conv2_avm_byteenable(bb_conv2_B7_out_unnamed_conv29_conv2_avm_byteenable),
        .out_unnamed_conv29_conv2_avm_enable(bb_conv2_B7_out_unnamed_conv29_conv2_avm_enable),
        .out_unnamed_conv29_conv2_avm_read(bb_conv2_B7_out_unnamed_conv29_conv2_avm_read),
        .out_unnamed_conv29_conv2_avm_write(bb_conv2_B7_out_unnamed_conv29_conv2_avm_write),
        .out_unnamed_conv29_conv2_avm_writedata(bb_conv2_B7_out_unnamed_conv29_conv2_avm_writedata),
        .out_valid_in_0(bb_conv2_B7_out_valid_in_0),
        .out_valid_in_1(bb_conv2_B7_out_valid_in_1),
        .out_valid_out_0(bb_conv2_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B7_sr_1_aunroll_x(BLACKBOX,11)
    conv2_bb_B7_sr_1 thebb_conv2_B7_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv2_B6_out_c0_exe1661),
        .in_i_data_2_tpl(bb_conv2_B6_out_c0_exe2662),
        .in_i_data_3_tpl(bb_conv2_B6_out_c0_exe3663),
        .in_i_data_4_tpl(bb_conv2_B6_out_c0_exe4664),
        .in_i_data_5_tpl(bb_conv2_B6_out_c0_exe5665),
        .in_i_data_6_tpl(bb_conv2_B6_out_c0_exe6666),
        .in_i_data_7_tpl(bb_conv2_B6_out_c0_exe7667),
        .in_i_data_8_tpl(bb_conv2_B6_out_memdep_phi2_pop57),
        .in_i_data_9_tpl(bb_conv2_B6_out_c0_exe8668),
        .in_i_data_10_tpl(bb_conv2_B6_out_c0_exe9669),
        .in_i_data_11_tpl(bb_conv2_B6_out_c0_exe10670),
        .in_i_data_12_tpl(bb_conv2_B6_out_c0_exe11671),
        .in_i_data_13_tpl(bb_conv2_B6_out_c0_exe12672),
        .in_i_data_14_tpl(bb_conv2_B6_out_c0_exe13673),
        .in_i_data_15_tpl(bb_conv2_B6_out_c0_exe14674),
        .in_i_data_16_tpl(bb_conv2_B6_out_c0_exe15675),
        .in_i_data_17_tpl(bb_conv2_B6_out_c0_exe16676),
        .in_i_data_18_tpl(bb_conv2_B6_out_c0_exe17677),
        .in_i_data_19_tpl(bb_conv2_B6_out_c0_exe18678),
        .in_i_data_20_tpl(bb_conv2_B6_out_c0_exe19679),
        .in_i_data_21_tpl(bb_conv2_B6_out_c0_exe20680),
        .in_i_data_22_tpl(bb_conv2_B6_out_c0_exe21681),
        .in_i_data_23_tpl(bb_conv2_B6_out_c0_exe22682),
        .in_i_data_24_tpl(bb_conv2_B6_out_c0_exe23683),
        .in_i_data_25_tpl(bb_conv2_B6_out_c0_exe24684),
        .in_i_stall(bb_conv2_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_conv25_out_o_valid),
        .out_o_data_0_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_23_tpl),
        .out_o_data_24_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_24_tpl),
        .out_o_data_25_tpl(bb_conv2_B7_sr_1_aunroll_x_out_o_data_25_tpl),
        .out_o_stall(bb_conv2_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2_B7_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv25(BLACKBOX,244)
    conv2_loop_limiter_5 theloop_limiter_conv25 (
        .in_i_stall(bb_conv2_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2_B7_out_exiting_stall_out),
        .in_i_valid(bb_conv2_B6_out_valid_out_0),
        .in_i_valid_exit(bb_conv2_B7_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv25_out_o_stall),
        .out_o_valid(loop_limiter_conv25_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going38_conv22_sr(BLACKBOX,198)
    conv2_i_llvm_fpga_pipeline_keep_going38_2_sr thei_llvm_fpga_pipeline_keep_going38_conv22_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going38_conv22_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2_B6_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going38_conv22_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going38_conv22_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B9_sr_0_aunroll_x(BLACKBOX,13)
    conv2_bb_B9_sr_0 thebb_conv2_B9_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_conv2_B8_out_exitcond3171_pop827),
        .in_i_data_1_tpl(bb_conv2_B8_out_notcmp5676_pop8312),
        .in_i_data_2_tpl(bb_conv2_B8_out_exitcond2891_pop8616),
        .in_i_data_3_tpl(bb_conv2_B8_out_notcmp5195_pop8720),
        .in_i_data_4_tpl(bb_conv2_B8_out_exitcond25119_pop9423),
        .in_i_data_5_tpl(bb_conv2_B8_out_notcmp46122_pop9526),
        .in_i_data_6_tpl(bb_conv2_B8_out_exitcond22128_pop9728),
        .in_i_data_7_tpl(bb_conv2_B8_out_notcmp41130_pop9830),
        .in_i_data_8_tpl(bb_conv2_B8_out_memdep_35),
        .in_i_stall(bb_conv2_B9_out_stall_out_0),
        .in_i_valid(bb_conv2_B8_out_valid_out_0),
        .out_o_data_0_tpl(bb_conv2_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2_B9_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2_B9_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2_B9_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2_B9_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2_B9_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2_B9_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2_B9_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2_B9_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_stall(bb_conv2_B9_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2_B9_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B8(BLACKBOX,26)
    conv2_bb_B8 thebb_conv2_B8 (
        .in_exitcond19137_pop1041_0(bb_conv2_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_exitcond22128_pop9728_0(bb_conv2_B8_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_exitcond25119_pop9423_0(bb_conv2_B8_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_exitcond2891_pop8616_0(bb_conv2_B8_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_exitcond3171_pop827_0(bb_conv2_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_feedback_stall_in_57(bb_conv2_B6_out_feedback_stall_out_57),
        .in_memdep_35_0(bb_conv2_B8_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_notcmp36138_pop1052_0(bb_conv2_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_notcmp41130_pop9830_0(bb_conv2_B8_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_notcmp46122_pop9526_0(bb_conv2_B8_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_notcmp5195_pop8720_0(bb_conv2_B8_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_notcmp5676_pop8312_0(bb_conv2_B8_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_stall_in_0(bb_conv2_B9_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_conv2_B8_sr_0_aunroll_x_out_o_valid),
        .out_exitcond22128_pop9728(bb_conv2_B8_out_exitcond22128_pop9728),
        .out_exitcond25119_pop9423(bb_conv2_B8_out_exitcond25119_pop9423),
        .out_exitcond2891_pop8616(bb_conv2_B8_out_exitcond2891_pop8616),
        .out_exitcond3171_pop827(bb_conv2_B8_out_exitcond3171_pop827),
        .out_feedback_out_57(bb_conv2_B8_out_feedback_out_57),
        .out_feedback_valid_out_57(bb_conv2_B8_out_feedback_valid_out_57),
        .out_memdep_35(bb_conv2_B8_out_memdep_35),
        .out_notcmp41130_pop9830(bb_conv2_B8_out_notcmp41130_pop9830),
        .out_notcmp46122_pop9526(bb_conv2_B8_out_notcmp46122_pop9526),
        .out_notcmp5195_pop8720(bb_conv2_B8_out_notcmp5195_pop8720),
        .out_notcmp5676_pop8312(bb_conv2_B8_out_notcmp5676_pop8312),
        .out_stall_in_0(bb_conv2_B8_out_stall_in_0),
        .out_stall_out_0(bb_conv2_B8_out_stall_out_0),
        .out_valid_out_0(bb_conv2_B8_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B6(BLACKBOX,24)
    conv2_bb_B6 thebb_conv2_B6 (
        .in_arrayidx34108_pop49346_0(c_float_addrspace_1024_undef142_q),
        .in_arrayidx34108_pop49346_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_41_tpl),
        .in_arrayidx34251_0(c_float_addrspace_1024_undef142_q),
        .in_arrayidx34251_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_arrayidx64114_pop51352_0(c_float_addrspace_1024_undef142_q),
        .in_arrayidx64114_pop51352_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_43_tpl),
        .in_arrayidx64261_0(c_float_addrspace_1024_undef142_q),
        .in_arrayidx64261_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_channel_039_pop17164_0(c_i32_undef116_q),
        .in_channel_039_pop17164_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_channel_039_pop1777_pop24223_0(c_i32_undef116_q),
        .in_channel_039_pop1777_pop24223_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_channel_039_pop1778_pop31241_0(c_i32_undef116_q),
        .in_channel_039_pop1778_pop31241_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_channel_039_pop1779_pop42325_0(c_i32_undef116_q),
        .in_channel_039_pop1779_pop42325_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_34_tpl),
        .in_col_037_pop27111_pop50349_0(c_i32_undef116_q),
        .in_col_037_pop27111_pop50349_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_42_tpl),
        .in_col_037_pop27256_0(c_i32_undef116_q),
        .in_col_037_pop27256_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_exitcond22307_0(GND_q),
        .in_exitcond22307_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_28_tpl),
        .in_exitcond25117_pop52355_0(GND_q),
        .in_exitcond25117_pop52355_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_44_tpl),
        .in_exitcond25266_0(GND_q),
        .in_exitcond25266_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_exitcond28181_0(GND_q),
        .in_exitcond28181_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_exitcond2888_pop33296_0(GND_q),
        .in_exitcond2888_pop33296_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_25_tpl),
        .in_exitcond2889_pop44331_0(GND_q),
        .in_exitcond2889_pop44331_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_36_tpl),
        .in_exitcond31146_0(GND_q),
        .in_exitcond31146_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_exitcond3167_pop22209_0(GND_q),
        .in_exitcond3167_pop22209_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_exitcond3168_pop29281_0(GND_q),
        .in_exitcond3168_pop29281_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_22_tpl),
        .in_exitcond3169_pop40319_0(GND_q),
        .in_exitcond3169_pop40319_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_32_tpl),
        .in_feedback_in_57(bb_conv2_B8_out_feedback_out_57),
        .in_feedback_valid_in_57(bb_conv2_B8_out_feedback_valid_out_57),
        .in_forked126_0(GND_q),
        .in_forked126_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom25105_pop48343_0(c_float_addrspace_1024_undef142_q),
        .in_idxprom25105_pop48343_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_40_tpl),
        .in_idxprom25246_0(c_float_addrspace_1024_undef142_q),
        .in_idxprom25246_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_k_036_pop38313_0(c_i32_undef116_q),
        .in_k_036_pop38313_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_30_tpl),
        .in_memdep_phi3_pop39316_0(GND_q),
        .in_memdep_phi3_pop39316_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_31_tpl),
        .in_memdep_phi4_pop28123_pop54361_0(GND_q),
        .in_memdep_phi4_pop28123_pop54361_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_46_tpl),
        .in_memdep_phi4_pop28276_0(GND_q),
        .in_memdep_phi4_pop28276_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_memdep_phi5_pop21100_pop36306_0(GND_q),
        .in_memdep_phi5_pop21100_pop36306_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_27_tpl),
        .in_memdep_phi5_pop21101_pop47340_0(GND_q),
        .in_memdep_phi5_pop21101_pop47340_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_39_tpl),
        .in_memdep_phi5_pop21202_0(GND_q),
        .in_memdep_phi5_pop21202_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_memdep_phi6_pop18173_0(GND_q),
        .in_memdep_phi6_pop18173_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi6_pop1882_pop25230_0(GND_q),
        .in_memdep_phi6_pop1882_pop25230_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_memdep_phi6_pop1883_pop32291_0(GND_q),
        .in_memdep_phi6_pop1883_pop32291_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_24_tpl),
        .in_memdep_phi6_pop1884_pop43328_0(GND_q),
        .in_memdep_phi6_pop1884_pop43328_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_35_tpl),
        .in_notcmp41310_0(GND_q),
        .in_notcmp41310_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_29_tpl),
        .in_notcmp46120_pop53358_0(GND_q),
        .in_notcmp46120_pop53358_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_45_tpl),
        .in_notcmp46271_0(GND_q),
        .in_notcmp46271_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_notcmp51188_0(GND_q),
        .in_notcmp51188_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp5192_pop34301_0(GND_q),
        .in_notcmp5192_pop34301_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_26_tpl),
        .in_notcmp5193_pop45334_0(GND_q),
        .in_notcmp5193_pop45334_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_37_tpl),
        .in_notcmp56155_0(GND_q),
        .in_notcmp56155_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp5672_pop23216_0(GND_q),
        .in_notcmp5672_pop23216_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_notcmp5673_pop30286_0(GND_q),
        .in_notcmp5673_pop30286_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_23_tpl),
        .in_notcmp5674_pop41322_0(GND_q),
        .in_notcmp5674_pop41322_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_33_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going38_conv22_sr_out_o_stall),
        .in_row_038_pop20195_0(c_i32_undef116_q),
        .in_row_038_pop20195_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_row_038_pop2096_pop35236_0(c_i32_undef116_q),
        .in_row_038_pop2096_pop35236_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_row_038_pop2097_pop46337_0(c_i32_undef116_q),
        .in_row_038_pop2097_pop46337_1(bb_conv2_B6_sr_1_aunroll_x_out_o_data_38_tpl),
        .in_stall_in_0(loop_limiter_conv25_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going38_conv22_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2_B6_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10670(bb_conv2_B6_out_c0_exe10670),
        .out_c0_exe11671(bb_conv2_B6_out_c0_exe11671),
        .out_c0_exe12672(bb_conv2_B6_out_c0_exe12672),
        .out_c0_exe13673(bb_conv2_B6_out_c0_exe13673),
        .out_c0_exe14674(bb_conv2_B6_out_c0_exe14674),
        .out_c0_exe15675(bb_conv2_B6_out_c0_exe15675),
        .out_c0_exe1661(bb_conv2_B6_out_c0_exe1661),
        .out_c0_exe16676(bb_conv2_B6_out_c0_exe16676),
        .out_c0_exe17677(bb_conv2_B6_out_c0_exe17677),
        .out_c0_exe18678(bb_conv2_B6_out_c0_exe18678),
        .out_c0_exe19679(bb_conv2_B6_out_c0_exe19679),
        .out_c0_exe20680(bb_conv2_B6_out_c0_exe20680),
        .out_c0_exe21681(bb_conv2_B6_out_c0_exe21681),
        .out_c0_exe22682(bb_conv2_B6_out_c0_exe22682),
        .out_c0_exe23683(bb_conv2_B6_out_c0_exe23683),
        .out_c0_exe24684(bb_conv2_B6_out_c0_exe24684),
        .out_c0_exe2662(bb_conv2_B6_out_c0_exe2662),
        .out_c0_exe3663(bb_conv2_B6_out_c0_exe3663),
        .out_c0_exe4664(bb_conv2_B6_out_c0_exe4664),
        .out_c0_exe5665(bb_conv2_B6_out_c0_exe5665),
        .out_c0_exe6666(bb_conv2_B6_out_c0_exe6666),
        .out_c0_exe7667(bb_conv2_B6_out_c0_exe7667),
        .out_c0_exe8668(bb_conv2_B6_out_c0_exe8668),
        .out_c0_exe9669(bb_conv2_B6_out_c0_exe9669),
        .out_exiting_stall_out(bb_conv2_B6_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv2_B6_out_exiting_valid_out),
        .out_feedback_stall_out_57(bb_conv2_B6_out_feedback_stall_out_57),
        .out_memdep_phi2_pop57(bb_conv2_B6_out_memdep_phi2_pop57),
        .out_pipeline_valid_out(bb_conv2_B6_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv2_B6_out_stall_out_0),
        .out_stall_out_1(bb_conv2_B6_out_stall_out_1),
        .out_valid_in_0(bb_conv2_B6_out_valid_in_0),
        .out_valid_in_1(bb_conv2_B6_out_valid_in_1),
        .out_valid_out_0(bb_conv2_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B6_sr_1_aunroll_x(BLACKBOX,10)
    conv2_bb_B6_sr_1 thebb_conv2_B6_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv2_B5_out_c0_exe20549),
        .in_i_data_2_tpl(bb_conv2_B5_out_c0_exe21550),
        .in_i_data_3_tpl(bb_conv2_B5_out_c0_exe22551),
        .in_i_data_4_tpl(bb_conv2_B5_out_c0_exe23552),
        .in_i_data_5_tpl(bb_conv2_B5_out_c0_exe24553),
        .in_i_data_6_tpl(bb_conv2_B5_out_c0_exe25554),
        .in_i_data_7_tpl(bb_conv2_B5_out_c0_exe26555),
        .in_i_data_8_tpl(bb_conv2_B5_out_c0_exe27556),
        .in_i_data_9_tpl(bb_conv2_B5_out_c0_exe28),
        .in_i_data_10_tpl(bb_conv2_B5_out_c0_exe29),
        .in_i_data_11_tpl(bb_conv2_B5_out_c0_exe30),
        .in_i_data_12_tpl(bb_conv2_B5_out_c0_exe31),
        .in_i_data_13_tpl(bb_conv2_B5_out_c0_exe32),
        .in_i_data_14_tpl(bb_conv2_B5_out_c0_exe33),
        .in_i_data_15_tpl(bb_conv2_B5_out_c0_exe34),
        .in_i_data_16_tpl(bb_conv2_B5_out_c0_exe35),
        .in_i_data_17_tpl(bb_conv2_B5_out_c0_exe36),
        .in_i_data_18_tpl(bb_conv2_B5_out_c0_exe37),
        .in_i_data_19_tpl(bb_conv2_B5_out_c0_exe38),
        .in_i_data_20_tpl(bb_conv2_B5_out_c0_exe39),
        .in_i_data_21_tpl(bb_conv2_B5_out_c0_exe40),
        .in_i_data_22_tpl(bb_conv2_B5_out_c0_exe41),
        .in_i_data_23_tpl(bb_conv2_B5_out_c0_exe42),
        .in_i_data_24_tpl(bb_conv2_B5_out_c0_exe43),
        .in_i_data_25_tpl(bb_conv2_B5_out_c0_exe44),
        .in_i_data_26_tpl(bb_conv2_B5_out_c0_exe45),
        .in_i_data_27_tpl(bb_conv2_B5_out_c0_exe46),
        .in_i_data_28_tpl(bb_conv2_B5_out_c0_exe1530),
        .in_i_data_29_tpl(bb_conv2_B5_out_c0_exe2531),
        .in_i_data_30_tpl(bb_conv2_B5_out_c0_exe3532),
        .in_i_data_31_tpl(bb_conv2_B5_out_memdep_phi3_pop39),
        .in_i_data_32_tpl(bb_conv2_B5_out_c0_exe4533),
        .in_i_data_33_tpl(bb_conv2_B5_out_c0_exe5534),
        .in_i_data_34_tpl(bb_conv2_B5_out_c0_exe6535),
        .in_i_data_35_tpl(bb_conv2_B5_out_c0_exe7536),
        .in_i_data_36_tpl(bb_conv2_B5_out_c0_exe8537),
        .in_i_data_37_tpl(bb_conv2_B5_out_c0_exe9538),
        .in_i_data_38_tpl(bb_conv2_B5_out_c0_exe10539),
        .in_i_data_39_tpl(bb_conv2_B5_out_c0_exe11540),
        .in_i_data_40_tpl(bb_conv2_B5_out_c0_exe12541),
        .in_i_data_41_tpl(bb_conv2_B5_out_c0_exe13542),
        .in_i_data_42_tpl(bb_conv2_B5_out_c0_exe14543),
        .in_i_data_43_tpl(bb_conv2_B5_out_c0_exe15544),
        .in_i_data_44_tpl(bb_conv2_B5_out_c0_exe16545),
        .in_i_data_45_tpl(bb_conv2_B5_out_c0_exe17546),
        .in_i_data_46_tpl(bb_conv2_B5_out_c0_exe18547),
        .in_i_stall(bb_conv2_B6_out_stall_out_1),
        .in_i_valid(loop_limiter_conv24_out_o_valid),
        .out_o_data_0_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_23_tpl),
        .out_o_data_24_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_24_tpl),
        .out_o_data_25_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_25_tpl),
        .out_o_data_26_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_26_tpl),
        .out_o_data_27_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_27_tpl),
        .out_o_data_28_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_28_tpl),
        .out_o_data_29_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_29_tpl),
        .out_o_data_30_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_30_tpl),
        .out_o_data_31_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_31_tpl),
        .out_o_data_32_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_32_tpl),
        .out_o_data_33_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_33_tpl),
        .out_o_data_34_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_34_tpl),
        .out_o_data_35_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_35_tpl),
        .out_o_data_36_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_36_tpl),
        .out_o_data_37_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_37_tpl),
        .out_o_data_38_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_38_tpl),
        .out_o_data_39_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_39_tpl),
        .out_o_data_40_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_40_tpl),
        .out_o_data_41_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_41_tpl),
        .out_o_data_42_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_42_tpl),
        .out_o_data_43_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_43_tpl),
        .out_o_data_44_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_44_tpl),
        .out_o_data_45_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_45_tpl),
        .out_o_data_46_tpl(bb_conv2_B6_sr_1_aunroll_x_out_o_data_46_tpl),
        .out_o_stall(bb_conv2_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2_B6_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv24(BLACKBOX,243)
    conv2_loop_limiter_4 theloop_limiter_conv24 (
        .in_i_stall(bb_conv2_B6_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2_B6_out_exiting_stall_out),
        .in_i_valid(bb_conv2_B5_out_valid_out_0),
        .in_i_valid_exit(bb_conv2_B6_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv24_out_o_stall),
        .out_o_valid(loop_limiter_conv24_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going43_conv22_sr(BLACKBOX,200)
    conv2_i_llvm_fpga_pipeline_keep_going43_2_sr thei_llvm_fpga_pipeline_keep_going43_conv22_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going43_conv22_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going43_conv22_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going43_conv22_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B10_sr_0_aunroll_x(BLACKBOX,2)
    conv2_bb_B10_sr_0 thebb_conv2_B10_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_conv2_B9_out_exitcond3171_pop826),
        .in_i_data_1_tpl(bb_conv2_B9_out_notcmp5676_pop8311),
        .in_i_data_2_tpl(bb_conv2_B9_out_exitcond2891_pop8615),
        .in_i_data_3_tpl(bb_conv2_B9_out_notcmp5195_pop8719),
        .in_i_data_4_tpl(bb_conv2_B9_out_exitcond25119_pop9422),
        .in_i_data_5_tpl(bb_conv2_B9_out_notcmp46122_pop9525),
        .in_i_data_6_tpl(bb_conv2_B9_out_memdep_34),
        .in_i_stall(bb_conv2_B10_out_stall_out_0),
        .in_i_valid(bb_conv2_B9_out_valid_out_0),
        .out_o_data_0_tpl(bb_conv2_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2_B10_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2_B10_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2_B10_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2_B10_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_stall(bb_conv2_B10_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2_B10_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B9(BLACKBOX,27)
    conv2_bb_B9 thebb_conv2_B9 (
        .in_exitcond22128_pop9727_0(bb_conv2_B9_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_exitcond25119_pop9422_0(bb_conv2_B9_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_exitcond2891_pop8615_0(bb_conv2_B9_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_exitcond3171_pop826_0(bb_conv2_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_feedback_stall_in_39(bb_conv2_B5_out_feedback_stall_out_39),
        .in_memdep_34_0(bb_conv2_B9_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_notcmp41130_pop9829_0(bb_conv2_B9_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_notcmp46122_pop9525_0(bb_conv2_B9_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_notcmp5195_pop8719_0(bb_conv2_B9_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_notcmp5676_pop8311_0(bb_conv2_B9_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_conv2_B10_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_conv2_B9_sr_0_aunroll_x_out_o_valid),
        .out_exitcond25119_pop9422(bb_conv2_B9_out_exitcond25119_pop9422),
        .out_exitcond2891_pop8615(bb_conv2_B9_out_exitcond2891_pop8615),
        .out_exitcond3171_pop826(bb_conv2_B9_out_exitcond3171_pop826),
        .out_feedback_out_39(bb_conv2_B9_out_feedback_out_39),
        .out_feedback_valid_out_39(bb_conv2_B9_out_feedback_valid_out_39),
        .out_memdep_34(bb_conv2_B9_out_memdep_34),
        .out_notcmp46122_pop9525(bb_conv2_B9_out_notcmp46122_pop9525),
        .out_notcmp5195_pop8719(bb_conv2_B9_out_notcmp5195_pop8719),
        .out_notcmp5676_pop8311(bb_conv2_B9_out_notcmp5676_pop8311),
        .out_stall_in_0(bb_conv2_B9_out_stall_in_0),
        .out_stall_out_0(bb_conv2_B9_out_stall_out_0),
        .out_valid_out_0(bb_conv2_B9_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_float_addrspace_1024_undef142(CONSTANT,28)
    assign c_float_addrspace_1024_undef142_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_conv2_B5(BLACKBOX,23)
    conv2_bb_B5 thebb_conv2_B5 (
        .in_arrayidx34247_0(c_float_addrspace_1024_undef142_q),
        .in_arrayidx34247_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_arrayidx64257_0(c_float_addrspace_1024_undef142_q),
        .in_arrayidx64257_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_channel_039_pop17165_0(c_i32_undef116_q),
        .in_channel_039_pop17165_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_channel_039_pop1777_pop24224_0(c_i32_undef116_q),
        .in_channel_039_pop1777_pop24224_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_channel_039_pop1778_pop31237_0(c_i32_undef116_q),
        .in_channel_039_pop1778_pop31237_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_col_037_pop27252_0(c_i32_undef116_q),
        .in_col_037_pop27252_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_exitcond25262_0(GND_q),
        .in_exitcond25262_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_exitcond28182_0(GND_q),
        .in_exitcond28182_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_exitcond2888_pop33292_0(GND_q),
        .in_exitcond2888_pop33292_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_25_tpl),
        .in_exitcond31147_0(GND_q),
        .in_exitcond31147_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_exitcond3167_pop22210_0(GND_q),
        .in_exitcond3167_pop22210_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_exitcond3168_pop29277_0(GND_q),
        .in_exitcond3168_pop29277_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_22_tpl),
        .in_feedback_in_39(bb_conv2_B9_out_feedback_out_39),
        .in_feedback_valid_in_39(bb_conv2_B9_out_feedback_valid_out_39),
        .in_forked104_0(GND_q),
        .in_forked104_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom25242_0(c_float_addrspace_1024_undef142_q),
        .in_idxprom25242_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_memdep_phi4_pop28272_0(GND_q),
        .in_memdep_phi4_pop28272_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_memdep_phi5_pop21100_pop36302_0(GND_q),
        .in_memdep_phi5_pop21100_pop36302_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_27_tpl),
        .in_memdep_phi5_pop21203_0(GND_q),
        .in_memdep_phi5_pop21203_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_memdep_phi6_pop18174_0(GND_q),
        .in_memdep_phi6_pop18174_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi6_pop1882_pop25231_0(GND_q),
        .in_memdep_phi6_pop1882_pop25231_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_memdep_phi6_pop1883_pop32287_0(GND_q),
        .in_memdep_phi6_pop1883_pop32287_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_24_tpl),
        .in_notcmp46267_0(GND_q),
        .in_notcmp46267_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_notcmp51189_0(GND_q),
        .in_notcmp51189_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp5192_pop34297_0(GND_q),
        .in_notcmp5192_pop34297_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_26_tpl),
        .in_notcmp56156_0(GND_q),
        .in_notcmp56156_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp5672_pop23217_0(GND_q),
        .in_notcmp5672_pop23217_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_notcmp5673_pop30282_0(GND_q),
        .in_notcmp5673_pop30282_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_23_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going43_conv22_sr_out_o_stall),
        .in_row_038_pop20196_0(c_i32_undef116_q),
        .in_row_038_pop20196_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_row_038_pop2096_pop35232_0(c_i32_undef116_q),
        .in_row_038_pop2096_pop35232_1(bb_conv2_B5_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_stall_in_0(loop_limiter_conv24_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going43_conv22_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10539(bb_conv2_B5_out_c0_exe10539),
        .out_c0_exe11540(bb_conv2_B5_out_c0_exe11540),
        .out_c0_exe12541(bb_conv2_B5_out_c0_exe12541),
        .out_c0_exe13542(bb_conv2_B5_out_c0_exe13542),
        .out_c0_exe14543(bb_conv2_B5_out_c0_exe14543),
        .out_c0_exe1530(bb_conv2_B5_out_c0_exe1530),
        .out_c0_exe15544(bb_conv2_B5_out_c0_exe15544),
        .out_c0_exe16545(bb_conv2_B5_out_c0_exe16545),
        .out_c0_exe17546(bb_conv2_B5_out_c0_exe17546),
        .out_c0_exe18547(bb_conv2_B5_out_c0_exe18547),
        .out_c0_exe20549(bb_conv2_B5_out_c0_exe20549),
        .out_c0_exe21550(bb_conv2_B5_out_c0_exe21550),
        .out_c0_exe22551(bb_conv2_B5_out_c0_exe22551),
        .out_c0_exe23552(bb_conv2_B5_out_c0_exe23552),
        .out_c0_exe24553(bb_conv2_B5_out_c0_exe24553),
        .out_c0_exe2531(bb_conv2_B5_out_c0_exe2531),
        .out_c0_exe25554(bb_conv2_B5_out_c0_exe25554),
        .out_c0_exe26555(bb_conv2_B5_out_c0_exe26555),
        .out_c0_exe27556(bb_conv2_B5_out_c0_exe27556),
        .out_c0_exe28(bb_conv2_B5_out_c0_exe28),
        .out_c0_exe29(bb_conv2_B5_out_c0_exe29),
        .out_c0_exe30(bb_conv2_B5_out_c0_exe30),
        .out_c0_exe31(bb_conv2_B5_out_c0_exe31),
        .out_c0_exe32(bb_conv2_B5_out_c0_exe32),
        .out_c0_exe33(bb_conv2_B5_out_c0_exe33),
        .out_c0_exe34(bb_conv2_B5_out_c0_exe34),
        .out_c0_exe35(bb_conv2_B5_out_c0_exe35),
        .out_c0_exe3532(bb_conv2_B5_out_c0_exe3532),
        .out_c0_exe36(bb_conv2_B5_out_c0_exe36),
        .out_c0_exe37(bb_conv2_B5_out_c0_exe37),
        .out_c0_exe38(bb_conv2_B5_out_c0_exe38),
        .out_c0_exe39(bb_conv2_B5_out_c0_exe39),
        .out_c0_exe40(bb_conv2_B5_out_c0_exe40),
        .out_c0_exe41(bb_conv2_B5_out_c0_exe41),
        .out_c0_exe42(bb_conv2_B5_out_c0_exe42),
        .out_c0_exe43(bb_conv2_B5_out_c0_exe43),
        .out_c0_exe44(bb_conv2_B5_out_c0_exe44),
        .out_c0_exe45(bb_conv2_B5_out_c0_exe45),
        .out_c0_exe4533(bb_conv2_B5_out_c0_exe4533),
        .out_c0_exe46(bb_conv2_B5_out_c0_exe46),
        .out_c0_exe5534(bb_conv2_B5_out_c0_exe5534),
        .out_c0_exe6535(bb_conv2_B5_out_c0_exe6535),
        .out_c0_exe7536(bb_conv2_B5_out_c0_exe7536),
        .out_c0_exe8537(bb_conv2_B5_out_c0_exe8537),
        .out_c0_exe9538(bb_conv2_B5_out_c0_exe9538),
        .out_exiting_stall_out(bb_conv2_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv2_B5_out_exiting_valid_out),
        .out_feedback_stall_out_39(bb_conv2_B5_out_feedback_stall_out_39),
        .out_memdep_phi3_pop39(bb_conv2_B5_out_memdep_phi3_pop39),
        .out_pipeline_valid_out(bb_conv2_B5_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv2_B5_out_stall_out_0),
        .out_stall_out_1(bb_conv2_B5_out_stall_out_1),
        .out_valid_in_0(bb_conv2_B5_out_valid_in_0),
        .out_valid_in_1(bb_conv2_B5_out_valid_in_1),
        .out_valid_out_0(bb_conv2_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B5_sr_1_aunroll_x(BLACKBOX,9)
    conv2_bb_B5_sr_1 thebb_conv2_B5_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv2_B4_out_c0_exe16),
        .in_i_data_2_tpl(bb_conv2_B4_out_c0_exe17),
        .in_i_data_3_tpl(bb_conv2_B4_out_c0_exe18),
        .in_i_data_4_tpl(bb_conv2_B4_out_c0_exe19),
        .in_i_data_5_tpl(bb_conv2_B4_out_c0_exe20),
        .in_i_data_6_tpl(bb_conv2_B4_out_c0_exe21),
        .in_i_data_7_tpl(bb_conv2_B4_out_c0_exe22),
        .in_i_data_8_tpl(bb_conv2_B4_out_c0_exe23),
        .in_i_data_9_tpl(bb_conv2_B4_out_c0_exe24),
        .in_i_data_10_tpl(bb_conv2_B4_out_c0_exe25),
        .in_i_data_11_tpl(bb_conv2_B4_out_c0_exe26),
        .in_i_data_12_tpl(bb_conv2_B4_out_c0_exe27),
        .in_i_data_13_tpl(bb_conv2_B4_out_c0_exe1463),
        .in_i_data_14_tpl(bb_conv2_B4_out_c0_exe2464),
        .in_i_data_15_tpl(bb_conv2_B4_out_c0_exe3465),
        .in_i_data_16_tpl(bb_conv2_B4_out_c0_exe4466),
        .in_i_data_17_tpl(bb_conv2_B4_out_c0_exe5467),
        .in_i_data_18_tpl(bb_conv2_B4_out_c0_exe6468),
        .in_i_data_19_tpl(bb_conv2_B4_out_c0_exe7469),
        .in_i_data_20_tpl(bb_conv2_B4_out_c0_exe8470),
        .in_i_data_21_tpl(bb_conv2_B4_out_memdep_phi4_pop28),
        .in_i_data_22_tpl(bb_conv2_B4_out_c0_exe9471),
        .in_i_data_23_tpl(bb_conv2_B4_out_c0_exe10472),
        .in_i_data_24_tpl(bb_conv2_B4_out_c0_exe11473),
        .in_i_data_25_tpl(bb_conv2_B4_out_c0_exe12474),
        .in_i_data_26_tpl(bb_conv2_B4_out_c0_exe13),
        .in_i_data_27_tpl(bb_conv2_B4_out_c0_exe14),
        .in_i_stall(bb_conv2_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_conv23_out_o_valid),
        .out_o_data_0_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_23_tpl),
        .out_o_data_24_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_24_tpl),
        .out_o_data_25_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_25_tpl),
        .out_o_data_26_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_26_tpl),
        .out_o_data_27_tpl(bb_conv2_B5_sr_1_aunroll_x_out_o_data_27_tpl),
        .out_o_stall(bb_conv2_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2_B5_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv23(BLACKBOX,242)
    conv2_loop_limiter_3 theloop_limiter_conv23 (
        .in_i_stall(bb_conv2_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2_B5_out_exiting_stall_out),
        .in_i_valid(bb_conv2_B4_out_valid_out_0),
        .in_i_valid_exit(bb_conv2_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv23_out_o_stall),
        .out_o_valid(loop_limiter_conv23_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going48_conv22_sr(BLACKBOX,202)
    conv2_i_llvm_fpga_pipeline_keep_going48_2_sr thei_llvm_fpga_pipeline_keep_going48_conv22_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going48_conv22_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going48_conv22_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going48_conv22_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B11_sr_0_aunroll_x(BLACKBOX,3)
    conv2_bb_B11_sr_0 thebb_conv2_B11_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_conv2_B10_out_exitcond3171_pop825),
        .in_i_data_1_tpl(bb_conv2_B10_out_notcmp5676_pop8310),
        .in_i_data_2_tpl(bb_conv2_B10_out_exitcond2891_pop8614),
        .in_i_data_3_tpl(bb_conv2_B10_out_notcmp5195_pop8718),
        .in_i_data_4_tpl(bb_conv2_B10_out_memdep_33),
        .in_i_stall(bb_conv2_B11_out_stall_out_0),
        .in_i_valid(bb_conv2_B10_out_valid_out_0),
        .out_o_data_0_tpl(bb_conv2_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2_B11_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2_B11_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2_B11_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2_B11_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_stall(bb_conv2_B11_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2_B11_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B10(BLACKBOX,15)
    conv2_bb_B10 thebb_conv2_B10 (
        .in_exitcond25119_pop9421_0(bb_conv2_B10_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_exitcond2891_pop8614_0(bb_conv2_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_exitcond3171_pop825_0(bb_conv2_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_feedback_stall_in_28(bb_conv2_B4_out_feedback_stall_out_28),
        .in_memdep_33_0(bb_conv2_B10_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_notcmp46122_pop9524_0(bb_conv2_B10_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_notcmp5195_pop8718_0(bb_conv2_B10_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_notcmp5676_pop8310_0(bb_conv2_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_conv2_B11_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_conv2_B10_sr_0_aunroll_x_out_o_valid),
        .out_exitcond2891_pop8614(bb_conv2_B10_out_exitcond2891_pop8614),
        .out_exitcond3171_pop825(bb_conv2_B10_out_exitcond3171_pop825),
        .out_feedback_out_28(bb_conv2_B10_out_feedback_out_28),
        .out_feedback_valid_out_28(bb_conv2_B10_out_feedback_valid_out_28),
        .out_memdep_33(bb_conv2_B10_out_memdep_33),
        .out_notcmp5195_pop8718(bb_conv2_B10_out_notcmp5195_pop8718),
        .out_notcmp5676_pop8310(bb_conv2_B10_out_notcmp5676_pop8310),
        .out_stall_in_0(bb_conv2_B10_out_stall_in_0),
        .out_stall_out_0(bb_conv2_B10_out_stall_out_0),
        .out_valid_out_0(bb_conv2_B10_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B4(BLACKBOX,22)
    conv2_bb_B4 thebb_conv2_B4 (
        .in_channel_039_pop17166_0(c_i32_undef116_q),
        .in_channel_039_pop17166_1(bb_conv2_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_channel_039_pop1777_pop24218_0(c_i32_undef116_q),
        .in_channel_039_pop1777_pop24218_1(bb_conv2_B4_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_exitcond28176_0(GND_q),
        .in_exitcond28176_1(bb_conv2_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_exitcond31148_0(GND_q),
        .in_exitcond31148_1(bb_conv2_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_exitcond3167_pop22204_0(GND_q),
        .in_exitcond3167_pop22204_1(bb_conv2_B4_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_feedback_in_28(bb_conv2_B10_out_feedback_out_28),
        .in_feedback_valid_in_28(bb_conv2_B10_out_feedback_valid_out_28),
        .in_forked87_0(GND_q),
        .in_forked87_1(bb_conv2_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_2_0(bb_conv2_B1_start_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_conv2_B1_start_out_intel_reserved_ffwd_3_0),
        .in_memdep_phi5_pop21197_0(GND_q),
        .in_memdep_phi5_pop21197_1(bb_conv2_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_memdep_phi6_pop18175_0(GND_q),
        .in_memdep_phi6_pop18175_1(bb_conv2_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi6_pop1882_pop25225_0(GND_q),
        .in_memdep_phi6_pop1882_pop25225_1(bb_conv2_B4_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_notcmp51183_0(GND_q),
        .in_notcmp51183_1(bb_conv2_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp56157_0(GND_q),
        .in_notcmp56157_1(bb_conv2_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp5672_pop23211_0(GND_q),
        .in_notcmp5672_pop23211_1(bb_conv2_B4_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going48_conv22_sr_out_o_stall),
        .in_row_038_pop20190_0(c_i32_undef116_q),
        .in_row_038_pop20190_1(bb_conv2_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_stall_in_0(loop_limiter_conv23_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going48_conv22_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2_B4_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10472(bb_conv2_B4_out_c0_exe10472),
        .out_c0_exe11473(bb_conv2_B4_out_c0_exe11473),
        .out_c0_exe12474(bb_conv2_B4_out_c0_exe12474),
        .out_c0_exe13(bb_conv2_B4_out_c0_exe13),
        .out_c0_exe14(bb_conv2_B4_out_c0_exe14),
        .out_c0_exe1463(bb_conv2_B4_out_c0_exe1463),
        .out_c0_exe16(bb_conv2_B4_out_c0_exe16),
        .out_c0_exe17(bb_conv2_B4_out_c0_exe17),
        .out_c0_exe18(bb_conv2_B4_out_c0_exe18),
        .out_c0_exe19(bb_conv2_B4_out_c0_exe19),
        .out_c0_exe20(bb_conv2_B4_out_c0_exe20),
        .out_c0_exe21(bb_conv2_B4_out_c0_exe21),
        .out_c0_exe22(bb_conv2_B4_out_c0_exe22),
        .out_c0_exe23(bb_conv2_B4_out_c0_exe23),
        .out_c0_exe24(bb_conv2_B4_out_c0_exe24),
        .out_c0_exe2464(bb_conv2_B4_out_c0_exe2464),
        .out_c0_exe25(bb_conv2_B4_out_c0_exe25),
        .out_c0_exe26(bb_conv2_B4_out_c0_exe26),
        .out_c0_exe27(bb_conv2_B4_out_c0_exe27),
        .out_c0_exe3465(bb_conv2_B4_out_c0_exe3465),
        .out_c0_exe4466(bb_conv2_B4_out_c0_exe4466),
        .out_c0_exe5467(bb_conv2_B4_out_c0_exe5467),
        .out_c0_exe6468(bb_conv2_B4_out_c0_exe6468),
        .out_c0_exe7469(bb_conv2_B4_out_c0_exe7469),
        .out_c0_exe8470(bb_conv2_B4_out_c0_exe8470),
        .out_c0_exe9471(bb_conv2_B4_out_c0_exe9471),
        .out_exiting_stall_out(bb_conv2_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv2_B4_out_exiting_valid_out),
        .out_feedback_stall_out_28(bb_conv2_B4_out_feedback_stall_out_28),
        .out_memdep_phi4_pop28(bb_conv2_B4_out_memdep_phi4_pop28),
        .out_pipeline_valid_out(bb_conv2_B4_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv2_B4_out_stall_out_0),
        .out_stall_out_1(bb_conv2_B4_out_stall_out_1),
        .out_valid_in_0(bb_conv2_B4_out_valid_in_0),
        .out_valid_in_1(bb_conv2_B4_out_valid_in_1),
        .out_valid_out_0(bb_conv2_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B4_sr_1_aunroll_x(BLACKBOX,8)
    conv2_bb_B4_sr_1 thebb_conv2_B4_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv2_B3_out_c0_exe9),
        .in_i_data_2_tpl(bb_conv2_B3_out_c0_exe10),
        .in_i_data_3_tpl(bb_conv2_B3_out_c0_exe11),
        .in_i_data_4_tpl(bb_conv2_B3_out_c0_exe12),
        .in_i_data_5_tpl(bb_conv2_B3_out_c0_exe1435),
        .in_i_data_6_tpl(bb_conv2_B3_out_c0_exe2436),
        .in_i_data_7_tpl(bb_conv2_B3_out_c0_exe3437),
        .in_i_data_8_tpl(bb_conv2_B3_out_memdep_phi5_pop21),
        .in_i_data_9_tpl(bb_conv2_B3_out_c0_exe4438),
        .in_i_data_10_tpl(bb_conv2_B3_out_c0_exe5),
        .in_i_data_11_tpl(bb_conv2_B3_out_c0_exe6),
        .in_i_data_12_tpl(bb_conv2_B3_out_c0_exe7),
        .in_i_stall(bb_conv2_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_conv22_out_o_valid),
        .out_o_data_0_tpl(bb_conv2_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv2_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv2_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv2_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv2_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv2_B4_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv2_B4_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv2_B4_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv2_B4_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_stall(bb_conv2_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2_B4_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv22(BLACKBOX,241)
    conv2_loop_limiter_2 theloop_limiter_conv22 (
        .in_i_stall(bb_conv2_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2_B4_out_exiting_stall_out),
        .in_i_valid(bb_conv2_B3_out_valid_out_0),
        .in_i_valid_exit(bb_conv2_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv22_out_o_stall),
        .out_o_valid(loop_limiter_conv22_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going53_conv22_sr(BLACKBOX,204)
    conv2_i_llvm_fpga_pipeline_keep_going53_2_sr thei_llvm_fpga_pipeline_keep_going53_conv22_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going53_conv22_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going53_conv22_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going53_conv22_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B12_sr_0_aunroll_x(BLACKBOX,4)
    conv2_bb_B12_sr_0 thebb_conv2_B12_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_conv2_B11_out_exitcond3171_pop824),
        .in_i_data_1_tpl(bb_conv2_B11_out_notcmp5676_pop839),
        .in_i_data_2_tpl(bb_conv2_B11_out_memdep_32),
        .in_i_stall(bb_conv2_B12_out_stall_out_0),
        .in_i_valid(bb_conv2_B11_out_valid_out_0),
        .out_o_data_0_tpl(bb_conv2_B12_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2_B12_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2_B12_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_conv2_B12_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2_B12_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B11(BLACKBOX,16)
    conv2_bb_B11 thebb_conv2_B11 (
        .in_exitcond2891_pop8613_0(bb_conv2_B11_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_exitcond3171_pop824_0(bb_conv2_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_feedback_stall_in_21(bb_conv2_B3_out_feedback_stall_out_21),
        .in_memdep_32_0(bb_conv2_B11_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_notcmp5195_pop8717_0(bb_conv2_B11_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_notcmp5676_pop839_0(bb_conv2_B11_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_conv2_B12_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_conv2_B11_sr_0_aunroll_x_out_o_valid),
        .out_exitcond3171_pop824(bb_conv2_B11_out_exitcond3171_pop824),
        .out_feedback_out_21(bb_conv2_B11_out_feedback_out_21),
        .out_feedback_valid_out_21(bb_conv2_B11_out_feedback_valid_out_21),
        .out_memdep_32(bb_conv2_B11_out_memdep_32),
        .out_notcmp5676_pop839(bb_conv2_B11_out_notcmp5676_pop839),
        .out_stall_in_0(bb_conv2_B11_out_stall_in_0),
        .out_stall_out_0(bb_conv2_B11_out_stall_out_0),
        .out_valid_out_0(bb_conv2_B11_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef116(CONSTANT,159)
    assign c_i32_undef116_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_conv2_B3(BLACKBOX,21)
    conv2_bb_B3 thebb_conv2_B3 (
        .in_channel_039_pop17158_0(c_i32_undef116_q),
        .in_channel_039_pop17158_1(bb_conv2_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_exitcond31140_0(GND_q),
        .in_exitcond31140_1(bb_conv2_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_feedback_in_21(bb_conv2_B11_out_feedback_out_21),
        .in_feedback_valid_in_21(bb_conv2_B11_out_feedback_valid_out_21),
        .in_forked66_0(GND_q),
        .in_forked66_1(bb_conv2_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_phi6_pop18167_0(GND_q),
        .in_memdep_phi6_pop18167_1(bb_conv2_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp56149_0(GND_q),
        .in_notcmp56149_1(bb_conv2_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going53_conv22_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_conv22_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going53_conv22_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_conv2_B3_out_c0_exe10),
        .out_c0_exe11(bb_conv2_B3_out_c0_exe11),
        .out_c0_exe12(bb_conv2_B3_out_c0_exe12),
        .out_c0_exe1435(bb_conv2_B3_out_c0_exe1435),
        .out_c0_exe2436(bb_conv2_B3_out_c0_exe2436),
        .out_c0_exe3437(bb_conv2_B3_out_c0_exe3437),
        .out_c0_exe4438(bb_conv2_B3_out_c0_exe4438),
        .out_c0_exe5(bb_conv2_B3_out_c0_exe5),
        .out_c0_exe6(bb_conv2_B3_out_c0_exe6),
        .out_c0_exe7(bb_conv2_B3_out_c0_exe7),
        .out_c0_exe9(bb_conv2_B3_out_c0_exe9),
        .out_exiting_stall_out(bb_conv2_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv2_B3_out_exiting_valid_out),
        .out_feedback_stall_out_21(bb_conv2_B3_out_feedback_stall_out_21),
        .out_memdep_phi5_pop21(bb_conv2_B3_out_memdep_phi5_pop21),
        .out_pipeline_valid_out(bb_conv2_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv2_B3_out_stall_out_0),
        .out_stall_out_1(bb_conv2_B3_out_stall_out_1),
        .out_valid_in_0(bb_conv2_B3_out_valid_in_0),
        .out_valid_in_1(bb_conv2_B3_out_valid_in_1),
        .out_valid_out_0(bb_conv2_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B3_sr_1_aunroll_x(BLACKBOX,7)
    conv2_bb_B3_sr_1 thebb_conv2_B3_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv2_B2_out_c0_exe1426),
        .in_i_data_2_tpl(bb_conv2_B2_out_c0_exe2),
        .in_i_data_3_tpl(bb_conv2_B2_out_c0_exe3),
        .in_i_data_4_tpl(bb_conv2_B2_out_memdep_phi6_pop18),
        .in_i_stall(bb_conv2_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_conv21_out_o_valid),
        .out_o_data_0_tpl(bb_conv2_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv2_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv2_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv2_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv2_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_stall(bb_conv2_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2_B3_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv21(BLACKBOX,240)
    conv2_loop_limiter_1 theloop_limiter_conv21 (
        .in_i_stall(bb_conv2_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2_B3_out_exiting_stall_out),
        .in_i_valid(bb_conv2_B2_out_valid_out_0),
        .in_i_valid_exit(bb_conv2_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv21_out_o_stall),
        .out_o_valid(loop_limiter_conv21_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going58_conv22_sr(BLACKBOX,206)
    conv2_i_llvm_fpga_pipeline_keep_going58_2_sr thei_llvm_fpga_pipeline_keep_going58_conv22_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going58_conv22_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going58_conv22_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going58_conv22_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B13_sr_0_aunroll_x(BLACKBOX,5)
    conv2_bb_B13_sr_0 thebb_conv2_B13_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_conv2_B13_out_stall_out_0),
        .in_i_valid(bb_conv2_B12_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_conv2_B13_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2_B13_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B12(BLACKBOX,17)
    conv2_bb_B12 thebb_conv2_B12 (
        .in_exitcond3171_pop823_0(bb_conv2_B12_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_feedback_stall_in_18(bb_conv2_B2_out_feedback_stall_out_18),
        .in_memdep_31_0(bb_conv2_B12_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_notcmp5676_pop838_0(bb_conv2_B12_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_conv2_B13_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_conv2_B12_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_18(bb_conv2_B12_out_feedback_out_18),
        .out_feedback_valid_out_18(bb_conv2_B12_out_feedback_valid_out_18),
        .out_stall_in_0(bb_conv2_B12_out_stall_in_0),
        .out_stall_out_0(bb_conv2_B12_out_stall_out_0),
        .out_valid_out_0(bb_conv2_B12_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B2(BLACKBOX,20)
    conv2_bb_B2 thebb_conv2_B2 (
        .in_feedback_in_18(bb_conv2_B12_out_feedback_out_18),
        .in_feedback_valid_in_18(bb_conv2_B12_out_feedback_valid_out_18),
        .in_forked65_0(GND_q),
        .in_forked65_1(bb_conv2_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going58_conv22_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_conv21_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going58_conv22_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv2_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1426(bb_conv2_B2_out_c0_exe1426),
        .out_c0_exe2(bb_conv2_B2_out_c0_exe2),
        .out_c0_exe3(bb_conv2_B2_out_c0_exe3),
        .out_exiting_stall_out(bb_conv2_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv2_B2_out_exiting_valid_out),
        .out_feedback_stall_out_18(bb_conv2_B2_out_feedback_stall_out_18),
        .out_memdep_phi6_pop18(bb_conv2_B2_out_memdep_phi6_pop18),
        .out_pipeline_valid_out(bb_conv2_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv2_B2_out_stall_out_0),
        .out_stall_out_1(bb_conv2_B2_out_stall_out_1),
        .out_valid_in_0(bb_conv2_B2_out_valid_in_0),
        .out_valid_in_1(bb_conv2_B2_out_valid_in_1),
        .out_valid_out_0(bb_conv2_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B2_sr_1_aunroll_x(BLACKBOX,6)
    conv2_bb_B2_sr_1 thebb_conv2_B2_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_conv2_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_conv20_out_o_valid),
        .out_o_data_0_tpl(bb_conv2_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_conv2_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv2_B2_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv20(BLACKBOX,239)
    conv2_loop_limiter_0 theloop_limiter_conv20 (
        .in_i_stall(bb_conv2_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv2_B2_out_exiting_stall_out),
        .in_i_valid(bb_conv2_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_conv2_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv20_out_o_stall),
        .out_o_valid(loop_limiter_conv20_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going62_conv21_sr(BLACKBOX,208)
    conv2_i_llvm_fpga_pipeline_keep_going62_1_sr thei_llvm_fpga_pipeline_keep_going62_conv21_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going62_conv21_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv2_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going62_conv21_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going62_conv21_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B1_start(BLACKBOX,19)
    conv2_bb_B1_start thebb_conv2_B1_start (
        .in_feedback_in_1(bb_conv2_B13_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_conv2_B13_out_feedback_valid_out_1),
        .in_iord_bl_call_conv2_i_fifodata(in_iord_bl_call_conv2_i_fifodata),
        .in_iord_bl_call_conv2_i_fifovalid(in_iord_bl_call_conv2_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going62_conv21_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_conv20_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going62_conv21_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_conv2_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_conv2_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_conv2_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_conv2_B1_start_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_conv2_B1_start_out_intel_reserved_ffwd_3_0),
        .out_iord_bl_call_conv2_o_fifoalmost_full(bb_conv2_B1_start_out_iord_bl_call_conv2_o_fifoalmost_full),
        .out_iord_bl_call_conv2_o_fifoready(bb_conv2_B1_start_out_iord_bl_call_conv2_o_fifoready),
        .out_pipeline_valid_out(bb_conv2_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv2_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_conv2_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_conv2_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_conv2_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B13(BLACKBOX,18)
    conv2_bb_B13 thebb_conv2_B13 (
        .in_feedback_stall_in_1(bb_conv2_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_conv2_i_fifoready(in_iowr_bl_return_conv2_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_conv2_B13_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_conv2_B13_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_conv2_B13_out_feedback_valid_out_1),
        .out_iowr_bl_return_conv2_o_fifodata(bb_conv2_B13_out_iowr_bl_return_conv2_o_fifodata),
        .out_iowr_bl_return_conv2_o_fifovalid(bb_conv2_B13_out_iowr_bl_return_conv2_o_fifovalid),
        .out_stall_in_0(bb_conv2_B13_out_stall_in_0),
        .out_stall_out_0(bb_conv2_B13_out_stall_out_0),
        .out_valid_out_0(bb_conv2_B13_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // conv2_B1_start_x(EXTIFACE,191)
    assign conv2_B1_start_x_i_capture = GND_q;
    assign conv2_B1_start_x_i_clear = GND_q;
    assign conv2_B1_start_x_i_enable = VCC_q;
    assign conv2_B1_start_x_i_shift = GND_q;
    assign conv2_B1_start_x_i_stall_pred = GND_q;
    assign conv2_B1_start_x_i_stall_succ = bb_conv2_B13_out_stall_in_0;
    assign conv2_B1_start_x_i_valid_loop = bb_conv2_B1_start_out_valid_in_0;
    assign conv2_B1_start_x_i_valid_pred = bb_conv2_B1_start_out_valid_in_1;
    assign conv2_B1_start_x_i_valid_succ = bb_conv2_B13_out_valid_out_0;
    assign conv2_B1_start_x_i_capture_bitsignaltemp = conv2_B1_start_x_i_capture[0];
    assign conv2_B1_start_x_i_clear_bitsignaltemp = conv2_B1_start_x_i_clear[0];
    assign conv2_B1_start_x_i_enable_bitsignaltemp = conv2_B1_start_x_i_enable[0];
    assign conv2_B1_start_x_i_shift_bitsignaltemp = conv2_B1_start_x_i_shift[0];
    assign conv2_B1_start_x_i_stall_pred_bitsignaltemp = conv2_B1_start_x_i_stall_pred[0];
    assign conv2_B1_start_x_i_stall_succ_bitsignaltemp = conv2_B1_start_x_i_stall_succ[0];
    assign conv2_B1_start_x_i_valid_loop_bitsignaltemp = conv2_B1_start_x_i_valid_loop[0];
    assign conv2_B1_start_x_i_valid_pred_bitsignaltemp = conv2_B1_start_x_i_valid_pred[0];
    assign conv2_B1_start_x_i_valid_succ_bitsignaltemp = conv2_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2.B1.start")
    ) theconv2_B1_start_x (
        .i_capture(conv2_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(conv2_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(conv2_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(conv2_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2_B2_x(EXTIFACE,192)
    assign conv2_B2_x_i_capture = GND_q;
    assign conv2_B2_x_i_clear = GND_q;
    assign conv2_B2_x_i_enable = VCC_q;
    assign conv2_B2_x_i_shift = GND_q;
    assign conv2_B2_x_i_stall_pred = loop_limiter_conv20_out_o_stall;
    assign conv2_B2_x_i_stall_succ = bb_conv2_B12_out_stall_in_0;
    assign conv2_B2_x_i_valid_loop = bb_conv2_B2_out_valid_in_0;
    assign conv2_B2_x_i_valid_pred = bb_conv2_B2_out_valid_in_1;
    assign conv2_B2_x_i_valid_succ = bb_conv2_B12_out_valid_out_0;
    assign conv2_B2_x_i_capture_bitsignaltemp = conv2_B2_x_i_capture[0];
    assign conv2_B2_x_i_clear_bitsignaltemp = conv2_B2_x_i_clear[0];
    assign conv2_B2_x_i_enable_bitsignaltemp = conv2_B2_x_i_enable[0];
    assign conv2_B2_x_i_shift_bitsignaltemp = conv2_B2_x_i_shift[0];
    assign conv2_B2_x_i_stall_pred_bitsignaltemp = conv2_B2_x_i_stall_pred[0];
    assign conv2_B2_x_i_stall_succ_bitsignaltemp = conv2_B2_x_i_stall_succ[0];
    assign conv2_B2_x_i_valid_loop_bitsignaltemp = conv2_B2_x_i_valid_loop[0];
    assign conv2_B2_x_i_valid_pred_bitsignaltemp = conv2_B2_x_i_valid_pred[0];
    assign conv2_B2_x_i_valid_succ_bitsignaltemp = conv2_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2.B2")
    ) theconv2_B2_x (
        .i_capture(conv2_B2_x_i_capture_bitsignaltemp),
        .i_clear(conv2_B2_x_i_clear_bitsignaltemp),
        .i_enable(conv2_B2_x_i_enable_bitsignaltemp),
        .i_shift(conv2_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2_B3_x(EXTIFACE,193)
    assign conv2_B3_x_i_capture = GND_q;
    assign conv2_B3_x_i_clear = GND_q;
    assign conv2_B3_x_i_enable = VCC_q;
    assign conv2_B3_x_i_shift = GND_q;
    assign conv2_B3_x_i_stall_pred = loop_limiter_conv21_out_o_stall;
    assign conv2_B3_x_i_stall_succ = bb_conv2_B11_out_stall_in_0;
    assign conv2_B3_x_i_valid_loop = bb_conv2_B3_out_valid_in_0;
    assign conv2_B3_x_i_valid_pred = bb_conv2_B3_out_valid_in_1;
    assign conv2_B3_x_i_valid_succ = bb_conv2_B11_out_valid_out_0;
    assign conv2_B3_x_i_capture_bitsignaltemp = conv2_B3_x_i_capture[0];
    assign conv2_B3_x_i_clear_bitsignaltemp = conv2_B3_x_i_clear[0];
    assign conv2_B3_x_i_enable_bitsignaltemp = conv2_B3_x_i_enable[0];
    assign conv2_B3_x_i_shift_bitsignaltemp = conv2_B3_x_i_shift[0];
    assign conv2_B3_x_i_stall_pred_bitsignaltemp = conv2_B3_x_i_stall_pred[0];
    assign conv2_B3_x_i_stall_succ_bitsignaltemp = conv2_B3_x_i_stall_succ[0];
    assign conv2_B3_x_i_valid_loop_bitsignaltemp = conv2_B3_x_i_valid_loop[0];
    assign conv2_B3_x_i_valid_pred_bitsignaltemp = conv2_B3_x_i_valid_pred[0];
    assign conv2_B3_x_i_valid_succ_bitsignaltemp = conv2_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2.B3")
    ) theconv2_B3_x (
        .i_capture(conv2_B3_x_i_capture_bitsignaltemp),
        .i_clear(conv2_B3_x_i_clear_bitsignaltemp),
        .i_enable(conv2_B3_x_i_enable_bitsignaltemp),
        .i_shift(conv2_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2_B4_x(EXTIFACE,194)
    assign conv2_B4_x_i_capture = GND_q;
    assign conv2_B4_x_i_clear = GND_q;
    assign conv2_B4_x_i_enable = VCC_q;
    assign conv2_B4_x_i_shift = GND_q;
    assign conv2_B4_x_i_stall_pred = loop_limiter_conv22_out_o_stall;
    assign conv2_B4_x_i_stall_succ = bb_conv2_B10_out_stall_in_0;
    assign conv2_B4_x_i_valid_loop = bb_conv2_B4_out_valid_in_0;
    assign conv2_B4_x_i_valid_pred = bb_conv2_B4_out_valid_in_1;
    assign conv2_B4_x_i_valid_succ = bb_conv2_B10_out_valid_out_0;
    assign conv2_B4_x_i_capture_bitsignaltemp = conv2_B4_x_i_capture[0];
    assign conv2_B4_x_i_clear_bitsignaltemp = conv2_B4_x_i_clear[0];
    assign conv2_B4_x_i_enable_bitsignaltemp = conv2_B4_x_i_enable[0];
    assign conv2_B4_x_i_shift_bitsignaltemp = conv2_B4_x_i_shift[0];
    assign conv2_B4_x_i_stall_pred_bitsignaltemp = conv2_B4_x_i_stall_pred[0];
    assign conv2_B4_x_i_stall_succ_bitsignaltemp = conv2_B4_x_i_stall_succ[0];
    assign conv2_B4_x_i_valid_loop_bitsignaltemp = conv2_B4_x_i_valid_loop[0];
    assign conv2_B4_x_i_valid_pred_bitsignaltemp = conv2_B4_x_i_valid_pred[0];
    assign conv2_B4_x_i_valid_succ_bitsignaltemp = conv2_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2.B4")
    ) theconv2_B4_x (
        .i_capture(conv2_B4_x_i_capture_bitsignaltemp),
        .i_clear(conv2_B4_x_i_clear_bitsignaltemp),
        .i_enable(conv2_B4_x_i_enable_bitsignaltemp),
        .i_shift(conv2_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2_B5_x(EXTIFACE,195)
    assign conv2_B5_x_i_capture = GND_q;
    assign conv2_B5_x_i_clear = GND_q;
    assign conv2_B5_x_i_enable = VCC_q;
    assign conv2_B5_x_i_shift = GND_q;
    assign conv2_B5_x_i_stall_pred = loop_limiter_conv23_out_o_stall;
    assign conv2_B5_x_i_stall_succ = bb_conv2_B9_out_stall_in_0;
    assign conv2_B5_x_i_valid_loop = bb_conv2_B5_out_valid_in_0;
    assign conv2_B5_x_i_valid_pred = bb_conv2_B5_out_valid_in_1;
    assign conv2_B5_x_i_valid_succ = bb_conv2_B9_out_valid_out_0;
    assign conv2_B5_x_i_capture_bitsignaltemp = conv2_B5_x_i_capture[0];
    assign conv2_B5_x_i_clear_bitsignaltemp = conv2_B5_x_i_clear[0];
    assign conv2_B5_x_i_enable_bitsignaltemp = conv2_B5_x_i_enable[0];
    assign conv2_B5_x_i_shift_bitsignaltemp = conv2_B5_x_i_shift[0];
    assign conv2_B5_x_i_stall_pred_bitsignaltemp = conv2_B5_x_i_stall_pred[0];
    assign conv2_B5_x_i_stall_succ_bitsignaltemp = conv2_B5_x_i_stall_succ[0];
    assign conv2_B5_x_i_valid_loop_bitsignaltemp = conv2_B5_x_i_valid_loop[0];
    assign conv2_B5_x_i_valid_pred_bitsignaltemp = conv2_B5_x_i_valid_pred[0];
    assign conv2_B5_x_i_valid_succ_bitsignaltemp = conv2_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2.B5")
    ) theconv2_B5_x (
        .i_capture(conv2_B5_x_i_capture_bitsignaltemp),
        .i_clear(conv2_B5_x_i_clear_bitsignaltemp),
        .i_enable(conv2_B5_x_i_enable_bitsignaltemp),
        .i_shift(conv2_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2_B6_x(EXTIFACE,196)
    assign conv2_B6_x_i_capture = GND_q;
    assign conv2_B6_x_i_clear = GND_q;
    assign conv2_B6_x_i_enable = VCC_q;
    assign conv2_B6_x_i_shift = GND_q;
    assign conv2_B6_x_i_stall_pred = loop_limiter_conv24_out_o_stall;
    assign conv2_B6_x_i_stall_succ = bb_conv2_B8_out_stall_in_0;
    assign conv2_B6_x_i_valid_loop = bb_conv2_B6_out_valid_in_0;
    assign conv2_B6_x_i_valid_pred = bb_conv2_B6_out_valid_in_1;
    assign conv2_B6_x_i_valid_succ = bb_conv2_B8_out_valid_out_0;
    assign conv2_B6_x_i_capture_bitsignaltemp = conv2_B6_x_i_capture[0];
    assign conv2_B6_x_i_clear_bitsignaltemp = conv2_B6_x_i_clear[0];
    assign conv2_B6_x_i_enable_bitsignaltemp = conv2_B6_x_i_enable[0];
    assign conv2_B6_x_i_shift_bitsignaltemp = conv2_B6_x_i_shift[0];
    assign conv2_B6_x_i_stall_pred_bitsignaltemp = conv2_B6_x_i_stall_pred[0];
    assign conv2_B6_x_i_stall_succ_bitsignaltemp = conv2_B6_x_i_stall_succ[0];
    assign conv2_B6_x_i_valid_loop_bitsignaltemp = conv2_B6_x_i_valid_loop[0];
    assign conv2_B6_x_i_valid_pred_bitsignaltemp = conv2_B6_x_i_valid_pred[0];
    assign conv2_B6_x_i_valid_succ_bitsignaltemp = conv2_B6_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2.B6")
    ) theconv2_B6_x (
        .i_capture(conv2_B6_x_i_capture_bitsignaltemp),
        .i_clear(conv2_B6_x_i_clear_bitsignaltemp),
        .i_enable(conv2_B6_x_i_enable_bitsignaltemp),
        .i_shift(conv2_B6_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2_B6_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2_B6_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2_B6_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2_B6_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2_B6_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2_B7_x(EXTIFACE,197)
    assign conv2_B7_x_i_capture = GND_q;
    assign conv2_B7_x_i_clear = GND_q;
    assign conv2_B7_x_i_enable = VCC_q;
    assign conv2_B7_x_i_shift = GND_q;
    assign conv2_B7_x_i_stall_pred = loop_limiter_conv25_out_o_stall;
    assign conv2_B7_x_i_stall_succ = bb_conv2_B7_out_stall_in_0;
    assign conv2_B7_x_i_valid_loop = bb_conv2_B7_out_valid_in_0;
    assign conv2_B7_x_i_valid_pred = bb_conv2_B7_out_valid_in_1;
    assign conv2_B7_x_i_valid_succ = bb_conv2_B7_out_valid_out_0;
    assign conv2_B7_x_i_capture_bitsignaltemp = conv2_B7_x_i_capture[0];
    assign conv2_B7_x_i_clear_bitsignaltemp = conv2_B7_x_i_clear[0];
    assign conv2_B7_x_i_enable_bitsignaltemp = conv2_B7_x_i_enable[0];
    assign conv2_B7_x_i_shift_bitsignaltemp = conv2_B7_x_i_shift[0];
    assign conv2_B7_x_i_stall_pred_bitsignaltemp = conv2_B7_x_i_stall_pred[0];
    assign conv2_B7_x_i_stall_succ_bitsignaltemp = conv2_B7_x_i_stall_succ[0];
    assign conv2_B7_x_i_valid_loop_bitsignaltemp = conv2_B7_x_i_valid_loop[0];
    assign conv2_B7_x_i_valid_pred_bitsignaltemp = conv2_B7_x_i_valid_pred[0];
    assign conv2_B7_x_i_valid_succ_bitsignaltemp = conv2_B7_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv2.B7")
    ) theconv2_B7_x (
        .i_capture(conv2_B7_x_i_capture_bitsignaltemp),
        .i_clear(conv2_B7_x_i_clear_bitsignaltemp),
        .i_enable(conv2_B7_x_i_enable_bitsignaltemp),
        .i_shift(conv2_B7_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv2_B7_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv2_B7_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv2_B7_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv2_B7_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv2_B7_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_conv2_o_fifoalmost_full(GPOUT,245)
    assign out_iord_bl_call_conv2_o_fifoalmost_full = bb_conv2_B1_start_out_iord_bl_call_conv2_o_fifoalmost_full;

    // out_iord_bl_call_conv2_o_fifoready(GPOUT,246)
    assign out_iord_bl_call_conv2_o_fifoready = bb_conv2_B1_start_out_iord_bl_call_conv2_o_fifoready;

    // out_iowr_bl_return_conv2_o_fifodata(GPOUT,247)
    assign out_iowr_bl_return_conv2_o_fifodata = bb_conv2_B13_out_iowr_bl_return_conv2_o_fifodata;

    // out_iowr_bl_return_conv2_o_fifovalid(GPOUT,248)
    assign out_iowr_bl_return_conv2_o_fifovalid = bb_conv2_B13_out_iowr_bl_return_conv2_o_fifovalid;

    // out_memdep_conv2_avm_address(GPOUT,249)
    assign out_memdep_conv2_avm_address = bb_conv2_B7_out_memdep_conv2_avm_address;

    // out_memdep_conv2_avm_burstcount(GPOUT,250)
    assign out_memdep_conv2_avm_burstcount = bb_conv2_B7_out_memdep_conv2_avm_burstcount;

    // out_memdep_conv2_avm_byteenable(GPOUT,251)
    assign out_memdep_conv2_avm_byteenable = bb_conv2_B7_out_memdep_conv2_avm_byteenable;

    // out_memdep_conv2_avm_enable(GPOUT,252)
    assign out_memdep_conv2_avm_enable = bb_conv2_B7_out_memdep_conv2_avm_enable;

    // out_memdep_conv2_avm_read(GPOUT,253)
    assign out_memdep_conv2_avm_read = bb_conv2_B7_out_memdep_conv2_avm_read;

    // out_memdep_conv2_avm_write(GPOUT,254)
    assign out_memdep_conv2_avm_write = bb_conv2_B7_out_memdep_conv2_avm_write;

    // out_memdep_conv2_avm_writedata(GPOUT,255)
    assign out_memdep_conv2_avm_writedata = bb_conv2_B7_out_memdep_conv2_avm_writedata;

    // out_o_active_memdep(GPOUT,256)
    assign out_o_active_memdep = bb_conv2_B7_out_lsu_memdep_o_active;

    // out_pn1_conv2_avm_address(GPOUT,257)
    assign out_pn1_conv2_avm_address = bb_conv2_B7_out_pn1_conv2_avm_address;

    // out_pn1_conv2_avm_burstcount(GPOUT,258)
    assign out_pn1_conv2_avm_burstcount = bb_conv2_B7_out_pn1_conv2_avm_burstcount;

    // out_pn1_conv2_avm_byteenable(GPOUT,259)
    assign out_pn1_conv2_avm_byteenable = bb_conv2_B7_out_pn1_conv2_avm_byteenable;

    // out_pn1_conv2_avm_enable(GPOUT,260)
    assign out_pn1_conv2_avm_enable = bb_conv2_B7_out_pn1_conv2_avm_enable;

    // out_pn1_conv2_avm_read(GPOUT,261)
    assign out_pn1_conv2_avm_read = bb_conv2_B7_out_pn1_conv2_avm_read;

    // out_pn1_conv2_avm_write(GPOUT,262)
    assign out_pn1_conv2_avm_write = bb_conv2_B7_out_pn1_conv2_avm_write;

    // out_pn1_conv2_avm_writedata(GPOUT,263)
    assign out_pn1_conv2_avm_writedata = bb_conv2_B7_out_pn1_conv2_avm_writedata;

    // bb_conv2_B0_runOnce(BLACKBOX,14)
    conv2_bb_B0_runOnce thebb_conv2_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_conv2_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,264)
    assign out_stall_out = bb_conv2_B0_runOnce_out_stall_out_0;

    // out_unnamed_conv28_conv2_avm_address(GPOUT,265)
    assign out_unnamed_conv28_conv2_avm_address = bb_conv2_B7_out_unnamed_conv28_conv2_avm_address;

    // out_unnamed_conv28_conv2_avm_burstcount(GPOUT,266)
    assign out_unnamed_conv28_conv2_avm_burstcount = bb_conv2_B7_out_unnamed_conv28_conv2_avm_burstcount;

    // out_unnamed_conv28_conv2_avm_byteenable(GPOUT,267)
    assign out_unnamed_conv28_conv2_avm_byteenable = bb_conv2_B7_out_unnamed_conv28_conv2_avm_byteenable;

    // out_unnamed_conv28_conv2_avm_enable(GPOUT,268)
    assign out_unnamed_conv28_conv2_avm_enable = bb_conv2_B7_out_unnamed_conv28_conv2_avm_enable;

    // out_unnamed_conv28_conv2_avm_read(GPOUT,269)
    assign out_unnamed_conv28_conv2_avm_read = bb_conv2_B7_out_unnamed_conv28_conv2_avm_read;

    // out_unnamed_conv28_conv2_avm_write(GPOUT,270)
    assign out_unnamed_conv28_conv2_avm_write = bb_conv2_B7_out_unnamed_conv28_conv2_avm_write;

    // out_unnamed_conv28_conv2_avm_writedata(GPOUT,271)
    assign out_unnamed_conv28_conv2_avm_writedata = bb_conv2_B7_out_unnamed_conv28_conv2_avm_writedata;

    // out_unnamed_conv29_conv2_avm_address(GPOUT,272)
    assign out_unnamed_conv29_conv2_avm_address = bb_conv2_B7_out_unnamed_conv29_conv2_avm_address;

    // out_unnamed_conv29_conv2_avm_burstcount(GPOUT,273)
    assign out_unnamed_conv29_conv2_avm_burstcount = bb_conv2_B7_out_unnamed_conv29_conv2_avm_burstcount;

    // out_unnamed_conv29_conv2_avm_byteenable(GPOUT,274)
    assign out_unnamed_conv29_conv2_avm_byteenable = bb_conv2_B7_out_unnamed_conv29_conv2_avm_byteenable;

    // out_unnamed_conv29_conv2_avm_enable(GPOUT,275)
    assign out_unnamed_conv29_conv2_avm_enable = bb_conv2_B7_out_unnamed_conv29_conv2_avm_enable;

    // out_unnamed_conv29_conv2_avm_read(GPOUT,276)
    assign out_unnamed_conv29_conv2_avm_read = bb_conv2_B7_out_unnamed_conv29_conv2_avm_read;

    // out_unnamed_conv29_conv2_avm_write(GPOUT,277)
    assign out_unnamed_conv29_conv2_avm_write = bb_conv2_B7_out_unnamed_conv29_conv2_avm_write;

    // out_unnamed_conv29_conv2_avm_writedata(GPOUT,278)
    assign out_unnamed_conv29_conv2_avm_writedata = bb_conv2_B7_out_unnamed_conv29_conv2_avm_writedata;

    // out_valid_out(GPOUT,279)
    assign out_valid_out = GND_q;

endmodule
