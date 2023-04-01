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

// SystemVerilog created from relu1_function
// Created for function/kernel relu1
// SystemVerilog created on Sat Apr  1 13:10:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module relu1_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_in0,
    input wire [63:0] in_arg_out0,
    input wire [63:0] in_arg_return,
    input wire [127:0] in_iord_bl_call_relu1_i_fifodata,
    input wire [0:0] in_iord_bl_call_relu1_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_relu1_i_fifoready,
    input wire [63:0] in_memdep_relu1_avm_readdata,
    input wire [0:0] in_memdep_relu1_avm_readdatavalid,
    input wire [0:0] in_memdep_relu1_avm_waitrequest,
    input wire [0:0] in_memdep_relu1_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [63:0] in_unnamed_relu15_relu1_avm_readdata,
    input wire [0:0] in_unnamed_relu15_relu1_avm_readdatavalid,
    input wire [0:0] in_unnamed_relu15_relu1_avm_waitrequest,
    input wire [0:0] in_unnamed_relu15_relu1_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_relu1_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_relu1_o_fifoready,
    output wire [0:0] out_iowr_bl_return_relu1_o_fifodata,
    output wire [0:0] out_iowr_bl_return_relu1_o_fifovalid,
    output wire [63:0] out_memdep_relu1_avm_address,
    output wire [0:0] out_memdep_relu1_avm_burstcount,
    output wire [7:0] out_memdep_relu1_avm_byteenable,
    output wire [0:0] out_memdep_relu1_avm_enable,
    output wire [0:0] out_memdep_relu1_avm_read,
    output wire [0:0] out_memdep_relu1_avm_write,
    output wire [63:0] out_memdep_relu1_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_stall_out,
    output wire [63:0] out_unnamed_relu15_relu1_avm_address,
    output wire [0:0] out_unnamed_relu15_relu1_avm_burstcount,
    output wire [7:0] out_unnamed_relu15_relu1_avm_byteenable,
    output wire [0:0] out_unnamed_relu15_relu1_avm_enable,
    output wire [0:0] out_unnamed_relu15_relu1_avm_read,
    output wire [0:0] out_unnamed_relu15_relu1_avm_write,
    output wire [63:0] out_unnamed_relu15_relu1_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_relu1_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_relu1_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_relu1_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_relu1_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_relu1_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_relu1_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_relu1_B3_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_relu1_B3_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_relu1_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_relu1_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_relu1_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_relu1_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_relu1_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_relu1_B4_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_relu1_B4_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_relu1_B4_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_relu1_B4_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_relu1_B4_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_relu1_B4_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_relu1_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_relu1_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_relu1_B5_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_relu1_B5_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_relu1_B5_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_relu1_B5_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_relu1_B5_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_relu1_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_relu1_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_relu1_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_relu1_B6_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_relu1_B6_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_relu1_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_relu1_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_relu1_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_relu1_B7_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_relu1_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_relu1_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_relu1_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_relu1_B1_start_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_relu1_B1_start_out_iord_bl_call_relu1_o_fifoalmost_full;
    wire [0:0] bb_relu1_B1_start_out_iord_bl_call_relu1_o_fifoready;
    wire [0:0] bb_relu1_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_relu1_B1_start_out_stall_out_0;
    wire [0:0] bb_relu1_B1_start_out_valid_in_0;
    wire [0:0] bb_relu1_B1_start_out_valid_in_1;
    wire [0:0] bb_relu1_B1_start_out_valid_out_0;
    wire [0:0] bb_relu1_B2_out_c0_exe170;
    wire [0:0] bb_relu1_B2_out_c0_exe2;
    wire [31:0] bb_relu1_B2_out_c0_exe3;
    wire [0:0] bb_relu1_B2_out_exiting_stall_out;
    wire [0:0] bb_relu1_B2_out_exiting_valid_out;
    wire [0:0] bb_relu1_B2_out_feedback_stall_out_12;
    wire [0:0] bb_relu1_B2_out_memdep_phi2_pop12;
    wire [0:0] bb_relu1_B2_out_pipeline_valid_out;
    wire [0:0] bb_relu1_B2_out_stall_out_0;
    wire [0:0] bb_relu1_B2_out_stall_out_1;
    wire [0:0] bb_relu1_B2_out_valid_in_0;
    wire [0:0] bb_relu1_B2_out_valid_in_1;
    wire [0:0] bb_relu1_B2_out_valid_out_0;
    wire [0:0] bb_relu1_B3_out_c0_exe179;
    wire [0:0] bb_relu1_B3_out_c0_exe280;
    wire [31:0] bb_relu1_B3_out_c0_exe381;
    wire [0:0] bb_relu1_B3_out_c0_exe482;
    wire [0:0] bb_relu1_B3_out_c0_exe5;
    wire [31:0] bb_relu1_B3_out_c0_exe6;
    wire [0:0] bb_relu1_B3_out_c0_exe7;
    wire [0:0] bb_relu1_B3_out_exiting_stall_out;
    wire [0:0] bb_relu1_B3_out_exiting_valid_out;
    wire [0:0] bb_relu1_B3_out_feedback_stall_out_15;
    wire [0:0] bb_relu1_B3_out_memdep_phi1_pop15;
    wire [0:0] bb_relu1_B3_out_pipeline_valid_out;
    wire [0:0] bb_relu1_B3_out_stall_out_0;
    wire [0:0] bb_relu1_B3_out_stall_out_1;
    wire [0:0] bb_relu1_B3_out_valid_in_0;
    wire [0:0] bb_relu1_B3_out_valid_in_1;
    wire [0:0] bb_relu1_B3_out_valid_out_0;
    wire [0:0] bb_relu1_B4_out_exitcond535_pop29;
    wire [0:0] bb_relu1_B4_out_exitcond828_pop25;
    wire [0:0] bb_relu1_B4_out_exiting_stall_out;
    wire [0:0] bb_relu1_B4_out_exiting_valid_out;
    wire [0:0] bb_relu1_B4_out_lsu_memdep_o_active;
    wire [0:0] bb_relu1_B4_out_memdep;
    wire [63:0] bb_relu1_B4_out_memdep_relu1_avm_address;
    wire [0:0] bb_relu1_B4_out_memdep_relu1_avm_burstcount;
    wire [7:0] bb_relu1_B4_out_memdep_relu1_avm_byteenable;
    wire [0:0] bb_relu1_B4_out_memdep_relu1_avm_enable;
    wire [0:0] bb_relu1_B4_out_memdep_relu1_avm_read;
    wire [0:0] bb_relu1_B4_out_memdep_relu1_avm_write;
    wire [63:0] bb_relu1_B4_out_memdep_relu1_avm_writedata;
    wire [0:0] bb_relu1_B4_out_notcmp1136_pop30;
    wire [0:0] bb_relu1_B4_out_notcmp1630_pop26;
    wire [0:0] bb_relu1_B4_out_pipeline_valid_out;
    wire [0:0] bb_relu1_B4_out_stall_in_0;
    wire [0:0] bb_relu1_B4_out_stall_out_0;
    wire [0:0] bb_relu1_B4_out_stall_out_1;
    wire [63:0] bb_relu1_B4_out_unnamed_relu15_relu1_avm_address;
    wire [0:0] bb_relu1_B4_out_unnamed_relu15_relu1_avm_burstcount;
    wire [7:0] bb_relu1_B4_out_unnamed_relu15_relu1_avm_byteenable;
    wire [0:0] bb_relu1_B4_out_unnamed_relu15_relu1_avm_enable;
    wire [0:0] bb_relu1_B4_out_unnamed_relu15_relu1_avm_read;
    wire [0:0] bb_relu1_B4_out_unnamed_relu15_relu1_avm_write;
    wire [63:0] bb_relu1_B4_out_unnamed_relu15_relu1_avm_writedata;
    wire [0:0] bb_relu1_B4_out_valid_in_0;
    wire [0:0] bb_relu1_B4_out_valid_in_1;
    wire [0:0] bb_relu1_B4_out_valid_out_0;
    wire [0:0] bb_relu1_B5_out_exitcond828_pop254;
    wire [0:0] bb_relu1_B5_out_feedback_out_15;
    wire [0:0] bb_relu1_B5_out_feedback_valid_out_15;
    wire [0:0] bb_relu1_B5_out_memdep_8;
    wire [0:0] bb_relu1_B5_out_notcmp1630_pop266;
    wire [0:0] bb_relu1_B5_out_stall_in_0;
    wire [0:0] bb_relu1_B5_out_stall_out_0;
    wire [0:0] bb_relu1_B5_out_valid_out_0;
    wire [0:0] bb_relu1_B6_out_feedback_out_12;
    wire [0:0] bb_relu1_B6_out_feedback_valid_out_12;
    wire [0:0] bb_relu1_B6_out_stall_in_0;
    wire [0:0] bb_relu1_B6_out_stall_out_0;
    wire [0:0] bb_relu1_B6_out_valid_out_0;
    wire [0:0] bb_relu1_B7_out_feedback_out_1;
    wire [0:0] bb_relu1_B7_out_feedback_valid_out_1;
    wire [0:0] bb_relu1_B7_out_iowr_bl_return_relu1_o_fifodata;
    wire [0:0] bb_relu1_B7_out_iowr_bl_return_relu1_o_fifovalid;
    wire [0:0] bb_relu1_B7_out_stall_in_0;
    wire [0:0] bb_relu1_B7_out_stall_out_0;
    wire [0:0] bb_relu1_B7_out_valid_out_0;
    wire [1:0] c_i2_050_q;
    wire [31:0] c_i32_undef16_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_relu12_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_relu12_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_relu12_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_relu12_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_relu12_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_relu12_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_relu12_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_relu12_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_relu11_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_relu11_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_relu11_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_relu11_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu13_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu13_sr_out_o_valid;
    wire [0:0] loop_limiter_relu10_out_o_stall;
    wire [0:0] loop_limiter_relu10_out_o_valid;
    wire [0:0] loop_limiter_relu11_out_o_stall;
    wire [0:0] loop_limiter_relu11_out_o_valid;
    wire [0:0] loop_limiter_relu12_out_o_stall;
    wire [0:0] loop_limiter_relu12_out_o_valid;
    wire [0:0] relu1_B1_start_x_i_capture;
    wire relu1_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] relu1_B1_start_x_i_clear;
    wire relu1_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] relu1_B1_start_x_i_enable;
    wire relu1_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] relu1_B1_start_x_i_shift;
    wire relu1_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] relu1_B1_start_x_i_stall_pred;
    wire relu1_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] relu1_B1_start_x_i_stall_succ;
    wire relu1_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] relu1_B1_start_x_i_valid_loop;
    wire relu1_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] relu1_B1_start_x_i_valid_pred;
    wire relu1_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] relu1_B1_start_x_i_valid_succ;
    wire relu1_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] relu1_B2_x_i_capture;
    wire relu1_B2_x_i_capture_bitsignaltemp;
    wire [0:0] relu1_B2_x_i_clear;
    wire relu1_B2_x_i_clear_bitsignaltemp;
    wire [0:0] relu1_B2_x_i_enable;
    wire relu1_B2_x_i_enable_bitsignaltemp;
    wire [0:0] relu1_B2_x_i_shift;
    wire relu1_B2_x_i_shift_bitsignaltemp;
    wire [0:0] relu1_B2_x_i_stall_pred;
    wire relu1_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] relu1_B2_x_i_stall_succ;
    wire relu1_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] relu1_B2_x_i_valid_loop;
    wire relu1_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] relu1_B2_x_i_valid_pred;
    wire relu1_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] relu1_B2_x_i_valid_succ;
    wire relu1_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] relu1_B3_x_i_capture;
    wire relu1_B3_x_i_capture_bitsignaltemp;
    wire [0:0] relu1_B3_x_i_clear;
    wire relu1_B3_x_i_clear_bitsignaltemp;
    wire [0:0] relu1_B3_x_i_enable;
    wire relu1_B3_x_i_enable_bitsignaltemp;
    wire [0:0] relu1_B3_x_i_shift;
    wire relu1_B3_x_i_shift_bitsignaltemp;
    wire [0:0] relu1_B3_x_i_stall_pred;
    wire relu1_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] relu1_B3_x_i_stall_succ;
    wire relu1_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] relu1_B3_x_i_valid_loop;
    wire relu1_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] relu1_B3_x_i_valid_pred;
    wire relu1_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] relu1_B3_x_i_valid_succ;
    wire relu1_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] relu1_B4_x_i_capture;
    wire relu1_B4_x_i_capture_bitsignaltemp;
    wire [0:0] relu1_B4_x_i_clear;
    wire relu1_B4_x_i_clear_bitsignaltemp;
    wire [0:0] relu1_B4_x_i_enable;
    wire relu1_B4_x_i_enable_bitsignaltemp;
    wire [0:0] relu1_B4_x_i_shift;
    wire relu1_B4_x_i_shift_bitsignaltemp;
    wire [0:0] relu1_B4_x_i_stall_pred;
    wire relu1_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] relu1_B4_x_i_stall_succ;
    wire relu1_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] relu1_B4_x_i_valid_loop;
    wire relu1_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] relu1_B4_x_i_valid_pred;
    wire relu1_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] relu1_B4_x_i_valid_succ;
    wire relu1_B4_x_i_valid_succ_bitsignaltemp;


    // c_i2_050(CONSTANT,49)
    assign c_i2_050_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going22_relu11_valid_fifo(BLACKBOX,61)
    relu1_i_llvm_fpga_pipeline_keep_going22_1_valid_fifo thei_llvm_fpga_pipeline_keep_going22_relu11_valid_fifo (
        .in_data_in(c_i2_050_q),
        .in_stall_in(bb_relu1_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going22_relu11_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going22_relu11_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going22_relu11_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going18_relu12_valid_fifo(BLACKBOX,59)
    relu1_i_llvm_fpga_pipeline_keep_going18_2_valid_fifo thei_llvm_fpga_pipeline_keep_going18_relu12_valid_fifo (
        .in_data_in(c_i2_050_q),
        .in_stall_in(bb_relu1_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going18_relu12_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going18_relu12_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going18_relu12_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going13_relu12_valid_fifo(BLACKBOX,57)
    relu1_i_llvm_fpga_pipeline_keep_going13_2_valid_fifo thei_llvm_fpga_pipeline_keep_going13_relu12_valid_fifo (
        .in_data_in(c_i2_050_q),
        .in_stall_in(bb_relu1_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going13_relu12_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going13_relu12_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going13_relu12_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_relu1_B5_sr_0_aunroll_x(BLACKBOX,5)
    relu1_bb_B5_sr_0 thebb_relu1_B5_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_relu1_B4_out_exitcond535_pop29),
        .in_i_data_1_tpl(bb_relu1_B4_out_notcmp1136_pop30),
        .in_i_data_2_tpl(bb_relu1_B4_out_exitcond828_pop25),
        .in_i_data_3_tpl(bb_relu1_B4_out_notcmp1630_pop26),
        .in_i_data_4_tpl(bb_relu1_B4_out_memdep),
        .in_i_stall(bb_relu1_B5_out_stall_out_0),
        .in_i_valid(bb_relu1_B4_out_valid_out_0),
        .out_o_data_0_tpl(bb_relu1_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_relu1_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_relu1_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_relu1_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_relu1_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_stall(bb_relu1_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_relu1_B5_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_relu13_sr(BLACKBOX,62)
    relu1_i_llvm_fpga_pipeline_keep_going_3_sr thei_llvm_fpga_pipeline_keep_going_relu13_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_relu1_B4_out_stall_out_0),
        .in_i_valid(bb_relu1_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_relu13_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_relu13_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_relu1_B4(BLACKBOX,12)
    relu1_bb_B4 thebb_relu1_B4 (
        .in_exitcond551_0(GND_q),
        .in_exitcond551_1(bb_relu1_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_exitcond827_pop1655_0(GND_q),
        .in_exitcond827_pop1655_1(bb_relu1_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_relu1_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_018_pop1453_0(c_i32_undef16_q),
        .in_i_018_pop1453_1(bb_relu1_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_intel_reserved_ffwd_0_0(bb_relu1_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_relu1_B1_start_out_intel_reserved_ffwd_1_0),
        .in_k_019_pop1131_pop1857_0(c_i32_undef16_q),
        .in_k_019_pop1131_pop1857_1(bb_relu1_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_memdep_phi1_pop1554_0(GND_q),
        .in_memdep_phi1_pop1554_1(bb_relu1_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi2_pop1233_pop1958_0(GND_q),
        .in_memdep_phi2_pop1233_pop1958_1(bb_relu1_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_memdep_relu1_avm_readdata(in_memdep_relu1_avm_readdata),
        .in_memdep_relu1_avm_readdatavalid(in_memdep_relu1_avm_readdatavalid),
        .in_memdep_relu1_avm_waitrequest(in_memdep_relu1_avm_waitrequest),
        .in_memdep_relu1_avm_writeack(in_memdep_relu1_avm_writeack),
        .in_notcmp1152_0(GND_q),
        .in_notcmp1152_1(bb_relu1_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp1629_pop1756_0(GND_q),
        .in_notcmp1629_pop1756_1(bb_relu1_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_relu13_sr_out_o_stall),
        .in_stall_in_0(bb_relu1_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_relu15_relu1_avm_readdata(in_unnamed_relu15_relu1_avm_readdata),
        .in_unnamed_relu15_relu1_avm_readdatavalid(in_unnamed_relu15_relu1_avm_readdatavalid),
        .in_unnamed_relu15_relu1_avm_waitrequest(in_unnamed_relu15_relu1_avm_waitrequest),
        .in_unnamed_relu15_relu1_avm_writeack(in_unnamed_relu15_relu1_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_relu13_sr_out_o_valid),
        .in_valid_in_1(bb_relu1_B4_sr_1_aunroll_x_out_o_valid),
        .out_exitcond535_pop29(bb_relu1_B4_out_exitcond535_pop29),
        .out_exitcond828_pop25(bb_relu1_B4_out_exitcond828_pop25),
        .out_exiting_stall_out(bb_relu1_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_relu1_B4_out_exiting_valid_out),
        .out_lsu_memdep_o_active(bb_relu1_B4_out_lsu_memdep_o_active),
        .out_memdep(bb_relu1_B4_out_memdep),
        .out_memdep_relu1_avm_address(bb_relu1_B4_out_memdep_relu1_avm_address),
        .out_memdep_relu1_avm_burstcount(bb_relu1_B4_out_memdep_relu1_avm_burstcount),
        .out_memdep_relu1_avm_byteenable(bb_relu1_B4_out_memdep_relu1_avm_byteenable),
        .out_memdep_relu1_avm_enable(bb_relu1_B4_out_memdep_relu1_avm_enable),
        .out_memdep_relu1_avm_read(bb_relu1_B4_out_memdep_relu1_avm_read),
        .out_memdep_relu1_avm_write(bb_relu1_B4_out_memdep_relu1_avm_write),
        .out_memdep_relu1_avm_writedata(bb_relu1_B4_out_memdep_relu1_avm_writedata),
        .out_notcmp1136_pop30(bb_relu1_B4_out_notcmp1136_pop30),
        .out_notcmp1630_pop26(bb_relu1_B4_out_notcmp1630_pop26),
        .out_pipeline_valid_out(bb_relu1_B4_out_pipeline_valid_out),
        .out_stall_in_0(bb_relu1_B4_out_stall_in_0),
        .out_stall_out_0(bb_relu1_B4_out_stall_out_0),
        .out_stall_out_1(bb_relu1_B4_out_stall_out_1),
        .out_unnamed_relu15_relu1_avm_address(bb_relu1_B4_out_unnamed_relu15_relu1_avm_address),
        .out_unnamed_relu15_relu1_avm_burstcount(bb_relu1_B4_out_unnamed_relu15_relu1_avm_burstcount),
        .out_unnamed_relu15_relu1_avm_byteenable(bb_relu1_B4_out_unnamed_relu15_relu1_avm_byteenable),
        .out_unnamed_relu15_relu1_avm_enable(bb_relu1_B4_out_unnamed_relu15_relu1_avm_enable),
        .out_unnamed_relu15_relu1_avm_read(bb_relu1_B4_out_unnamed_relu15_relu1_avm_read),
        .out_unnamed_relu15_relu1_avm_write(bb_relu1_B4_out_unnamed_relu15_relu1_avm_write),
        .out_unnamed_relu15_relu1_avm_writedata(bb_relu1_B4_out_unnamed_relu15_relu1_avm_writedata),
        .out_valid_in_0(bb_relu1_B4_out_valid_in_0),
        .out_valid_in_1(bb_relu1_B4_out_valid_in_1),
        .out_valid_out_0(bb_relu1_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_relu1_B4_sr_1_aunroll_x(BLACKBOX,4)
    relu1_bb_B4_sr_1 thebb_relu1_B4_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_relu1_B3_out_c0_exe179),
        .in_i_data_2_tpl(bb_relu1_B3_out_c0_exe280),
        .in_i_data_3_tpl(bb_relu1_B3_out_c0_exe381),
        .in_i_data_4_tpl(bb_relu1_B3_out_memdep_phi1_pop15),
        .in_i_data_5_tpl(bb_relu1_B3_out_c0_exe482),
        .in_i_data_6_tpl(bb_relu1_B3_out_c0_exe5),
        .in_i_data_7_tpl(bb_relu1_B3_out_c0_exe6),
        .in_i_data_8_tpl(bb_relu1_B3_out_c0_exe7),
        .in_i_stall(bb_relu1_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_relu12_out_o_valid),
        .out_o_data_0_tpl(bb_relu1_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_relu1_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_relu1_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_relu1_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_relu1_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_relu1_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_relu1_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_relu1_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_relu1_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_stall(bb_relu1_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_relu1_B4_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_relu12(BLACKBOX,83)
    relu1_loop_limiter_2 theloop_limiter_relu12 (
        .in_i_stall(bb_relu1_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_relu1_B4_out_exiting_stall_out),
        .in_i_valid(bb_relu1_B3_out_valid_out_0),
        .in_i_valid_exit(bb_relu1_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_relu12_out_o_stall),
        .out_o_valid(loop_limiter_relu12_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going13_relu12_sr(BLACKBOX,56)
    relu1_i_llvm_fpga_pipeline_keep_going13_2_sr thei_llvm_fpga_pipeline_keep_going13_relu12_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going13_relu12_valid_fifo_out_stall_out),
        .in_i_valid(bb_relu1_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going13_relu12_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going13_relu12_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef16(CONSTANT,52)
    assign c_i32_undef16_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_relu1_B6_sr_0_aunroll_x(BLACKBOX,6)
    relu1_bb_B6_sr_0 thebb_relu1_B6_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_relu1_B5_out_exitcond828_pop254),
        .in_i_data_1_tpl(bb_relu1_B5_out_notcmp1630_pop266),
        .in_i_data_2_tpl(bb_relu1_B5_out_memdep_8),
        .in_i_stall(bb_relu1_B6_out_stall_out_0),
        .in_i_valid(bb_relu1_B5_out_valid_out_0),
        .out_o_data_0_tpl(bb_relu1_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_relu1_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_relu1_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_relu1_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_relu1_B6_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_relu1_B5(BLACKBOX,13)
    relu1_bb_B5 thebb_relu1_B5 (
        .in_exitcond535_pop291_0(bb_relu1_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_exitcond828_pop254_0(bb_relu1_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_feedback_stall_in_15(bb_relu1_B3_out_feedback_stall_out_15),
        .in_memdep_8_0(bb_relu1_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_notcmp1136_pop302_0(bb_relu1_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_notcmp1630_pop266_0(bb_relu1_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_stall_in_0(bb_relu1_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_relu1_B5_sr_0_aunroll_x_out_o_valid),
        .out_exitcond828_pop254(bb_relu1_B5_out_exitcond828_pop254),
        .out_feedback_out_15(bb_relu1_B5_out_feedback_out_15),
        .out_feedback_valid_out_15(bb_relu1_B5_out_feedback_valid_out_15),
        .out_memdep_8(bb_relu1_B5_out_memdep_8),
        .out_notcmp1630_pop266(bb_relu1_B5_out_notcmp1630_pop266),
        .out_stall_in_0(bb_relu1_B5_out_stall_in_0),
        .out_stall_out_0(bb_relu1_B5_out_stall_out_0),
        .out_valid_out_0(bb_relu1_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_relu1_B3(BLACKBOX,11)
    relu1_bb_B3 thebb_relu1_B3 (
        .in_exitcond839_0(GND_q),
        .in_exitcond839_1(bb_relu1_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_feedback_in_15(bb_relu1_B5_out_feedback_out_15),
        .in_feedback_valid_in_15(bb_relu1_B5_out_feedback_valid_out_15),
        .in_forked26_0(GND_q),
        .in_forked26_1(bb_relu1_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_k_019_pop1145_0(c_i32_undef16_q),
        .in_k_019_pop1145_1(bb_relu1_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_memdep_phi2_pop1248_0(GND_q),
        .in_memdep_phi2_pop1248_1(bb_relu1_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp1642_0(GND_q),
        .in_notcmp1642_1(bb_relu1_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going13_relu12_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_relu12_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going13_relu12_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_relu1_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe179(bb_relu1_B3_out_c0_exe179),
        .out_c0_exe280(bb_relu1_B3_out_c0_exe280),
        .out_c0_exe381(bb_relu1_B3_out_c0_exe381),
        .out_c0_exe482(bb_relu1_B3_out_c0_exe482),
        .out_c0_exe5(bb_relu1_B3_out_c0_exe5),
        .out_c0_exe6(bb_relu1_B3_out_c0_exe6),
        .out_c0_exe7(bb_relu1_B3_out_c0_exe7),
        .out_exiting_stall_out(bb_relu1_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_relu1_B3_out_exiting_valid_out),
        .out_feedback_stall_out_15(bb_relu1_B3_out_feedback_stall_out_15),
        .out_memdep_phi1_pop15(bb_relu1_B3_out_memdep_phi1_pop15),
        .out_pipeline_valid_out(bb_relu1_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_relu1_B3_out_stall_out_0),
        .out_stall_out_1(bb_relu1_B3_out_stall_out_1),
        .out_valid_in_0(bb_relu1_B3_out_valid_in_0),
        .out_valid_in_1(bb_relu1_B3_out_valid_in_1),
        .out_valid_out_0(bb_relu1_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_relu1_B3_sr_1_aunroll_x(BLACKBOX,3)
    relu1_bb_B3_sr_1 thebb_relu1_B3_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_relu1_B2_out_c0_exe170),
        .in_i_data_2_tpl(bb_relu1_B2_out_c0_exe2),
        .in_i_data_3_tpl(bb_relu1_B2_out_c0_exe3),
        .in_i_data_4_tpl(bb_relu1_B2_out_memdep_phi2_pop12),
        .in_i_stall(bb_relu1_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_relu11_out_o_valid),
        .out_o_data_0_tpl(bb_relu1_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_relu1_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_relu1_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_relu1_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_relu1_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_stall(bb_relu1_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_relu1_B3_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_relu11(BLACKBOX,82)
    relu1_loop_limiter_1 theloop_limiter_relu11 (
        .in_i_stall(bb_relu1_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_relu1_B3_out_exiting_stall_out),
        .in_i_valid(bb_relu1_B2_out_valid_out_0),
        .in_i_valid_exit(bb_relu1_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_relu11_out_o_stall),
        .out_o_valid(loop_limiter_relu11_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going18_relu12_sr(BLACKBOX,58)
    relu1_i_llvm_fpga_pipeline_keep_going18_2_sr thei_llvm_fpga_pipeline_keep_going18_relu12_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going18_relu12_valid_fifo_out_stall_out),
        .in_i_valid(bb_relu1_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going18_relu12_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going18_relu12_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_relu1_B7_sr_0_aunroll_x(BLACKBOX,7)
    relu1_bb_B7_sr_0 thebb_relu1_B7_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_relu1_B7_out_stall_out_0),
        .in_i_valid(bb_relu1_B6_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_relu1_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_relu1_B7_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_relu1_B6(BLACKBOX,14)
    relu1_bb_B6 thebb_relu1_B6 (
        .in_exitcond828_pop253_0(bb_relu1_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_feedback_stall_in_12(bb_relu1_B2_out_feedback_stall_out_12),
        .in_memdep_7_0(bb_relu1_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_notcmp1630_pop265_0(bb_relu1_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_relu1_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_relu1_B6_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_12(bb_relu1_B6_out_feedback_out_12),
        .out_feedback_valid_out_12(bb_relu1_B6_out_feedback_valid_out_12),
        .out_stall_in_0(bb_relu1_B6_out_stall_in_0),
        .out_stall_out_0(bb_relu1_B6_out_stall_out_0),
        .out_valid_out_0(bb_relu1_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_relu1_B2(BLACKBOX,10)
    relu1_bb_B2 thebb_relu1_B2 (
        .in_feedback_in_12(bb_relu1_B6_out_feedback_out_12),
        .in_feedback_valid_in_12(bb_relu1_B6_out_feedback_valid_out_12),
        .in_forked25_0(GND_q),
        .in_forked25_1(bb_relu1_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going18_relu12_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_relu11_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going18_relu12_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_relu1_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe170(bb_relu1_B2_out_c0_exe170),
        .out_c0_exe2(bb_relu1_B2_out_c0_exe2),
        .out_c0_exe3(bb_relu1_B2_out_c0_exe3),
        .out_exiting_stall_out(bb_relu1_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_relu1_B2_out_exiting_valid_out),
        .out_feedback_stall_out_12(bb_relu1_B2_out_feedback_stall_out_12),
        .out_memdep_phi2_pop12(bb_relu1_B2_out_memdep_phi2_pop12),
        .out_pipeline_valid_out(bb_relu1_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_relu1_B2_out_stall_out_0),
        .out_stall_out_1(bb_relu1_B2_out_stall_out_1),
        .out_valid_in_0(bb_relu1_B2_out_valid_in_0),
        .out_valid_in_1(bb_relu1_B2_out_valid_in_1),
        .out_valid_out_0(bb_relu1_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_relu1_B2_sr_1_aunroll_x(BLACKBOX,2)
    relu1_bb_B2_sr_1 thebb_relu1_B2_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_relu1_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_relu10_out_o_valid),
        .out_o_data_0_tpl(bb_relu1_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_relu1_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_relu1_B2_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_relu10(BLACKBOX,81)
    relu1_loop_limiter_0 theloop_limiter_relu10 (
        .in_i_stall(bb_relu1_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_relu1_B2_out_exiting_stall_out),
        .in_i_valid(bb_relu1_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_relu1_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_relu10_out_o_stall),
        .out_o_valid(loop_limiter_relu10_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going22_relu11_sr(BLACKBOX,60)
    relu1_i_llvm_fpga_pipeline_keep_going22_1_sr thei_llvm_fpga_pipeline_keep_going22_relu11_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going22_relu11_valid_fifo_out_stall_out),
        .in_i_valid(bb_relu1_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going22_relu11_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going22_relu11_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_relu1_B7(BLACKBOX,15)
    relu1_bb_B7 thebb_relu1_B7 (
        .in_feedback_stall_in_1(bb_relu1_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_relu1_i_fifoready(in_iowr_bl_return_relu1_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_relu1_B7_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_relu1_B7_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_relu1_B7_out_feedback_valid_out_1),
        .out_iowr_bl_return_relu1_o_fifodata(bb_relu1_B7_out_iowr_bl_return_relu1_o_fifodata),
        .out_iowr_bl_return_relu1_o_fifovalid(bb_relu1_B7_out_iowr_bl_return_relu1_o_fifovalid),
        .out_stall_in_0(bb_relu1_B7_out_stall_in_0),
        .out_stall_out_0(bb_relu1_B7_out_stall_out_0),
        .out_valid_out_0(bb_relu1_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_relu1_B1_start(BLACKBOX,9)
    relu1_bb_B1_start thebb_relu1_B1_start (
        .in_feedback_in_1(bb_relu1_B7_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_relu1_B7_out_feedback_valid_out_1),
        .in_iord_bl_call_relu1_i_fifodata(in_iord_bl_call_relu1_i_fifodata),
        .in_iord_bl_call_relu1_i_fifovalid(in_iord_bl_call_relu1_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going22_relu11_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_relu10_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going22_relu11_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_relu1_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_relu1_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_relu1_B1_start_out_intel_reserved_ffwd_1_0),
        .out_iord_bl_call_relu1_o_fifoalmost_full(bb_relu1_B1_start_out_iord_bl_call_relu1_o_fifoalmost_full),
        .out_iord_bl_call_relu1_o_fifoready(bb_relu1_B1_start_out_iord_bl_call_relu1_o_fifoready),
        .out_pipeline_valid_out(bb_relu1_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_relu1_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_relu1_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_relu1_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_relu1_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_relu1_o_fifoalmost_full(GPOUT,84)
    assign out_iord_bl_call_relu1_o_fifoalmost_full = bb_relu1_B1_start_out_iord_bl_call_relu1_o_fifoalmost_full;

    // out_iord_bl_call_relu1_o_fifoready(GPOUT,85)
    assign out_iord_bl_call_relu1_o_fifoready = bb_relu1_B1_start_out_iord_bl_call_relu1_o_fifoready;

    // out_iowr_bl_return_relu1_o_fifodata(GPOUT,86)
    assign out_iowr_bl_return_relu1_o_fifodata = bb_relu1_B7_out_iowr_bl_return_relu1_o_fifodata;

    // out_iowr_bl_return_relu1_o_fifovalid(GPOUT,87)
    assign out_iowr_bl_return_relu1_o_fifovalid = bb_relu1_B7_out_iowr_bl_return_relu1_o_fifovalid;

    // out_memdep_relu1_avm_address(GPOUT,88)
    assign out_memdep_relu1_avm_address = bb_relu1_B4_out_memdep_relu1_avm_address;

    // out_memdep_relu1_avm_burstcount(GPOUT,89)
    assign out_memdep_relu1_avm_burstcount = bb_relu1_B4_out_memdep_relu1_avm_burstcount;

    // out_memdep_relu1_avm_byteenable(GPOUT,90)
    assign out_memdep_relu1_avm_byteenable = bb_relu1_B4_out_memdep_relu1_avm_byteenable;

    // out_memdep_relu1_avm_enable(GPOUT,91)
    assign out_memdep_relu1_avm_enable = bb_relu1_B4_out_memdep_relu1_avm_enable;

    // out_memdep_relu1_avm_read(GPOUT,92)
    assign out_memdep_relu1_avm_read = bb_relu1_B4_out_memdep_relu1_avm_read;

    // out_memdep_relu1_avm_write(GPOUT,93)
    assign out_memdep_relu1_avm_write = bb_relu1_B4_out_memdep_relu1_avm_write;

    // out_memdep_relu1_avm_writedata(GPOUT,94)
    assign out_memdep_relu1_avm_writedata = bb_relu1_B4_out_memdep_relu1_avm_writedata;

    // out_o_active_memdep(GPOUT,95)
    assign out_o_active_memdep = bb_relu1_B4_out_lsu_memdep_o_active;

    // bb_relu1_B0_runOnce(BLACKBOX,8)
    relu1_bb_B0_runOnce thebb_relu1_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_relu1_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,96)
    assign out_stall_out = bb_relu1_B0_runOnce_out_stall_out_0;

    // out_unnamed_relu15_relu1_avm_address(GPOUT,97)
    assign out_unnamed_relu15_relu1_avm_address = bb_relu1_B4_out_unnamed_relu15_relu1_avm_address;

    // out_unnamed_relu15_relu1_avm_burstcount(GPOUT,98)
    assign out_unnamed_relu15_relu1_avm_burstcount = bb_relu1_B4_out_unnamed_relu15_relu1_avm_burstcount;

    // out_unnamed_relu15_relu1_avm_byteenable(GPOUT,99)
    assign out_unnamed_relu15_relu1_avm_byteenable = bb_relu1_B4_out_unnamed_relu15_relu1_avm_byteenable;

    // out_unnamed_relu15_relu1_avm_enable(GPOUT,100)
    assign out_unnamed_relu15_relu1_avm_enable = bb_relu1_B4_out_unnamed_relu15_relu1_avm_enable;

    // out_unnamed_relu15_relu1_avm_read(GPOUT,101)
    assign out_unnamed_relu15_relu1_avm_read = bb_relu1_B4_out_unnamed_relu15_relu1_avm_read;

    // out_unnamed_relu15_relu1_avm_write(GPOUT,102)
    assign out_unnamed_relu15_relu1_avm_write = bb_relu1_B4_out_unnamed_relu15_relu1_avm_write;

    // out_unnamed_relu15_relu1_avm_writedata(GPOUT,103)
    assign out_unnamed_relu15_relu1_avm_writedata = bb_relu1_B4_out_unnamed_relu15_relu1_avm_writedata;

    // out_valid_out(GPOUT,104)
    assign out_valid_out = GND_q;

    // relu1_B1_start_x(EXTIFACE,105)
    assign relu1_B1_start_x_i_capture = GND_q;
    assign relu1_B1_start_x_i_clear = GND_q;
    assign relu1_B1_start_x_i_enable = VCC_q;
    assign relu1_B1_start_x_i_shift = GND_q;
    assign relu1_B1_start_x_i_stall_pred = GND_q;
    assign relu1_B1_start_x_i_stall_succ = bb_relu1_B7_out_stall_in_0;
    assign relu1_B1_start_x_i_valid_loop = bb_relu1_B1_start_out_valid_in_0;
    assign relu1_B1_start_x_i_valid_pred = bb_relu1_B1_start_out_valid_in_1;
    assign relu1_B1_start_x_i_valid_succ = bb_relu1_B7_out_valid_out_0;
    assign relu1_B1_start_x_i_capture_bitsignaltemp = relu1_B1_start_x_i_capture[0];
    assign relu1_B1_start_x_i_clear_bitsignaltemp = relu1_B1_start_x_i_clear[0];
    assign relu1_B1_start_x_i_enable_bitsignaltemp = relu1_B1_start_x_i_enable[0];
    assign relu1_B1_start_x_i_shift_bitsignaltemp = relu1_B1_start_x_i_shift[0];
    assign relu1_B1_start_x_i_stall_pred_bitsignaltemp = relu1_B1_start_x_i_stall_pred[0];
    assign relu1_B1_start_x_i_stall_succ_bitsignaltemp = relu1_B1_start_x_i_stall_succ[0];
    assign relu1_B1_start_x_i_valid_loop_bitsignaltemp = relu1_B1_start_x_i_valid_loop[0];
    assign relu1_B1_start_x_i_valid_pred_bitsignaltemp = relu1_B1_start_x_i_valid_pred[0];
    assign relu1_B1_start_x_i_valid_succ_bitsignaltemp = relu1_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("relu1.B1.start")
    ) therelu1_B1_start_x (
        .i_capture(relu1_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(relu1_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(relu1_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(relu1_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(relu1_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(relu1_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(relu1_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(relu1_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(relu1_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // relu1_B2_x(EXTIFACE,106)
    assign relu1_B2_x_i_capture = GND_q;
    assign relu1_B2_x_i_clear = GND_q;
    assign relu1_B2_x_i_enable = VCC_q;
    assign relu1_B2_x_i_shift = GND_q;
    assign relu1_B2_x_i_stall_pred = loop_limiter_relu10_out_o_stall;
    assign relu1_B2_x_i_stall_succ = bb_relu1_B6_out_stall_in_0;
    assign relu1_B2_x_i_valid_loop = bb_relu1_B2_out_valid_in_0;
    assign relu1_B2_x_i_valid_pred = bb_relu1_B2_out_valid_in_1;
    assign relu1_B2_x_i_valid_succ = bb_relu1_B6_out_valid_out_0;
    assign relu1_B2_x_i_capture_bitsignaltemp = relu1_B2_x_i_capture[0];
    assign relu1_B2_x_i_clear_bitsignaltemp = relu1_B2_x_i_clear[0];
    assign relu1_B2_x_i_enable_bitsignaltemp = relu1_B2_x_i_enable[0];
    assign relu1_B2_x_i_shift_bitsignaltemp = relu1_B2_x_i_shift[0];
    assign relu1_B2_x_i_stall_pred_bitsignaltemp = relu1_B2_x_i_stall_pred[0];
    assign relu1_B2_x_i_stall_succ_bitsignaltemp = relu1_B2_x_i_stall_succ[0];
    assign relu1_B2_x_i_valid_loop_bitsignaltemp = relu1_B2_x_i_valid_loop[0];
    assign relu1_B2_x_i_valid_pred_bitsignaltemp = relu1_B2_x_i_valid_pred[0];
    assign relu1_B2_x_i_valid_succ_bitsignaltemp = relu1_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("relu1.B2")
    ) therelu1_B2_x (
        .i_capture(relu1_B2_x_i_capture_bitsignaltemp),
        .i_clear(relu1_B2_x_i_clear_bitsignaltemp),
        .i_enable(relu1_B2_x_i_enable_bitsignaltemp),
        .i_shift(relu1_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(relu1_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(relu1_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(relu1_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(relu1_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(relu1_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // relu1_B3_x(EXTIFACE,107)
    assign relu1_B3_x_i_capture = GND_q;
    assign relu1_B3_x_i_clear = GND_q;
    assign relu1_B3_x_i_enable = VCC_q;
    assign relu1_B3_x_i_shift = GND_q;
    assign relu1_B3_x_i_stall_pred = loop_limiter_relu11_out_o_stall;
    assign relu1_B3_x_i_stall_succ = bb_relu1_B5_out_stall_in_0;
    assign relu1_B3_x_i_valid_loop = bb_relu1_B3_out_valid_in_0;
    assign relu1_B3_x_i_valid_pred = bb_relu1_B3_out_valid_in_1;
    assign relu1_B3_x_i_valid_succ = bb_relu1_B5_out_valid_out_0;
    assign relu1_B3_x_i_capture_bitsignaltemp = relu1_B3_x_i_capture[0];
    assign relu1_B3_x_i_clear_bitsignaltemp = relu1_B3_x_i_clear[0];
    assign relu1_B3_x_i_enable_bitsignaltemp = relu1_B3_x_i_enable[0];
    assign relu1_B3_x_i_shift_bitsignaltemp = relu1_B3_x_i_shift[0];
    assign relu1_B3_x_i_stall_pred_bitsignaltemp = relu1_B3_x_i_stall_pred[0];
    assign relu1_B3_x_i_stall_succ_bitsignaltemp = relu1_B3_x_i_stall_succ[0];
    assign relu1_B3_x_i_valid_loop_bitsignaltemp = relu1_B3_x_i_valid_loop[0];
    assign relu1_B3_x_i_valid_pred_bitsignaltemp = relu1_B3_x_i_valid_pred[0];
    assign relu1_B3_x_i_valid_succ_bitsignaltemp = relu1_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("relu1.B3")
    ) therelu1_B3_x (
        .i_capture(relu1_B3_x_i_capture_bitsignaltemp),
        .i_clear(relu1_B3_x_i_clear_bitsignaltemp),
        .i_enable(relu1_B3_x_i_enable_bitsignaltemp),
        .i_shift(relu1_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(relu1_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(relu1_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(relu1_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(relu1_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(relu1_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // relu1_B4_x(EXTIFACE,108)
    assign relu1_B4_x_i_capture = GND_q;
    assign relu1_B4_x_i_clear = GND_q;
    assign relu1_B4_x_i_enable = VCC_q;
    assign relu1_B4_x_i_shift = GND_q;
    assign relu1_B4_x_i_stall_pred = loop_limiter_relu12_out_o_stall;
    assign relu1_B4_x_i_stall_succ = bb_relu1_B4_out_stall_in_0;
    assign relu1_B4_x_i_valid_loop = bb_relu1_B4_out_valid_in_0;
    assign relu1_B4_x_i_valid_pred = bb_relu1_B4_out_valid_in_1;
    assign relu1_B4_x_i_valid_succ = bb_relu1_B4_out_valid_out_0;
    assign relu1_B4_x_i_capture_bitsignaltemp = relu1_B4_x_i_capture[0];
    assign relu1_B4_x_i_clear_bitsignaltemp = relu1_B4_x_i_clear[0];
    assign relu1_B4_x_i_enable_bitsignaltemp = relu1_B4_x_i_enable[0];
    assign relu1_B4_x_i_shift_bitsignaltemp = relu1_B4_x_i_shift[0];
    assign relu1_B4_x_i_stall_pred_bitsignaltemp = relu1_B4_x_i_stall_pred[0];
    assign relu1_B4_x_i_stall_succ_bitsignaltemp = relu1_B4_x_i_stall_succ[0];
    assign relu1_B4_x_i_valid_loop_bitsignaltemp = relu1_B4_x_i_valid_loop[0];
    assign relu1_B4_x_i_valid_pred_bitsignaltemp = relu1_B4_x_i_valid_pred[0];
    assign relu1_B4_x_i_valid_succ_bitsignaltemp = relu1_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("relu1.B4")
    ) therelu1_B4_x (
        .i_capture(relu1_B4_x_i_capture_bitsignaltemp),
        .i_clear(relu1_B4_x_i_clear_bitsignaltemp),
        .i_enable(relu1_B4_x_i_enable_bitsignaltemp),
        .i_shift(relu1_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(relu1_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(relu1_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(relu1_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(relu1_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(relu1_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

endmodule
