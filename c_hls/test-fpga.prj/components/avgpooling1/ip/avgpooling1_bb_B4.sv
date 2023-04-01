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

// SystemVerilog created from bb_avgpooling1_B4
// Created for function/kernel avgpooling1
// SystemVerilog created on Sat Apr  1 13:10:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpooling1_bb_B4 (
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [0:0] in_exitcond1155_0,
    input wire [0:0] in_exitcond1155_1,
    input wire [0:0] in_exitcond1431_pop1659_0,
    input wire [0:0] in_exitcond1431_pop1659_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_i_026_pop1457_0,
    input wire [31:0] in_i_026_pop1457_1,
    input wire [63:0] in_memdep_avgpooling1_avm_readdata,
    input wire [0:0] in_memdep_avgpooling1_avm_readdatavalid,
    input wire [0:0] in_memdep_avgpooling1_avm_waitrequest,
    input wire [0:0] in_memdep_avgpooling1_avm_writeack,
    input wire [0:0] in_memdep_phi1_pop1558_0,
    input wire [0:0] in_memdep_phi1_pop1558_1,
    input wire [0:0] in_memdep_phi2_pop1237_pop1962_0,
    input wire [0:0] in_memdep_phi2_pop1237_pop1962_1,
    input wire [31:0] in_n_channel_027_pop1135_pop1861_0,
    input wire [31:0] in_n_channel_027_pop1135_pop1861_1,
    input wire [0:0] in_notcmp1556_0,
    input wire [0:0] in_notcmp1556_1,
    input wire [0:0] in_notcmp2033_pop1760_0,
    input wire [0:0] in_notcmp2033_pop1760_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
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
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond1139_pop29,
    output wire [0:0] out_exitcond1432_pop25,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_memdep,
    output wire [63:0] out_memdep_avgpooling1_avm_address,
    output wire [0:0] out_memdep_avgpooling1_avm_burstcount,
    output wire [7:0] out_memdep_avgpooling1_avm_byteenable,
    output wire [0:0] out_memdep_avgpooling1_avm_enable,
    output wire [0:0] out_memdep_avgpooling1_avm_read,
    output wire [0:0] out_memdep_avgpooling1_avm_write,
    output wire [63:0] out_memdep_avgpooling1_avm_writedata,
    output wire [0:0] out_notcmp1540_pop30,
    output wire [0:0] out_notcmp2034_pop26,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
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
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] avgpooling1_B4_branch_out_exitcond1139_pop29;
    wire [0:0] avgpooling1_B4_branch_out_exitcond1432_pop25;
    wire [0:0] avgpooling1_B4_branch_out_memdep;
    wire [0:0] avgpooling1_B4_branch_out_notcmp1540_pop30;
    wire [0:0] avgpooling1_B4_branch_out_notcmp2034_pop26;
    wire [0:0] avgpooling1_B4_branch_out_stall_out;
    wire [0:0] avgpooling1_B4_branch_out_valid_out_0;
    wire [0:0] avgpooling1_B4_branch_out_valid_out_1;
    wire [0:0] avgpooling1_B4_merge_out_exitcond1155;
    wire [0:0] avgpooling1_B4_merge_out_exitcond1431_pop1659;
    wire [0:0] avgpooling1_B4_merge_out_forked;
    wire [31:0] avgpooling1_B4_merge_out_i_026_pop1457;
    wire [0:0] avgpooling1_B4_merge_out_memdep_phi1_pop1558;
    wire [0:0] avgpooling1_B4_merge_out_memdep_phi2_pop1237_pop1962;
    wire [31:0] avgpooling1_B4_merge_out_n_channel_027_pop1135_pop1861;
    wire [0:0] avgpooling1_B4_merge_out_notcmp1556;
    wire [0:0] avgpooling1_B4_merge_out_notcmp2033_pop1760;
    wire [0:0] avgpooling1_B4_merge_out_stall_out_0;
    wire [0:0] avgpooling1_B4_merge_out_stall_out_1;
    wire [0:0] avgpooling1_B4_merge_out_valid_out;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpooling13_exiting_stall_out;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpooling13_exiting_valid_out;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_exitcond1139_pop29;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_exitcond1432_pop25;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_masked;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_memdep;
    wire [63:0] bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_address;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_burstcount;
    wire [7:0] bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_byteenable;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_enable;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_read;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_write;
    wire [63:0] bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_writedata;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_notcmp1540_pop30;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_notcmp2034_pop26;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_stall_out;
    wire [63:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_address;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_burstcount;
    wire [7:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_byteenable;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_enable;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_read;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_write;
    wire [63:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_writedata;
    wire [63:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_address;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_burstcount;
    wire [7:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_byteenable;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_enable;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_read;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_write;
    wire [63:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_writedata;
    wire [63:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_address;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_burstcount;
    wire [7:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_byteenable;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_enable;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_read;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_write;
    wire [63:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_writedata;
    wire [63:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_address;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_burstcount;
    wire [7:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_byteenable;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_enable;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_read;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_write;
    wire [63:0] bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_writedata;
    wire [0:0] bb_avgpooling1_B4_stall_region_out_valid_out;


    // avgpooling1_B4_merge(BLACKBOX,48)
    avgpooling1_B4_merge theavgpooling1_B4_merge (
        .in_exitcond1155_0(in_exitcond1155_0),
        .in_exitcond1155_1(in_exitcond1155_1),
        .in_exitcond1431_pop1659_0(in_exitcond1431_pop1659_0),
        .in_exitcond1431_pop1659_1(in_exitcond1431_pop1659_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_i_026_pop1457_0(in_i_026_pop1457_0),
        .in_i_026_pop1457_1(in_i_026_pop1457_1),
        .in_memdep_phi1_pop1558_0(in_memdep_phi1_pop1558_0),
        .in_memdep_phi1_pop1558_1(in_memdep_phi1_pop1558_1),
        .in_memdep_phi2_pop1237_pop1962_0(in_memdep_phi2_pop1237_pop1962_0),
        .in_memdep_phi2_pop1237_pop1962_1(in_memdep_phi2_pop1237_pop1962_1),
        .in_n_channel_027_pop1135_pop1861_0(in_n_channel_027_pop1135_pop1861_0),
        .in_n_channel_027_pop1135_pop1861_1(in_n_channel_027_pop1135_pop1861_1),
        .in_notcmp1556_0(in_notcmp1556_0),
        .in_notcmp1556_1(in_notcmp1556_1),
        .in_notcmp2033_pop1760_0(in_notcmp2033_pop1760_0),
        .in_notcmp2033_pop1760_1(in_notcmp2033_pop1760_1),
        .in_stall_in(bb_avgpooling1_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond1155(avgpooling1_B4_merge_out_exitcond1155),
        .out_exitcond1431_pop1659(avgpooling1_B4_merge_out_exitcond1431_pop1659),
        .out_forked(avgpooling1_B4_merge_out_forked),
        .out_i_026_pop1457(avgpooling1_B4_merge_out_i_026_pop1457),
        .out_memdep_phi1_pop1558(avgpooling1_B4_merge_out_memdep_phi1_pop1558),
        .out_memdep_phi2_pop1237_pop1962(avgpooling1_B4_merge_out_memdep_phi2_pop1237_pop1962),
        .out_n_channel_027_pop1135_pop1861(avgpooling1_B4_merge_out_n_channel_027_pop1135_pop1861),
        .out_notcmp1556(avgpooling1_B4_merge_out_notcmp1556),
        .out_notcmp2033_pop1760(avgpooling1_B4_merge_out_notcmp2033_pop1760),
        .out_stall_out_0(avgpooling1_B4_merge_out_stall_out_0),
        .out_stall_out_1(avgpooling1_B4_merge_out_stall_out_1),
        .out_valid_out(avgpooling1_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_avgpooling1_B4_stall_region(BLACKBOX,49)
    avgpooling1_bb_B4_stall_region thebb_avgpooling1_B4_stall_region (
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_exitcond1155(avgpooling1_B4_merge_out_exitcond1155),
        .in_exitcond1431_pop1659(avgpooling1_B4_merge_out_exitcond1431_pop1659),
        .in_flush(in_flush),
        .in_forked(avgpooling1_B4_merge_out_forked),
        .in_i_026_pop1457(avgpooling1_B4_merge_out_i_026_pop1457),
        .in_memdep_avgpooling1_avm_readdata(in_memdep_avgpooling1_avm_readdata),
        .in_memdep_avgpooling1_avm_readdatavalid(in_memdep_avgpooling1_avm_readdatavalid),
        .in_memdep_avgpooling1_avm_waitrequest(in_memdep_avgpooling1_avm_waitrequest),
        .in_memdep_avgpooling1_avm_writeack(in_memdep_avgpooling1_avm_writeack),
        .in_memdep_phi1_pop1558(avgpooling1_B4_merge_out_memdep_phi1_pop1558),
        .in_memdep_phi2_pop1237_pop1962(avgpooling1_B4_merge_out_memdep_phi2_pop1237_pop1962),
        .in_n_channel_027_pop1135_pop1861(avgpooling1_B4_merge_out_n_channel_027_pop1135_pop1861),
        .in_notcmp1556(avgpooling1_B4_merge_out_notcmp1556),
        .in_notcmp2033_pop1760(avgpooling1_B4_merge_out_notcmp2033_pop1760),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(avgpooling1_B4_branch_out_stall_out),
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
        .in_valid_in(avgpooling1_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpooling13_exiting_stall_out(bb_avgpooling1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpooling13_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpooling13_exiting_valid_out(bb_avgpooling1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpooling13_exiting_valid_out),
        .out_exitcond1139_pop29(bb_avgpooling1_B4_stall_region_out_exitcond1139_pop29),
        .out_exitcond1432_pop25(bb_avgpooling1_B4_stall_region_out_exitcond1432_pop25),
        .out_lsu_memdep_o_active(bb_avgpooling1_B4_stall_region_out_lsu_memdep_o_active),
        .out_masked(bb_avgpooling1_B4_stall_region_out_masked),
        .out_memdep(bb_avgpooling1_B4_stall_region_out_memdep),
        .out_memdep_avgpooling1_avm_address(bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_address),
        .out_memdep_avgpooling1_avm_burstcount(bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_burstcount),
        .out_memdep_avgpooling1_avm_byteenable(bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_byteenable),
        .out_memdep_avgpooling1_avm_enable(bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_enable),
        .out_memdep_avgpooling1_avm_read(bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_read),
        .out_memdep_avgpooling1_avm_write(bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_write),
        .out_memdep_avgpooling1_avm_writedata(bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_writedata),
        .out_notcmp1540_pop30(bb_avgpooling1_B4_stall_region_out_notcmp1540_pop30),
        .out_notcmp2034_pop26(bb_avgpooling1_B4_stall_region_out_notcmp2034_pop26),
        .out_pipeline_valid_out(bb_avgpooling1_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_avgpooling1_B4_stall_region_out_stall_out),
        .out_unnamed_avgpooling16_avgpooling1_avm_address(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_address),
        .out_unnamed_avgpooling16_avgpooling1_avm_burstcount(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_burstcount),
        .out_unnamed_avgpooling16_avgpooling1_avm_byteenable(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_byteenable),
        .out_unnamed_avgpooling16_avgpooling1_avm_enable(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_enable),
        .out_unnamed_avgpooling16_avgpooling1_avm_read(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_read),
        .out_unnamed_avgpooling16_avgpooling1_avm_write(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_write),
        .out_unnamed_avgpooling16_avgpooling1_avm_writedata(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_writedata),
        .out_unnamed_avgpooling17_avgpooling1_avm_address(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_address),
        .out_unnamed_avgpooling17_avgpooling1_avm_burstcount(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_burstcount),
        .out_unnamed_avgpooling17_avgpooling1_avm_byteenable(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_byteenable),
        .out_unnamed_avgpooling17_avgpooling1_avm_enable(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_enable),
        .out_unnamed_avgpooling17_avgpooling1_avm_read(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_read),
        .out_unnamed_avgpooling17_avgpooling1_avm_write(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_write),
        .out_unnamed_avgpooling17_avgpooling1_avm_writedata(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_writedata),
        .out_unnamed_avgpooling18_avgpooling1_avm_address(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_address),
        .out_unnamed_avgpooling18_avgpooling1_avm_burstcount(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_burstcount),
        .out_unnamed_avgpooling18_avgpooling1_avm_byteenable(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_byteenable),
        .out_unnamed_avgpooling18_avgpooling1_avm_enable(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_enable),
        .out_unnamed_avgpooling18_avgpooling1_avm_read(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_read),
        .out_unnamed_avgpooling18_avgpooling1_avm_write(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_write),
        .out_unnamed_avgpooling18_avgpooling1_avm_writedata(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_writedata),
        .out_unnamed_avgpooling19_avgpooling1_avm_address(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_address),
        .out_unnamed_avgpooling19_avgpooling1_avm_burstcount(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_burstcount),
        .out_unnamed_avgpooling19_avgpooling1_avm_byteenable(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_byteenable),
        .out_unnamed_avgpooling19_avgpooling1_avm_enable(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_enable),
        .out_unnamed_avgpooling19_avgpooling1_avm_read(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_read),
        .out_unnamed_avgpooling19_avgpooling1_avm_write(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_write),
        .out_unnamed_avgpooling19_avgpooling1_avm_writedata(bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_writedata),
        .out_valid_out(bb_avgpooling1_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avgpooling1_B4_branch(BLACKBOX,47)
    avgpooling1_B4_branch theavgpooling1_B4_branch (
        .in_exitcond1139_pop29(bb_avgpooling1_B4_stall_region_out_exitcond1139_pop29),
        .in_exitcond1432_pop25(bb_avgpooling1_B4_stall_region_out_exitcond1432_pop25),
        .in_masked(bb_avgpooling1_B4_stall_region_out_masked),
        .in_memdep(bb_avgpooling1_B4_stall_region_out_memdep),
        .in_notcmp1540_pop30(bb_avgpooling1_B4_stall_region_out_notcmp1540_pop30),
        .in_notcmp2034_pop26(bb_avgpooling1_B4_stall_region_out_notcmp2034_pop26),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_avgpooling1_B4_stall_region_out_valid_out),
        .out_exitcond1139_pop29(avgpooling1_B4_branch_out_exitcond1139_pop29),
        .out_exitcond1432_pop25(avgpooling1_B4_branch_out_exitcond1432_pop25),
        .out_memdep(avgpooling1_B4_branch_out_memdep),
        .out_notcmp1540_pop30(avgpooling1_B4_branch_out_notcmp1540_pop30),
        .out_notcmp2034_pop26(avgpooling1_B4_branch_out_notcmp2034_pop26),
        .out_stall_out(avgpooling1_B4_branch_out_stall_out),
        .out_valid_out_0(avgpooling1_B4_branch_out_valid_out_0),
        .out_valid_out_1(avgpooling1_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exitcond1139_pop29(GPOUT,50)
    assign out_exitcond1139_pop29 = avgpooling1_B4_branch_out_exitcond1139_pop29;

    // out_exitcond1432_pop25(GPOUT,51)
    assign out_exitcond1432_pop25 = avgpooling1_B4_branch_out_exitcond1432_pop25;

    // out_exiting_stall_out(GPOUT,52)
    assign out_exiting_stall_out = bb_avgpooling1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpooling13_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,53)
    assign out_exiting_valid_out = bb_avgpooling1_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpooling13_exiting_valid_out;

    // out_lsu_memdep_o_active(GPOUT,54)
    assign out_lsu_memdep_o_active = bb_avgpooling1_B4_stall_region_out_lsu_memdep_o_active;

    // out_memdep(GPOUT,55)
    assign out_memdep = avgpooling1_B4_branch_out_memdep;

    // out_memdep_avgpooling1_avm_address(GPOUT,56)
    assign out_memdep_avgpooling1_avm_address = bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_address;

    // out_memdep_avgpooling1_avm_burstcount(GPOUT,57)
    assign out_memdep_avgpooling1_avm_burstcount = bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_burstcount;

    // out_memdep_avgpooling1_avm_byteenable(GPOUT,58)
    assign out_memdep_avgpooling1_avm_byteenable = bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_byteenable;

    // out_memdep_avgpooling1_avm_enable(GPOUT,59)
    assign out_memdep_avgpooling1_avm_enable = bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_enable;

    // out_memdep_avgpooling1_avm_read(GPOUT,60)
    assign out_memdep_avgpooling1_avm_read = bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_read;

    // out_memdep_avgpooling1_avm_write(GPOUT,61)
    assign out_memdep_avgpooling1_avm_write = bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_write;

    // out_memdep_avgpooling1_avm_writedata(GPOUT,62)
    assign out_memdep_avgpooling1_avm_writedata = bb_avgpooling1_B4_stall_region_out_memdep_avgpooling1_avm_writedata;

    // out_notcmp1540_pop30(GPOUT,63)
    assign out_notcmp1540_pop30 = avgpooling1_B4_branch_out_notcmp1540_pop30;

    // out_notcmp2034_pop26(GPOUT,64)
    assign out_notcmp2034_pop26 = avgpooling1_B4_branch_out_notcmp2034_pop26;

    // out_stall_in_0(GPOUT,65)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,66)
    assign out_stall_out_0 = avgpooling1_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,67)
    assign out_stall_out_1 = avgpooling1_B4_merge_out_stall_out_1;

    // out_unnamed_avgpooling16_avgpooling1_avm_address(GPOUT,68)
    assign out_unnamed_avgpooling16_avgpooling1_avm_address = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_address;

    // out_unnamed_avgpooling16_avgpooling1_avm_burstcount(GPOUT,69)
    assign out_unnamed_avgpooling16_avgpooling1_avm_burstcount = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_burstcount;

    // out_unnamed_avgpooling16_avgpooling1_avm_byteenable(GPOUT,70)
    assign out_unnamed_avgpooling16_avgpooling1_avm_byteenable = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_byteenable;

    // out_unnamed_avgpooling16_avgpooling1_avm_enable(GPOUT,71)
    assign out_unnamed_avgpooling16_avgpooling1_avm_enable = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_enable;

    // out_unnamed_avgpooling16_avgpooling1_avm_read(GPOUT,72)
    assign out_unnamed_avgpooling16_avgpooling1_avm_read = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_read;

    // out_unnamed_avgpooling16_avgpooling1_avm_write(GPOUT,73)
    assign out_unnamed_avgpooling16_avgpooling1_avm_write = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_write;

    // out_unnamed_avgpooling16_avgpooling1_avm_writedata(GPOUT,74)
    assign out_unnamed_avgpooling16_avgpooling1_avm_writedata = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling16_avgpooling1_avm_writedata;

    // out_unnamed_avgpooling17_avgpooling1_avm_address(GPOUT,75)
    assign out_unnamed_avgpooling17_avgpooling1_avm_address = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_address;

    // out_unnamed_avgpooling17_avgpooling1_avm_burstcount(GPOUT,76)
    assign out_unnamed_avgpooling17_avgpooling1_avm_burstcount = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_burstcount;

    // out_unnamed_avgpooling17_avgpooling1_avm_byteenable(GPOUT,77)
    assign out_unnamed_avgpooling17_avgpooling1_avm_byteenable = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_byteenable;

    // out_unnamed_avgpooling17_avgpooling1_avm_enable(GPOUT,78)
    assign out_unnamed_avgpooling17_avgpooling1_avm_enable = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_enable;

    // out_unnamed_avgpooling17_avgpooling1_avm_read(GPOUT,79)
    assign out_unnamed_avgpooling17_avgpooling1_avm_read = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_read;

    // out_unnamed_avgpooling17_avgpooling1_avm_write(GPOUT,80)
    assign out_unnamed_avgpooling17_avgpooling1_avm_write = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_write;

    // out_unnamed_avgpooling17_avgpooling1_avm_writedata(GPOUT,81)
    assign out_unnamed_avgpooling17_avgpooling1_avm_writedata = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling17_avgpooling1_avm_writedata;

    // out_unnamed_avgpooling18_avgpooling1_avm_address(GPOUT,82)
    assign out_unnamed_avgpooling18_avgpooling1_avm_address = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_address;

    // out_unnamed_avgpooling18_avgpooling1_avm_burstcount(GPOUT,83)
    assign out_unnamed_avgpooling18_avgpooling1_avm_burstcount = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_burstcount;

    // out_unnamed_avgpooling18_avgpooling1_avm_byteenable(GPOUT,84)
    assign out_unnamed_avgpooling18_avgpooling1_avm_byteenable = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_byteenable;

    // out_unnamed_avgpooling18_avgpooling1_avm_enable(GPOUT,85)
    assign out_unnamed_avgpooling18_avgpooling1_avm_enable = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_enable;

    // out_unnamed_avgpooling18_avgpooling1_avm_read(GPOUT,86)
    assign out_unnamed_avgpooling18_avgpooling1_avm_read = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_read;

    // out_unnamed_avgpooling18_avgpooling1_avm_write(GPOUT,87)
    assign out_unnamed_avgpooling18_avgpooling1_avm_write = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_write;

    // out_unnamed_avgpooling18_avgpooling1_avm_writedata(GPOUT,88)
    assign out_unnamed_avgpooling18_avgpooling1_avm_writedata = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling18_avgpooling1_avm_writedata;

    // out_unnamed_avgpooling19_avgpooling1_avm_address(GPOUT,89)
    assign out_unnamed_avgpooling19_avgpooling1_avm_address = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_address;

    // out_unnamed_avgpooling19_avgpooling1_avm_burstcount(GPOUT,90)
    assign out_unnamed_avgpooling19_avgpooling1_avm_burstcount = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_burstcount;

    // out_unnamed_avgpooling19_avgpooling1_avm_byteenable(GPOUT,91)
    assign out_unnamed_avgpooling19_avgpooling1_avm_byteenable = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_byteenable;

    // out_unnamed_avgpooling19_avgpooling1_avm_enable(GPOUT,92)
    assign out_unnamed_avgpooling19_avgpooling1_avm_enable = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_enable;

    // out_unnamed_avgpooling19_avgpooling1_avm_read(GPOUT,93)
    assign out_unnamed_avgpooling19_avgpooling1_avm_read = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_read;

    // out_unnamed_avgpooling19_avgpooling1_avm_write(GPOUT,94)
    assign out_unnamed_avgpooling19_avgpooling1_avm_write = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_write;

    // out_unnamed_avgpooling19_avgpooling1_avm_writedata(GPOUT,95)
    assign out_unnamed_avgpooling19_avgpooling1_avm_writedata = bb_avgpooling1_B4_stall_region_out_unnamed_avgpooling19_avgpooling1_avm_writedata;

    // out_valid_in_0(GPOUT,96)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,97)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,98)
    assign out_valid_out_0 = avgpooling1_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,99)
    assign out_valid_out_1 = avgpooling1_B4_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,101)
    assign out_pipeline_valid_out = bb_avgpooling1_B4_stall_region_out_pipeline_valid_out;

endmodule
