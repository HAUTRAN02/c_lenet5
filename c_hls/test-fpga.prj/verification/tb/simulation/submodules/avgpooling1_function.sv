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

// SystemVerilog created from avgpooling1_function
// Created for function/kernel avgpooling1
// SystemVerilog created on Sat Apr  1 13:10:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpooling1_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_in0,
    input wire [63:0] in_arg_out0,
    input wire [63:0] in_arg_return,
    input wire [127:0] in_iord_bl_call_avgpooling1_i_fifodata,
    input wire [0:0] in_iord_bl_call_avgpooling1_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_avgpooling1_i_fifoready,
    input wire [63:0] in_memdep_avgpooling1_avm_readdata,
    input wire [0:0] in_memdep_avgpooling1_avm_readdatavalid,
    input wire [0:0] in_memdep_avgpooling1_avm_waitrequest,
    input wire [0:0] in_memdep_avgpooling1_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [63:0] in_unnamed_avgpooling16_avgpooling1_avm_readdata,
    input wire [0:0] in_unnamed_avgpooling16_avgpooling1_avm_readdatavalid,
    input wire [0:0] in_unnamed_avgpooling16_avgpooling1_avm_waitrequest,
    input wire [0:0] in_unnamed_avgpooling16_avgpooling1_avm_writeack,
    input wire [63:0] in_unnamed_avgpooling17_avgpooling1_avm_readdata,
    input wire [0:0] in_unnamed_avgpooling17_avgpooling1_avm_readdatavalid,
    input wire [0:0] in_unnamed_avgpooling17_avgpooling1_avm_waitrequest,
    input wire [0:0] in_unnamed_avgpooling17_avgpooling1_avm_writeack,
    input wire [63:0] in_unnamed_avgpooling18_avgpooling1_avm_readdata,
    input wire [0:0] in_unnamed_avgpooling18_avgpooling1_avm_readdatavalid,
    input wire [0:0] in_unnamed_avgpooling18_avgpooling1_avm_waitrequest,
    input wire [0:0] in_unnamed_avgpooling18_avgpooling1_avm_writeack,
    input wire [63:0] in_unnamed_avgpooling19_avgpooling1_avm_readdata,
    input wire [0:0] in_unnamed_avgpooling19_avgpooling1_avm_readdatavalid,
    input wire [0:0] in_unnamed_avgpooling19_avgpooling1_avm_waitrequest,
    input wire [0:0] in_unnamed_avgpooling19_avgpooling1_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_avgpooling1_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_avgpooling1_o_fifoready,
    output wire [0:0] out_iowr_bl_return_avgpooling1_o_fifodata,
    output wire [0:0] out_iowr_bl_return_avgpooling1_o_fifovalid,
    output wire [63:0] out_memdep_avgpooling1_avm_address,
    output wire [0:0] out_memdep_avgpooling1_avm_burstcount,
    output wire [7:0] out_memdep_avgpooling1_avm_byteenable,
    output wire [0:0] out_memdep_avgpooling1_avm_enable,
    output wire [0:0] out_memdep_avgpooling1_avm_read,
    output wire [0:0] out_memdep_avgpooling1_avm_write,
    output wire [63:0] out_memdep_avgpooling1_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_stall_out,
    output wire [63:0] out_unnamed_avgpooling16_avgpooling1_avm_address,
    output wire [0:0] out_unnamed_avgpooling16_avgpooling1_avm_burstcount,
    output wire [7:0] out_unnamed_avgpooling16_avgpooling1_avm_byteenable,
    output wire [0:0] out_unnamed_avgpooling16_avgpooling1_avm_enable,
    output wire [0:0] out_unnamed_avgpooling16_avgpooling1_avm_read,
    output wire [0:0] out_unnamed_avgpooling16_avgpooling1_avm_write,
    output wire [63:0] out_unnamed_avgpooling16_avgpooling1_avm_writedata,
    output wire [63:0] out_unnamed_avgpooling17_avgpooling1_avm_address,
    output wire [0:0] out_unnamed_avgpooling17_avgpooling1_avm_burstcount,
    output wire [7:0] out_unnamed_avgpooling17_avgpooling1_avm_byteenable,
    output wire [0:0] out_unnamed_avgpooling17_avgpooling1_avm_enable,
    output wire [0:0] out_unnamed_avgpooling17_avgpooling1_avm_read,
    output wire [0:0] out_unnamed_avgpooling17_avgpooling1_avm_write,
    output wire [63:0] out_unnamed_avgpooling17_avgpooling1_avm_writedata,
    output wire [63:0] out_unnamed_avgpooling18_avgpooling1_avm_address,
    output wire [0:0] out_unnamed_avgpooling18_avgpooling1_avm_burstcount,
    output wire [7:0] out_unnamed_avgpooling18_avgpooling1_avm_byteenable,
    output wire [0:0] out_unnamed_avgpooling18_avgpooling1_avm_enable,
    output wire [0:0] out_unnamed_avgpooling18_avgpooling1_avm_read,
    output wire [0:0] out_unnamed_avgpooling18_avgpooling1_avm_write,
    output wire [63:0] out_unnamed_avgpooling18_avgpooling1_avm_writedata,
    output wire [63:0] out_unnamed_avgpooling19_avgpooling1_avm_address,
    output wire [0:0] out_unnamed_avgpooling19_avgpooling1_avm_burstcount,
    output wire [7:0] out_unnamed_avgpooling19_avgpooling1_avm_byteenable,
    output wire [0:0] out_unnamed_avgpooling19_avgpooling1_avm_enable,
    output wire [0:0] out_unnamed_avgpooling19_avgpooling1_avm_read,
    output wire [0:0] out_unnamed_avgpooling19_avgpooling1_avm_write,
    output wire [63:0] out_unnamed_avgpooling19_avgpooling1_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] bb_avgpooling1_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [63:0] bb_avgpooling1_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [0:0] bb_avgpooling1_B1_start_aunroll_x_out_feedback_stall_out_1;
    wire [0:0] bb_avgpooling1_B1_start_aunroll_x_out_iord_bl_call_avgpooling1_o_fifoalmost_full;
    wire [0:0] bb_avgpooling1_B1_start_aunroll_x_out_iord_bl_call_avgpooling1_o_fifoready;
    wire [0:0] bb_avgpooling1_B1_start_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_avgpooling1_B1_start_aunroll_x_out_stall_out_0;
    wire [0:0] bb_avgpooling1_B1_start_aunroll_x_out_valid_in_0;
    wire [0:0] bb_avgpooling1_B1_start_aunroll_x_out_valid_in_1;
    wire [0:0] bb_avgpooling1_B1_start_aunroll_x_out_valid_out_0;
    wire [0:0] bb_avgpooling1_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_avgpooling1_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_avgpooling1_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_avgpooling1_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_avgpooling1_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_avgpooling1_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_avgpooling1_B3_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_avgpooling1_B3_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_avgpooling1_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_avgpooling1_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_exitcond1139_pop29;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_exitcond1432_pop25;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_exiting_stall_out;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_exiting_valid_out;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_lsu_memdep_o_active;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_memdep;
    wire [63:0] bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_address;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_burstcount;
    wire [7:0] bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_byteenable;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_enable;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_read;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_write;
    wire [63:0] bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_writedata;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_notcmp1540_pop30;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_notcmp2034_pop26;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_stall_in_0;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_stall_out_0;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_stall_out_1;
    wire [63:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_address;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_burstcount;
    wire [7:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_byteenable;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_enable;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_read;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_write;
    wire [63:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_writedata;
    wire [63:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_address;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_burstcount;
    wire [7:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_byteenable;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_enable;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_read;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_write;
    wire [63:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_writedata;
    wire [63:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_address;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_burstcount;
    wire [7:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_byteenable;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_enable;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_read;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_write;
    wire [63:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_writedata;
    wire [63:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_address;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_burstcount;
    wire [7:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_byteenable;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_enable;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_read;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_write;
    wire [63:0] bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_writedata;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_valid_in_0;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_valid_in_1;
    wire [0:0] bb_avgpooling1_B4_aunroll_x_out_valid_out_0;
    wire [0:0] bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_avgpooling1_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_avgpooling1_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_avgpooling1_B5_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_avgpooling1_B5_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_avgpooling1_B5_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_avgpooling1_B5_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_avgpooling1_B5_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_avgpooling1_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_avgpooling1_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_avgpooling1_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_avgpooling1_B6_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_avgpooling1_B6_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_avgpooling1_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_avgpooling1_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_avgpooling1_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_avgpooling1_B7_sr_0_aunroll_x_out_o_valid;
    wire [0:0] avgpooling1_B1_start_x_i_capture;
    wire avgpooling1_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] avgpooling1_B1_start_x_i_clear;
    wire avgpooling1_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] avgpooling1_B1_start_x_i_enable;
    wire avgpooling1_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] avgpooling1_B1_start_x_i_shift;
    wire avgpooling1_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] avgpooling1_B1_start_x_i_stall_pred;
    wire avgpooling1_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] avgpooling1_B1_start_x_i_stall_succ;
    wire avgpooling1_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] avgpooling1_B1_start_x_i_valid_loop;
    wire avgpooling1_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] avgpooling1_B1_start_x_i_valid_pred;
    wire avgpooling1_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] avgpooling1_B1_start_x_i_valid_succ;
    wire avgpooling1_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] avgpooling1_B2_x_i_capture;
    wire avgpooling1_B2_x_i_capture_bitsignaltemp;
    wire [0:0] avgpooling1_B2_x_i_clear;
    wire avgpooling1_B2_x_i_clear_bitsignaltemp;
    wire [0:0] avgpooling1_B2_x_i_enable;
    wire avgpooling1_B2_x_i_enable_bitsignaltemp;
    wire [0:0] avgpooling1_B2_x_i_shift;
    wire avgpooling1_B2_x_i_shift_bitsignaltemp;
    wire [0:0] avgpooling1_B2_x_i_stall_pred;
    wire avgpooling1_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] avgpooling1_B2_x_i_stall_succ;
    wire avgpooling1_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] avgpooling1_B2_x_i_valid_loop;
    wire avgpooling1_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] avgpooling1_B2_x_i_valid_pred;
    wire avgpooling1_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] avgpooling1_B2_x_i_valid_succ;
    wire avgpooling1_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] avgpooling1_B3_x_i_capture;
    wire avgpooling1_B3_x_i_capture_bitsignaltemp;
    wire [0:0] avgpooling1_B3_x_i_clear;
    wire avgpooling1_B3_x_i_clear_bitsignaltemp;
    wire [0:0] avgpooling1_B3_x_i_enable;
    wire avgpooling1_B3_x_i_enable_bitsignaltemp;
    wire [0:0] avgpooling1_B3_x_i_shift;
    wire avgpooling1_B3_x_i_shift_bitsignaltemp;
    wire [0:0] avgpooling1_B3_x_i_stall_pred;
    wire avgpooling1_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] avgpooling1_B3_x_i_stall_succ;
    wire avgpooling1_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] avgpooling1_B3_x_i_valid_loop;
    wire avgpooling1_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] avgpooling1_B3_x_i_valid_pred;
    wire avgpooling1_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] avgpooling1_B3_x_i_valid_succ;
    wire avgpooling1_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] avgpooling1_B4_x_i_capture;
    wire avgpooling1_B4_x_i_capture_bitsignaltemp;
    wire [0:0] avgpooling1_B4_x_i_clear;
    wire avgpooling1_B4_x_i_clear_bitsignaltemp;
    wire [0:0] avgpooling1_B4_x_i_enable;
    wire avgpooling1_B4_x_i_enable_bitsignaltemp;
    wire [0:0] avgpooling1_B4_x_i_shift;
    wire avgpooling1_B4_x_i_shift_bitsignaltemp;
    wire [0:0] avgpooling1_B4_x_i_stall_pred;
    wire avgpooling1_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] avgpooling1_B4_x_i_stall_succ;
    wire avgpooling1_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] avgpooling1_B4_x_i_valid_loop;
    wire avgpooling1_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] avgpooling1_B4_x_i_valid_pred;
    wire avgpooling1_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] avgpooling1_B4_x_i_valid_succ;
    wire avgpooling1_B4_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_avgpooling1_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_avgpooling1_B2_out_c0_exe174;
    wire [0:0] bb_avgpooling1_B2_out_c0_exe2;
    wire [31:0] bb_avgpooling1_B2_out_c0_exe3;
    wire [0:0] bb_avgpooling1_B2_out_exiting_stall_out;
    wire [0:0] bb_avgpooling1_B2_out_exiting_valid_out;
    wire [0:0] bb_avgpooling1_B2_out_feedback_stall_out_12;
    wire [0:0] bb_avgpooling1_B2_out_memdep_phi2_pop12;
    wire [0:0] bb_avgpooling1_B2_out_pipeline_valid_out;
    wire [0:0] bb_avgpooling1_B2_out_stall_out_0;
    wire [0:0] bb_avgpooling1_B2_out_stall_out_1;
    wire [0:0] bb_avgpooling1_B2_out_valid_in_0;
    wire [0:0] bb_avgpooling1_B2_out_valid_in_1;
    wire [0:0] bb_avgpooling1_B2_out_valid_out_0;
    wire [0:0] bb_avgpooling1_B3_out_c0_exe183;
    wire [0:0] bb_avgpooling1_B3_out_c0_exe284;
    wire [31:0] bb_avgpooling1_B3_out_c0_exe385;
    wire [0:0] bb_avgpooling1_B3_out_c0_exe486;
    wire [0:0] bb_avgpooling1_B3_out_c0_exe5;
    wire [31:0] bb_avgpooling1_B3_out_c0_exe6;
    wire [0:0] bb_avgpooling1_B3_out_c0_exe7;
    wire [0:0] bb_avgpooling1_B3_out_exiting_stall_out;
    wire [0:0] bb_avgpooling1_B3_out_exiting_valid_out;
    wire [0:0] bb_avgpooling1_B3_out_feedback_stall_out_15;
    wire [0:0] bb_avgpooling1_B3_out_memdep_phi1_pop15;
    wire [0:0] bb_avgpooling1_B3_out_pipeline_valid_out;
    wire [0:0] bb_avgpooling1_B3_out_stall_out_0;
    wire [0:0] bb_avgpooling1_B3_out_stall_out_1;
    wire [0:0] bb_avgpooling1_B3_out_valid_in_0;
    wire [0:0] bb_avgpooling1_B3_out_valid_in_1;
    wire [0:0] bb_avgpooling1_B3_out_valid_out_0;
    wire [0:0] bb_avgpooling1_B5_out_exitcond1432_pop254;
    wire [0:0] bb_avgpooling1_B5_out_feedback_out_15;
    wire [0:0] bb_avgpooling1_B5_out_feedback_valid_out_15;
    wire [0:0] bb_avgpooling1_B5_out_memdep_8;
    wire [0:0] bb_avgpooling1_B5_out_notcmp2034_pop266;
    wire [0:0] bb_avgpooling1_B5_out_stall_in_0;
    wire [0:0] bb_avgpooling1_B5_out_stall_out_0;
    wire [0:0] bb_avgpooling1_B5_out_valid_out_0;
    wire [0:0] bb_avgpooling1_B6_out_feedback_out_12;
    wire [0:0] bb_avgpooling1_B6_out_feedback_valid_out_12;
    wire [0:0] bb_avgpooling1_B6_out_stall_in_0;
    wire [0:0] bb_avgpooling1_B6_out_stall_out_0;
    wire [0:0] bb_avgpooling1_B6_out_valid_out_0;
    wire [0:0] bb_avgpooling1_B7_out_feedback_out_1;
    wire [0:0] bb_avgpooling1_B7_out_feedback_valid_out_1;
    wire [0:0] bb_avgpooling1_B7_out_iowr_bl_return_avgpooling1_o_fifodata;
    wire [0:0] bb_avgpooling1_B7_out_iowr_bl_return_avgpooling1_o_fifovalid;
    wire [0:0] bb_avgpooling1_B7_out_stall_in_0;
    wire [0:0] bb_avgpooling1_B7_out_stall_out_0;
    wire [0:0] bb_avgpooling1_B7_out_valid_out_0;
    wire [1:0] c_i2_050_q;
    wire [31:0] c_i32_undef16_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_avgpooling12_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_avgpooling12_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_avgpooling12_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going17_avgpooling12_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_avgpooling12_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_avgpooling12_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_avgpooling12_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_avgpooling12_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_avgpooling11_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_avgpooling11_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_avgpooling11_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_avgpooling11_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpooling13_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpooling13_sr_out_o_valid;
    wire [0:0] loop_limiter_avgpooling10_out_o_stall;
    wire [0:0] loop_limiter_avgpooling10_out_o_valid;
    wire [0:0] loop_limiter_avgpooling11_out_o_stall;
    wire [0:0] loop_limiter_avgpooling11_out_o_valid;
    wire [0:0] loop_limiter_avgpooling12_out_o_stall;
    wire [0:0] loop_limiter_avgpooling12_out_o_valid;


    // c_i2_050(CONSTANT,53)
    assign c_i2_050_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going26_avgpooling11_valid_fifo(BLACKBOX,65)
    avgpooling1_i_llvm_fpga_pipeline_keep_going26_1_valid_fifo thei_llvm_fpga_pipeline_keep_going26_avgpooling11_valid_fifo (
        .in_data_in(c_i2_050_q),
        .in_stall_in(bb_avgpooling1_B1_start_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going26_avgpooling11_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going26_avgpooling11_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going26_avgpooling11_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going22_avgpooling12_valid_fifo(BLACKBOX,63)
    avgpooling1_i_llvm_fpga_pipeline_keep_going22_2_valid_fifo thei_llvm_fpga_pipeline_keep_going22_avgpooling12_valid_fifo (
        .in_data_in(c_i2_050_q),
        .in_stall_in(bb_avgpooling1_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going22_avgpooling12_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going22_avgpooling12_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going22_avgpooling12_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going17_avgpooling12_valid_fifo(BLACKBOX,61)
    avgpooling1_i_llvm_fpga_pipeline_keep_going17_2_valid_fifo thei_llvm_fpga_pipeline_keep_going17_avgpooling12_valid_fifo (
        .in_data_in(c_i2_050_q),
        .in_stall_in(bb_avgpooling1_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going17_avgpooling12_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going17_avgpooling12_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going17_avgpooling12_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpooling1_B5_sr_0_aunroll_x(BLACKBOX,7)
    avgpooling1_bb_B5_sr_0 thebb_avgpooling1_B5_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_avgpooling1_B4_aunroll_x_out_exitcond1139_pop29),
        .in_i_data_1_tpl(bb_avgpooling1_B4_aunroll_x_out_notcmp1540_pop30),
        .in_i_data_2_tpl(bb_avgpooling1_B4_aunroll_x_out_exitcond1432_pop25),
        .in_i_data_3_tpl(bb_avgpooling1_B4_aunroll_x_out_notcmp2034_pop26),
        .in_i_data_4_tpl(bb_avgpooling1_B4_aunroll_x_out_memdep),
        .in_i_stall(bb_avgpooling1_B5_out_stall_out_0),
        .in_i_valid(bb_avgpooling1_B4_aunroll_x_out_valid_out_0),
        .out_o_data_0_tpl(bb_avgpooling1_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_avgpooling1_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_avgpooling1_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_avgpooling1_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_avgpooling1_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_stall(bb_avgpooling1_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_avgpooling1_B5_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_avgpooling13_sr(BLACKBOX,66)
    avgpooling1_i_llvm_fpga_pipeline_keep_going_3_sr thei_llvm_fpga_pipeline_keep_going_avgpooling13_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_avgpooling1_B4_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_avgpooling1_B4_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_avgpooling13_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_avgpooling13_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpooling1_B4_aunroll_x(BLACKBOX,5)
    avgpooling1_bb_B4 thebb_avgpooling1_B4_aunroll_x (
        .in_intel_reserved_ffwd_0_0_0_tpl(bb_avgpooling1_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(bb_avgpooling1_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .in_exitcond1155_0(GND_q),
        .in_exitcond1155_1(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_exitcond1431_pop1659_0(GND_q),
        .in_exitcond1431_pop1659_1(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_026_pop1457_0(c_i32_undef16_q),
        .in_i_026_pop1457_1(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_memdep_avgpooling1_avm_readdata(in_memdep_avgpooling1_avm_readdata),
        .in_memdep_avgpooling1_avm_readdatavalid(in_memdep_avgpooling1_avm_readdatavalid),
        .in_memdep_avgpooling1_avm_waitrequest(in_memdep_avgpooling1_avm_waitrequest),
        .in_memdep_avgpooling1_avm_writeack(in_memdep_avgpooling1_avm_writeack),
        .in_memdep_phi1_pop1558_0(GND_q),
        .in_memdep_phi1_pop1558_1(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi2_pop1237_pop1962_0(GND_q),
        .in_memdep_phi2_pop1237_pop1962_1(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_n_channel_027_pop1135_pop1861_0(c_i32_undef16_q),
        .in_n_channel_027_pop1135_pop1861_1(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_notcmp1556_0(GND_q),
        .in_notcmp1556_1(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp2033_pop1760_0(GND_q),
        .in_notcmp2033_pop1760_1(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_avgpooling13_sr_out_o_stall),
        .in_stall_in_0(bb_avgpooling1_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_avgpooling16_avgpooling1_avm_readdata(in_unnamed_avgpooling16_avgpooling1_avm_readdata),
        .in_unnamed_avgpooling16_avgpooling1_avm_readdatavalid(in_unnamed_avgpooling16_avgpooling1_avm_readdatavalid),
        .in_unnamed_avgpooling16_avgpooling1_avm_waitrequest(in_unnamed_avgpooling16_avgpooling1_avm_waitrequest),
        .in_unnamed_avgpooling16_avgpooling1_avm_writeack(in_unnamed_avgpooling16_avgpooling1_avm_writeack),
        .in_unnamed_avgpooling17_avgpooling1_avm_readdata(in_unnamed_avgpooling17_avgpooling1_avm_readdata),
        .in_unnamed_avgpooling17_avgpooling1_avm_readdatavalid(in_unnamed_avgpooling17_avgpooling1_avm_readdatavalid),
        .in_unnamed_avgpooling17_avgpooling1_avm_waitrequest(in_unnamed_avgpooling17_avgpooling1_avm_waitrequest),
        .in_unnamed_avgpooling17_avgpooling1_avm_writeack(in_unnamed_avgpooling17_avgpooling1_avm_writeack),
        .in_unnamed_avgpooling18_avgpooling1_avm_readdata(in_unnamed_avgpooling18_avgpooling1_avm_readdata),
        .in_unnamed_avgpooling18_avgpooling1_avm_readdatavalid(in_unnamed_avgpooling18_avgpooling1_avm_readdatavalid),
        .in_unnamed_avgpooling18_avgpooling1_avm_waitrequest(in_unnamed_avgpooling18_avgpooling1_avm_waitrequest),
        .in_unnamed_avgpooling18_avgpooling1_avm_writeack(in_unnamed_avgpooling18_avgpooling1_avm_writeack),
        .in_unnamed_avgpooling19_avgpooling1_avm_readdata(in_unnamed_avgpooling19_avgpooling1_avm_readdata),
        .in_unnamed_avgpooling19_avgpooling1_avm_readdatavalid(in_unnamed_avgpooling19_avgpooling1_avm_readdatavalid),
        .in_unnamed_avgpooling19_avgpooling1_avm_waitrequest(in_unnamed_avgpooling19_avgpooling1_avm_waitrequest),
        .in_unnamed_avgpooling19_avgpooling1_avm_writeack(in_unnamed_avgpooling19_avgpooling1_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_avgpooling13_sr_out_o_valid),
        .in_valid_in_1(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_valid),
        .out_exitcond1139_pop29(bb_avgpooling1_B4_aunroll_x_out_exitcond1139_pop29),
        .out_exitcond1432_pop25(bb_avgpooling1_B4_aunroll_x_out_exitcond1432_pop25),
        .out_exiting_stall_out(bb_avgpooling1_B4_aunroll_x_out_exiting_stall_out),
        .out_exiting_valid_out(bb_avgpooling1_B4_aunroll_x_out_exiting_valid_out),
        .out_lsu_memdep_o_active(bb_avgpooling1_B4_aunroll_x_out_lsu_memdep_o_active),
        .out_memdep(bb_avgpooling1_B4_aunroll_x_out_memdep),
        .out_memdep_avgpooling1_avm_address(bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_address),
        .out_memdep_avgpooling1_avm_burstcount(bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_burstcount),
        .out_memdep_avgpooling1_avm_byteenable(bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_byteenable),
        .out_memdep_avgpooling1_avm_enable(bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_enable),
        .out_memdep_avgpooling1_avm_read(bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_read),
        .out_memdep_avgpooling1_avm_write(bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_write),
        .out_memdep_avgpooling1_avm_writedata(bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_writedata),
        .out_notcmp1540_pop30(bb_avgpooling1_B4_aunroll_x_out_notcmp1540_pop30),
        .out_notcmp2034_pop26(bb_avgpooling1_B4_aunroll_x_out_notcmp2034_pop26),
        .out_pipeline_valid_out(bb_avgpooling1_B4_aunroll_x_out_pipeline_valid_out),
        .out_stall_in_0(bb_avgpooling1_B4_aunroll_x_out_stall_in_0),
        .out_stall_out_0(bb_avgpooling1_B4_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_avgpooling1_B4_aunroll_x_out_stall_out_1),
        .out_unnamed_avgpooling16_avgpooling1_avm_address(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_address),
        .out_unnamed_avgpooling16_avgpooling1_avm_burstcount(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_burstcount),
        .out_unnamed_avgpooling16_avgpooling1_avm_byteenable(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_byteenable),
        .out_unnamed_avgpooling16_avgpooling1_avm_enable(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_enable),
        .out_unnamed_avgpooling16_avgpooling1_avm_read(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_read),
        .out_unnamed_avgpooling16_avgpooling1_avm_write(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_write),
        .out_unnamed_avgpooling16_avgpooling1_avm_writedata(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_writedata),
        .out_unnamed_avgpooling17_avgpooling1_avm_address(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_address),
        .out_unnamed_avgpooling17_avgpooling1_avm_burstcount(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_burstcount),
        .out_unnamed_avgpooling17_avgpooling1_avm_byteenable(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_byteenable),
        .out_unnamed_avgpooling17_avgpooling1_avm_enable(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_enable),
        .out_unnamed_avgpooling17_avgpooling1_avm_read(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_read),
        .out_unnamed_avgpooling17_avgpooling1_avm_write(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_write),
        .out_unnamed_avgpooling17_avgpooling1_avm_writedata(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_writedata),
        .out_unnamed_avgpooling18_avgpooling1_avm_address(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_address),
        .out_unnamed_avgpooling18_avgpooling1_avm_burstcount(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_burstcount),
        .out_unnamed_avgpooling18_avgpooling1_avm_byteenable(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_byteenable),
        .out_unnamed_avgpooling18_avgpooling1_avm_enable(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_enable),
        .out_unnamed_avgpooling18_avgpooling1_avm_read(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_read),
        .out_unnamed_avgpooling18_avgpooling1_avm_write(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_write),
        .out_unnamed_avgpooling18_avgpooling1_avm_writedata(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_writedata),
        .out_unnamed_avgpooling19_avgpooling1_avm_address(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_address),
        .out_unnamed_avgpooling19_avgpooling1_avm_burstcount(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_burstcount),
        .out_unnamed_avgpooling19_avgpooling1_avm_byteenable(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_byteenable),
        .out_unnamed_avgpooling19_avgpooling1_avm_enable(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_enable),
        .out_unnamed_avgpooling19_avgpooling1_avm_read(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_read),
        .out_unnamed_avgpooling19_avgpooling1_avm_write(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_write),
        .out_unnamed_avgpooling19_avgpooling1_avm_writedata(bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_writedata),
        .out_valid_in_0(bb_avgpooling1_B4_aunroll_x_out_valid_in_0),
        .out_valid_in_1(bb_avgpooling1_B4_aunroll_x_out_valid_in_1),
        .out_valid_out_0(bb_avgpooling1_B4_aunroll_x_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpooling1_B4_sr_1_aunroll_x(BLACKBOX,6)
    avgpooling1_bb_B4_sr_1 thebb_avgpooling1_B4_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_avgpooling1_B3_out_c0_exe183),
        .in_i_data_2_tpl(bb_avgpooling1_B3_out_c0_exe284),
        .in_i_data_3_tpl(bb_avgpooling1_B3_out_c0_exe385),
        .in_i_data_4_tpl(bb_avgpooling1_B3_out_memdep_phi1_pop15),
        .in_i_data_5_tpl(bb_avgpooling1_B3_out_c0_exe486),
        .in_i_data_6_tpl(bb_avgpooling1_B3_out_c0_exe5),
        .in_i_data_7_tpl(bb_avgpooling1_B3_out_c0_exe6),
        .in_i_data_8_tpl(bb_avgpooling1_B3_out_c0_exe7),
        .in_i_stall(bb_avgpooling1_B4_aunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_avgpooling12_out_o_valid),
        .out_o_data_0_tpl(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_stall(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_avgpooling12(BLACKBOX,99)
    avgpooling1_loop_limiter_2 theloop_limiter_avgpooling12 (
        .in_i_stall(bb_avgpooling1_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_avgpooling1_B4_aunroll_x_out_exiting_stall_out),
        .in_i_valid(bb_avgpooling1_B3_out_valid_out_0),
        .in_i_valid_exit(bb_avgpooling1_B4_aunroll_x_out_exiting_valid_out),
        .out_o_stall(loop_limiter_avgpooling12_out_o_stall),
        .out_o_valid(loop_limiter_avgpooling12_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going17_avgpooling12_sr(BLACKBOX,60)
    avgpooling1_i_llvm_fpga_pipeline_keep_going17_2_sr thei_llvm_fpga_pipeline_keep_going17_avgpooling12_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going17_avgpooling12_valid_fifo_out_stall_out),
        .in_i_valid(bb_avgpooling1_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going17_avgpooling12_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going17_avgpooling12_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef16(CONSTANT,56)
    assign c_i32_undef16_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_avgpooling1_B6_sr_0_aunroll_x(BLACKBOX,8)
    avgpooling1_bb_B6_sr_0 thebb_avgpooling1_B6_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_avgpooling1_B5_out_exitcond1432_pop254),
        .in_i_data_1_tpl(bb_avgpooling1_B5_out_notcmp2034_pop266),
        .in_i_data_2_tpl(bb_avgpooling1_B5_out_memdep_8),
        .in_i_stall(bb_avgpooling1_B6_out_stall_out_0),
        .in_i_valid(bb_avgpooling1_B5_out_valid_out_0),
        .out_o_data_0_tpl(bb_avgpooling1_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_avgpooling1_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_avgpooling1_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_avgpooling1_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_avgpooling1_B6_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpooling1_B5(BLACKBOX,17)
    avgpooling1_bb_B5 thebb_avgpooling1_B5 (
        .in_exitcond1139_pop291_0(bb_avgpooling1_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_exitcond1432_pop254_0(bb_avgpooling1_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_feedback_stall_in_15(bb_avgpooling1_B3_out_feedback_stall_out_15),
        .in_memdep_8_0(bb_avgpooling1_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_notcmp1540_pop302_0(bb_avgpooling1_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_notcmp2034_pop266_0(bb_avgpooling1_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_stall_in_0(bb_avgpooling1_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_avgpooling1_B5_sr_0_aunroll_x_out_o_valid),
        .out_exitcond1432_pop254(bb_avgpooling1_B5_out_exitcond1432_pop254),
        .out_feedback_out_15(bb_avgpooling1_B5_out_feedback_out_15),
        .out_feedback_valid_out_15(bb_avgpooling1_B5_out_feedback_valid_out_15),
        .out_memdep_8(bb_avgpooling1_B5_out_memdep_8),
        .out_notcmp2034_pop266(bb_avgpooling1_B5_out_notcmp2034_pop266),
        .out_stall_in_0(bb_avgpooling1_B5_out_stall_in_0),
        .out_stall_out_0(bb_avgpooling1_B5_out_stall_out_0),
        .out_valid_out_0(bb_avgpooling1_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpooling1_B3(BLACKBOX,16)
    avgpooling1_bb_B3 thebb_avgpooling1_B3 (
        .in_exitcond1443_0(GND_q),
        .in_exitcond1443_1(bb_avgpooling1_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_feedback_in_15(bb_avgpooling1_B5_out_feedback_out_15),
        .in_feedback_valid_in_15(bb_avgpooling1_B5_out_feedback_valid_out_15),
        .in_forked30_0(GND_q),
        .in_forked30_1(bb_avgpooling1_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_phi2_pop1252_0(GND_q),
        .in_memdep_phi2_pop1252_1(bb_avgpooling1_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_n_channel_027_pop1149_0(c_i32_undef16_q),
        .in_n_channel_027_pop1149_1(bb_avgpooling1_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_notcmp2046_0(GND_q),
        .in_notcmp2046_1(bb_avgpooling1_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going17_avgpooling12_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_avgpooling12_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going17_avgpooling12_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_avgpooling1_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe183(bb_avgpooling1_B3_out_c0_exe183),
        .out_c0_exe284(bb_avgpooling1_B3_out_c0_exe284),
        .out_c0_exe385(bb_avgpooling1_B3_out_c0_exe385),
        .out_c0_exe486(bb_avgpooling1_B3_out_c0_exe486),
        .out_c0_exe5(bb_avgpooling1_B3_out_c0_exe5),
        .out_c0_exe6(bb_avgpooling1_B3_out_c0_exe6),
        .out_c0_exe7(bb_avgpooling1_B3_out_c0_exe7),
        .out_exiting_stall_out(bb_avgpooling1_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_avgpooling1_B3_out_exiting_valid_out),
        .out_feedback_stall_out_15(bb_avgpooling1_B3_out_feedback_stall_out_15),
        .out_memdep_phi1_pop15(bb_avgpooling1_B3_out_memdep_phi1_pop15),
        .out_pipeline_valid_out(bb_avgpooling1_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_avgpooling1_B3_out_stall_out_0),
        .out_stall_out_1(bb_avgpooling1_B3_out_stall_out_1),
        .out_valid_in_0(bb_avgpooling1_B3_out_valid_in_0),
        .out_valid_in_1(bb_avgpooling1_B3_out_valid_in_1),
        .out_valid_out_0(bb_avgpooling1_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpooling1_B3_sr_1_aunroll_x(BLACKBOX,4)
    avgpooling1_bb_B3_sr_1 thebb_avgpooling1_B3_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_avgpooling1_B2_out_c0_exe174),
        .in_i_data_2_tpl(bb_avgpooling1_B2_out_c0_exe2),
        .in_i_data_3_tpl(bb_avgpooling1_B2_out_c0_exe3),
        .in_i_data_4_tpl(bb_avgpooling1_B2_out_memdep_phi2_pop12),
        .in_i_stall(bb_avgpooling1_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_avgpooling11_out_o_valid),
        .out_o_data_0_tpl(bb_avgpooling1_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_avgpooling1_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_avgpooling1_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_avgpooling1_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_avgpooling1_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_stall(bb_avgpooling1_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_avgpooling1_B3_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_avgpooling11(BLACKBOX,98)
    avgpooling1_loop_limiter_1 theloop_limiter_avgpooling11 (
        .in_i_stall(bb_avgpooling1_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_avgpooling1_B3_out_exiting_stall_out),
        .in_i_valid(bb_avgpooling1_B2_out_valid_out_0),
        .in_i_valid_exit(bb_avgpooling1_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_avgpooling11_out_o_stall),
        .out_o_valid(loop_limiter_avgpooling11_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going22_avgpooling12_sr(BLACKBOX,62)
    avgpooling1_i_llvm_fpga_pipeline_keep_going22_2_sr thei_llvm_fpga_pipeline_keep_going22_avgpooling12_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going22_avgpooling12_valid_fifo_out_stall_out),
        .in_i_valid(bb_avgpooling1_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going22_avgpooling12_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going22_avgpooling12_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpooling1_B7_sr_0_aunroll_x(BLACKBOX,9)
    avgpooling1_bb_B7_sr_0 thebb_avgpooling1_B7_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_avgpooling1_B7_out_stall_out_0),
        .in_i_valid(bb_avgpooling1_B6_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_avgpooling1_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_avgpooling1_B7_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpooling1_B6(BLACKBOX,18)
    avgpooling1_bb_B6 thebb_avgpooling1_B6 (
        .in_exitcond1432_pop253_0(bb_avgpooling1_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_feedback_stall_in_12(bb_avgpooling1_B2_out_feedback_stall_out_12),
        .in_memdep_7_0(bb_avgpooling1_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_notcmp2034_pop265_0(bb_avgpooling1_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_avgpooling1_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_avgpooling1_B6_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_12(bb_avgpooling1_B6_out_feedback_out_12),
        .out_feedback_valid_out_12(bb_avgpooling1_B6_out_feedback_valid_out_12),
        .out_stall_in_0(bb_avgpooling1_B6_out_stall_in_0),
        .out_stall_out_0(bb_avgpooling1_B6_out_stall_out_0),
        .out_valid_out_0(bb_avgpooling1_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpooling1_B2(BLACKBOX,15)
    avgpooling1_bb_B2 thebb_avgpooling1_B2 (
        .in_feedback_in_12(bb_avgpooling1_B6_out_feedback_out_12),
        .in_feedback_valid_in_12(bb_avgpooling1_B6_out_feedback_valid_out_12),
        .in_forked29_0(GND_q),
        .in_forked29_1(bb_avgpooling1_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going22_avgpooling12_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_avgpooling11_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going22_avgpooling12_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_avgpooling1_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe174(bb_avgpooling1_B2_out_c0_exe174),
        .out_c0_exe2(bb_avgpooling1_B2_out_c0_exe2),
        .out_c0_exe3(bb_avgpooling1_B2_out_c0_exe3),
        .out_exiting_stall_out(bb_avgpooling1_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_avgpooling1_B2_out_exiting_valid_out),
        .out_feedback_stall_out_12(bb_avgpooling1_B2_out_feedback_stall_out_12),
        .out_memdep_phi2_pop12(bb_avgpooling1_B2_out_memdep_phi2_pop12),
        .out_pipeline_valid_out(bb_avgpooling1_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_avgpooling1_B2_out_stall_out_0),
        .out_stall_out_1(bb_avgpooling1_B2_out_stall_out_1),
        .out_valid_in_0(bb_avgpooling1_B2_out_valid_in_0),
        .out_valid_in_1(bb_avgpooling1_B2_out_valid_in_1),
        .out_valid_out_0(bb_avgpooling1_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpooling1_B2_sr_1_aunroll_x(BLACKBOX,3)
    avgpooling1_bb_B2_sr_1 thebb_avgpooling1_B2_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_avgpooling1_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_avgpooling10_out_o_valid),
        .out_o_data_0_tpl(bb_avgpooling1_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_avgpooling1_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_avgpooling1_B2_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_avgpooling10(BLACKBOX,97)
    avgpooling1_loop_limiter_0 theloop_limiter_avgpooling10 (
        .in_i_stall(bb_avgpooling1_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_avgpooling1_B2_out_exiting_stall_out),
        .in_i_valid(bb_avgpooling1_B1_start_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_avgpooling1_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_avgpooling10_out_o_stall),
        .out_o_valid(loop_limiter_avgpooling10_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going26_avgpooling11_sr(BLACKBOX,64)
    avgpooling1_i_llvm_fpga_pipeline_keep_going26_1_sr thei_llvm_fpga_pipeline_keep_going26_avgpooling11_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going26_avgpooling11_valid_fifo_out_stall_out),
        .in_i_valid(bb_avgpooling1_B1_start_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going26_avgpooling11_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going26_avgpooling11_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpooling1_B1_start_aunroll_x(BLACKBOX,2)
    avgpooling1_bb_B1_start thebb_avgpooling1_B1_start_aunroll_x (
        .in_feedback_in_1(bb_avgpooling1_B7_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_avgpooling1_B7_out_feedback_valid_out_1),
        .in_iord_bl_call_avgpooling1_i_fifodata(in_iord_bl_call_avgpooling1_i_fifodata),
        .in_iord_bl_call_avgpooling1_i_fifovalid(in_iord_bl_call_avgpooling1_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going26_avgpooling11_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_avgpooling10_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going26_avgpooling11_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_intel_reserved_ffwd_0_0_0_tpl(bb_avgpooling1_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(bb_avgpooling1_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_avgpooling1_B1_start_aunroll_x_out_feedback_stall_out_1),
        .out_iord_bl_call_avgpooling1_o_fifoalmost_full(bb_avgpooling1_B1_start_aunroll_x_out_iord_bl_call_avgpooling1_o_fifoalmost_full),
        .out_iord_bl_call_avgpooling1_o_fifoready(bb_avgpooling1_B1_start_aunroll_x_out_iord_bl_call_avgpooling1_o_fifoready),
        .out_pipeline_valid_out(bb_avgpooling1_B1_start_aunroll_x_out_pipeline_valid_out),
        .out_stall_out_0(bb_avgpooling1_B1_start_aunroll_x_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_avgpooling1_B1_start_aunroll_x_out_valid_in_0),
        .out_valid_in_1(bb_avgpooling1_B1_start_aunroll_x_out_valid_in_1),
        .out_valid_out_0(bb_avgpooling1_B1_start_aunroll_x_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpooling1_B7(BLACKBOX,19)
    avgpooling1_bb_B7 thebb_avgpooling1_B7 (
        .in_feedback_stall_in_1(bb_avgpooling1_B1_start_aunroll_x_out_feedback_stall_out_1),
        .in_iowr_bl_return_avgpooling1_i_fifoready(in_iowr_bl_return_avgpooling1_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_avgpooling1_B7_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_avgpooling1_B7_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_avgpooling1_B7_out_feedback_valid_out_1),
        .out_iowr_bl_return_avgpooling1_o_fifodata(bb_avgpooling1_B7_out_iowr_bl_return_avgpooling1_o_fifodata),
        .out_iowr_bl_return_avgpooling1_o_fifovalid(bb_avgpooling1_B7_out_iowr_bl_return_avgpooling1_o_fifovalid),
        .out_stall_in_0(bb_avgpooling1_B7_out_stall_in_0),
        .out_stall_out_0(bb_avgpooling1_B7_out_stall_out_0),
        .out_valid_out_0(bb_avgpooling1_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // avgpooling1_B1_start_x(EXTIFACE,10)
    assign avgpooling1_B1_start_x_i_capture = GND_q;
    assign avgpooling1_B1_start_x_i_clear = GND_q;
    assign avgpooling1_B1_start_x_i_enable = VCC_q;
    assign avgpooling1_B1_start_x_i_shift = GND_q;
    assign avgpooling1_B1_start_x_i_stall_pred = GND_q;
    assign avgpooling1_B1_start_x_i_stall_succ = bb_avgpooling1_B7_out_stall_in_0;
    assign avgpooling1_B1_start_x_i_valid_loop = bb_avgpooling1_B1_start_aunroll_x_out_valid_in_0;
    assign avgpooling1_B1_start_x_i_valid_pred = bb_avgpooling1_B1_start_aunroll_x_out_valid_in_1;
    assign avgpooling1_B1_start_x_i_valid_succ = bb_avgpooling1_B7_out_valid_out_0;
    assign avgpooling1_B1_start_x_i_capture_bitsignaltemp = avgpooling1_B1_start_x_i_capture[0];
    assign avgpooling1_B1_start_x_i_clear_bitsignaltemp = avgpooling1_B1_start_x_i_clear[0];
    assign avgpooling1_B1_start_x_i_enable_bitsignaltemp = avgpooling1_B1_start_x_i_enable[0];
    assign avgpooling1_B1_start_x_i_shift_bitsignaltemp = avgpooling1_B1_start_x_i_shift[0];
    assign avgpooling1_B1_start_x_i_stall_pred_bitsignaltemp = avgpooling1_B1_start_x_i_stall_pred[0];
    assign avgpooling1_B1_start_x_i_stall_succ_bitsignaltemp = avgpooling1_B1_start_x_i_stall_succ[0];
    assign avgpooling1_B1_start_x_i_valid_loop_bitsignaltemp = avgpooling1_B1_start_x_i_valid_loop[0];
    assign avgpooling1_B1_start_x_i_valid_pred_bitsignaltemp = avgpooling1_B1_start_x_i_valid_pred[0];
    assign avgpooling1_B1_start_x_i_valid_succ_bitsignaltemp = avgpooling1_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("avgpooling1.B1.start")
    ) theavgpooling1_B1_start_x (
        .i_capture(avgpooling1_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(avgpooling1_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(avgpooling1_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(avgpooling1_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(avgpooling1_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(avgpooling1_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(avgpooling1_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(avgpooling1_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(avgpooling1_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // avgpooling1_B2_x(EXTIFACE,11)
    assign avgpooling1_B2_x_i_capture = GND_q;
    assign avgpooling1_B2_x_i_clear = GND_q;
    assign avgpooling1_B2_x_i_enable = VCC_q;
    assign avgpooling1_B2_x_i_shift = GND_q;
    assign avgpooling1_B2_x_i_stall_pred = loop_limiter_avgpooling10_out_o_stall;
    assign avgpooling1_B2_x_i_stall_succ = bb_avgpooling1_B6_out_stall_in_0;
    assign avgpooling1_B2_x_i_valid_loop = bb_avgpooling1_B2_out_valid_in_0;
    assign avgpooling1_B2_x_i_valid_pred = bb_avgpooling1_B2_out_valid_in_1;
    assign avgpooling1_B2_x_i_valid_succ = bb_avgpooling1_B6_out_valid_out_0;
    assign avgpooling1_B2_x_i_capture_bitsignaltemp = avgpooling1_B2_x_i_capture[0];
    assign avgpooling1_B2_x_i_clear_bitsignaltemp = avgpooling1_B2_x_i_clear[0];
    assign avgpooling1_B2_x_i_enable_bitsignaltemp = avgpooling1_B2_x_i_enable[0];
    assign avgpooling1_B2_x_i_shift_bitsignaltemp = avgpooling1_B2_x_i_shift[0];
    assign avgpooling1_B2_x_i_stall_pred_bitsignaltemp = avgpooling1_B2_x_i_stall_pred[0];
    assign avgpooling1_B2_x_i_stall_succ_bitsignaltemp = avgpooling1_B2_x_i_stall_succ[0];
    assign avgpooling1_B2_x_i_valid_loop_bitsignaltemp = avgpooling1_B2_x_i_valid_loop[0];
    assign avgpooling1_B2_x_i_valid_pred_bitsignaltemp = avgpooling1_B2_x_i_valid_pred[0];
    assign avgpooling1_B2_x_i_valid_succ_bitsignaltemp = avgpooling1_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("avgpooling1.B2")
    ) theavgpooling1_B2_x (
        .i_capture(avgpooling1_B2_x_i_capture_bitsignaltemp),
        .i_clear(avgpooling1_B2_x_i_clear_bitsignaltemp),
        .i_enable(avgpooling1_B2_x_i_enable_bitsignaltemp),
        .i_shift(avgpooling1_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(avgpooling1_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(avgpooling1_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(avgpooling1_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(avgpooling1_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(avgpooling1_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // avgpooling1_B3_x(EXTIFACE,12)
    assign avgpooling1_B3_x_i_capture = GND_q;
    assign avgpooling1_B3_x_i_clear = GND_q;
    assign avgpooling1_B3_x_i_enable = VCC_q;
    assign avgpooling1_B3_x_i_shift = GND_q;
    assign avgpooling1_B3_x_i_stall_pred = loop_limiter_avgpooling11_out_o_stall;
    assign avgpooling1_B3_x_i_stall_succ = bb_avgpooling1_B5_out_stall_in_0;
    assign avgpooling1_B3_x_i_valid_loop = bb_avgpooling1_B3_out_valid_in_0;
    assign avgpooling1_B3_x_i_valid_pred = bb_avgpooling1_B3_out_valid_in_1;
    assign avgpooling1_B3_x_i_valid_succ = bb_avgpooling1_B5_out_valid_out_0;
    assign avgpooling1_B3_x_i_capture_bitsignaltemp = avgpooling1_B3_x_i_capture[0];
    assign avgpooling1_B3_x_i_clear_bitsignaltemp = avgpooling1_B3_x_i_clear[0];
    assign avgpooling1_B3_x_i_enable_bitsignaltemp = avgpooling1_B3_x_i_enable[0];
    assign avgpooling1_B3_x_i_shift_bitsignaltemp = avgpooling1_B3_x_i_shift[0];
    assign avgpooling1_B3_x_i_stall_pred_bitsignaltemp = avgpooling1_B3_x_i_stall_pred[0];
    assign avgpooling1_B3_x_i_stall_succ_bitsignaltemp = avgpooling1_B3_x_i_stall_succ[0];
    assign avgpooling1_B3_x_i_valid_loop_bitsignaltemp = avgpooling1_B3_x_i_valid_loop[0];
    assign avgpooling1_B3_x_i_valid_pred_bitsignaltemp = avgpooling1_B3_x_i_valid_pred[0];
    assign avgpooling1_B3_x_i_valid_succ_bitsignaltemp = avgpooling1_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("avgpooling1.B3")
    ) theavgpooling1_B3_x (
        .i_capture(avgpooling1_B3_x_i_capture_bitsignaltemp),
        .i_clear(avgpooling1_B3_x_i_clear_bitsignaltemp),
        .i_enable(avgpooling1_B3_x_i_enable_bitsignaltemp),
        .i_shift(avgpooling1_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(avgpooling1_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(avgpooling1_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(avgpooling1_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(avgpooling1_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(avgpooling1_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // avgpooling1_B4_x(EXTIFACE,13)
    assign avgpooling1_B4_x_i_capture = GND_q;
    assign avgpooling1_B4_x_i_clear = GND_q;
    assign avgpooling1_B4_x_i_enable = VCC_q;
    assign avgpooling1_B4_x_i_shift = GND_q;
    assign avgpooling1_B4_x_i_stall_pred = loop_limiter_avgpooling12_out_o_stall;
    assign avgpooling1_B4_x_i_stall_succ = bb_avgpooling1_B4_aunroll_x_out_stall_in_0;
    assign avgpooling1_B4_x_i_valid_loop = bb_avgpooling1_B4_aunroll_x_out_valid_in_0;
    assign avgpooling1_B4_x_i_valid_pred = bb_avgpooling1_B4_aunroll_x_out_valid_in_1;
    assign avgpooling1_B4_x_i_valid_succ = bb_avgpooling1_B4_aunroll_x_out_valid_out_0;
    assign avgpooling1_B4_x_i_capture_bitsignaltemp = avgpooling1_B4_x_i_capture[0];
    assign avgpooling1_B4_x_i_clear_bitsignaltemp = avgpooling1_B4_x_i_clear[0];
    assign avgpooling1_B4_x_i_enable_bitsignaltemp = avgpooling1_B4_x_i_enable[0];
    assign avgpooling1_B4_x_i_shift_bitsignaltemp = avgpooling1_B4_x_i_shift[0];
    assign avgpooling1_B4_x_i_stall_pred_bitsignaltemp = avgpooling1_B4_x_i_stall_pred[0];
    assign avgpooling1_B4_x_i_stall_succ_bitsignaltemp = avgpooling1_B4_x_i_stall_succ[0];
    assign avgpooling1_B4_x_i_valid_loop_bitsignaltemp = avgpooling1_B4_x_i_valid_loop[0];
    assign avgpooling1_B4_x_i_valid_pred_bitsignaltemp = avgpooling1_B4_x_i_valid_pred[0];
    assign avgpooling1_B4_x_i_valid_succ_bitsignaltemp = avgpooling1_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("avgpooling1.B4")
    ) theavgpooling1_B4_x (
        .i_capture(avgpooling1_B4_x_i_capture_bitsignaltemp),
        .i_clear(avgpooling1_B4_x_i_clear_bitsignaltemp),
        .i_enable(avgpooling1_B4_x_i_enable_bitsignaltemp),
        .i_shift(avgpooling1_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(avgpooling1_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(avgpooling1_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(avgpooling1_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(avgpooling1_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(avgpooling1_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_avgpooling1_o_fifoalmost_full(GPOUT,100)
    assign out_iord_bl_call_avgpooling1_o_fifoalmost_full = bb_avgpooling1_B1_start_aunroll_x_out_iord_bl_call_avgpooling1_o_fifoalmost_full;

    // out_iord_bl_call_avgpooling1_o_fifoready(GPOUT,101)
    assign out_iord_bl_call_avgpooling1_o_fifoready = bb_avgpooling1_B1_start_aunroll_x_out_iord_bl_call_avgpooling1_o_fifoready;

    // out_iowr_bl_return_avgpooling1_o_fifodata(GPOUT,102)
    assign out_iowr_bl_return_avgpooling1_o_fifodata = bb_avgpooling1_B7_out_iowr_bl_return_avgpooling1_o_fifodata;

    // out_iowr_bl_return_avgpooling1_o_fifovalid(GPOUT,103)
    assign out_iowr_bl_return_avgpooling1_o_fifovalid = bb_avgpooling1_B7_out_iowr_bl_return_avgpooling1_o_fifovalid;

    // out_memdep_avgpooling1_avm_address(GPOUT,104)
    assign out_memdep_avgpooling1_avm_address = bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_address;

    // out_memdep_avgpooling1_avm_burstcount(GPOUT,105)
    assign out_memdep_avgpooling1_avm_burstcount = bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_burstcount;

    // out_memdep_avgpooling1_avm_byteenable(GPOUT,106)
    assign out_memdep_avgpooling1_avm_byteenable = bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_byteenable;

    // out_memdep_avgpooling1_avm_enable(GPOUT,107)
    assign out_memdep_avgpooling1_avm_enable = bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_enable;

    // out_memdep_avgpooling1_avm_read(GPOUT,108)
    assign out_memdep_avgpooling1_avm_read = bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_read;

    // out_memdep_avgpooling1_avm_write(GPOUT,109)
    assign out_memdep_avgpooling1_avm_write = bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_write;

    // out_memdep_avgpooling1_avm_writedata(GPOUT,110)
    assign out_memdep_avgpooling1_avm_writedata = bb_avgpooling1_B4_aunroll_x_out_memdep_avgpooling1_avm_writedata;

    // out_o_active_memdep(GPOUT,111)
    assign out_o_active_memdep = bb_avgpooling1_B4_aunroll_x_out_lsu_memdep_o_active;

    // bb_avgpooling1_B0_runOnce(BLACKBOX,14)
    avgpooling1_bb_B0_runOnce thebb_avgpooling1_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_avgpooling1_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,112)
    assign out_stall_out = bb_avgpooling1_B0_runOnce_out_stall_out_0;

    // out_unnamed_avgpooling16_avgpooling1_avm_address(GPOUT,113)
    assign out_unnamed_avgpooling16_avgpooling1_avm_address = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_address;

    // out_unnamed_avgpooling16_avgpooling1_avm_burstcount(GPOUT,114)
    assign out_unnamed_avgpooling16_avgpooling1_avm_burstcount = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_burstcount;

    // out_unnamed_avgpooling16_avgpooling1_avm_byteenable(GPOUT,115)
    assign out_unnamed_avgpooling16_avgpooling1_avm_byteenable = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_byteenable;

    // out_unnamed_avgpooling16_avgpooling1_avm_enable(GPOUT,116)
    assign out_unnamed_avgpooling16_avgpooling1_avm_enable = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_enable;

    // out_unnamed_avgpooling16_avgpooling1_avm_read(GPOUT,117)
    assign out_unnamed_avgpooling16_avgpooling1_avm_read = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_read;

    // out_unnamed_avgpooling16_avgpooling1_avm_write(GPOUT,118)
    assign out_unnamed_avgpooling16_avgpooling1_avm_write = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_write;

    // out_unnamed_avgpooling16_avgpooling1_avm_writedata(GPOUT,119)
    assign out_unnamed_avgpooling16_avgpooling1_avm_writedata = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling16_avgpooling1_avm_writedata;

    // out_unnamed_avgpooling17_avgpooling1_avm_address(GPOUT,120)
    assign out_unnamed_avgpooling17_avgpooling1_avm_address = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_address;

    // out_unnamed_avgpooling17_avgpooling1_avm_burstcount(GPOUT,121)
    assign out_unnamed_avgpooling17_avgpooling1_avm_burstcount = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_burstcount;

    // out_unnamed_avgpooling17_avgpooling1_avm_byteenable(GPOUT,122)
    assign out_unnamed_avgpooling17_avgpooling1_avm_byteenable = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_byteenable;

    // out_unnamed_avgpooling17_avgpooling1_avm_enable(GPOUT,123)
    assign out_unnamed_avgpooling17_avgpooling1_avm_enable = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_enable;

    // out_unnamed_avgpooling17_avgpooling1_avm_read(GPOUT,124)
    assign out_unnamed_avgpooling17_avgpooling1_avm_read = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_read;

    // out_unnamed_avgpooling17_avgpooling1_avm_write(GPOUT,125)
    assign out_unnamed_avgpooling17_avgpooling1_avm_write = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_write;

    // out_unnamed_avgpooling17_avgpooling1_avm_writedata(GPOUT,126)
    assign out_unnamed_avgpooling17_avgpooling1_avm_writedata = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling17_avgpooling1_avm_writedata;

    // out_unnamed_avgpooling18_avgpooling1_avm_address(GPOUT,127)
    assign out_unnamed_avgpooling18_avgpooling1_avm_address = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_address;

    // out_unnamed_avgpooling18_avgpooling1_avm_burstcount(GPOUT,128)
    assign out_unnamed_avgpooling18_avgpooling1_avm_burstcount = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_burstcount;

    // out_unnamed_avgpooling18_avgpooling1_avm_byteenable(GPOUT,129)
    assign out_unnamed_avgpooling18_avgpooling1_avm_byteenable = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_byteenable;

    // out_unnamed_avgpooling18_avgpooling1_avm_enable(GPOUT,130)
    assign out_unnamed_avgpooling18_avgpooling1_avm_enable = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_enable;

    // out_unnamed_avgpooling18_avgpooling1_avm_read(GPOUT,131)
    assign out_unnamed_avgpooling18_avgpooling1_avm_read = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_read;

    // out_unnamed_avgpooling18_avgpooling1_avm_write(GPOUT,132)
    assign out_unnamed_avgpooling18_avgpooling1_avm_write = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_write;

    // out_unnamed_avgpooling18_avgpooling1_avm_writedata(GPOUT,133)
    assign out_unnamed_avgpooling18_avgpooling1_avm_writedata = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling18_avgpooling1_avm_writedata;

    // out_unnamed_avgpooling19_avgpooling1_avm_address(GPOUT,134)
    assign out_unnamed_avgpooling19_avgpooling1_avm_address = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_address;

    // out_unnamed_avgpooling19_avgpooling1_avm_burstcount(GPOUT,135)
    assign out_unnamed_avgpooling19_avgpooling1_avm_burstcount = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_burstcount;

    // out_unnamed_avgpooling19_avgpooling1_avm_byteenable(GPOUT,136)
    assign out_unnamed_avgpooling19_avgpooling1_avm_byteenable = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_byteenable;

    // out_unnamed_avgpooling19_avgpooling1_avm_enable(GPOUT,137)
    assign out_unnamed_avgpooling19_avgpooling1_avm_enable = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_enable;

    // out_unnamed_avgpooling19_avgpooling1_avm_read(GPOUT,138)
    assign out_unnamed_avgpooling19_avgpooling1_avm_read = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_read;

    // out_unnamed_avgpooling19_avgpooling1_avm_write(GPOUT,139)
    assign out_unnamed_avgpooling19_avgpooling1_avm_write = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_write;

    // out_unnamed_avgpooling19_avgpooling1_avm_writedata(GPOUT,140)
    assign out_unnamed_avgpooling19_avgpooling1_avm_writedata = bb_avgpooling1_B4_aunroll_x_out_unnamed_avgpooling19_avgpooling1_avm_writedata;

    // out_valid_out(GPOUT,141)
    assign out_valid_out = GND_q;

endmodule
