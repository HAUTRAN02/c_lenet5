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

// SystemVerilog created from bb_softmax_B4
// Created for function/kernel softmax
// SystemVerilog created on Sat Apr  1 13:10:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module softmax_bb_B4 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_memdep_softmax_avm_readdata,
    input wire [0:0] in_memdep_softmax_avm_readdatavalid,
    input wire [0:0] in_memdep_softmax_avm_waitrequest,
    input wire [0:0] in_memdep_softmax_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [63:0] in_unnamed_softmax7_softmax_avm_readdata,
    input wire [0:0] in_unnamed_softmax7_softmax_avm_readdatavalid,
    input wire [0:0] in_unnamed_softmax7_softmax_avm_waitrequest,
    input wire [0:0] in_unnamed_softmax7_softmax_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [63:0] out_memdep_softmax_avm_address,
    output wire [0:0] out_memdep_softmax_avm_burstcount,
    output wire [7:0] out_memdep_softmax_avm_byteenable,
    output wire [0:0] out_memdep_softmax_avm_enable,
    output wire [0:0] out_memdep_softmax_avm_read,
    output wire [0:0] out_memdep_softmax_avm_write,
    output wire [63:0] out_memdep_softmax_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [63:0] out_unnamed_softmax7_softmax_avm_address,
    output wire [0:0] out_unnamed_softmax7_softmax_avm_burstcount,
    output wire [7:0] out_unnamed_softmax7_softmax_avm_byteenable,
    output wire [0:0] out_unnamed_softmax7_softmax_avm_enable,
    output wire [0:0] out_unnamed_softmax7_softmax_avm_read,
    output wire [0:0] out_unnamed_softmax7_softmax_avm_write,
    output wire [63:0] out_unnamed_softmax7_softmax_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_softmax_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_softmax3_exiting_stall_out;
    wire [0:0] bb_softmax_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_softmax3_exiting_valid_out;
    wire [0:0] bb_softmax_B4_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_softmax_B4_stall_region_out_masked;
    wire [63:0] bb_softmax_B4_stall_region_out_memdep_softmax_avm_address;
    wire [0:0] bb_softmax_B4_stall_region_out_memdep_softmax_avm_burstcount;
    wire [7:0] bb_softmax_B4_stall_region_out_memdep_softmax_avm_byteenable;
    wire [0:0] bb_softmax_B4_stall_region_out_memdep_softmax_avm_enable;
    wire [0:0] bb_softmax_B4_stall_region_out_memdep_softmax_avm_read;
    wire [0:0] bb_softmax_B4_stall_region_out_memdep_softmax_avm_write;
    wire [63:0] bb_softmax_B4_stall_region_out_memdep_softmax_avm_writedata;
    wire [0:0] bb_softmax_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_softmax_B4_stall_region_out_stall_out;
    wire [63:0] bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_address;
    wire [0:0] bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_burstcount;
    wire [7:0] bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_byteenable;
    wire [0:0] bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_enable;
    wire [0:0] bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_read;
    wire [0:0] bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_write;
    wire [63:0] bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_writedata;
    wire [0:0] bb_softmax_B4_stall_region_out_valid_out;
    wire [0:0] softmax_B4_branch_out_stall_out;
    wire [0:0] softmax_B4_branch_out_valid_out_0;
    wire [0:0] softmax_B4_branch_out_valid_out_1;
    wire [0:0] softmax_B4_merge_out_forked;
    wire [0:0] softmax_B4_merge_out_stall_out_0;
    wire [0:0] softmax_B4_merge_out_stall_out_1;
    wire [0:0] softmax_B4_merge_out_valid_out;


    // softmax_B4_branch(BLACKBOX,47)
    softmax_B4_branch thesoftmax_B4_branch (
        .in_masked(bb_softmax_B4_stall_region_out_masked),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_softmax_B4_stall_region_out_valid_out),
        .out_stall_out(softmax_B4_branch_out_stall_out),
        .out_valid_out_0(softmax_B4_branch_out_valid_out_0),
        .out_valid_out_1(softmax_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // softmax_B4_merge(BLACKBOX,48)
    softmax_B4_merge thesoftmax_B4_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_softmax_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(softmax_B4_merge_out_forked),
        .out_stall_out_0(softmax_B4_merge_out_stall_out_0),
        .out_stall_out_1(softmax_B4_merge_out_stall_out_1),
        .out_valid_out(softmax_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_softmax_B4_stall_region(BLACKBOX,2)
    softmax_bb_B4_stall_region thebb_softmax_B4_stall_region (
        .in_flush(in_flush),
        .in_forked(softmax_B4_merge_out_forked),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_memdep_softmax_avm_readdata(in_memdep_softmax_avm_readdata),
        .in_memdep_softmax_avm_readdatavalid(in_memdep_softmax_avm_readdatavalid),
        .in_memdep_softmax_avm_waitrequest(in_memdep_softmax_avm_waitrequest),
        .in_memdep_softmax_avm_writeack(in_memdep_softmax_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(softmax_B4_branch_out_stall_out),
        .in_unnamed_softmax7_softmax_avm_readdata(in_unnamed_softmax7_softmax_avm_readdata),
        .in_unnamed_softmax7_softmax_avm_readdatavalid(in_unnamed_softmax7_softmax_avm_readdatavalid),
        .in_unnamed_softmax7_softmax_avm_waitrequest(in_unnamed_softmax7_softmax_avm_waitrequest),
        .in_unnamed_softmax7_softmax_avm_writeack(in_unnamed_softmax7_softmax_avm_writeack),
        .in_valid_in(softmax_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_softmax3_exiting_stall_out(bb_softmax_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_softmax3_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_softmax3_exiting_valid_out(bb_softmax_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_softmax3_exiting_valid_out),
        .out_lsu_memdep_o_active(bb_softmax_B4_stall_region_out_lsu_memdep_o_active),
        .out_masked(bb_softmax_B4_stall_region_out_masked),
        .out_memdep_softmax_avm_address(bb_softmax_B4_stall_region_out_memdep_softmax_avm_address),
        .out_memdep_softmax_avm_burstcount(bb_softmax_B4_stall_region_out_memdep_softmax_avm_burstcount),
        .out_memdep_softmax_avm_byteenable(bb_softmax_B4_stall_region_out_memdep_softmax_avm_byteenable),
        .out_memdep_softmax_avm_enable(bb_softmax_B4_stall_region_out_memdep_softmax_avm_enable),
        .out_memdep_softmax_avm_read(bb_softmax_B4_stall_region_out_memdep_softmax_avm_read),
        .out_memdep_softmax_avm_write(bb_softmax_B4_stall_region_out_memdep_softmax_avm_write),
        .out_memdep_softmax_avm_writedata(bb_softmax_B4_stall_region_out_memdep_softmax_avm_writedata),
        .out_pipeline_valid_out(bb_softmax_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_softmax_B4_stall_region_out_stall_out),
        .out_unnamed_softmax7_softmax_avm_address(bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_address),
        .out_unnamed_softmax7_softmax_avm_burstcount(bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_burstcount),
        .out_unnamed_softmax7_softmax_avm_byteenable(bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_byteenable),
        .out_unnamed_softmax7_softmax_avm_enable(bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_enable),
        .out_unnamed_softmax7_softmax_avm_read(bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_read),
        .out_unnamed_softmax7_softmax_avm_write(bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_write),
        .out_unnamed_softmax7_softmax_avm_writedata(bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_writedata),
        .out_valid_out(bb_softmax_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,21)
    assign out_exiting_stall_out = bb_softmax_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_softmax3_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,22)
    assign out_exiting_valid_out = bb_softmax_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_softmax3_exiting_valid_out;

    // out_lsu_memdep_o_active(GPOUT,23)
    assign out_lsu_memdep_o_active = bb_softmax_B4_stall_region_out_lsu_memdep_o_active;

    // out_memdep_softmax_avm_address(GPOUT,24)
    assign out_memdep_softmax_avm_address = bb_softmax_B4_stall_region_out_memdep_softmax_avm_address;

    // out_memdep_softmax_avm_burstcount(GPOUT,25)
    assign out_memdep_softmax_avm_burstcount = bb_softmax_B4_stall_region_out_memdep_softmax_avm_burstcount;

    // out_memdep_softmax_avm_byteenable(GPOUT,26)
    assign out_memdep_softmax_avm_byteenable = bb_softmax_B4_stall_region_out_memdep_softmax_avm_byteenable;

    // out_memdep_softmax_avm_enable(GPOUT,27)
    assign out_memdep_softmax_avm_enable = bb_softmax_B4_stall_region_out_memdep_softmax_avm_enable;

    // out_memdep_softmax_avm_read(GPOUT,28)
    assign out_memdep_softmax_avm_read = bb_softmax_B4_stall_region_out_memdep_softmax_avm_read;

    // out_memdep_softmax_avm_write(GPOUT,29)
    assign out_memdep_softmax_avm_write = bb_softmax_B4_stall_region_out_memdep_softmax_avm_write;

    // out_memdep_softmax_avm_writedata(GPOUT,30)
    assign out_memdep_softmax_avm_writedata = bb_softmax_B4_stall_region_out_memdep_softmax_avm_writedata;

    // out_stall_in_0(GPOUT,31)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,32)
    assign out_stall_out_0 = softmax_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,33)
    assign out_stall_out_1 = softmax_B4_merge_out_stall_out_1;

    // out_unnamed_softmax7_softmax_avm_address(GPOUT,34)
    assign out_unnamed_softmax7_softmax_avm_address = bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_address;

    // out_unnamed_softmax7_softmax_avm_burstcount(GPOUT,35)
    assign out_unnamed_softmax7_softmax_avm_burstcount = bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_burstcount;

    // out_unnamed_softmax7_softmax_avm_byteenable(GPOUT,36)
    assign out_unnamed_softmax7_softmax_avm_byteenable = bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_byteenable;

    // out_unnamed_softmax7_softmax_avm_enable(GPOUT,37)
    assign out_unnamed_softmax7_softmax_avm_enable = bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_enable;

    // out_unnamed_softmax7_softmax_avm_read(GPOUT,38)
    assign out_unnamed_softmax7_softmax_avm_read = bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_read;

    // out_unnamed_softmax7_softmax_avm_write(GPOUT,39)
    assign out_unnamed_softmax7_softmax_avm_write = bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_write;

    // out_unnamed_softmax7_softmax_avm_writedata(GPOUT,40)
    assign out_unnamed_softmax7_softmax_avm_writedata = bb_softmax_B4_stall_region_out_unnamed_softmax7_softmax_avm_writedata;

    // out_valid_in_0(GPOUT,41)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,42)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,43)
    assign out_valid_out_0 = softmax_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,44)
    assign out_valid_out_1 = softmax_B4_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,46)
    assign out_pipeline_valid_out = bb_softmax_B4_stall_region_out_pipeline_valid_out;

endmodule
