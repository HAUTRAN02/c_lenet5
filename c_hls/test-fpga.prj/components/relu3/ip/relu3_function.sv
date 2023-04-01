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

// SystemVerilog created from relu3_function
// Created for function/kernel relu3
// SystemVerilog created on Sat Apr  1 13:10:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module relu3_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_in0,
    input wire [63:0] in_arg_out0,
    input wire [63:0] in_arg_return,
    input wire [127:0] in_iord_bl_call_relu3_i_fifodata,
    input wire [0:0] in_iord_bl_call_relu3_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_relu3_i_fifoready,
    input wire [63:0] in_memdep_relu3_avm_readdata,
    input wire [0:0] in_memdep_relu3_avm_readdatavalid,
    input wire [0:0] in_memdep_relu3_avm_waitrequest,
    input wire [0:0] in_memdep_relu3_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [63:0] in_unnamed_relu35_relu3_avm_readdata,
    input wire [0:0] in_unnamed_relu35_relu3_avm_readdatavalid,
    input wire [0:0] in_unnamed_relu35_relu3_avm_waitrequest,
    input wire [0:0] in_unnamed_relu35_relu3_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_relu3_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_relu3_o_fifoready,
    output wire [0:0] out_iowr_bl_return_relu3_o_fifodata,
    output wire [0:0] out_iowr_bl_return_relu3_o_fifovalid,
    output wire [63:0] out_memdep_relu3_avm_address,
    output wire [0:0] out_memdep_relu3_avm_burstcount,
    output wire [7:0] out_memdep_relu3_avm_byteenable,
    output wire [0:0] out_memdep_relu3_avm_enable,
    output wire [0:0] out_memdep_relu3_avm_read,
    output wire [0:0] out_memdep_relu3_avm_write,
    output wire [63:0] out_memdep_relu3_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_stall_out,
    output wire [63:0] out_unnamed_relu35_relu3_avm_address,
    output wire [0:0] out_unnamed_relu35_relu3_avm_burstcount,
    output wire [7:0] out_unnamed_relu35_relu3_avm_byteenable,
    output wire [0:0] out_unnamed_relu35_relu3_avm_enable,
    output wire [0:0] out_unnamed_relu35_relu3_avm_read,
    output wire [0:0] out_unnamed_relu35_relu3_avm_write,
    output wire [63:0] out_unnamed_relu35_relu3_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_relu3_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_relu3_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_relu3_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_relu3_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_relu3_B3_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_relu3_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_relu3_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_relu3_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_relu3_B1_start_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_relu3_B1_start_out_iord_bl_call_relu3_o_fifoalmost_full;
    wire [0:0] bb_relu3_B1_start_out_iord_bl_call_relu3_o_fifoready;
    wire [0:0] bb_relu3_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_relu3_B1_start_out_stall_out_0;
    wire [0:0] bb_relu3_B1_start_out_valid_in_0;
    wire [0:0] bb_relu3_B1_start_out_valid_in_1;
    wire [0:0] bb_relu3_B1_start_out_valid_out_0;
    wire [0:0] bb_relu3_B2_out_exiting_stall_out;
    wire [0:0] bb_relu3_B2_out_exiting_valid_out;
    wire [0:0] bb_relu3_B2_out_lsu_memdep_o_active;
    wire [63:0] bb_relu3_B2_out_memdep_relu3_avm_address;
    wire [0:0] bb_relu3_B2_out_memdep_relu3_avm_burstcount;
    wire [7:0] bb_relu3_B2_out_memdep_relu3_avm_byteenable;
    wire [0:0] bb_relu3_B2_out_memdep_relu3_avm_enable;
    wire [0:0] bb_relu3_B2_out_memdep_relu3_avm_read;
    wire [0:0] bb_relu3_B2_out_memdep_relu3_avm_write;
    wire [63:0] bb_relu3_B2_out_memdep_relu3_avm_writedata;
    wire [0:0] bb_relu3_B2_out_pipeline_valid_out;
    wire [0:0] bb_relu3_B2_out_stall_in_0;
    wire [0:0] bb_relu3_B2_out_stall_out_0;
    wire [0:0] bb_relu3_B2_out_stall_out_1;
    wire [63:0] bb_relu3_B2_out_unnamed_relu35_relu3_avm_address;
    wire [0:0] bb_relu3_B2_out_unnamed_relu35_relu3_avm_burstcount;
    wire [7:0] bb_relu3_B2_out_unnamed_relu35_relu3_avm_byteenable;
    wire [0:0] bb_relu3_B2_out_unnamed_relu35_relu3_avm_enable;
    wire [0:0] bb_relu3_B2_out_unnamed_relu35_relu3_avm_read;
    wire [0:0] bb_relu3_B2_out_unnamed_relu35_relu3_avm_write;
    wire [63:0] bb_relu3_B2_out_unnamed_relu35_relu3_avm_writedata;
    wire [0:0] bb_relu3_B2_out_valid_in_0;
    wire [0:0] bb_relu3_B2_out_valid_in_1;
    wire [0:0] bb_relu3_B2_out_valid_out_0;
    wire [0:0] bb_relu3_B3_out_feedback_out_1;
    wire [0:0] bb_relu3_B3_out_feedback_valid_out_1;
    wire [0:0] bb_relu3_B3_out_iowr_bl_return_relu3_o_fifodata;
    wire [0:0] bb_relu3_B3_out_iowr_bl_return_relu3_o_fifovalid;
    wire [0:0] bb_relu3_B3_out_stall_in_0;
    wire [0:0] bb_relu3_B3_out_stall_out_0;
    wire [0:0] bb_relu3_B3_out_valid_out_0;
    wire [1:0] c_i2_010_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going4_relu31_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going4_relu31_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going4_relu31_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going4_relu31_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu33_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_relu33_sr_out_o_valid;
    wire [0:0] loop_limiter_relu30_out_o_stall;
    wire [0:0] loop_limiter_relu30_out_o_valid;
    wire [0:0] relu3_B1_start_x_i_capture;
    wire relu3_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] relu3_B1_start_x_i_clear;
    wire relu3_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] relu3_B1_start_x_i_enable;
    wire relu3_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] relu3_B1_start_x_i_shift;
    wire relu3_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] relu3_B1_start_x_i_stall_pred;
    wire relu3_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] relu3_B1_start_x_i_stall_succ;
    wire relu3_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] relu3_B1_start_x_i_valid_loop;
    wire relu3_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] relu3_B1_start_x_i_valid_pred;
    wire relu3_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] relu3_B1_start_x_i_valid_succ;
    wire relu3_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] relu3_B2_x_i_capture;
    wire relu3_B2_x_i_capture_bitsignaltemp;
    wire [0:0] relu3_B2_x_i_clear;
    wire relu3_B2_x_i_clear_bitsignaltemp;
    wire [0:0] relu3_B2_x_i_enable;
    wire relu3_B2_x_i_enable_bitsignaltemp;
    wire [0:0] relu3_B2_x_i_shift;
    wire relu3_B2_x_i_shift_bitsignaltemp;
    wire [0:0] relu3_B2_x_i_stall_pred;
    wire relu3_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] relu3_B2_x_i_stall_succ;
    wire relu3_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] relu3_B2_x_i_valid_loop;
    wire relu3_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] relu3_B2_x_i_valid_pred;
    wire relu3_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] relu3_B2_x_i_valid_succ;
    wire relu3_B2_x_i_valid_succ_bitsignaltemp;


    // c_i2_010(CONSTANT,20)
    assign c_i2_010_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going4_relu31_valid_fifo(BLACKBOX,23)
    relu3_i_llvm_fpga_pipeline_keep_going4_1_valid_fifo thei_llvm_fpga_pipeline_keep_going4_relu31_valid_fifo (
        .in_data_in(c_i2_010_q),
        .in_stall_in(bb_relu3_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going4_relu31_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going4_relu31_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going4_relu31_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_relu3_B3_sr_0_aunroll_x(BLACKBOX,3)
    relu3_bb_B3_sr_0 thebb_relu3_B3_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_relu3_B3_out_stall_out_0),
        .in_i_valid(bb_relu3_B2_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_relu3_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_relu3_B3_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_relu33_sr(BLACKBOX,24)
    relu3_i_llvm_fpga_pipeline_keep_going_3_sr thei_llvm_fpga_pipeline_keep_going_relu33_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_relu3_B2_out_stall_out_0),
        .in_i_valid(bb_relu3_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_relu33_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_relu33_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_relu3_B2(BLACKBOX,6)
    relu3_bb_B2 thebb_relu3_B2 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_relu3_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_relu3_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_relu3_B1_start_out_intel_reserved_ffwd_1_0),
        .in_memdep_relu3_avm_readdata(in_memdep_relu3_avm_readdata),
        .in_memdep_relu3_avm_readdatavalid(in_memdep_relu3_avm_readdatavalid),
        .in_memdep_relu3_avm_waitrequest(in_memdep_relu3_avm_waitrequest),
        .in_memdep_relu3_avm_writeack(in_memdep_relu3_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_relu33_sr_out_o_stall),
        .in_stall_in_0(bb_relu3_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_relu35_relu3_avm_readdata(in_unnamed_relu35_relu3_avm_readdata),
        .in_unnamed_relu35_relu3_avm_readdatavalid(in_unnamed_relu35_relu3_avm_readdatavalid),
        .in_unnamed_relu35_relu3_avm_waitrequest(in_unnamed_relu35_relu3_avm_waitrequest),
        .in_unnamed_relu35_relu3_avm_writeack(in_unnamed_relu35_relu3_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_relu33_sr_out_o_valid),
        .in_valid_in_1(bb_relu3_B2_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_relu3_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_relu3_B2_out_exiting_valid_out),
        .out_lsu_memdep_o_active(bb_relu3_B2_out_lsu_memdep_o_active),
        .out_memdep_relu3_avm_address(bb_relu3_B2_out_memdep_relu3_avm_address),
        .out_memdep_relu3_avm_burstcount(bb_relu3_B2_out_memdep_relu3_avm_burstcount),
        .out_memdep_relu3_avm_byteenable(bb_relu3_B2_out_memdep_relu3_avm_byteenable),
        .out_memdep_relu3_avm_enable(bb_relu3_B2_out_memdep_relu3_avm_enable),
        .out_memdep_relu3_avm_read(bb_relu3_B2_out_memdep_relu3_avm_read),
        .out_memdep_relu3_avm_write(bb_relu3_B2_out_memdep_relu3_avm_write),
        .out_memdep_relu3_avm_writedata(bb_relu3_B2_out_memdep_relu3_avm_writedata),
        .out_pipeline_valid_out(bb_relu3_B2_out_pipeline_valid_out),
        .out_stall_in_0(bb_relu3_B2_out_stall_in_0),
        .out_stall_out_0(bb_relu3_B2_out_stall_out_0),
        .out_stall_out_1(bb_relu3_B2_out_stall_out_1),
        .out_unnamed_relu35_relu3_avm_address(bb_relu3_B2_out_unnamed_relu35_relu3_avm_address),
        .out_unnamed_relu35_relu3_avm_burstcount(bb_relu3_B2_out_unnamed_relu35_relu3_avm_burstcount),
        .out_unnamed_relu35_relu3_avm_byteenable(bb_relu3_B2_out_unnamed_relu35_relu3_avm_byteenable),
        .out_unnamed_relu35_relu3_avm_enable(bb_relu3_B2_out_unnamed_relu35_relu3_avm_enable),
        .out_unnamed_relu35_relu3_avm_read(bb_relu3_B2_out_unnamed_relu35_relu3_avm_read),
        .out_unnamed_relu35_relu3_avm_write(bb_relu3_B2_out_unnamed_relu35_relu3_avm_write),
        .out_unnamed_relu35_relu3_avm_writedata(bb_relu3_B2_out_unnamed_relu35_relu3_avm_writedata),
        .out_valid_in_0(bb_relu3_B2_out_valid_in_0),
        .out_valid_in_1(bb_relu3_B2_out_valid_in_1),
        .out_valid_out_0(bb_relu3_B2_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_relu3_B2_sr_1_aunroll_x(BLACKBOX,2)
    relu3_bb_B2_sr_1 thebb_relu3_B2_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_relu3_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_relu30_out_o_valid),
        .out_o_data_0_tpl(bb_relu3_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_relu3_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_relu3_B2_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_relu30(BLACKBOX,43)
    relu3_loop_limiter_0 theloop_limiter_relu30 (
        .in_i_stall(bb_relu3_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_relu3_B2_out_exiting_stall_out),
        .in_i_valid(bb_relu3_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_relu3_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_relu30_out_o_stall),
        .out_o_valid(loop_limiter_relu30_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going4_relu31_sr(BLACKBOX,22)
    relu3_i_llvm_fpga_pipeline_keep_going4_1_sr thei_llvm_fpga_pipeline_keep_going4_relu31_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going4_relu31_valid_fifo_out_stall_out),
        .in_i_valid(bb_relu3_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going4_relu31_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going4_relu31_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_relu3_B3(BLACKBOX,7)
    relu3_bb_B3 thebb_relu3_B3 (
        .in_feedback_stall_in_1(bb_relu3_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_relu3_i_fifoready(in_iowr_bl_return_relu3_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_relu3_B3_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_relu3_B3_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_relu3_B3_out_feedback_valid_out_1),
        .out_iowr_bl_return_relu3_o_fifodata(bb_relu3_B3_out_iowr_bl_return_relu3_o_fifodata),
        .out_iowr_bl_return_relu3_o_fifovalid(bb_relu3_B3_out_iowr_bl_return_relu3_o_fifovalid),
        .out_stall_in_0(bb_relu3_B3_out_stall_in_0),
        .out_stall_out_0(bb_relu3_B3_out_stall_out_0),
        .out_valid_out_0(bb_relu3_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_relu3_B1_start(BLACKBOX,5)
    relu3_bb_B1_start thebb_relu3_B1_start (
        .in_feedback_in_1(bb_relu3_B3_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_relu3_B3_out_feedback_valid_out_1),
        .in_iord_bl_call_relu3_i_fifodata(in_iord_bl_call_relu3_i_fifodata),
        .in_iord_bl_call_relu3_i_fifovalid(in_iord_bl_call_relu3_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going4_relu31_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_relu30_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going4_relu31_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_relu3_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_relu3_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_relu3_B1_start_out_intel_reserved_ffwd_1_0),
        .out_iord_bl_call_relu3_o_fifoalmost_full(bb_relu3_B1_start_out_iord_bl_call_relu3_o_fifoalmost_full),
        .out_iord_bl_call_relu3_o_fifoready(bb_relu3_B1_start_out_iord_bl_call_relu3_o_fifoready),
        .out_pipeline_valid_out(bb_relu3_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_relu3_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_relu3_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_relu3_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_relu3_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_relu3_o_fifoalmost_full(GPOUT,44)
    assign out_iord_bl_call_relu3_o_fifoalmost_full = bb_relu3_B1_start_out_iord_bl_call_relu3_o_fifoalmost_full;

    // out_iord_bl_call_relu3_o_fifoready(GPOUT,45)
    assign out_iord_bl_call_relu3_o_fifoready = bb_relu3_B1_start_out_iord_bl_call_relu3_o_fifoready;

    // out_iowr_bl_return_relu3_o_fifodata(GPOUT,46)
    assign out_iowr_bl_return_relu3_o_fifodata = bb_relu3_B3_out_iowr_bl_return_relu3_o_fifodata;

    // out_iowr_bl_return_relu3_o_fifovalid(GPOUT,47)
    assign out_iowr_bl_return_relu3_o_fifovalid = bb_relu3_B3_out_iowr_bl_return_relu3_o_fifovalid;

    // out_memdep_relu3_avm_address(GPOUT,48)
    assign out_memdep_relu3_avm_address = bb_relu3_B2_out_memdep_relu3_avm_address;

    // out_memdep_relu3_avm_burstcount(GPOUT,49)
    assign out_memdep_relu3_avm_burstcount = bb_relu3_B2_out_memdep_relu3_avm_burstcount;

    // out_memdep_relu3_avm_byteenable(GPOUT,50)
    assign out_memdep_relu3_avm_byteenable = bb_relu3_B2_out_memdep_relu3_avm_byteenable;

    // out_memdep_relu3_avm_enable(GPOUT,51)
    assign out_memdep_relu3_avm_enable = bb_relu3_B2_out_memdep_relu3_avm_enable;

    // out_memdep_relu3_avm_read(GPOUT,52)
    assign out_memdep_relu3_avm_read = bb_relu3_B2_out_memdep_relu3_avm_read;

    // out_memdep_relu3_avm_write(GPOUT,53)
    assign out_memdep_relu3_avm_write = bb_relu3_B2_out_memdep_relu3_avm_write;

    // out_memdep_relu3_avm_writedata(GPOUT,54)
    assign out_memdep_relu3_avm_writedata = bb_relu3_B2_out_memdep_relu3_avm_writedata;

    // out_o_active_memdep(GPOUT,55)
    assign out_o_active_memdep = bb_relu3_B2_out_lsu_memdep_o_active;

    // bb_relu3_B0_runOnce(BLACKBOX,4)
    relu3_bb_B0_runOnce thebb_relu3_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_relu3_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,56)
    assign out_stall_out = bb_relu3_B0_runOnce_out_stall_out_0;

    // out_unnamed_relu35_relu3_avm_address(GPOUT,57)
    assign out_unnamed_relu35_relu3_avm_address = bb_relu3_B2_out_unnamed_relu35_relu3_avm_address;

    // out_unnamed_relu35_relu3_avm_burstcount(GPOUT,58)
    assign out_unnamed_relu35_relu3_avm_burstcount = bb_relu3_B2_out_unnamed_relu35_relu3_avm_burstcount;

    // out_unnamed_relu35_relu3_avm_byteenable(GPOUT,59)
    assign out_unnamed_relu35_relu3_avm_byteenable = bb_relu3_B2_out_unnamed_relu35_relu3_avm_byteenable;

    // out_unnamed_relu35_relu3_avm_enable(GPOUT,60)
    assign out_unnamed_relu35_relu3_avm_enable = bb_relu3_B2_out_unnamed_relu35_relu3_avm_enable;

    // out_unnamed_relu35_relu3_avm_read(GPOUT,61)
    assign out_unnamed_relu35_relu3_avm_read = bb_relu3_B2_out_unnamed_relu35_relu3_avm_read;

    // out_unnamed_relu35_relu3_avm_write(GPOUT,62)
    assign out_unnamed_relu35_relu3_avm_write = bb_relu3_B2_out_unnamed_relu35_relu3_avm_write;

    // out_unnamed_relu35_relu3_avm_writedata(GPOUT,63)
    assign out_unnamed_relu35_relu3_avm_writedata = bb_relu3_B2_out_unnamed_relu35_relu3_avm_writedata;

    // out_valid_out(GPOUT,64)
    assign out_valid_out = GND_q;

    // relu3_B1_start_x(EXTIFACE,65)
    assign relu3_B1_start_x_i_capture = GND_q;
    assign relu3_B1_start_x_i_clear = GND_q;
    assign relu3_B1_start_x_i_enable = VCC_q;
    assign relu3_B1_start_x_i_shift = GND_q;
    assign relu3_B1_start_x_i_stall_pred = GND_q;
    assign relu3_B1_start_x_i_stall_succ = bb_relu3_B3_out_stall_in_0;
    assign relu3_B1_start_x_i_valid_loop = bb_relu3_B1_start_out_valid_in_0;
    assign relu3_B1_start_x_i_valid_pred = bb_relu3_B1_start_out_valid_in_1;
    assign relu3_B1_start_x_i_valid_succ = bb_relu3_B3_out_valid_out_0;
    assign relu3_B1_start_x_i_capture_bitsignaltemp = relu3_B1_start_x_i_capture[0];
    assign relu3_B1_start_x_i_clear_bitsignaltemp = relu3_B1_start_x_i_clear[0];
    assign relu3_B1_start_x_i_enable_bitsignaltemp = relu3_B1_start_x_i_enable[0];
    assign relu3_B1_start_x_i_shift_bitsignaltemp = relu3_B1_start_x_i_shift[0];
    assign relu3_B1_start_x_i_stall_pred_bitsignaltemp = relu3_B1_start_x_i_stall_pred[0];
    assign relu3_B1_start_x_i_stall_succ_bitsignaltemp = relu3_B1_start_x_i_stall_succ[0];
    assign relu3_B1_start_x_i_valid_loop_bitsignaltemp = relu3_B1_start_x_i_valid_loop[0];
    assign relu3_B1_start_x_i_valid_pred_bitsignaltemp = relu3_B1_start_x_i_valid_pred[0];
    assign relu3_B1_start_x_i_valid_succ_bitsignaltemp = relu3_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("relu3.B1.start")
    ) therelu3_B1_start_x (
        .i_capture(relu3_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(relu3_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(relu3_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(relu3_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(relu3_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(relu3_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(relu3_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(relu3_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(relu3_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // relu3_B2_x(EXTIFACE,66)
    assign relu3_B2_x_i_capture = GND_q;
    assign relu3_B2_x_i_clear = GND_q;
    assign relu3_B2_x_i_enable = VCC_q;
    assign relu3_B2_x_i_shift = GND_q;
    assign relu3_B2_x_i_stall_pred = loop_limiter_relu30_out_o_stall;
    assign relu3_B2_x_i_stall_succ = bb_relu3_B2_out_stall_in_0;
    assign relu3_B2_x_i_valid_loop = bb_relu3_B2_out_valid_in_0;
    assign relu3_B2_x_i_valid_pred = bb_relu3_B2_out_valid_in_1;
    assign relu3_B2_x_i_valid_succ = bb_relu3_B2_out_valid_out_0;
    assign relu3_B2_x_i_capture_bitsignaltemp = relu3_B2_x_i_capture[0];
    assign relu3_B2_x_i_clear_bitsignaltemp = relu3_B2_x_i_clear[0];
    assign relu3_B2_x_i_enable_bitsignaltemp = relu3_B2_x_i_enable[0];
    assign relu3_B2_x_i_shift_bitsignaltemp = relu3_B2_x_i_shift[0];
    assign relu3_B2_x_i_stall_pred_bitsignaltemp = relu3_B2_x_i_stall_pred[0];
    assign relu3_B2_x_i_stall_succ_bitsignaltemp = relu3_B2_x_i_stall_succ[0];
    assign relu3_B2_x_i_valid_loop_bitsignaltemp = relu3_B2_x_i_valid_loop[0];
    assign relu3_B2_x_i_valid_pred_bitsignaltemp = relu3_B2_x_i_valid_pred[0];
    assign relu3_B2_x_i_valid_succ_bitsignaltemp = relu3_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("relu3.B2")
    ) therelu3_B2_x (
        .i_capture(relu3_B2_x_i_capture_bitsignaltemp),
        .i_clear(relu3_B2_x_i_clear_bitsignaltemp),
        .i_enable(relu3_B2_x_i_enable_bitsignaltemp),
        .i_shift(relu3_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(relu3_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(relu3_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(relu3_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(relu3_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(relu3_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

endmodule
