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

// SystemVerilog created from bb_conv2_B8_stall_region
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_bb_B8_stall_region (
    output wire [0:0] out_exitcond22128_pop9728,
    output wire [0:0] out_exitcond25119_pop9423,
    output wire [0:0] out_exitcond2891_pop8616,
    output wire [0:0] out_exitcond3171_pop827,
    output wire [0:0] out_memdep_35,
    output wire [0:0] out_notcmp36138_pop1052,
    output wire [0:0] out_notcmp41130_pop9830,
    output wire [0:0] out_notcmp46122_pop9526,
    output wire [0:0] out_notcmp5195_pop8720,
    output wire [0:0] out_notcmp5676_pop8312,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_feedback_out_57,
    input wire [0:0] in_feedback_stall_in_57,
    output wire [0:0] out_feedback_valid_out_57,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond19137_pop1041,
    input wire [0:0] in_exitcond22128_pop9728,
    input wire [0:0] in_exitcond25119_pop9423,
    input wire [0:0] in_exitcond2891_pop8616,
    input wire [0:0] in_exitcond3171_pop827,
    input wire [0:0] in_memdep_35,
    input wire [0:0] in_notcmp36138_pop1052,
    input wire [0:0] in_notcmp41130_pop9830,
    input wire [0:0] in_notcmp46122_pop9526,
    input wire [0:0] in_notcmp5195_pop8720,
    input wire [0:0] in_notcmp5676_pop8312,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push57_conv20_out_feedback_out_57;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push57_conv20_out_feedback_valid_out_57;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push57_conv20_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push57_conv20_out_valid_out;
    wire [10:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_push57_conv20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_push57_conv20_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;


    // SE_out_i_llvm_fpga_push_i1_memdep_phi2_push57_conv20(STALLENABLE,21)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_push57_conv20_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_push57_conv20_wireValid = i_llvm_fpga_push_i1_memdep_phi2_push57_conv20_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi2_push57_conv20(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_57@20000000
    // out out_feedback_valid_out_57@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    conv2_i_llvm_fpga_push_i1_memdep_phi2_push57_0 thei_llvm_fpga_push_i1_memdep_phi2_push57_conv20 (
        .in_data_in(bubble_select_stall_entry_g),
        .in_exitcond19137_pop1041(bubble_select_stall_entry_b),
        .in_feedback_stall_in_57(in_feedback_stall_in_57),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi2_push57_conv20_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_data_out(),
        .out_feedback_out_57(i_llvm_fpga_push_i1_memdep_phi2_push57_conv20_out_feedback_out_57),
        .out_feedback_valid_out_57(i_llvm_fpga_push_i1_memdep_phi2_push57_conv20_out_feedback_valid_out_57),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi2_push57_conv20_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi2_push57_conv20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (in_stall_in) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_push_i1_memdep_phi2_push57_conv20_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,17)
    assign bubble_join_stall_entry_q = {in_notcmp5676_pop8312, in_notcmp5195_pop8720, in_notcmp46122_pop9526, in_notcmp41130_pop9830, in_notcmp36138_pop1052, in_memdep_35, in_exitcond3171_pop827, in_exitcond2891_pop8616, in_exitcond25119_pop9423, in_exitcond22128_pop9728, in_exitcond19137_pop1041};

    // bubble_select_stall_entry(BITSELECT,18)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[3:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[4:4]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[5:5]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[6:6]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[7:7]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[8:8]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[9:9]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[10:10]);

    // dupName_0_sync_out_x(GPOUT,2)@0
    assign out_exitcond22128_pop9728 = bubble_select_stall_entry_c;
    assign out_exitcond25119_pop9423 = bubble_select_stall_entry_d;
    assign out_exitcond2891_pop8616 = bubble_select_stall_entry_e;
    assign out_exitcond3171_pop827 = bubble_select_stall_entry_f;
    assign out_memdep_35 = bubble_select_stall_entry_g;
    assign out_notcmp36138_pop1052 = bubble_select_stall_entry_h;
    assign out_notcmp41130_pop9830 = bubble_select_stall_entry_i;
    assign out_notcmp46122_pop9526 = bubble_select_stall_entry_j;
    assign out_notcmp5195_pop8720 = bubble_select_stall_entry_k;
    assign out_notcmp5676_pop8312 = bubble_select_stall_entry_l;
    assign out_valid_out = SE_stall_entry_V0;

    // feedback_out_57_sync(GPOUT,5)
    assign out_feedback_out_57 = i_llvm_fpga_push_i1_memdep_phi2_push57_conv20_out_feedback_out_57;

    // feedback_valid_out_57_sync(GPOUT,7)
    assign out_feedback_valid_out_57 = i_llvm_fpga_push_i1_memdep_phi2_push57_conv20_out_feedback_valid_out_57;

    // sync_out(GPOUT,14)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
