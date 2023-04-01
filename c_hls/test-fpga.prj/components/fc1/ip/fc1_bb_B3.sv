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

// SystemVerilog created from bb_fc1_B3
// Created for function/kernel fc1
// SystemVerilog created on Sat Apr  1 13:10:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fc1_bb_B3 (
    input wire [0:0] in_exitcond726_0,
    input wire [0:0] in_exitcond726_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_i_014_pop928_0,
    input wire [31:0] in_i_014_pop928_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_memdep_fc1_avm_readdata,
    input wire [0:0] in_memdep_fc1_avm_readdatavalid,
    input wire [0:0] in_memdep_fc1_avm_waitrequest,
    input wire [0:0] in_memdep_fc1_avm_writeack,
    input wire [0:0] in_memdep_phi2_pop1029_0,
    input wire [0:0] in_memdep_phi2_pop1029_1,
    input wire [0:0] in_notcmp1227_0,
    input wire [0:0] in_notcmp1227_1,
    input wire [63:0] in_pn1_fc1_avm_readdata,
    input wire [0:0] in_pn1_fc1_avm_readdatavalid,
    input wire [0:0] in_pn1_fc1_avm_waitrequest,
    input wire [0:0] in_pn1_fc1_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [63:0] in_unnamed_fc17_fc1_avm_readdata,
    input wire [0:0] in_unnamed_fc17_fc1_avm_readdatavalid,
    input wire [0:0] in_unnamed_fc17_fc1_avm_waitrequest,
    input wire [0:0] in_unnamed_fc17_fc1_avm_writeack,
    input wire [63:0] in_unnamed_fc18_fc1_avm_readdata,
    input wire [0:0] in_unnamed_fc18_fc1_avm_readdatavalid,
    input wire [0:0] in_unnamed_fc18_fc1_avm_waitrequest,
    input wire [0:0] in_unnamed_fc18_fc1_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond722_pop16,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_memdep,
    output wire [63:0] out_memdep_fc1_avm_address,
    output wire [0:0] out_memdep_fc1_avm_burstcount,
    output wire [7:0] out_memdep_fc1_avm_byteenable,
    output wire [0:0] out_memdep_fc1_avm_enable,
    output wire [0:0] out_memdep_fc1_avm_read,
    output wire [0:0] out_memdep_fc1_avm_write,
    output wire [63:0] out_memdep_fc1_avm_writedata,
    output wire [0:0] out_notcmp1223_pop17,
    output wire [63:0] out_pn1_fc1_avm_address,
    output wire [0:0] out_pn1_fc1_avm_burstcount,
    output wire [7:0] out_pn1_fc1_avm_byteenable,
    output wire [0:0] out_pn1_fc1_avm_enable,
    output wire [0:0] out_pn1_fc1_avm_read,
    output wire [0:0] out_pn1_fc1_avm_write,
    output wire [63:0] out_pn1_fc1_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
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
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_fc1_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fc15_exiting_stall_out;
    wire [0:0] bb_fc1_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fc15_exiting_valid_out;
    wire [0:0] bb_fc1_B3_stall_region_out_exitcond722_pop16;
    wire [0:0] bb_fc1_B3_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_fc1_B3_stall_region_out_masked;
    wire [0:0] bb_fc1_B3_stall_region_out_memdep;
    wire [63:0] bb_fc1_B3_stall_region_out_memdep_fc1_avm_address;
    wire [0:0] bb_fc1_B3_stall_region_out_memdep_fc1_avm_burstcount;
    wire [7:0] bb_fc1_B3_stall_region_out_memdep_fc1_avm_byteenable;
    wire [0:0] bb_fc1_B3_stall_region_out_memdep_fc1_avm_enable;
    wire [0:0] bb_fc1_B3_stall_region_out_memdep_fc1_avm_read;
    wire [0:0] bb_fc1_B3_stall_region_out_memdep_fc1_avm_write;
    wire [63:0] bb_fc1_B3_stall_region_out_memdep_fc1_avm_writedata;
    wire [0:0] bb_fc1_B3_stall_region_out_notcmp1223_pop17;
    wire [0:0] bb_fc1_B3_stall_region_out_pipeline_valid_out;
    wire [63:0] bb_fc1_B3_stall_region_out_pn1_fc1_avm_address;
    wire [0:0] bb_fc1_B3_stall_region_out_pn1_fc1_avm_burstcount;
    wire [7:0] bb_fc1_B3_stall_region_out_pn1_fc1_avm_byteenable;
    wire [0:0] bb_fc1_B3_stall_region_out_pn1_fc1_avm_enable;
    wire [0:0] bb_fc1_B3_stall_region_out_pn1_fc1_avm_read;
    wire [0:0] bb_fc1_B3_stall_region_out_pn1_fc1_avm_write;
    wire [63:0] bb_fc1_B3_stall_region_out_pn1_fc1_avm_writedata;
    wire [0:0] bb_fc1_B3_stall_region_out_stall_out;
    wire [63:0] bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_address;
    wire [0:0] bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_burstcount;
    wire [7:0] bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_byteenable;
    wire [0:0] bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_enable;
    wire [0:0] bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_read;
    wire [0:0] bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_write;
    wire [63:0] bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_writedata;
    wire [63:0] bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_address;
    wire [0:0] bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_burstcount;
    wire [7:0] bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_byteenable;
    wire [0:0] bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_enable;
    wire [0:0] bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_read;
    wire [0:0] bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_write;
    wire [63:0] bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_writedata;
    wire [0:0] bb_fc1_B3_stall_region_out_valid_out;
    wire [0:0] fc1_B3_branch_out_exitcond722_pop16;
    wire [0:0] fc1_B3_branch_out_memdep;
    wire [0:0] fc1_B3_branch_out_notcmp1223_pop17;
    wire [0:0] fc1_B3_branch_out_stall_out;
    wire [0:0] fc1_B3_branch_out_valid_out_0;
    wire [0:0] fc1_B3_branch_out_valid_out_1;
    wire [0:0] fc1_B3_merge_out_exitcond726;
    wire [0:0] fc1_B3_merge_out_forked;
    wire [31:0] fc1_B3_merge_out_i_014_pop928;
    wire [0:0] fc1_B3_merge_out_memdep_phi2_pop1029;
    wire [0:0] fc1_B3_merge_out_notcmp1227;
    wire [0:0] fc1_B3_merge_out_stall_out_0;
    wire [0:0] fc1_B3_merge_out_stall_out_1;
    wire [0:0] fc1_B3_merge_out_valid_out;


    // fc1_B3_merge(BLACKBOX,4)
    fc1_B3_merge thefc1_B3_merge (
        .in_exitcond726_0(in_exitcond726_0),
        .in_exitcond726_1(in_exitcond726_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_i_014_pop928_0(in_i_014_pop928_0),
        .in_i_014_pop928_1(in_i_014_pop928_1),
        .in_memdep_phi2_pop1029_0(in_memdep_phi2_pop1029_0),
        .in_memdep_phi2_pop1029_1(in_memdep_phi2_pop1029_1),
        .in_notcmp1227_0(in_notcmp1227_0),
        .in_notcmp1227_1(in_notcmp1227_1),
        .in_stall_in(bb_fc1_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond726(fc1_B3_merge_out_exitcond726),
        .out_forked(fc1_B3_merge_out_forked),
        .out_i_014_pop928(fc1_B3_merge_out_i_014_pop928),
        .out_memdep_phi2_pop1029(fc1_B3_merge_out_memdep_phi2_pop1029),
        .out_notcmp1227(fc1_B3_merge_out_notcmp1227),
        .out_stall_out_0(fc1_B3_merge_out_stall_out_0),
        .out_stall_out_1(fc1_B3_merge_out_stall_out_1),
        .out_valid_out(fc1_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fc1_B3_stall_region(BLACKBOX,2)
    fc1_bb_B3_stall_region thebb_fc1_B3_stall_region (
        .in_exitcond726(fc1_B3_merge_out_exitcond726),
        .in_flush(in_flush),
        .in_forked(fc1_B3_merge_out_forked),
        .in_i_014_pop928(fc1_B3_merge_out_i_014_pop928),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_memdep_fc1_avm_readdata(in_memdep_fc1_avm_readdata),
        .in_memdep_fc1_avm_readdatavalid(in_memdep_fc1_avm_readdatavalid),
        .in_memdep_fc1_avm_waitrequest(in_memdep_fc1_avm_waitrequest),
        .in_memdep_fc1_avm_writeack(in_memdep_fc1_avm_writeack),
        .in_memdep_phi2_pop1029(fc1_B3_merge_out_memdep_phi2_pop1029),
        .in_notcmp1227(fc1_B3_merge_out_notcmp1227),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pn1_fc1_avm_readdata(in_pn1_fc1_avm_readdata),
        .in_pn1_fc1_avm_readdatavalid(in_pn1_fc1_avm_readdatavalid),
        .in_pn1_fc1_avm_waitrequest(in_pn1_fc1_avm_waitrequest),
        .in_pn1_fc1_avm_writeack(in_pn1_fc1_avm_writeack),
        .in_stall_in(fc1_B3_branch_out_stall_out),
        .in_unnamed_fc17_fc1_avm_readdata(in_unnamed_fc17_fc1_avm_readdata),
        .in_unnamed_fc17_fc1_avm_readdatavalid(in_unnamed_fc17_fc1_avm_readdatavalid),
        .in_unnamed_fc17_fc1_avm_waitrequest(in_unnamed_fc17_fc1_avm_waitrequest),
        .in_unnamed_fc17_fc1_avm_writeack(in_unnamed_fc17_fc1_avm_writeack),
        .in_unnamed_fc18_fc1_avm_readdata(in_unnamed_fc18_fc1_avm_readdata),
        .in_unnamed_fc18_fc1_avm_readdatavalid(in_unnamed_fc18_fc1_avm_readdatavalid),
        .in_unnamed_fc18_fc1_avm_waitrequest(in_unnamed_fc18_fc1_avm_waitrequest),
        .in_unnamed_fc18_fc1_avm_writeack(in_unnamed_fc18_fc1_avm_writeack),
        .in_valid_in(fc1_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fc15_exiting_stall_out(bb_fc1_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fc15_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fc15_exiting_valid_out(bb_fc1_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fc15_exiting_valid_out),
        .out_exitcond722_pop16(bb_fc1_B3_stall_region_out_exitcond722_pop16),
        .out_lsu_memdep_o_active(bb_fc1_B3_stall_region_out_lsu_memdep_o_active),
        .out_masked(bb_fc1_B3_stall_region_out_masked),
        .out_memdep(bb_fc1_B3_stall_region_out_memdep),
        .out_memdep_fc1_avm_address(bb_fc1_B3_stall_region_out_memdep_fc1_avm_address),
        .out_memdep_fc1_avm_burstcount(bb_fc1_B3_stall_region_out_memdep_fc1_avm_burstcount),
        .out_memdep_fc1_avm_byteenable(bb_fc1_B3_stall_region_out_memdep_fc1_avm_byteenable),
        .out_memdep_fc1_avm_enable(bb_fc1_B3_stall_region_out_memdep_fc1_avm_enable),
        .out_memdep_fc1_avm_read(bb_fc1_B3_stall_region_out_memdep_fc1_avm_read),
        .out_memdep_fc1_avm_write(bb_fc1_B3_stall_region_out_memdep_fc1_avm_write),
        .out_memdep_fc1_avm_writedata(bb_fc1_B3_stall_region_out_memdep_fc1_avm_writedata),
        .out_notcmp1223_pop17(bb_fc1_B3_stall_region_out_notcmp1223_pop17),
        .out_pipeline_valid_out(bb_fc1_B3_stall_region_out_pipeline_valid_out),
        .out_pn1_fc1_avm_address(bb_fc1_B3_stall_region_out_pn1_fc1_avm_address),
        .out_pn1_fc1_avm_burstcount(bb_fc1_B3_stall_region_out_pn1_fc1_avm_burstcount),
        .out_pn1_fc1_avm_byteenable(bb_fc1_B3_stall_region_out_pn1_fc1_avm_byteenable),
        .out_pn1_fc1_avm_enable(bb_fc1_B3_stall_region_out_pn1_fc1_avm_enable),
        .out_pn1_fc1_avm_read(bb_fc1_B3_stall_region_out_pn1_fc1_avm_read),
        .out_pn1_fc1_avm_write(bb_fc1_B3_stall_region_out_pn1_fc1_avm_write),
        .out_pn1_fc1_avm_writedata(bb_fc1_B3_stall_region_out_pn1_fc1_avm_writedata),
        .out_stall_out(bb_fc1_B3_stall_region_out_stall_out),
        .out_unnamed_fc17_fc1_avm_address(bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_address),
        .out_unnamed_fc17_fc1_avm_burstcount(bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_burstcount),
        .out_unnamed_fc17_fc1_avm_byteenable(bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_byteenable),
        .out_unnamed_fc17_fc1_avm_enable(bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_enable),
        .out_unnamed_fc17_fc1_avm_read(bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_read),
        .out_unnamed_fc17_fc1_avm_write(bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_write),
        .out_unnamed_fc17_fc1_avm_writedata(bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_writedata),
        .out_unnamed_fc18_fc1_avm_address(bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_address),
        .out_unnamed_fc18_fc1_avm_burstcount(bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_burstcount),
        .out_unnamed_fc18_fc1_avm_byteenable(bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_byteenable),
        .out_unnamed_fc18_fc1_avm_enable(bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_enable),
        .out_unnamed_fc18_fc1_avm_read(bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_read),
        .out_unnamed_fc18_fc1_avm_write(bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_write),
        .out_unnamed_fc18_fc1_avm_writedata(bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_writedata),
        .out_valid_out(bb_fc1_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // fc1_B3_branch(BLACKBOX,3)
    fc1_B3_branch thefc1_B3_branch (
        .in_exitcond722_pop16(bb_fc1_B3_stall_region_out_exitcond722_pop16),
        .in_masked(bb_fc1_B3_stall_region_out_masked),
        .in_memdep(bb_fc1_B3_stall_region_out_memdep),
        .in_notcmp1223_pop17(bb_fc1_B3_stall_region_out_notcmp1223_pop17),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_fc1_B3_stall_region_out_valid_out),
        .out_exitcond722_pop16(fc1_B3_branch_out_exitcond722_pop16),
        .out_memdep(fc1_B3_branch_out_memdep),
        .out_notcmp1223_pop17(fc1_B3_branch_out_notcmp1223_pop17),
        .out_stall_out(fc1_B3_branch_out_stall_out),
        .out_valid_out_0(fc1_B3_branch_out_valid_out_0),
        .out_valid_out_1(fc1_B3_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exitcond722_pop16(GPOUT,40)
    assign out_exitcond722_pop16 = fc1_B3_branch_out_exitcond722_pop16;

    // out_exiting_stall_out(GPOUT,41)
    assign out_exiting_stall_out = bb_fc1_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fc15_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,42)
    assign out_exiting_valid_out = bb_fc1_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fc15_exiting_valid_out;

    // out_lsu_memdep_o_active(GPOUT,43)
    assign out_lsu_memdep_o_active = bb_fc1_B3_stall_region_out_lsu_memdep_o_active;

    // out_memdep(GPOUT,44)
    assign out_memdep = fc1_B3_branch_out_memdep;

    // out_memdep_fc1_avm_address(GPOUT,45)
    assign out_memdep_fc1_avm_address = bb_fc1_B3_stall_region_out_memdep_fc1_avm_address;

    // out_memdep_fc1_avm_burstcount(GPOUT,46)
    assign out_memdep_fc1_avm_burstcount = bb_fc1_B3_stall_region_out_memdep_fc1_avm_burstcount;

    // out_memdep_fc1_avm_byteenable(GPOUT,47)
    assign out_memdep_fc1_avm_byteenable = bb_fc1_B3_stall_region_out_memdep_fc1_avm_byteenable;

    // out_memdep_fc1_avm_enable(GPOUT,48)
    assign out_memdep_fc1_avm_enable = bb_fc1_B3_stall_region_out_memdep_fc1_avm_enable;

    // out_memdep_fc1_avm_read(GPOUT,49)
    assign out_memdep_fc1_avm_read = bb_fc1_B3_stall_region_out_memdep_fc1_avm_read;

    // out_memdep_fc1_avm_write(GPOUT,50)
    assign out_memdep_fc1_avm_write = bb_fc1_B3_stall_region_out_memdep_fc1_avm_write;

    // out_memdep_fc1_avm_writedata(GPOUT,51)
    assign out_memdep_fc1_avm_writedata = bb_fc1_B3_stall_region_out_memdep_fc1_avm_writedata;

    // out_notcmp1223_pop17(GPOUT,52)
    assign out_notcmp1223_pop17 = fc1_B3_branch_out_notcmp1223_pop17;

    // out_pn1_fc1_avm_address(GPOUT,53)
    assign out_pn1_fc1_avm_address = bb_fc1_B3_stall_region_out_pn1_fc1_avm_address;

    // out_pn1_fc1_avm_burstcount(GPOUT,54)
    assign out_pn1_fc1_avm_burstcount = bb_fc1_B3_stall_region_out_pn1_fc1_avm_burstcount;

    // out_pn1_fc1_avm_byteenable(GPOUT,55)
    assign out_pn1_fc1_avm_byteenable = bb_fc1_B3_stall_region_out_pn1_fc1_avm_byteenable;

    // out_pn1_fc1_avm_enable(GPOUT,56)
    assign out_pn1_fc1_avm_enable = bb_fc1_B3_stall_region_out_pn1_fc1_avm_enable;

    // out_pn1_fc1_avm_read(GPOUT,57)
    assign out_pn1_fc1_avm_read = bb_fc1_B3_stall_region_out_pn1_fc1_avm_read;

    // out_pn1_fc1_avm_write(GPOUT,58)
    assign out_pn1_fc1_avm_write = bb_fc1_B3_stall_region_out_pn1_fc1_avm_write;

    // out_pn1_fc1_avm_writedata(GPOUT,59)
    assign out_pn1_fc1_avm_writedata = bb_fc1_B3_stall_region_out_pn1_fc1_avm_writedata;

    // out_stall_in_0(GPOUT,60)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,61)
    assign out_stall_out_0 = fc1_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,62)
    assign out_stall_out_1 = fc1_B3_merge_out_stall_out_1;

    // out_unnamed_fc17_fc1_avm_address(GPOUT,63)
    assign out_unnamed_fc17_fc1_avm_address = bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_address;

    // out_unnamed_fc17_fc1_avm_burstcount(GPOUT,64)
    assign out_unnamed_fc17_fc1_avm_burstcount = bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_burstcount;

    // out_unnamed_fc17_fc1_avm_byteenable(GPOUT,65)
    assign out_unnamed_fc17_fc1_avm_byteenable = bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_byteenable;

    // out_unnamed_fc17_fc1_avm_enable(GPOUT,66)
    assign out_unnamed_fc17_fc1_avm_enable = bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_enable;

    // out_unnamed_fc17_fc1_avm_read(GPOUT,67)
    assign out_unnamed_fc17_fc1_avm_read = bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_read;

    // out_unnamed_fc17_fc1_avm_write(GPOUT,68)
    assign out_unnamed_fc17_fc1_avm_write = bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_write;

    // out_unnamed_fc17_fc1_avm_writedata(GPOUT,69)
    assign out_unnamed_fc17_fc1_avm_writedata = bb_fc1_B3_stall_region_out_unnamed_fc17_fc1_avm_writedata;

    // out_unnamed_fc18_fc1_avm_address(GPOUT,70)
    assign out_unnamed_fc18_fc1_avm_address = bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_address;

    // out_unnamed_fc18_fc1_avm_burstcount(GPOUT,71)
    assign out_unnamed_fc18_fc1_avm_burstcount = bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_burstcount;

    // out_unnamed_fc18_fc1_avm_byteenable(GPOUT,72)
    assign out_unnamed_fc18_fc1_avm_byteenable = bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_byteenable;

    // out_unnamed_fc18_fc1_avm_enable(GPOUT,73)
    assign out_unnamed_fc18_fc1_avm_enable = bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_enable;

    // out_unnamed_fc18_fc1_avm_read(GPOUT,74)
    assign out_unnamed_fc18_fc1_avm_read = bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_read;

    // out_unnamed_fc18_fc1_avm_write(GPOUT,75)
    assign out_unnamed_fc18_fc1_avm_write = bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_write;

    // out_unnamed_fc18_fc1_avm_writedata(GPOUT,76)
    assign out_unnamed_fc18_fc1_avm_writedata = bb_fc1_B3_stall_region_out_unnamed_fc18_fc1_avm_writedata;

    // out_valid_in_0(GPOUT,77)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,78)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,79)
    assign out_valid_out_0 = fc1_B3_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,80)
    assign out_valid_out_1 = fc1_B3_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,82)
    assign out_pipeline_valid_out = bb_fc1_B3_stall_region_out_pipeline_valid_out;

endmodule
