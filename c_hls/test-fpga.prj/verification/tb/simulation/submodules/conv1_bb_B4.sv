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

// SystemVerilog created from bb_conv1_B4
// Created for function/kernel conv1
// SystemVerilog created on Sat Apr  1 13:10:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv1_bb_B4 (
    input wire [31:0] in_channel_029_pop1137_pop1863_0,
    input wire [31:0] in_channel_029_pop1137_pop1863_1,
    input wire [0:0] in_exitcond1233_pop1661_0,
    input wire [0:0] in_exitcond1233_pop1661_1,
    input wire [0:0] in_exitcond957_0,
    input wire [0:0] in_exitcond957_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_memdep_conv1_avm_readdata,
    input wire [0:0] in_memdep_conv1_avm_readdatavalid,
    input wire [0:0] in_memdep_conv1_avm_waitrequest,
    input wire [0:0] in_memdep_conv1_avm_writeack,
    input wire [0:0] in_memdep_phi1_pop1560_0,
    input wire [0:0] in_memdep_phi1_pop1560_1,
    input wire [0:0] in_memdep_phi2_pop1239_pop1964_0,
    input wire [0:0] in_memdep_phi2_pop1239_pop1964_1,
    input wire [0:0] in_notcmp1758_0,
    input wire [0:0] in_notcmp1758_1,
    input wire [0:0] in_notcmp2235_pop1762_0,
    input wire [0:0] in_notcmp2235_pop1762_1,
    input wire [31:0] in_row_028_pop1459_0,
    input wire [31:0] in_row_028_pop1459_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [63:0] in_unnamed_conv17_conv1_avm_readdata,
    input wire [0:0] in_unnamed_conv17_conv1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv17_conv1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv17_conv1_avm_writeack,
    input wire [63:0] in_unnamed_conv18_conv1_avm_readdata,
    input wire [0:0] in_unnamed_conv18_conv1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv18_conv1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv18_conv1_avm_writeack,
    input wire [63:0] in_unnamed_conv19_conv1_avm_readdata,
    input wire [0:0] in_unnamed_conv19_conv1_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv19_conv1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv19_conv1_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond1234_pop25,
    output wire [0:0] out_exitcond941_pop29,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_memdep,
    output wire [63:0] out_memdep_conv1_avm_address,
    output wire [0:0] out_memdep_conv1_avm_burstcount,
    output wire [7:0] out_memdep_conv1_avm_byteenable,
    output wire [0:0] out_memdep_conv1_avm_enable,
    output wire [0:0] out_memdep_conv1_avm_read,
    output wire [0:0] out_memdep_conv1_avm_write,
    output wire [63:0] out_memdep_conv1_avm_writedata,
    output wire [0:0] out_notcmp1742_pop30,
    output wire [0:0] out_notcmp2236_pop26,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [63:0] out_unnamed_conv17_conv1_avm_address,
    output wire [0:0] out_unnamed_conv17_conv1_avm_burstcount,
    output wire [7:0] out_unnamed_conv17_conv1_avm_byteenable,
    output wire [0:0] out_unnamed_conv17_conv1_avm_enable,
    output wire [0:0] out_unnamed_conv17_conv1_avm_read,
    output wire [0:0] out_unnamed_conv17_conv1_avm_write,
    output wire [63:0] out_unnamed_conv17_conv1_avm_writedata,
    output wire [63:0] out_unnamed_conv18_conv1_avm_address,
    output wire [0:0] out_unnamed_conv18_conv1_avm_burstcount,
    output wire [7:0] out_unnamed_conv18_conv1_avm_byteenable,
    output wire [0:0] out_unnamed_conv18_conv1_avm_enable,
    output wire [0:0] out_unnamed_conv18_conv1_avm_read,
    output wire [0:0] out_unnamed_conv18_conv1_avm_write,
    output wire [63:0] out_unnamed_conv18_conv1_avm_writedata,
    output wire [63:0] out_unnamed_conv19_conv1_avm_address,
    output wire [0:0] out_unnamed_conv19_conv1_avm_burstcount,
    output wire [7:0] out_unnamed_conv19_conv1_avm_byteenable,
    output wire [0:0] out_unnamed_conv19_conv1_avm_enable,
    output wire [0:0] out_unnamed_conv19_conv1_avm_read,
    output wire [0:0] out_unnamed_conv19_conv1_avm_write,
    output wire [63:0] out_unnamed_conv19_conv1_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv15_exiting_stall_out;
    wire [0:0] bb_conv1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv15_exiting_valid_out;
    wire [0:0] bb_conv1_B4_stall_region_out_exitcond1234_pop25;
    wire [0:0] bb_conv1_B4_stall_region_out_exitcond941_pop29;
    wire [0:0] bb_conv1_B4_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_conv1_B4_stall_region_out_masked;
    wire [0:0] bb_conv1_B4_stall_region_out_memdep;
    wire [63:0] bb_conv1_B4_stall_region_out_memdep_conv1_avm_address;
    wire [0:0] bb_conv1_B4_stall_region_out_memdep_conv1_avm_burstcount;
    wire [7:0] bb_conv1_B4_stall_region_out_memdep_conv1_avm_byteenable;
    wire [0:0] bb_conv1_B4_stall_region_out_memdep_conv1_avm_enable;
    wire [0:0] bb_conv1_B4_stall_region_out_memdep_conv1_avm_read;
    wire [0:0] bb_conv1_B4_stall_region_out_memdep_conv1_avm_write;
    wire [63:0] bb_conv1_B4_stall_region_out_memdep_conv1_avm_writedata;
    wire [0:0] bb_conv1_B4_stall_region_out_notcmp1742_pop30;
    wire [0:0] bb_conv1_B4_stall_region_out_notcmp2236_pop26;
    wire [0:0] bb_conv1_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv1_B4_stall_region_out_stall_out;
    wire [63:0] bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_address;
    wire [0:0] bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_burstcount;
    wire [7:0] bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_byteenable;
    wire [0:0] bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_enable;
    wire [0:0] bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_read;
    wire [0:0] bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_write;
    wire [63:0] bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_writedata;
    wire [63:0] bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_address;
    wire [0:0] bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_burstcount;
    wire [7:0] bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_byteenable;
    wire [0:0] bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_enable;
    wire [0:0] bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_read;
    wire [0:0] bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_write;
    wire [63:0] bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_writedata;
    wire [63:0] bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_address;
    wire [0:0] bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_burstcount;
    wire [7:0] bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_byteenable;
    wire [0:0] bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_enable;
    wire [0:0] bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_read;
    wire [0:0] bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_write;
    wire [63:0] bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_writedata;
    wire [0:0] bb_conv1_B4_stall_region_out_valid_out;
    wire [0:0] conv1_B4_branch_out_exitcond1234_pop25;
    wire [0:0] conv1_B4_branch_out_exitcond941_pop29;
    wire [0:0] conv1_B4_branch_out_memdep;
    wire [0:0] conv1_B4_branch_out_notcmp1742_pop30;
    wire [0:0] conv1_B4_branch_out_notcmp2236_pop26;
    wire [0:0] conv1_B4_branch_out_stall_out;
    wire [0:0] conv1_B4_branch_out_valid_out_0;
    wire [0:0] conv1_B4_branch_out_valid_out_1;
    wire [31:0] conv1_B4_merge_out_channel_029_pop1137_pop1863;
    wire [0:0] conv1_B4_merge_out_exitcond1233_pop1661;
    wire [0:0] conv1_B4_merge_out_exitcond957;
    wire [0:0] conv1_B4_merge_out_forked;
    wire [0:0] conv1_B4_merge_out_memdep_phi1_pop1560;
    wire [0:0] conv1_B4_merge_out_memdep_phi2_pop1239_pop1964;
    wire [0:0] conv1_B4_merge_out_notcmp1758;
    wire [0:0] conv1_B4_merge_out_notcmp2235_pop1762;
    wire [31:0] conv1_B4_merge_out_row_028_pop1459;
    wire [0:0] conv1_B4_merge_out_stall_out_0;
    wire [0:0] conv1_B4_merge_out_stall_out_1;
    wire [0:0] conv1_B4_merge_out_valid_out;


    // conv1_B4_merge(BLACKBOX,4)
    conv1_B4_merge theconv1_B4_merge (
        .in_channel_029_pop1137_pop1863_0(in_channel_029_pop1137_pop1863_0),
        .in_channel_029_pop1137_pop1863_1(in_channel_029_pop1137_pop1863_1),
        .in_exitcond1233_pop1661_0(in_exitcond1233_pop1661_0),
        .in_exitcond1233_pop1661_1(in_exitcond1233_pop1661_1),
        .in_exitcond957_0(in_exitcond957_0),
        .in_exitcond957_1(in_exitcond957_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_memdep_phi1_pop1560_0(in_memdep_phi1_pop1560_0),
        .in_memdep_phi1_pop1560_1(in_memdep_phi1_pop1560_1),
        .in_memdep_phi2_pop1239_pop1964_0(in_memdep_phi2_pop1239_pop1964_0),
        .in_memdep_phi2_pop1239_pop1964_1(in_memdep_phi2_pop1239_pop1964_1),
        .in_notcmp1758_0(in_notcmp1758_0),
        .in_notcmp1758_1(in_notcmp1758_1),
        .in_notcmp2235_pop1762_0(in_notcmp2235_pop1762_0),
        .in_notcmp2235_pop1762_1(in_notcmp2235_pop1762_1),
        .in_row_028_pop1459_0(in_row_028_pop1459_0),
        .in_row_028_pop1459_1(in_row_028_pop1459_1),
        .in_stall_in(bb_conv1_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_channel_029_pop1137_pop1863(conv1_B4_merge_out_channel_029_pop1137_pop1863),
        .out_exitcond1233_pop1661(conv1_B4_merge_out_exitcond1233_pop1661),
        .out_exitcond957(conv1_B4_merge_out_exitcond957),
        .out_forked(conv1_B4_merge_out_forked),
        .out_memdep_phi1_pop1560(conv1_B4_merge_out_memdep_phi1_pop1560),
        .out_memdep_phi2_pop1239_pop1964(conv1_B4_merge_out_memdep_phi2_pop1239_pop1964),
        .out_notcmp1758(conv1_B4_merge_out_notcmp1758),
        .out_notcmp2235_pop1762(conv1_B4_merge_out_notcmp2235_pop1762),
        .out_row_028_pop1459(conv1_B4_merge_out_row_028_pop1459),
        .out_stall_out_0(conv1_B4_merge_out_stall_out_0),
        .out_stall_out_1(conv1_B4_merge_out_stall_out_1),
        .out_valid_out(conv1_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv1_B4_stall_region(BLACKBOX,2)
    conv1_bb_B4_stall_region thebb_conv1_B4_stall_region (
        .in_channel_029_pop1137_pop1863(conv1_B4_merge_out_channel_029_pop1137_pop1863),
        .in_exitcond1233_pop1661(conv1_B4_merge_out_exitcond1233_pop1661),
        .in_exitcond957(conv1_B4_merge_out_exitcond957),
        .in_flush(in_flush),
        .in_forked(conv1_B4_merge_out_forked),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_memdep_conv1_avm_readdata(in_memdep_conv1_avm_readdata),
        .in_memdep_conv1_avm_readdatavalid(in_memdep_conv1_avm_readdatavalid),
        .in_memdep_conv1_avm_waitrequest(in_memdep_conv1_avm_waitrequest),
        .in_memdep_conv1_avm_writeack(in_memdep_conv1_avm_writeack),
        .in_memdep_phi1_pop1560(conv1_B4_merge_out_memdep_phi1_pop1560),
        .in_memdep_phi2_pop1239_pop1964(conv1_B4_merge_out_memdep_phi2_pop1239_pop1964),
        .in_notcmp1758(conv1_B4_merge_out_notcmp1758),
        .in_notcmp2235_pop1762(conv1_B4_merge_out_notcmp2235_pop1762),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_row_028_pop1459(conv1_B4_merge_out_row_028_pop1459),
        .in_stall_in(conv1_B4_branch_out_stall_out),
        .in_unnamed_conv17_conv1_avm_readdata(in_unnamed_conv17_conv1_avm_readdata),
        .in_unnamed_conv17_conv1_avm_readdatavalid(in_unnamed_conv17_conv1_avm_readdatavalid),
        .in_unnamed_conv17_conv1_avm_waitrequest(in_unnamed_conv17_conv1_avm_waitrequest),
        .in_unnamed_conv17_conv1_avm_writeack(in_unnamed_conv17_conv1_avm_writeack),
        .in_unnamed_conv18_conv1_avm_readdata(in_unnamed_conv18_conv1_avm_readdata),
        .in_unnamed_conv18_conv1_avm_readdatavalid(in_unnamed_conv18_conv1_avm_readdatavalid),
        .in_unnamed_conv18_conv1_avm_waitrequest(in_unnamed_conv18_conv1_avm_waitrequest),
        .in_unnamed_conv18_conv1_avm_writeack(in_unnamed_conv18_conv1_avm_writeack),
        .in_unnamed_conv19_conv1_avm_readdata(in_unnamed_conv19_conv1_avm_readdata),
        .in_unnamed_conv19_conv1_avm_readdatavalid(in_unnamed_conv19_conv1_avm_readdatavalid),
        .in_unnamed_conv19_conv1_avm_waitrequest(in_unnamed_conv19_conv1_avm_waitrequest),
        .in_unnamed_conv19_conv1_avm_writeack(in_unnamed_conv19_conv1_avm_writeack),
        .in_valid_in(conv1_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv15_exiting_stall_out(bb_conv1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv15_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv15_exiting_valid_out(bb_conv1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv15_exiting_valid_out),
        .out_exitcond1234_pop25(bb_conv1_B4_stall_region_out_exitcond1234_pop25),
        .out_exitcond941_pop29(bb_conv1_B4_stall_region_out_exitcond941_pop29),
        .out_lsu_memdep_o_active(bb_conv1_B4_stall_region_out_lsu_memdep_o_active),
        .out_masked(bb_conv1_B4_stall_region_out_masked),
        .out_memdep(bb_conv1_B4_stall_region_out_memdep),
        .out_memdep_conv1_avm_address(bb_conv1_B4_stall_region_out_memdep_conv1_avm_address),
        .out_memdep_conv1_avm_burstcount(bb_conv1_B4_stall_region_out_memdep_conv1_avm_burstcount),
        .out_memdep_conv1_avm_byteenable(bb_conv1_B4_stall_region_out_memdep_conv1_avm_byteenable),
        .out_memdep_conv1_avm_enable(bb_conv1_B4_stall_region_out_memdep_conv1_avm_enable),
        .out_memdep_conv1_avm_read(bb_conv1_B4_stall_region_out_memdep_conv1_avm_read),
        .out_memdep_conv1_avm_write(bb_conv1_B4_stall_region_out_memdep_conv1_avm_write),
        .out_memdep_conv1_avm_writedata(bb_conv1_B4_stall_region_out_memdep_conv1_avm_writedata),
        .out_notcmp1742_pop30(bb_conv1_B4_stall_region_out_notcmp1742_pop30),
        .out_notcmp2236_pop26(bb_conv1_B4_stall_region_out_notcmp2236_pop26),
        .out_pipeline_valid_out(bb_conv1_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv1_B4_stall_region_out_stall_out),
        .out_unnamed_conv17_conv1_avm_address(bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_address),
        .out_unnamed_conv17_conv1_avm_burstcount(bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_burstcount),
        .out_unnamed_conv17_conv1_avm_byteenable(bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_byteenable),
        .out_unnamed_conv17_conv1_avm_enable(bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_enable),
        .out_unnamed_conv17_conv1_avm_read(bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_read),
        .out_unnamed_conv17_conv1_avm_write(bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_write),
        .out_unnamed_conv17_conv1_avm_writedata(bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_writedata),
        .out_unnamed_conv18_conv1_avm_address(bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_address),
        .out_unnamed_conv18_conv1_avm_burstcount(bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_burstcount),
        .out_unnamed_conv18_conv1_avm_byteenable(bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_byteenable),
        .out_unnamed_conv18_conv1_avm_enable(bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_enable),
        .out_unnamed_conv18_conv1_avm_read(bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_read),
        .out_unnamed_conv18_conv1_avm_write(bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_write),
        .out_unnamed_conv18_conv1_avm_writedata(bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_writedata),
        .out_unnamed_conv19_conv1_avm_address(bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_address),
        .out_unnamed_conv19_conv1_avm_burstcount(bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_burstcount),
        .out_unnamed_conv19_conv1_avm_byteenable(bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_byteenable),
        .out_unnamed_conv19_conv1_avm_enable(bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_enable),
        .out_unnamed_conv19_conv1_avm_read(bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_read),
        .out_unnamed_conv19_conv1_avm_write(bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_write),
        .out_unnamed_conv19_conv1_avm_writedata(bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_writedata),
        .out_valid_out(bb_conv1_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv1_B4_branch(BLACKBOX,3)
    conv1_B4_branch theconv1_B4_branch (
        .in_exitcond1234_pop25(bb_conv1_B4_stall_region_out_exitcond1234_pop25),
        .in_exitcond941_pop29(bb_conv1_B4_stall_region_out_exitcond941_pop29),
        .in_masked(bb_conv1_B4_stall_region_out_masked),
        .in_memdep(bb_conv1_B4_stall_region_out_memdep),
        .in_notcmp1742_pop30(bb_conv1_B4_stall_region_out_notcmp1742_pop30),
        .in_notcmp2236_pop26(bb_conv1_B4_stall_region_out_notcmp2236_pop26),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv1_B4_stall_region_out_valid_out),
        .out_exitcond1234_pop25(conv1_B4_branch_out_exitcond1234_pop25),
        .out_exitcond941_pop29(conv1_B4_branch_out_exitcond941_pop29),
        .out_memdep(conv1_B4_branch_out_memdep),
        .out_notcmp1742_pop30(conv1_B4_branch_out_notcmp1742_pop30),
        .out_notcmp2236_pop26(conv1_B4_branch_out_notcmp2236_pop26),
        .out_stall_out(conv1_B4_branch_out_stall_out),
        .out_valid_out_0(conv1_B4_branch_out_valid_out_0),
        .out_valid_out_1(conv1_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exitcond1234_pop25(GPOUT,48)
    assign out_exitcond1234_pop25 = conv1_B4_branch_out_exitcond1234_pop25;

    // out_exitcond941_pop29(GPOUT,49)
    assign out_exitcond941_pop29 = conv1_B4_branch_out_exitcond941_pop29;

    // out_exiting_stall_out(GPOUT,50)
    assign out_exiting_stall_out = bb_conv1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv15_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,51)
    assign out_exiting_valid_out = bb_conv1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv15_exiting_valid_out;

    // out_lsu_memdep_o_active(GPOUT,52)
    assign out_lsu_memdep_o_active = bb_conv1_B4_stall_region_out_lsu_memdep_o_active;

    // out_memdep(GPOUT,53)
    assign out_memdep = conv1_B4_branch_out_memdep;

    // out_memdep_conv1_avm_address(GPOUT,54)
    assign out_memdep_conv1_avm_address = bb_conv1_B4_stall_region_out_memdep_conv1_avm_address;

    // out_memdep_conv1_avm_burstcount(GPOUT,55)
    assign out_memdep_conv1_avm_burstcount = bb_conv1_B4_stall_region_out_memdep_conv1_avm_burstcount;

    // out_memdep_conv1_avm_byteenable(GPOUT,56)
    assign out_memdep_conv1_avm_byteenable = bb_conv1_B4_stall_region_out_memdep_conv1_avm_byteenable;

    // out_memdep_conv1_avm_enable(GPOUT,57)
    assign out_memdep_conv1_avm_enable = bb_conv1_B4_stall_region_out_memdep_conv1_avm_enable;

    // out_memdep_conv1_avm_read(GPOUT,58)
    assign out_memdep_conv1_avm_read = bb_conv1_B4_stall_region_out_memdep_conv1_avm_read;

    // out_memdep_conv1_avm_write(GPOUT,59)
    assign out_memdep_conv1_avm_write = bb_conv1_B4_stall_region_out_memdep_conv1_avm_write;

    // out_memdep_conv1_avm_writedata(GPOUT,60)
    assign out_memdep_conv1_avm_writedata = bb_conv1_B4_stall_region_out_memdep_conv1_avm_writedata;

    // out_notcmp1742_pop30(GPOUT,61)
    assign out_notcmp1742_pop30 = conv1_B4_branch_out_notcmp1742_pop30;

    // out_notcmp2236_pop26(GPOUT,62)
    assign out_notcmp2236_pop26 = conv1_B4_branch_out_notcmp2236_pop26;

    // out_stall_in_0(GPOUT,63)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,64)
    assign out_stall_out_0 = conv1_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,65)
    assign out_stall_out_1 = conv1_B4_merge_out_stall_out_1;

    // out_unnamed_conv17_conv1_avm_address(GPOUT,66)
    assign out_unnamed_conv17_conv1_avm_address = bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_address;

    // out_unnamed_conv17_conv1_avm_burstcount(GPOUT,67)
    assign out_unnamed_conv17_conv1_avm_burstcount = bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_burstcount;

    // out_unnamed_conv17_conv1_avm_byteenable(GPOUT,68)
    assign out_unnamed_conv17_conv1_avm_byteenable = bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_byteenable;

    // out_unnamed_conv17_conv1_avm_enable(GPOUT,69)
    assign out_unnamed_conv17_conv1_avm_enable = bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_enable;

    // out_unnamed_conv17_conv1_avm_read(GPOUT,70)
    assign out_unnamed_conv17_conv1_avm_read = bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_read;

    // out_unnamed_conv17_conv1_avm_write(GPOUT,71)
    assign out_unnamed_conv17_conv1_avm_write = bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_write;

    // out_unnamed_conv17_conv1_avm_writedata(GPOUT,72)
    assign out_unnamed_conv17_conv1_avm_writedata = bb_conv1_B4_stall_region_out_unnamed_conv17_conv1_avm_writedata;

    // out_unnamed_conv18_conv1_avm_address(GPOUT,73)
    assign out_unnamed_conv18_conv1_avm_address = bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_address;

    // out_unnamed_conv18_conv1_avm_burstcount(GPOUT,74)
    assign out_unnamed_conv18_conv1_avm_burstcount = bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_burstcount;

    // out_unnamed_conv18_conv1_avm_byteenable(GPOUT,75)
    assign out_unnamed_conv18_conv1_avm_byteenable = bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_byteenable;

    // out_unnamed_conv18_conv1_avm_enable(GPOUT,76)
    assign out_unnamed_conv18_conv1_avm_enable = bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_enable;

    // out_unnamed_conv18_conv1_avm_read(GPOUT,77)
    assign out_unnamed_conv18_conv1_avm_read = bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_read;

    // out_unnamed_conv18_conv1_avm_write(GPOUT,78)
    assign out_unnamed_conv18_conv1_avm_write = bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_write;

    // out_unnamed_conv18_conv1_avm_writedata(GPOUT,79)
    assign out_unnamed_conv18_conv1_avm_writedata = bb_conv1_B4_stall_region_out_unnamed_conv18_conv1_avm_writedata;

    // out_unnamed_conv19_conv1_avm_address(GPOUT,80)
    assign out_unnamed_conv19_conv1_avm_address = bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_address;

    // out_unnamed_conv19_conv1_avm_burstcount(GPOUT,81)
    assign out_unnamed_conv19_conv1_avm_burstcount = bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_burstcount;

    // out_unnamed_conv19_conv1_avm_byteenable(GPOUT,82)
    assign out_unnamed_conv19_conv1_avm_byteenable = bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_byteenable;

    // out_unnamed_conv19_conv1_avm_enable(GPOUT,83)
    assign out_unnamed_conv19_conv1_avm_enable = bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_enable;

    // out_unnamed_conv19_conv1_avm_read(GPOUT,84)
    assign out_unnamed_conv19_conv1_avm_read = bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_read;

    // out_unnamed_conv19_conv1_avm_write(GPOUT,85)
    assign out_unnamed_conv19_conv1_avm_write = bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_write;

    // out_unnamed_conv19_conv1_avm_writedata(GPOUT,86)
    assign out_unnamed_conv19_conv1_avm_writedata = bb_conv1_B4_stall_region_out_unnamed_conv19_conv1_avm_writedata;

    // out_valid_in_0(GPOUT,87)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,88)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,89)
    assign out_valid_out_0 = conv1_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,90)
    assign out_valid_out_1 = conv1_B4_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,92)
    assign out_pipeline_valid_out = bb_conv1_B4_stall_region_out_pipeline_valid_out;

endmodule
