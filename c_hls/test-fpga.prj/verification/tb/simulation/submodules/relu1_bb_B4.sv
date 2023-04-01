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

// SystemVerilog created from bb_relu1_B4
// Created for function/kernel relu1
// SystemVerilog created on Sat Apr  1 13:10:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module relu1_bb_B4 (
    input wire [0:0] in_exitcond551_0,
    input wire [0:0] in_exitcond551_1,
    input wire [0:0] in_exitcond827_pop1655_0,
    input wire [0:0] in_exitcond827_pop1655_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_i_018_pop1453_0,
    input wire [31:0] in_i_018_pop1453_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_k_019_pop1131_pop1857_0,
    input wire [31:0] in_k_019_pop1131_pop1857_1,
    input wire [0:0] in_memdep_phi1_pop1554_0,
    input wire [0:0] in_memdep_phi1_pop1554_1,
    input wire [0:0] in_memdep_phi2_pop1233_pop1958_0,
    input wire [0:0] in_memdep_phi2_pop1233_pop1958_1,
    input wire [63:0] in_memdep_relu1_avm_readdata,
    input wire [0:0] in_memdep_relu1_avm_readdatavalid,
    input wire [0:0] in_memdep_relu1_avm_waitrequest,
    input wire [0:0] in_memdep_relu1_avm_writeack,
    input wire [0:0] in_notcmp1152_0,
    input wire [0:0] in_notcmp1152_1,
    input wire [0:0] in_notcmp1629_pop1756_0,
    input wire [0:0] in_notcmp1629_pop1756_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [63:0] in_unnamed_relu15_relu1_avm_readdata,
    input wire [0:0] in_unnamed_relu15_relu1_avm_readdatavalid,
    input wire [0:0] in_unnamed_relu15_relu1_avm_waitrequest,
    input wire [0:0] in_unnamed_relu15_relu1_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond535_pop29,
    output wire [0:0] out_exitcond828_pop25,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_memdep,
    output wire [63:0] out_memdep_relu1_avm_address,
    output wire [0:0] out_memdep_relu1_avm_burstcount,
    output wire [7:0] out_memdep_relu1_avm_byteenable,
    output wire [0:0] out_memdep_relu1_avm_enable,
    output wire [0:0] out_memdep_relu1_avm_read,
    output wire [0:0] out_memdep_relu1_avm_write,
    output wire [63:0] out_memdep_relu1_avm_writedata,
    output wire [0:0] out_notcmp1136_pop30,
    output wire [0:0] out_notcmp1630_pop26,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [63:0] out_unnamed_relu15_relu1_avm_address,
    output wire [0:0] out_unnamed_relu15_relu1_avm_burstcount,
    output wire [7:0] out_unnamed_relu15_relu1_avm_byteenable,
    output wire [0:0] out_unnamed_relu15_relu1_avm_enable,
    output wire [0:0] out_unnamed_relu15_relu1_avm_read,
    output wire [0:0] out_unnamed_relu15_relu1_avm_write,
    output wire [63:0] out_unnamed_relu15_relu1_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_relu1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_relu13_exiting_stall_out;
    wire [0:0] bb_relu1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_relu13_exiting_valid_out;
    wire [0:0] bb_relu1_B4_stall_region_out_exitcond535_pop29;
    wire [0:0] bb_relu1_B4_stall_region_out_exitcond828_pop25;
    wire [0:0] bb_relu1_B4_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_relu1_B4_stall_region_out_masked;
    wire [0:0] bb_relu1_B4_stall_region_out_memdep;
    wire [63:0] bb_relu1_B4_stall_region_out_memdep_relu1_avm_address;
    wire [0:0] bb_relu1_B4_stall_region_out_memdep_relu1_avm_burstcount;
    wire [7:0] bb_relu1_B4_stall_region_out_memdep_relu1_avm_byteenable;
    wire [0:0] bb_relu1_B4_stall_region_out_memdep_relu1_avm_enable;
    wire [0:0] bb_relu1_B4_stall_region_out_memdep_relu1_avm_read;
    wire [0:0] bb_relu1_B4_stall_region_out_memdep_relu1_avm_write;
    wire [63:0] bb_relu1_B4_stall_region_out_memdep_relu1_avm_writedata;
    wire [0:0] bb_relu1_B4_stall_region_out_notcmp1136_pop30;
    wire [0:0] bb_relu1_B4_stall_region_out_notcmp1630_pop26;
    wire [0:0] bb_relu1_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_relu1_B4_stall_region_out_stall_out;
    wire [63:0] bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_address;
    wire [0:0] bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_burstcount;
    wire [7:0] bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_byteenable;
    wire [0:0] bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_enable;
    wire [0:0] bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_read;
    wire [0:0] bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_write;
    wire [63:0] bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_writedata;
    wire [0:0] bb_relu1_B4_stall_region_out_valid_out;
    wire [0:0] relu1_B4_branch_out_exitcond535_pop29;
    wire [0:0] relu1_B4_branch_out_exitcond828_pop25;
    wire [0:0] relu1_B4_branch_out_memdep;
    wire [0:0] relu1_B4_branch_out_notcmp1136_pop30;
    wire [0:0] relu1_B4_branch_out_notcmp1630_pop26;
    wire [0:0] relu1_B4_branch_out_stall_out;
    wire [0:0] relu1_B4_branch_out_valid_out_0;
    wire [0:0] relu1_B4_branch_out_valid_out_1;
    wire [0:0] relu1_B4_merge_out_exitcond551;
    wire [0:0] relu1_B4_merge_out_exitcond827_pop1655;
    wire [0:0] relu1_B4_merge_out_forked;
    wire [31:0] relu1_B4_merge_out_i_018_pop1453;
    wire [31:0] relu1_B4_merge_out_k_019_pop1131_pop1857;
    wire [0:0] relu1_B4_merge_out_memdep_phi1_pop1554;
    wire [0:0] relu1_B4_merge_out_memdep_phi2_pop1233_pop1958;
    wire [0:0] relu1_B4_merge_out_notcmp1152;
    wire [0:0] relu1_B4_merge_out_notcmp1629_pop1756;
    wire [0:0] relu1_B4_merge_out_stall_out_0;
    wire [0:0] relu1_B4_merge_out_stall_out_1;
    wire [0:0] relu1_B4_merge_out_valid_out;


    // relu1_B4_merge(BLACKBOX,68)
    relu1_B4_merge therelu1_B4_merge (
        .in_exitcond551_0(in_exitcond551_0),
        .in_exitcond551_1(in_exitcond551_1),
        .in_exitcond827_pop1655_0(in_exitcond827_pop1655_0),
        .in_exitcond827_pop1655_1(in_exitcond827_pop1655_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_i_018_pop1453_0(in_i_018_pop1453_0),
        .in_i_018_pop1453_1(in_i_018_pop1453_1),
        .in_k_019_pop1131_pop1857_0(in_k_019_pop1131_pop1857_0),
        .in_k_019_pop1131_pop1857_1(in_k_019_pop1131_pop1857_1),
        .in_memdep_phi1_pop1554_0(in_memdep_phi1_pop1554_0),
        .in_memdep_phi1_pop1554_1(in_memdep_phi1_pop1554_1),
        .in_memdep_phi2_pop1233_pop1958_0(in_memdep_phi2_pop1233_pop1958_0),
        .in_memdep_phi2_pop1233_pop1958_1(in_memdep_phi2_pop1233_pop1958_1),
        .in_notcmp1152_0(in_notcmp1152_0),
        .in_notcmp1152_1(in_notcmp1152_1),
        .in_notcmp1629_pop1756_0(in_notcmp1629_pop1756_0),
        .in_notcmp1629_pop1756_1(in_notcmp1629_pop1756_1),
        .in_stall_in(bb_relu1_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond551(relu1_B4_merge_out_exitcond551),
        .out_exitcond827_pop1655(relu1_B4_merge_out_exitcond827_pop1655),
        .out_forked(relu1_B4_merge_out_forked),
        .out_i_018_pop1453(relu1_B4_merge_out_i_018_pop1453),
        .out_k_019_pop1131_pop1857(relu1_B4_merge_out_k_019_pop1131_pop1857),
        .out_memdep_phi1_pop1554(relu1_B4_merge_out_memdep_phi1_pop1554),
        .out_memdep_phi2_pop1233_pop1958(relu1_B4_merge_out_memdep_phi2_pop1233_pop1958),
        .out_notcmp1152(relu1_B4_merge_out_notcmp1152),
        .out_notcmp1629_pop1756(relu1_B4_merge_out_notcmp1629_pop1756),
        .out_stall_out_0(relu1_B4_merge_out_stall_out_0),
        .out_stall_out_1(relu1_B4_merge_out_stall_out_1),
        .out_valid_out(relu1_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_relu1_B4_stall_region(BLACKBOX,2)
    relu1_bb_B4_stall_region thebb_relu1_B4_stall_region (
        .in_exitcond551(relu1_B4_merge_out_exitcond551),
        .in_exitcond827_pop1655(relu1_B4_merge_out_exitcond827_pop1655),
        .in_flush(in_flush),
        .in_forked(relu1_B4_merge_out_forked),
        .in_i_018_pop1453(relu1_B4_merge_out_i_018_pop1453),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_k_019_pop1131_pop1857(relu1_B4_merge_out_k_019_pop1131_pop1857),
        .in_memdep_phi1_pop1554(relu1_B4_merge_out_memdep_phi1_pop1554),
        .in_memdep_phi2_pop1233_pop1958(relu1_B4_merge_out_memdep_phi2_pop1233_pop1958),
        .in_memdep_relu1_avm_readdata(in_memdep_relu1_avm_readdata),
        .in_memdep_relu1_avm_readdatavalid(in_memdep_relu1_avm_readdatavalid),
        .in_memdep_relu1_avm_waitrequest(in_memdep_relu1_avm_waitrequest),
        .in_memdep_relu1_avm_writeack(in_memdep_relu1_avm_writeack),
        .in_notcmp1152(relu1_B4_merge_out_notcmp1152),
        .in_notcmp1629_pop1756(relu1_B4_merge_out_notcmp1629_pop1756),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(relu1_B4_branch_out_stall_out),
        .in_unnamed_relu15_relu1_avm_readdata(in_unnamed_relu15_relu1_avm_readdata),
        .in_unnamed_relu15_relu1_avm_readdatavalid(in_unnamed_relu15_relu1_avm_readdatavalid),
        .in_unnamed_relu15_relu1_avm_waitrequest(in_unnamed_relu15_relu1_avm_waitrequest),
        .in_unnamed_relu15_relu1_avm_writeack(in_unnamed_relu15_relu1_avm_writeack),
        .in_valid_in(relu1_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_relu13_exiting_stall_out(bb_relu1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_relu13_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_relu13_exiting_valid_out(bb_relu1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_relu13_exiting_valid_out),
        .out_exitcond535_pop29(bb_relu1_B4_stall_region_out_exitcond535_pop29),
        .out_exitcond828_pop25(bb_relu1_B4_stall_region_out_exitcond828_pop25),
        .out_lsu_memdep_o_active(bb_relu1_B4_stall_region_out_lsu_memdep_o_active),
        .out_masked(bb_relu1_B4_stall_region_out_masked),
        .out_memdep(bb_relu1_B4_stall_region_out_memdep),
        .out_memdep_relu1_avm_address(bb_relu1_B4_stall_region_out_memdep_relu1_avm_address),
        .out_memdep_relu1_avm_burstcount(bb_relu1_B4_stall_region_out_memdep_relu1_avm_burstcount),
        .out_memdep_relu1_avm_byteenable(bb_relu1_B4_stall_region_out_memdep_relu1_avm_byteenable),
        .out_memdep_relu1_avm_enable(bb_relu1_B4_stall_region_out_memdep_relu1_avm_enable),
        .out_memdep_relu1_avm_read(bb_relu1_B4_stall_region_out_memdep_relu1_avm_read),
        .out_memdep_relu1_avm_write(bb_relu1_B4_stall_region_out_memdep_relu1_avm_write),
        .out_memdep_relu1_avm_writedata(bb_relu1_B4_stall_region_out_memdep_relu1_avm_writedata),
        .out_notcmp1136_pop30(bb_relu1_B4_stall_region_out_notcmp1136_pop30),
        .out_notcmp1630_pop26(bb_relu1_B4_stall_region_out_notcmp1630_pop26),
        .out_pipeline_valid_out(bb_relu1_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_relu1_B4_stall_region_out_stall_out),
        .out_unnamed_relu15_relu1_avm_address(bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_address),
        .out_unnamed_relu15_relu1_avm_burstcount(bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_burstcount),
        .out_unnamed_relu15_relu1_avm_byteenable(bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_byteenable),
        .out_unnamed_relu15_relu1_avm_enable(bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_enable),
        .out_unnamed_relu15_relu1_avm_read(bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_read),
        .out_unnamed_relu15_relu1_avm_write(bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_write),
        .out_unnamed_relu15_relu1_avm_writedata(bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_writedata),
        .out_valid_out(bb_relu1_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // relu1_B4_branch(BLACKBOX,67)
    relu1_B4_branch therelu1_B4_branch (
        .in_exitcond535_pop29(bb_relu1_B4_stall_region_out_exitcond535_pop29),
        .in_exitcond828_pop25(bb_relu1_B4_stall_region_out_exitcond828_pop25),
        .in_masked(bb_relu1_B4_stall_region_out_masked),
        .in_memdep(bb_relu1_B4_stall_region_out_memdep),
        .in_notcmp1136_pop30(bb_relu1_B4_stall_region_out_notcmp1136_pop30),
        .in_notcmp1630_pop26(bb_relu1_B4_stall_region_out_notcmp1630_pop26),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_relu1_B4_stall_region_out_valid_out),
        .out_exitcond535_pop29(relu1_B4_branch_out_exitcond535_pop29),
        .out_exitcond828_pop25(relu1_B4_branch_out_exitcond828_pop25),
        .out_memdep(relu1_B4_branch_out_memdep),
        .out_notcmp1136_pop30(relu1_B4_branch_out_notcmp1136_pop30),
        .out_notcmp1630_pop26(relu1_B4_branch_out_notcmp1630_pop26),
        .out_stall_out(relu1_B4_branch_out_stall_out),
        .out_valid_out_0(relu1_B4_branch_out_valid_out_0),
        .out_valid_out_1(relu1_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exitcond535_pop29(GPOUT,36)
    assign out_exitcond535_pop29 = relu1_B4_branch_out_exitcond535_pop29;

    // out_exitcond828_pop25(GPOUT,37)
    assign out_exitcond828_pop25 = relu1_B4_branch_out_exitcond828_pop25;

    // out_exiting_stall_out(GPOUT,38)
    assign out_exiting_stall_out = bb_relu1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_relu13_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,39)
    assign out_exiting_valid_out = bb_relu1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_relu13_exiting_valid_out;

    // out_lsu_memdep_o_active(GPOUT,40)
    assign out_lsu_memdep_o_active = bb_relu1_B4_stall_region_out_lsu_memdep_o_active;

    // out_memdep(GPOUT,41)
    assign out_memdep = relu1_B4_branch_out_memdep;

    // out_memdep_relu1_avm_address(GPOUT,42)
    assign out_memdep_relu1_avm_address = bb_relu1_B4_stall_region_out_memdep_relu1_avm_address;

    // out_memdep_relu1_avm_burstcount(GPOUT,43)
    assign out_memdep_relu1_avm_burstcount = bb_relu1_B4_stall_region_out_memdep_relu1_avm_burstcount;

    // out_memdep_relu1_avm_byteenable(GPOUT,44)
    assign out_memdep_relu1_avm_byteenable = bb_relu1_B4_stall_region_out_memdep_relu1_avm_byteenable;

    // out_memdep_relu1_avm_enable(GPOUT,45)
    assign out_memdep_relu1_avm_enable = bb_relu1_B4_stall_region_out_memdep_relu1_avm_enable;

    // out_memdep_relu1_avm_read(GPOUT,46)
    assign out_memdep_relu1_avm_read = bb_relu1_B4_stall_region_out_memdep_relu1_avm_read;

    // out_memdep_relu1_avm_write(GPOUT,47)
    assign out_memdep_relu1_avm_write = bb_relu1_B4_stall_region_out_memdep_relu1_avm_write;

    // out_memdep_relu1_avm_writedata(GPOUT,48)
    assign out_memdep_relu1_avm_writedata = bb_relu1_B4_stall_region_out_memdep_relu1_avm_writedata;

    // out_notcmp1136_pop30(GPOUT,49)
    assign out_notcmp1136_pop30 = relu1_B4_branch_out_notcmp1136_pop30;

    // out_notcmp1630_pop26(GPOUT,50)
    assign out_notcmp1630_pop26 = relu1_B4_branch_out_notcmp1630_pop26;

    // out_stall_in_0(GPOUT,51)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,52)
    assign out_stall_out_0 = relu1_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,53)
    assign out_stall_out_1 = relu1_B4_merge_out_stall_out_1;

    // out_unnamed_relu15_relu1_avm_address(GPOUT,54)
    assign out_unnamed_relu15_relu1_avm_address = bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_address;

    // out_unnamed_relu15_relu1_avm_burstcount(GPOUT,55)
    assign out_unnamed_relu15_relu1_avm_burstcount = bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_burstcount;

    // out_unnamed_relu15_relu1_avm_byteenable(GPOUT,56)
    assign out_unnamed_relu15_relu1_avm_byteenable = bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_byteenable;

    // out_unnamed_relu15_relu1_avm_enable(GPOUT,57)
    assign out_unnamed_relu15_relu1_avm_enable = bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_enable;

    // out_unnamed_relu15_relu1_avm_read(GPOUT,58)
    assign out_unnamed_relu15_relu1_avm_read = bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_read;

    // out_unnamed_relu15_relu1_avm_write(GPOUT,59)
    assign out_unnamed_relu15_relu1_avm_write = bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_write;

    // out_unnamed_relu15_relu1_avm_writedata(GPOUT,60)
    assign out_unnamed_relu15_relu1_avm_writedata = bb_relu1_B4_stall_region_out_unnamed_relu15_relu1_avm_writedata;

    // out_valid_in_0(GPOUT,61)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,62)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,63)
    assign out_valid_out_0 = relu1_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,64)
    assign out_valid_out_1 = relu1_B4_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,66)
    assign out_pipeline_valid_out = bb_relu1_B4_stall_region_out_pipeline_valid_out;

endmodule
