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

// SystemVerilog created from bb_relu3_B1_start_stall_region
// Created for function/kernel relu3
// SystemVerilog created on Sat Apr  1 13:10:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module relu3_bb_B1_start_stall_region (
    output wire [0:0] out_iord_bl_call_relu3_o_fifoready,
    output wire [0:0] out_iord_bl_call_relu3_o_fifoalmost_full,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_valid_out,
    input wire [127:0] in_iord_bl_call_relu3_i_fifodata,
    input wire [0:0] in_iord_bl_call_relu3_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_relu31_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_relu31_exiting_stall_out,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_out_o_data_0_tpl;
    wire [63:0] i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_out_o_data_1_tpl;
    wire [0:0] i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_out_iord_bl_call_relu3_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_out_iord_bl_call_relu3_o_fifoready;
    wire [0:0] i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_relu31_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_relu31_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_out_pipeline_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu33_relu34_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu33_relu34_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu33_relu34_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_out_valid_out;
    wire [0:0] relu3_B1_start_merge_reg_out_stall_out;
    wire [0:0] relu3_B1_start_merge_reg_out_valid_out;
    wire [127:0] bubble_join_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_b;
    wire [63:0] bubble_select_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_c;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_b;
    wire [0:0] SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_V0;
    wire [0:0] SE_out_relu3_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_relu3_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_relu3_B1_start_merge_reg_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,64)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = relu3_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // relu3_B1_start_merge_reg(BLACKBOX,35)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    relu3_B1_start_merge_reg therelu3_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_relu3_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(relu3_B1_start_merge_reg_out_stall_out),
        .out_valid_out(relu3_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_relu3_B1_start_merge_reg(STALLENABLE,63)
    // Valid signal propagation
    assign SE_out_relu3_B1_start_merge_reg_V0 = SE_out_relu3_B1_start_merge_reg_wireValid;
    // Backward Stall generation
    assign SE_out_relu3_B1_start_merge_reg_backStall = i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_out_o_stall | ~ (SE_out_relu3_B1_start_merge_reg_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_relu3_B1_start_merge_reg_wireValid = relu3_B1_start_merge_reg_out_valid_out;

    // i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x(BLACKBOX,6)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_relu31_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_relu31_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    relu3_i_sfc_s_c0_in_wt_entry_s_c0_enter1_relu30 thei_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x (
        .in_unnamed_relu30_0_tpl(GND_q),
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_backStall),
        .in_i_valid(SE_out_relu3_B1_start_merge_reg_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_relu31_exiting_stall_out(i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_relu31_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_relu31_exiting_valid_out(i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_relu31_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x(STALLENABLE,55)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_backStall = i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_out_stall_out | ~ (SE_out_i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31(BLACKBOX,19)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    relu3_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_relu31 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31(STALLENABLE,61)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_backStall = i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35(STALLENABLE,59)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_and0 = i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_wireValid = i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu33_relu34_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_and0;

    // bubble_join_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x(BITJOIN,42)
    assign bubble_join_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_q = {i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x(BITSELECT,43)
    assign bubble_select_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_q[127:64]);

    // i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35(BLACKBOX,18)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    relu3_i_llvm_fpga_ffwd_source_p1024f32_unnamed_4_relu30 thei_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bubble_select_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_V1),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu33_relu34(BLACKBOX,17)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    relu3_i_llvm_fpga_ffwd_source_p1024f32_unnamed_3_relu30 thei_llvm_fpga_ffwd_source_p1024f32_unnamed_relu33_relu34 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(bubble_select_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_V0),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu33_relu34_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu33_relu34_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu33_relu34_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x(STALLENABLE,53)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu33_relu34_out_stall_out) & SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_wireValid) | SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_out_stall_out) & SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_wireValid) | SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_StallValid = SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_backStall & SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_toReg0 = SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_StallValid & SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_toReg1 = SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_StallValid & SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_or0 = SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_consumed1 & SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_or0);
    assign SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_backStall = SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_V0 = SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_V1 = SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_wireValid = i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31(BITJOIN,48)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31(BITSELECT,49)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_q[0:0]);

    // i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x(BLACKBOX,5)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_relu3_o_fifoalmost_full@20000000
    // out out_iord_bl_call_relu3_o_fifoready@20000000
    // out out_o_stall@20000000
    relu3_i_iord_bl_call_unnamed_relu32_relu30 thei_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_b),
        .in_i_stall(SE_out_i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_V0),
        .in_iord_bl_call_relu3_i_fifodata(in_iord_bl_call_relu3_i_fifodata),
        .in_iord_bl_call_relu3_i_fifovalid(in_iord_bl_call_relu3_i_fifovalid),
        .out_o_data_0_tpl(i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_out_o_data_1_tpl),
        .out_iord_bl_call_relu3_o_fifoalmost_full(i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_out_iord_bl_call_relu3_o_fifoalmost_full),
        .out_iord_bl_call_relu3_o_fifoready(i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_out_iord_bl_call_relu3_o_fifoready),
        .out_o_stall(i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,2)
    assign out_iord_bl_call_relu3_o_fifoready = i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_out_iord_bl_call_relu3_o_fifoready;
    assign out_iord_bl_call_relu3_o_fifoalmost_full = i_iord_bl_call_relu3_unnamed_relu32_relu32_aunroll_x_out_iord_bl_call_relu3_o_fifoalmost_full;

    // dupName_0_regfree_osync_x(GPOUT,3)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_out_intel_reserved_ffwd_1_0;

    // dupName_0_sync_out_x(GPOUT,4)@2
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu34_relu35_V0;

    // ext_sig_sync_out(GPOUT,13)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_relu31_exiting_valid_out = i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_relu31_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_relu31_exiting_stall_out = i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going4_relu31_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,15)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_relu31_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,33)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_relu3s_c0_enter1_relu30_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,34)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1024f32_unnamed_relu33_relu34_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,39)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
