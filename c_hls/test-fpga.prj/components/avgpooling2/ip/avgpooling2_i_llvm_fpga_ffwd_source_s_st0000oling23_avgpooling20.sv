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

// SystemVerilog created from i_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling20
// Created for function/kernel avgpooling2
// SystemVerilog created on Sat Apr  1 13:10:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpooling2_i_llvm_fpga_ffwd_source_s_st0000oling23_avgpooling20 (
    output wire [0:0] out_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_0_0_0_tpl,
    output wire [63:0] out_intel_reserved_ffwd_0_0_1_tpl,
    input wire [0:0] in_predicate_in,
    input wire [63:0] in_src_data_in_0_0_0_tpl,
    input wire [63:0] in_src_data_in_0_0_1_tpl,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire clock,
    input wire resetn
    );

    wire [127:0] dsdk_ip_adapt_bitjoin2_q;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling21_predicate_in;
    wire i_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling21_predicate_in_bitsignaltemp;
    wire [127:0] i_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling21_source_in;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling21_valid_in;
    wire i_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling21_valid_in_bitsignaltemp;
    wire [127:0] i_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling21_source_out;
    wire [63:0] ip_dsdk_adapt_bitselect5_b;
    wire [63:0] ip_dsdk_adapt_bitselect7_b;


    // dupName_0_sync_out_x(GPOUT,2)@2
    assign out_valid_out = in_valid_in;

    // dsdk_ip_adapt_bitjoin2(BITJOIN,5)
    assign dsdk_ip_adapt_bitjoin2_q = {in_src_data_in_0_0_1_tpl, in_src_data_in_0_0_0_tpl};

    // i_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling21(EXTIFACE,6)
    assign i_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling21_predicate_in = in_predicate_in;
    assign i_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling21_source_in = dsdk_ip_adapt_bitjoin2_q;
    assign i_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling21_valid_in = in_valid_in;
    assign i_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling21_predicate_in_bitsignaltemp = i_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling21_predicate_in[0];
    assign i_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling21_valid_in_bitsignaltemp = i_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling21_valid_in[0];
    acl_ffwdsrc #(
        .MAX_LATENCY(1),
        .MIN_CAPACITY(1),
        .WIDTH(128)
    ) thei_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling21 (
        .predicate_in(i_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling21_predicate_in_bitsignaltemp),
        .source_in(dsdk_ip_adapt_bitjoin2_q),
        .valid_in(i_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling21_valid_in_bitsignaltemp),
        .source_out(i_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling21_source_out),
        .clock(clock)
    );

    // ip_dsdk_adapt_bitselect7(BITSELECT,8)
    assign ip_dsdk_adapt_bitselect7_b = i_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling21_source_out[127:64];

    // ip_dsdk_adapt_bitselect5(BITSELECT,7)
    assign ip_dsdk_adapt_bitselect5_b = i_llvm_fpga_ffwd_source_s_struct_avgpooling2_yaxqeay199mqeay144m_z_inputss_unnamed_avgpooling23_avgpooling21_source_out[63:0];

    // regfree_osync_aunroll_x(GPOUT,3)
    assign out_intel_reserved_ffwd_0_0_0_tpl = ip_dsdk_adapt_bitselect5_b;
    assign out_intel_reserved_ffwd_0_0_1_tpl = ip_dsdk_adapt_bitselect7_b;

    // sync_out(GPOUT,12)@20000000
    assign out_stall_out = in_stall_in;

endmodule
