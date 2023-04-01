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

// SystemVerilog created from fc1_function
// Created for function/kernel fc1
// SystemVerilog created on Sat Apr  1 13:10:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fc1_function (
    input wire [63:0] in_arg_bias,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_in0,
    input wire [63:0] in_arg_out0,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_weights,
    input wire [255:0] in_iord_bl_call_fc1_i_fifodata,
    input wire [0:0] in_iord_bl_call_fc1_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_fc1_i_fifoready,
    input wire [63:0] in_memdep_fc1_avm_readdata,
    input wire [0:0] in_memdep_fc1_avm_readdatavalid,
    input wire [0:0] in_memdep_fc1_avm_waitrequest,
    input wire [0:0] in_memdep_fc1_avm_writeack,
    input wire [63:0] in_pn1_fc1_avm_readdata,
    input wire [0:0] in_pn1_fc1_avm_readdatavalid,
    input wire [0:0] in_pn1_fc1_avm_waitrequest,
    input wire [0:0] in_pn1_fc1_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [63:0] in_unnamed_fc17_fc1_avm_readdata,
    input wire [0:0] in_unnamed_fc17_fc1_avm_readdatavalid,
    input wire [0:0] in_unnamed_fc17_fc1_avm_waitrequest,
    input wire [0:0] in_unnamed_fc17_fc1_avm_writeack,
    input wire [63:0] in_unnamed_fc18_fc1_avm_readdata,
    input wire [0:0] in_unnamed_fc18_fc1_avm_readdatavalid,
    input wire [0:0] in_unnamed_fc18_fc1_avm_waitrequest,
    input wire [0:0] in_unnamed_fc18_fc1_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_fc1_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_fc1_o_fifoready,
    output wire [0:0] out_iowr_bl_return_fc1_o_fifodata,
    output wire [0:0] out_iowr_bl_return_fc1_o_fifovalid,
    output wire [63:0] out_memdep_fc1_avm_address,
    output wire [0:0] out_memdep_fc1_avm_burstcount,
    output wire [7:0] out_memdep_fc1_avm_byteenable,
    output wire [0:0] out_memdep_fc1_avm_enable,
    output wire [0:0] out_memdep_fc1_avm_read,
    output wire [0:0] out_memdep_fc1_avm_write,
    output wire [63:0] out_memdep_fc1_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [63:0] out_pn1_fc1_avm_address,
    output wire [0:0] out_pn1_fc1_avm_burstcount,
    output wire [7:0] out_pn1_fc1_avm_byteenable,
    output wire [0:0] out_pn1_fc1_avm_enable,
    output wire [0:0] out_pn1_fc1_avm_read,
    output wire [0:0] out_pn1_fc1_avm_write,
    output wire [63:0] out_pn1_fc1_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [63:0] out_unnamed_fc17_fc1_avm_address,
    output wire [0:0] out_unnamed_fc17_fc1_avm_burstcount,
    output wire [7:0] out_unnamed_fc17_fc1_avm_byteenable,
    output wire [0:0] out_unnamed_fc17_fc1_avm_enable,
    output wire [0:0] out_unnamed_fc17_fc1_avm_read,
    output wire [0:0] out_unnamed_fc17_fc1_avm_write,
    output wire [63:0] out_unnamed_fc17_fc1_avm_writedata,
    output wire [63:0] out_unnamed_fc18_fc1_avm_address,
    output wire [0:0] out_unnamed_fc18_fc1_avm_burstcount,
    output wire [7:0] out_unnamed_fc18_fc1_avm_byteenable,
    output wire [0:0] out_unnamed_fc18_fc1_avm_enable,
    output wire [0:0] out_unnamed_fc18_fc1_avm_read,
    output wire [0:0] out_unnamed_fc18_fc1_avm_write,
    output wire [63:0] out_unnamed_fc18_fc1_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_fc1_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_fc1_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_fc1_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_fc1_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_fc1_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_fc1_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_fc1_B3_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_fc1_B3_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_fc1_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_fc1_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_fc1_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_fc1_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_fc1_B4_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_fc1_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_fc1_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_fc1_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_fc1_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_fc1_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_fc1_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_fc1_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_fc1_B1_start_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_fc1_B1_start_out_intel_reserved_ffwd_2_0;
    wire [63:0] bb_fc1_B1_start_out_intel_reserved_ffwd_3_0;
    wire [0:0] bb_fc1_B1_start_out_iord_bl_call_fc1_o_fifoalmost_full;
    wire [0:0] bb_fc1_B1_start_out_iord_bl_call_fc1_o_fifoready;
    wire [0:0] bb_fc1_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_fc1_B1_start_out_stall_out_0;
    wire [0:0] bb_fc1_B1_start_out_valid_in_0;
    wire [0:0] bb_fc1_B1_start_out_valid_in_1;
    wire [0:0] bb_fc1_B1_start_out_valid_out_0;
    wire [0:0] bb_fc1_B2_out_c0_exe136;
    wire [0:0] bb_fc1_B2_out_c0_exe2;
    wire [31:0] bb_fc1_B2_out_c0_exe3;
    wire [0:0] bb_fc1_B2_out_exiting_stall_out;
    wire [0:0] bb_fc1_B2_out_exiting_valid_out;
    wire [0:0] bb_fc1_B2_out_feedback_stall_out_10;
    wire [0:0] bb_fc1_B2_out_memdep_phi2_pop10;
    wire [0:0] bb_fc1_B2_out_pipeline_valid_out;
    wire [0:0] bb_fc1_B2_out_stall_out_0;
    wire [0:0] bb_fc1_B2_out_stall_out_1;
    wire [0:0] bb_fc1_B2_out_valid_in_0;
    wire [0:0] bb_fc1_B2_out_valid_in_1;
    wire [0:0] bb_fc1_B2_out_valid_out_0;
    wire [0:0] bb_fc1_B3_out_exitcond722_pop16;
    wire [0:0] bb_fc1_B3_out_exiting_stall_out;
    wire [0:0] bb_fc1_B3_out_exiting_valid_out;
    wire [0:0] bb_fc1_B3_out_lsu_memdep_o_active;
    wire [0:0] bb_fc1_B3_out_memdep;
    wire [63:0] bb_fc1_B3_out_memdep_fc1_avm_address;
    wire [0:0] bb_fc1_B3_out_memdep_fc1_avm_burstcount;
    wire [7:0] bb_fc1_B3_out_memdep_fc1_avm_byteenable;
    wire [0:0] bb_fc1_B3_out_memdep_fc1_avm_enable;
    wire [0:0] bb_fc1_B3_out_memdep_fc1_avm_read;
    wire [0:0] bb_fc1_B3_out_memdep_fc1_avm_write;
    wire [63:0] bb_fc1_B3_out_memdep_fc1_avm_writedata;
    wire [0:0] bb_fc1_B3_out_notcmp1223_pop17;
    wire [0:0] bb_fc1_B3_out_pipeline_valid_out;
    wire [63:0] bb_fc1_B3_out_pn1_fc1_avm_address;
    wire [0:0] bb_fc1_B3_out_pn1_fc1_avm_burstcount;
    wire [7:0] bb_fc1_B3_out_pn1_fc1_avm_byteenable;
    wire [0:0] bb_fc1_B3_out_pn1_fc1_avm_enable;
    wire [0:0] bb_fc1_B3_out_pn1_fc1_avm_read;
    wire [0:0] bb_fc1_B3_out_pn1_fc1_avm_write;
    wire [63:0] bb_fc1_B3_out_pn1_fc1_avm_writedata;
    wire [0:0] bb_fc1_B3_out_stall_in_0;
    wire [0:0] bb_fc1_B3_out_stall_out_0;
    wire [0:0] bb_fc1_B3_out_stall_out_1;
    wire [63:0] bb_fc1_B3_out_unnamed_fc17_fc1_avm_address;
    wire [0:0] bb_fc1_B3_out_unnamed_fc17_fc1_avm_burstcount;
    wire [7:0] bb_fc1_B3_out_unnamed_fc17_fc1_avm_byteenable;
    wire [0:0] bb_fc1_B3_out_unnamed_fc17_fc1_avm_enable;
    wire [0:0] bb_fc1_B3_out_unnamed_fc17_fc1_avm_read;
    wire [0:0] bb_fc1_B3_out_unnamed_fc17_fc1_avm_write;
    wire [63:0] bb_fc1_B3_out_unnamed_fc17_fc1_avm_writedata;
    wire [63:0] bb_fc1_B3_out_unnamed_fc18_fc1_avm_address;
    wire [0:0] bb_fc1_B3_out_unnamed_fc18_fc1_avm_burstcount;
    wire [7:0] bb_fc1_B3_out_unnamed_fc18_fc1_avm_byteenable;
    wire [0:0] bb_fc1_B3_out_unnamed_fc18_fc1_avm_enable;
    wire [0:0] bb_fc1_B3_out_unnamed_fc18_fc1_avm_read;
    wire [0:0] bb_fc1_B3_out_unnamed_fc18_fc1_avm_write;
    wire [63:0] bb_fc1_B3_out_unnamed_fc18_fc1_avm_writedata;
    wire [0:0] bb_fc1_B3_out_valid_in_0;
    wire [0:0] bb_fc1_B3_out_valid_in_1;
    wire [0:0] bb_fc1_B3_out_valid_out_0;
    wire [0:0] bb_fc1_B4_out_feedback_out_10;
    wire [0:0] bb_fc1_B4_out_feedback_valid_out_10;
    wire [0:0] bb_fc1_B4_out_stall_in_0;
    wire [0:0] bb_fc1_B4_out_stall_out_0;
    wire [0:0] bb_fc1_B4_out_valid_out_0;
    wire [0:0] bb_fc1_B5_out_feedback_out_1;
    wire [0:0] bb_fc1_B5_out_feedback_valid_out_1;
    wire [0:0] bb_fc1_B5_out_iowr_bl_return_fc1_o_fifodata;
    wire [0:0] bb_fc1_B5_out_iowr_bl_return_fc1_o_fifovalid;
    wire [0:0] bb_fc1_B5_out_stall_in_0;
    wire [0:0] bb_fc1_B5_out_stall_out_0;
    wire [0:0] bb_fc1_B5_out_valid_out_0;
    wire [1:0] c_i2_027_q;
    wire [31:0] c_i32_undef18_q;
    wire [0:0] fc1_B1_start_x_i_capture;
    wire fc1_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] fc1_B1_start_x_i_clear;
    wire fc1_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] fc1_B1_start_x_i_enable;
    wire fc1_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] fc1_B1_start_x_i_shift;
    wire fc1_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] fc1_B1_start_x_i_stall_pred;
    wire fc1_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] fc1_B1_start_x_i_stall_succ;
    wire fc1_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] fc1_B1_start_x_i_valid_loop;
    wire fc1_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] fc1_B1_start_x_i_valid_pred;
    wire fc1_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] fc1_B1_start_x_i_valid_succ;
    wire fc1_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] fc1_B2_x_i_capture;
    wire fc1_B2_x_i_capture_bitsignaltemp;
    wire [0:0] fc1_B2_x_i_clear;
    wire fc1_B2_x_i_clear_bitsignaltemp;
    wire [0:0] fc1_B2_x_i_enable;
    wire fc1_B2_x_i_enable_bitsignaltemp;
    wire [0:0] fc1_B2_x_i_shift;
    wire fc1_B2_x_i_shift_bitsignaltemp;
    wire [0:0] fc1_B2_x_i_stall_pred;
    wire fc1_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] fc1_B2_x_i_stall_succ;
    wire fc1_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] fc1_B2_x_i_valid_loop;
    wire fc1_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] fc1_B2_x_i_valid_pred;
    wire fc1_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] fc1_B2_x_i_valid_succ;
    wire fc1_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] fc1_B3_x_i_capture;
    wire fc1_B3_x_i_capture_bitsignaltemp;
    wire [0:0] fc1_B3_x_i_clear;
    wire fc1_B3_x_i_clear_bitsignaltemp;
    wire [0:0] fc1_B3_x_i_enable;
    wire fc1_B3_x_i_enable_bitsignaltemp;
    wire [0:0] fc1_B3_x_i_shift;
    wire fc1_B3_x_i_shift_bitsignaltemp;
    wire [0:0] fc1_B3_x_i_stall_pred;
    wire fc1_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] fc1_B3_x_i_stall_succ;
    wire fc1_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] fc1_B3_x_i_valid_loop;
    wire fc1_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] fc1_B3_x_i_valid_pred;
    wire fc1_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] fc1_B3_x_i_valid_succ;
    wire fc1_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going14_fc12_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going14_fc12_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going14_fc12_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going14_fc12_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_fc11_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_fc11_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_fc11_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_fc11_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fc15_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fc15_sr_out_o_valid;
    wire [0:0] loop_limiter_fc10_out_o_stall;
    wire [0:0] loop_limiter_fc10_out_o_valid;
    wire [0:0] loop_limiter_fc11_out_o_stall;
    wire [0:0] loop_limiter_fc11_out_o_valid;


    // c_i2_027(CONSTANT,33)
    assign c_i2_027_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going18_fc11_valid_fifo(BLACKBOX,43)
    fc1_i_llvm_fpga_pipeline_keep_going18_1_valid_fifo thei_llvm_fpga_pipeline_keep_going18_fc11_valid_fifo (
        .in_data_in(c_i2_027_q),
        .in_stall_in(bb_fc1_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going18_fc11_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going18_fc11_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going18_fc11_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going14_fc12_valid_fifo(BLACKBOX,41)
    fc1_i_llvm_fpga_pipeline_keep_going14_2_valid_fifo thei_llvm_fpga_pipeline_keep_going14_fc12_valid_fifo (
        .in_data_in(c_i2_027_q),
        .in_stall_in(bb_fc1_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going14_fc12_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going14_fc12_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going14_fc12_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fc1_B4_sr_0_aunroll_x(BLACKBOX,4)
    fc1_bb_B4_sr_0 thebb_fc1_B4_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_fc1_B3_out_exitcond722_pop16),
        .in_i_data_1_tpl(bb_fc1_B3_out_notcmp1223_pop17),
        .in_i_data_2_tpl(bb_fc1_B3_out_memdep),
        .in_i_stall(bb_fc1_B4_out_stall_out_0),
        .in_i_valid(bb_fc1_B3_out_valid_out_0),
        .out_o_data_0_tpl(bb_fc1_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_fc1_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_fc1_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_fc1_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_fc1_B4_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_fc15_sr(BLACKBOX,44)
    fc1_i_llvm_fpga_pipeline_keep_going_5_sr thei_llvm_fpga_pipeline_keep_going_fc15_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_fc1_B3_out_stall_out_0),
        .in_i_valid(bb_fc1_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_fc15_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_fc15_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef18(CONSTANT,35)
    assign c_i32_undef18_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_fc1_B3(BLACKBOX,9)
    fc1_bb_B3 thebb_fc1_B3 (
        .in_exitcond726_0(GND_q),
        .in_exitcond726_1(bb_fc1_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_fc1_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_014_pop928_0(c_i32_undef18_q),
        .in_i_014_pop928_1(bb_fc1_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_intel_reserved_ffwd_0_0(bb_fc1_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_fc1_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(bb_fc1_B1_start_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_fc1_B1_start_out_intel_reserved_ffwd_3_0),
        .in_memdep_fc1_avm_readdata(in_memdep_fc1_avm_readdata),
        .in_memdep_fc1_avm_readdatavalid(in_memdep_fc1_avm_readdatavalid),
        .in_memdep_fc1_avm_waitrequest(in_memdep_fc1_avm_waitrequest),
        .in_memdep_fc1_avm_writeack(in_memdep_fc1_avm_writeack),
        .in_memdep_phi2_pop1029_0(GND_q),
        .in_memdep_phi2_pop1029_1(bb_fc1_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp1227_0(GND_q),
        .in_notcmp1227_1(bb_fc1_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_fc15_sr_out_o_stall),
        .in_pn1_fc1_avm_readdata(in_pn1_fc1_avm_readdata),
        .in_pn1_fc1_avm_readdatavalid(in_pn1_fc1_avm_readdatavalid),
        .in_pn1_fc1_avm_waitrequest(in_pn1_fc1_avm_waitrequest),
        .in_pn1_fc1_avm_writeack(in_pn1_fc1_avm_writeack),
        .in_stall_in_0(bb_fc1_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_fc17_fc1_avm_readdata(in_unnamed_fc17_fc1_avm_readdata),
        .in_unnamed_fc17_fc1_avm_readdatavalid(in_unnamed_fc17_fc1_avm_readdatavalid),
        .in_unnamed_fc17_fc1_avm_waitrequest(in_unnamed_fc17_fc1_avm_waitrequest),
        .in_unnamed_fc17_fc1_avm_writeack(in_unnamed_fc17_fc1_avm_writeack),
        .in_unnamed_fc18_fc1_avm_readdata(in_unnamed_fc18_fc1_avm_readdata),
        .in_unnamed_fc18_fc1_avm_readdatavalid(in_unnamed_fc18_fc1_avm_readdatavalid),
        .in_unnamed_fc18_fc1_avm_waitrequest(in_unnamed_fc18_fc1_avm_waitrequest),
        .in_unnamed_fc18_fc1_avm_writeack(in_unnamed_fc18_fc1_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_fc15_sr_out_o_valid),
        .in_valid_in_1(bb_fc1_B3_sr_1_aunroll_x_out_o_valid),
        .out_exitcond722_pop16(bb_fc1_B3_out_exitcond722_pop16),
        .out_exiting_stall_out(bb_fc1_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_fc1_B3_out_exiting_valid_out),
        .out_lsu_memdep_o_active(bb_fc1_B3_out_lsu_memdep_o_active),
        .out_memdep(bb_fc1_B3_out_memdep),
        .out_memdep_fc1_avm_address(bb_fc1_B3_out_memdep_fc1_avm_address),
        .out_memdep_fc1_avm_burstcount(bb_fc1_B3_out_memdep_fc1_avm_burstcount),
        .out_memdep_fc1_avm_byteenable(bb_fc1_B3_out_memdep_fc1_avm_byteenable),
        .out_memdep_fc1_avm_enable(bb_fc1_B3_out_memdep_fc1_avm_enable),
        .out_memdep_fc1_avm_read(bb_fc1_B3_out_memdep_fc1_avm_read),
        .out_memdep_fc1_avm_write(bb_fc1_B3_out_memdep_fc1_avm_write),
        .out_memdep_fc1_avm_writedata(bb_fc1_B3_out_memdep_fc1_avm_writedata),
        .out_notcmp1223_pop17(bb_fc1_B3_out_notcmp1223_pop17),
        .out_pipeline_valid_out(bb_fc1_B3_out_pipeline_valid_out),
        .out_pn1_fc1_avm_address(bb_fc1_B3_out_pn1_fc1_avm_address),
        .out_pn1_fc1_avm_burstcount(bb_fc1_B3_out_pn1_fc1_avm_burstcount),
        .out_pn1_fc1_avm_byteenable(bb_fc1_B3_out_pn1_fc1_avm_byteenable),
        .out_pn1_fc1_avm_enable(bb_fc1_B3_out_pn1_fc1_avm_enable),
        .out_pn1_fc1_avm_read(bb_fc1_B3_out_pn1_fc1_avm_read),
        .out_pn1_fc1_avm_write(bb_fc1_B3_out_pn1_fc1_avm_write),
        .out_pn1_fc1_avm_writedata(bb_fc1_B3_out_pn1_fc1_avm_writedata),
        .out_stall_in_0(bb_fc1_B3_out_stall_in_0),
        .out_stall_out_0(bb_fc1_B3_out_stall_out_0),
        .out_stall_out_1(bb_fc1_B3_out_stall_out_1),
        .out_unnamed_fc17_fc1_avm_address(bb_fc1_B3_out_unnamed_fc17_fc1_avm_address),
        .out_unnamed_fc17_fc1_avm_burstcount(bb_fc1_B3_out_unnamed_fc17_fc1_avm_burstcount),
        .out_unnamed_fc17_fc1_avm_byteenable(bb_fc1_B3_out_unnamed_fc17_fc1_avm_byteenable),
        .out_unnamed_fc17_fc1_avm_enable(bb_fc1_B3_out_unnamed_fc17_fc1_avm_enable),
        .out_unnamed_fc17_fc1_avm_read(bb_fc1_B3_out_unnamed_fc17_fc1_avm_read),
        .out_unnamed_fc17_fc1_avm_write(bb_fc1_B3_out_unnamed_fc17_fc1_avm_write),
        .out_unnamed_fc17_fc1_avm_writedata(bb_fc1_B3_out_unnamed_fc17_fc1_avm_writedata),
        .out_unnamed_fc18_fc1_avm_address(bb_fc1_B3_out_unnamed_fc18_fc1_avm_address),
        .out_unnamed_fc18_fc1_avm_burstcount(bb_fc1_B3_out_unnamed_fc18_fc1_avm_burstcount),
        .out_unnamed_fc18_fc1_avm_byteenable(bb_fc1_B3_out_unnamed_fc18_fc1_avm_byteenable),
        .out_unnamed_fc18_fc1_avm_enable(bb_fc1_B3_out_unnamed_fc18_fc1_avm_enable),
        .out_unnamed_fc18_fc1_avm_read(bb_fc1_B3_out_unnamed_fc18_fc1_avm_read),
        .out_unnamed_fc18_fc1_avm_write(bb_fc1_B3_out_unnamed_fc18_fc1_avm_write),
        .out_unnamed_fc18_fc1_avm_writedata(bb_fc1_B3_out_unnamed_fc18_fc1_avm_writedata),
        .out_valid_in_0(bb_fc1_B3_out_valid_in_0),
        .out_valid_in_1(bb_fc1_B3_out_valid_in_1),
        .out_valid_out_0(bb_fc1_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fc1_B3_sr_1_aunroll_x(BLACKBOX,3)
    fc1_bb_B3_sr_1 thebb_fc1_B3_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_fc1_B2_out_c0_exe136),
        .in_i_data_2_tpl(bb_fc1_B2_out_c0_exe2),
        .in_i_data_3_tpl(bb_fc1_B2_out_c0_exe3),
        .in_i_data_4_tpl(bb_fc1_B2_out_memdep_phi2_pop10),
        .in_i_stall(bb_fc1_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_fc11_out_o_valid),
        .out_o_data_0_tpl(bb_fc1_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_fc1_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_fc1_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_fc1_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_fc1_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_stall(bb_fc1_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_fc1_B3_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_fc11(BLACKBOX,74)
    fc1_loop_limiter_1 theloop_limiter_fc11 (
        .in_i_stall(bb_fc1_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_fc1_B3_out_exiting_stall_out),
        .in_i_valid(bb_fc1_B2_out_valid_out_0),
        .in_i_valid_exit(bb_fc1_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_fc11_out_o_stall),
        .out_o_valid(loop_limiter_fc11_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going14_fc12_sr(BLACKBOX,40)
    fc1_i_llvm_fpga_pipeline_keep_going14_2_sr thei_llvm_fpga_pipeline_keep_going14_fc12_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going14_fc12_valid_fifo_out_stall_out),
        .in_i_valid(bb_fc1_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going14_fc12_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going14_fc12_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fc1_B5_sr_0_aunroll_x(BLACKBOX,5)
    fc1_bb_B5_sr_0 thebb_fc1_B5_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_fc1_B5_out_stall_out_0),
        .in_i_valid(bb_fc1_B4_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_fc1_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_fc1_B5_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fc1_B4(BLACKBOX,10)
    fc1_bb_B4 thebb_fc1_B4 (
        .in_exitcond722_pop161_0(bb_fc1_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_feedback_stall_in_10(bb_fc1_B2_out_feedback_stall_out_10),
        .in_memdep_3_0(bb_fc1_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_notcmp1223_pop172_0(bb_fc1_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_fc1_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_fc1_B4_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_10(bb_fc1_B4_out_feedback_out_10),
        .out_feedback_valid_out_10(bb_fc1_B4_out_feedback_valid_out_10),
        .out_stall_in_0(bb_fc1_B4_out_stall_in_0),
        .out_stall_out_0(bb_fc1_B4_out_stall_out_0),
        .out_valid_out_0(bb_fc1_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fc1_B2(BLACKBOX,8)
    fc1_bb_B2 thebb_fc1_B2 (
        .in_feedback_in_10(bb_fc1_B4_out_feedback_out_10),
        .in_feedback_valid_in_10(bb_fc1_B4_out_feedback_valid_out_10),
        .in_forked21_0(GND_q),
        .in_forked21_1(bb_fc1_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going14_fc12_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_fc11_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going14_fc12_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_fc1_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe136(bb_fc1_B2_out_c0_exe136),
        .out_c0_exe2(bb_fc1_B2_out_c0_exe2),
        .out_c0_exe3(bb_fc1_B2_out_c0_exe3),
        .out_exiting_stall_out(bb_fc1_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_fc1_B2_out_exiting_valid_out),
        .out_feedback_stall_out_10(bb_fc1_B2_out_feedback_stall_out_10),
        .out_memdep_phi2_pop10(bb_fc1_B2_out_memdep_phi2_pop10),
        .out_pipeline_valid_out(bb_fc1_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_fc1_B2_out_stall_out_0),
        .out_stall_out_1(bb_fc1_B2_out_stall_out_1),
        .out_valid_in_0(bb_fc1_B2_out_valid_in_0),
        .out_valid_in_1(bb_fc1_B2_out_valid_in_1),
        .out_valid_out_0(bb_fc1_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fc1_B2_sr_1_aunroll_x(BLACKBOX,2)
    fc1_bb_B2_sr_1 thebb_fc1_B2_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_fc1_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_fc10_out_o_valid),
        .out_o_data_0_tpl(bb_fc1_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_fc1_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_fc1_B2_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_fc10(BLACKBOX,73)
    fc1_loop_limiter_0 theloop_limiter_fc10 (
        .in_i_stall(bb_fc1_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_fc1_B2_out_exiting_stall_out),
        .in_i_valid(bb_fc1_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_fc1_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_fc10_out_o_stall),
        .out_o_valid(loop_limiter_fc10_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going18_fc11_sr(BLACKBOX,42)
    fc1_i_llvm_fpga_pipeline_keep_going18_1_sr thei_llvm_fpga_pipeline_keep_going18_fc11_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going18_fc11_valid_fifo_out_stall_out),
        .in_i_valid(bb_fc1_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going18_fc11_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going18_fc11_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fc1_B1_start(BLACKBOX,7)
    fc1_bb_B1_start thebb_fc1_B1_start (
        .in_feedback_in_1(bb_fc1_B5_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_fc1_B5_out_feedback_valid_out_1),
        .in_iord_bl_call_fc1_i_fifodata(in_iord_bl_call_fc1_i_fifodata),
        .in_iord_bl_call_fc1_i_fifovalid(in_iord_bl_call_fc1_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going18_fc11_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_fc10_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going18_fc11_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_fc1_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_fc1_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_fc1_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_fc1_B1_start_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_fc1_B1_start_out_intel_reserved_ffwd_3_0),
        .out_iord_bl_call_fc1_o_fifoalmost_full(bb_fc1_B1_start_out_iord_bl_call_fc1_o_fifoalmost_full),
        .out_iord_bl_call_fc1_o_fifoready(bb_fc1_B1_start_out_iord_bl_call_fc1_o_fifoready),
        .out_pipeline_valid_out(bb_fc1_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_fc1_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_fc1_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_fc1_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_fc1_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fc1_B5(BLACKBOX,11)
    fc1_bb_B5 thebb_fc1_B5 (
        .in_feedback_stall_in_1(bb_fc1_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_fc1_i_fifoready(in_iowr_bl_return_fc1_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_fc1_B5_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_fc1_B5_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_fc1_B5_out_feedback_valid_out_1),
        .out_iowr_bl_return_fc1_o_fifodata(bb_fc1_B5_out_iowr_bl_return_fc1_o_fifodata),
        .out_iowr_bl_return_fc1_o_fifovalid(bb_fc1_B5_out_iowr_bl_return_fc1_o_fifovalid),
        .out_stall_in_0(bb_fc1_B5_out_stall_in_0),
        .out_stall_out_0(bb_fc1_B5_out_stall_out_0),
        .out_valid_out_0(bb_fc1_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // fc1_B1_start_x(EXTIFACE,37)
    assign fc1_B1_start_x_i_capture = GND_q;
    assign fc1_B1_start_x_i_clear = GND_q;
    assign fc1_B1_start_x_i_enable = VCC_q;
    assign fc1_B1_start_x_i_shift = GND_q;
    assign fc1_B1_start_x_i_stall_pred = GND_q;
    assign fc1_B1_start_x_i_stall_succ = bb_fc1_B5_out_stall_in_0;
    assign fc1_B1_start_x_i_valid_loop = bb_fc1_B1_start_out_valid_in_0;
    assign fc1_B1_start_x_i_valid_pred = bb_fc1_B1_start_out_valid_in_1;
    assign fc1_B1_start_x_i_valid_succ = bb_fc1_B5_out_valid_out_0;
    assign fc1_B1_start_x_i_capture_bitsignaltemp = fc1_B1_start_x_i_capture[0];
    assign fc1_B1_start_x_i_clear_bitsignaltemp = fc1_B1_start_x_i_clear[0];
    assign fc1_B1_start_x_i_enable_bitsignaltemp = fc1_B1_start_x_i_enable[0];
    assign fc1_B1_start_x_i_shift_bitsignaltemp = fc1_B1_start_x_i_shift[0];
    assign fc1_B1_start_x_i_stall_pred_bitsignaltemp = fc1_B1_start_x_i_stall_pred[0];
    assign fc1_B1_start_x_i_stall_succ_bitsignaltemp = fc1_B1_start_x_i_stall_succ[0];
    assign fc1_B1_start_x_i_valid_loop_bitsignaltemp = fc1_B1_start_x_i_valid_loop[0];
    assign fc1_B1_start_x_i_valid_pred_bitsignaltemp = fc1_B1_start_x_i_valid_pred[0];
    assign fc1_B1_start_x_i_valid_succ_bitsignaltemp = fc1_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("fc1.B1.start")
    ) thefc1_B1_start_x (
        .i_capture(fc1_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(fc1_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(fc1_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(fc1_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(fc1_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(fc1_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(fc1_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(fc1_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(fc1_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // fc1_B2_x(EXTIFACE,38)
    assign fc1_B2_x_i_capture = GND_q;
    assign fc1_B2_x_i_clear = GND_q;
    assign fc1_B2_x_i_enable = VCC_q;
    assign fc1_B2_x_i_shift = GND_q;
    assign fc1_B2_x_i_stall_pred = loop_limiter_fc10_out_o_stall;
    assign fc1_B2_x_i_stall_succ = bb_fc1_B4_out_stall_in_0;
    assign fc1_B2_x_i_valid_loop = bb_fc1_B2_out_valid_in_0;
    assign fc1_B2_x_i_valid_pred = bb_fc1_B2_out_valid_in_1;
    assign fc1_B2_x_i_valid_succ = bb_fc1_B4_out_valid_out_0;
    assign fc1_B2_x_i_capture_bitsignaltemp = fc1_B2_x_i_capture[0];
    assign fc1_B2_x_i_clear_bitsignaltemp = fc1_B2_x_i_clear[0];
    assign fc1_B2_x_i_enable_bitsignaltemp = fc1_B2_x_i_enable[0];
    assign fc1_B2_x_i_shift_bitsignaltemp = fc1_B2_x_i_shift[0];
    assign fc1_B2_x_i_stall_pred_bitsignaltemp = fc1_B2_x_i_stall_pred[0];
    assign fc1_B2_x_i_stall_succ_bitsignaltemp = fc1_B2_x_i_stall_succ[0];
    assign fc1_B2_x_i_valid_loop_bitsignaltemp = fc1_B2_x_i_valid_loop[0];
    assign fc1_B2_x_i_valid_pred_bitsignaltemp = fc1_B2_x_i_valid_pred[0];
    assign fc1_B2_x_i_valid_succ_bitsignaltemp = fc1_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("fc1.B2")
    ) thefc1_B2_x (
        .i_capture(fc1_B2_x_i_capture_bitsignaltemp),
        .i_clear(fc1_B2_x_i_clear_bitsignaltemp),
        .i_enable(fc1_B2_x_i_enable_bitsignaltemp),
        .i_shift(fc1_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(fc1_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(fc1_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(fc1_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(fc1_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(fc1_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // fc1_B3_x(EXTIFACE,39)
    assign fc1_B3_x_i_capture = GND_q;
    assign fc1_B3_x_i_clear = GND_q;
    assign fc1_B3_x_i_enable = VCC_q;
    assign fc1_B3_x_i_shift = GND_q;
    assign fc1_B3_x_i_stall_pred = loop_limiter_fc11_out_o_stall;
    assign fc1_B3_x_i_stall_succ = bb_fc1_B3_out_stall_in_0;
    assign fc1_B3_x_i_valid_loop = bb_fc1_B3_out_valid_in_0;
    assign fc1_B3_x_i_valid_pred = bb_fc1_B3_out_valid_in_1;
    assign fc1_B3_x_i_valid_succ = bb_fc1_B3_out_valid_out_0;
    assign fc1_B3_x_i_capture_bitsignaltemp = fc1_B3_x_i_capture[0];
    assign fc1_B3_x_i_clear_bitsignaltemp = fc1_B3_x_i_clear[0];
    assign fc1_B3_x_i_enable_bitsignaltemp = fc1_B3_x_i_enable[0];
    assign fc1_B3_x_i_shift_bitsignaltemp = fc1_B3_x_i_shift[0];
    assign fc1_B3_x_i_stall_pred_bitsignaltemp = fc1_B3_x_i_stall_pred[0];
    assign fc1_B3_x_i_stall_succ_bitsignaltemp = fc1_B3_x_i_stall_succ[0];
    assign fc1_B3_x_i_valid_loop_bitsignaltemp = fc1_B3_x_i_valid_loop[0];
    assign fc1_B3_x_i_valid_pred_bitsignaltemp = fc1_B3_x_i_valid_pred[0];
    assign fc1_B3_x_i_valid_succ_bitsignaltemp = fc1_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("fc1.B3")
    ) thefc1_B3_x (
        .i_capture(fc1_B3_x_i_capture_bitsignaltemp),
        .i_clear(fc1_B3_x_i_clear_bitsignaltemp),
        .i_enable(fc1_B3_x_i_enable_bitsignaltemp),
        .i_shift(fc1_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(fc1_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(fc1_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(fc1_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(fc1_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(fc1_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_fc1_o_fifoalmost_full(GPOUT,75)
    assign out_iord_bl_call_fc1_o_fifoalmost_full = bb_fc1_B1_start_out_iord_bl_call_fc1_o_fifoalmost_full;

    // out_iord_bl_call_fc1_o_fifoready(GPOUT,76)
    assign out_iord_bl_call_fc1_o_fifoready = bb_fc1_B1_start_out_iord_bl_call_fc1_o_fifoready;

    // out_iowr_bl_return_fc1_o_fifodata(GPOUT,77)
    assign out_iowr_bl_return_fc1_o_fifodata = bb_fc1_B5_out_iowr_bl_return_fc1_o_fifodata;

    // out_iowr_bl_return_fc1_o_fifovalid(GPOUT,78)
    assign out_iowr_bl_return_fc1_o_fifovalid = bb_fc1_B5_out_iowr_bl_return_fc1_o_fifovalid;

    // out_memdep_fc1_avm_address(GPOUT,79)
    assign out_memdep_fc1_avm_address = bb_fc1_B3_out_memdep_fc1_avm_address;

    // out_memdep_fc1_avm_burstcount(GPOUT,80)
    assign out_memdep_fc1_avm_burstcount = bb_fc1_B3_out_memdep_fc1_avm_burstcount;

    // out_memdep_fc1_avm_byteenable(GPOUT,81)
    assign out_memdep_fc1_avm_byteenable = bb_fc1_B3_out_memdep_fc1_avm_byteenable;

    // out_memdep_fc1_avm_enable(GPOUT,82)
    assign out_memdep_fc1_avm_enable = bb_fc1_B3_out_memdep_fc1_avm_enable;

    // out_memdep_fc1_avm_read(GPOUT,83)
    assign out_memdep_fc1_avm_read = bb_fc1_B3_out_memdep_fc1_avm_read;

    // out_memdep_fc1_avm_write(GPOUT,84)
    assign out_memdep_fc1_avm_write = bb_fc1_B3_out_memdep_fc1_avm_write;

    // out_memdep_fc1_avm_writedata(GPOUT,85)
    assign out_memdep_fc1_avm_writedata = bb_fc1_B3_out_memdep_fc1_avm_writedata;

    // out_o_active_memdep(GPOUT,86)
    assign out_o_active_memdep = bb_fc1_B3_out_lsu_memdep_o_active;

    // out_pn1_fc1_avm_address(GPOUT,87)
    assign out_pn1_fc1_avm_address = bb_fc1_B3_out_pn1_fc1_avm_address;

    // out_pn1_fc1_avm_burstcount(GPOUT,88)
    assign out_pn1_fc1_avm_burstcount = bb_fc1_B3_out_pn1_fc1_avm_burstcount;

    // out_pn1_fc1_avm_byteenable(GPOUT,89)
    assign out_pn1_fc1_avm_byteenable = bb_fc1_B3_out_pn1_fc1_avm_byteenable;

    // out_pn1_fc1_avm_enable(GPOUT,90)
    assign out_pn1_fc1_avm_enable = bb_fc1_B3_out_pn1_fc1_avm_enable;

    // out_pn1_fc1_avm_read(GPOUT,91)
    assign out_pn1_fc1_avm_read = bb_fc1_B3_out_pn1_fc1_avm_read;

    // out_pn1_fc1_avm_write(GPOUT,92)
    assign out_pn1_fc1_avm_write = bb_fc1_B3_out_pn1_fc1_avm_write;

    // out_pn1_fc1_avm_writedata(GPOUT,93)
    assign out_pn1_fc1_avm_writedata = bb_fc1_B3_out_pn1_fc1_avm_writedata;

    // bb_fc1_B0_runOnce(BLACKBOX,6)
    fc1_bb_B0_runOnce thebb_fc1_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_fc1_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,94)
    assign out_stall_out = bb_fc1_B0_runOnce_out_stall_out_0;

    // out_unnamed_fc17_fc1_avm_address(GPOUT,95)
    assign out_unnamed_fc17_fc1_avm_address = bb_fc1_B3_out_unnamed_fc17_fc1_avm_address;

    // out_unnamed_fc17_fc1_avm_burstcount(GPOUT,96)
    assign out_unnamed_fc17_fc1_avm_burstcount = bb_fc1_B3_out_unnamed_fc17_fc1_avm_burstcount;

    // out_unnamed_fc17_fc1_avm_byteenable(GPOUT,97)
    assign out_unnamed_fc17_fc1_avm_byteenable = bb_fc1_B3_out_unnamed_fc17_fc1_avm_byteenable;

    // out_unnamed_fc17_fc1_avm_enable(GPOUT,98)
    assign out_unnamed_fc17_fc1_avm_enable = bb_fc1_B3_out_unnamed_fc17_fc1_avm_enable;

    // out_unnamed_fc17_fc1_avm_read(GPOUT,99)
    assign out_unnamed_fc17_fc1_avm_read = bb_fc1_B3_out_unnamed_fc17_fc1_avm_read;

    // out_unnamed_fc17_fc1_avm_write(GPOUT,100)
    assign out_unnamed_fc17_fc1_avm_write = bb_fc1_B3_out_unnamed_fc17_fc1_avm_write;

    // out_unnamed_fc17_fc1_avm_writedata(GPOUT,101)
    assign out_unnamed_fc17_fc1_avm_writedata = bb_fc1_B3_out_unnamed_fc17_fc1_avm_writedata;

    // out_unnamed_fc18_fc1_avm_address(GPOUT,102)
    assign out_unnamed_fc18_fc1_avm_address = bb_fc1_B3_out_unnamed_fc18_fc1_avm_address;

    // out_unnamed_fc18_fc1_avm_burstcount(GPOUT,103)
    assign out_unnamed_fc18_fc1_avm_burstcount = bb_fc1_B3_out_unnamed_fc18_fc1_avm_burstcount;

    // out_unnamed_fc18_fc1_avm_byteenable(GPOUT,104)
    assign out_unnamed_fc18_fc1_avm_byteenable = bb_fc1_B3_out_unnamed_fc18_fc1_avm_byteenable;

    // out_unnamed_fc18_fc1_avm_enable(GPOUT,105)
    assign out_unnamed_fc18_fc1_avm_enable = bb_fc1_B3_out_unnamed_fc18_fc1_avm_enable;

    // out_unnamed_fc18_fc1_avm_read(GPOUT,106)
    assign out_unnamed_fc18_fc1_avm_read = bb_fc1_B3_out_unnamed_fc18_fc1_avm_read;

    // out_unnamed_fc18_fc1_avm_write(GPOUT,107)
    assign out_unnamed_fc18_fc1_avm_write = bb_fc1_B3_out_unnamed_fc18_fc1_avm_write;

    // out_unnamed_fc18_fc1_avm_writedata(GPOUT,108)
    assign out_unnamed_fc18_fc1_avm_writedata = bb_fc1_B3_out_unnamed_fc18_fc1_avm_writedata;

    // out_valid_out(GPOUT,109)
    assign out_valid_out = GND_q;

endmodule
