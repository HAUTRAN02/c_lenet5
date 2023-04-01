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

// SystemVerilog created from i_sfc_s_c0_in_for_body_softmaxs_c0_enter282_softmax1
// Created for function/kernel softmax
// SystemVerilog created on Sat Apr  1 13:10:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module softmax_i_sfc_s_c0_in_for_body_s_c0_enter282_softmax1 (
    output wire [0:0] out_c0_exit30_0_tpl,
    output wire [0:0] out_c0_exit30_1_tpl,
    output wire [0:0] out_c0_exit30_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_softmax6_exiting_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [63:0] out_unnamed_softmax5_softmax_avm_address,
    output wire [0:0] out_unnamed_softmax5_softmax_avm_burstcount,
    output wire [7:0] out_unnamed_softmax5_softmax_avm_byteenable,
    output wire [0:0] out_unnamed_softmax5_softmax_avm_enable,
    output wire [0:0] out_unnamed_softmax5_softmax_avm_read,
    output wire [0:0] out_unnamed_softmax5_softmax_avm_write,
    output wire [63:0] out_unnamed_softmax5_softmax_avm_writedata,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_unnamed_softmax5_softmax_avm_writeack,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_unnamed_softmax5_softmax_avm_readdata,
    input wire [0:0] in_unnamed_softmax5_softmax_avm_readdatavalid,
    input wire [0:0] in_unnamed_softmax5_softmax_avm_waitrequest,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_softmax6_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_softmaxs_c0_exit30_softmax1_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_softmaxs_c0_exit30_softmax1_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_softmaxs_c0_exit30_softmax1_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_softmaxs_c0_exit30_softmax1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_softmaxs_c0_exit30_softmax1_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_c0_exi2_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_c0_exi2_1_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_c0_exi2_2_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_softmax6_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_softmax6_exiting_valid_out;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_pipeline_valid_out;
    wire [63:0] i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_burstcount;
    wire [7:0] i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_write;
    wire [63:0] i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_writedata;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,17)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_body_softmaxs_c0_exit30_softmax1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,16)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x(BLACKBOX,13)@1
    // out out_c0_exi2_0_tpl@78
    // out out_c0_exi2_1_tpl@78
    // out out_c0_exi2_2_tpl@78
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_softmax6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_softmax6_exiting_valid_out@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_o_valid@78
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_softmax1@78
    // out out_unnamed_softmax5_softmax_avm_address@20000000
    // out out_unnamed_softmax5_softmax_avm_burstcount@20000000
    // out out_unnamed_softmax5_softmax_avm_byteenable@20000000
    // out out_unnamed_softmax5_softmax_avm_enable@20000000
    // out out_unnamed_softmax5_softmax_avm_read@20000000
    // out out_unnamed_softmax5_softmax_avm_write@20000000
    // out out_unnamed_softmax5_softmax_avm_writedata@20000000
    softmax_i_sfc_logic_s_c0_in_for_body_s_c0_enter282_softmax0 thei_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x (
        .in_c0_eni1_0_tpl(in_c0_eni1_0_tpl),
        .in_c0_eni1_1_tpl(in_c0_eni1_1_tpl),
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_softmax5_softmax_avm_readdata(in_unnamed_softmax5_softmax_avm_readdata),
        .in_unnamed_softmax5_softmax_avm_readdatavalid(in_unnamed_softmax5_softmax_avm_readdatavalid),
        .in_unnamed_softmax5_softmax_avm_waitrequest(in_unnamed_softmax5_softmax_avm_waitrequest),
        .in_unnamed_softmax5_softmax_avm_writeack(in_unnamed_softmax5_softmax_avm_writeack),
        .out_c0_exi2_0_tpl(i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_c0_exi2_0_tpl),
        .out_c0_exi2_1_tpl(i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_c0_exi2_1_tpl),
        .out_c0_exi2_2_tpl(i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_c0_exi2_2_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_softmax6_exiting_stall_out(i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_softmax6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_softmax6_exiting_valid_out(i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_softmax6_exiting_valid_out),
        .out_intel_reserved_ffwd_2_0(i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_softmax1(),
        .out_unnamed_softmax5_softmax_avm_address(i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_address),
        .out_unnamed_softmax5_softmax_avm_burstcount(i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_burstcount),
        .out_unnamed_softmax5_softmax_avm_byteenable(i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_byteenable),
        .out_unnamed_softmax5_softmax_avm_enable(i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_enable),
        .out_unnamed_softmax5_softmax_avm_read(i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_read),
        .out_unnamed_softmax5_softmax_avm_write(i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_write),
        .out_unnamed_softmax5_softmax_avm_writedata(i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body_softmaxs_c0_exit30_softmax1_aunroll_x(BLACKBOX,12)@78
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@81
    // out out_data_out_1_tpl@81
    // out out_data_out_2_tpl@81
    // out out_stall_entry@20000000
    // out out_valid_out@81
    softmax_i_llvm_fpga_sfc_exit_s_c0_out_fo0000s_c0_exit30_softmax0 thei_llvm_fpga_sfc_exit_s_c0_out_for_body_softmaxs_c0_exit30_softmax1_aunroll_x (
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_c0_exi2_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_c0_exi2_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_c0_exi2_2_tpl),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_o_valid),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_softmaxs_c0_exit30_softmax1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_softmaxs_c0_exit30_softmax1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_softmaxs_c0_exit30_softmax1_aunroll_x_out_data_out_2_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body_softmaxs_c0_exit30_softmax1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body_softmaxs_c0_exit30_softmax1_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@81
    assign out_c0_exit30_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_softmaxs_c0_exit30_softmax1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit30_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_softmaxs_c0_exit30_softmax1_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit30_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_softmaxs_c0_exit30_softmax1_aunroll_x_out_data_out_2_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body_softmaxs_c0_exit30_softmax1_aunroll_x_out_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,3)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_softmax6_exiting_valid_out = i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_softmax6_exiting_valid_out;

    // dupName_1_regfree_osync_x(GPOUT,4)
    assign out_intel_reserved_ffwd_2_0 = i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_intel_reserved_ffwd_2_0;

    // dupName_2_regfree_osync_x(GPOUT,5)
    assign out_unnamed_softmax5_softmax_avm_address = i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_address;

    // dupName_3_regfree_osync_x(GPOUT,6)
    assign out_unnamed_softmax5_softmax_avm_burstcount = i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_burstcount;

    // dupName_4_regfree_osync_x(GPOUT,7)
    assign out_unnamed_softmax5_softmax_avm_byteenable = i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_byteenable;

    // dupName_5_regfree_osync_x(GPOUT,8)
    assign out_unnamed_softmax5_softmax_avm_enable = i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_enable;

    // dupName_6_regfree_osync_x(GPOUT,9)
    assign out_unnamed_softmax5_softmax_avm_read = i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_read;

    // dupName_7_regfree_osync_x(GPOUT,10)
    assign out_unnamed_softmax5_softmax_avm_write = i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_write;

    // dupName_8_regfree_osync_x(GPOUT,11)
    assign out_unnamed_softmax5_softmax_avm_writedata = i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_unnamed_softmax5_softmax_avm_writedata;

    // pipeline_valid_out_sync(GPOUT,19)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,26)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_softmax6_exiting_stall_out = i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_softmax6_exiting_stall_out;

    // sync_out(GPOUT,28)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body_softmaxs_c0_exit30_softmax1_aunroll_x_out_stall_entry;

endmodule
