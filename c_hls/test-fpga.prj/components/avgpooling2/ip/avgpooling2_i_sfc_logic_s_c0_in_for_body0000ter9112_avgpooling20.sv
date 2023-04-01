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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body6_avgpooling2s_c0_enter9112_avgpooling20
// Created for function/kernel avgpooling2
// SystemVerilog created on Sat Apr  1 13:10:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpooling2_i_sfc_logic_s_c0_in_for_body0000ter9112_avgpooling20 (
    output wire [0:0] out_c0_exi196_0_tpl,
    output wire [31:0] out_c0_exi196_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_avgpooling21,
    input wire [0:0] in_c0_eni490_0_tpl,
    input wire [31:0] in_c0_eni490_1_tpl,
    input wire [31:0] in_c0_eni490_2_tpl,
    input wire [31:0] in_c0_eni490_3_tpl,
    input wire [31:0] in_c0_eni490_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add_i_avgpooling217_sel_x_b;
    wire [31:0] c_i32_039_recast_x_q;
    wire [31:0] c_i32_143_recast_x_q;
    wire [31:0] c_i32_25442_recast_x_q;
    wire [31:0] c_i32_25538_recast_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_dsdk_ip_adapt_bitjoin1_x_q;
    wire [31:0] c_i32_146_q;
    wire [31:0] c_i32_213909504048_q;
    wire [31:0] c_i32_214748364847_q;
    wire [31:0] c_i32_240_q;
    wire [31:0] c_i32_419430449_q;
    wire [31:0] c_i32_838860741_q;
    wire [7:0] c_i8_225_q;
    wire [31:0] i_add17_avgpooling22_out_primWireOut;
    wire [31:0] i_add25_avgpooling23_out_primWireOut;
    wire [31:0] i_add34_avgpooling24_out_primWireOut;
    wire [32:0] i_add_i_avgpooling217_a;
    wire [32:0] i_add_i_avgpooling217_b;
    logic [32:0] i_add_i_avgpooling217_o;
    wire [32:0] i_add_i_avgpooling217_q;
    wire [31:0] i_and1_i_avgpooling213_q;
    wire [8:0] i_and1_i_avgpooling213_vt_const_31_q;
    wire [31:0] i_and1_i_avgpooling213_vt_join_q;
    wire [22:0] i_and1_i_avgpooling213_vt_select_22_b;
    wire [31:0] i_and49_i_avgpooling231_q;
    wire [23:0] i_and_i_avgpooling27_vt_const_31_q;
    wire [31:0] i_and_i_avgpooling27_vt_join_q;
    wire [7:0] i_and_i_avgpooling27_vt_select_7_b;
    wire [33:0] i_cmp19_i_avgpooling218_a;
    wire [33:0] i_cmp19_i_avgpooling218_b;
    logic [33:0] i_cmp19_i_avgpooling218_o;
    wire [0:0] i_cmp19_i_avgpooling218_c;
    wire [33:0] i_cmp24_i_avgpooling221_a;
    wire [33:0] i_cmp24_i_avgpooling221_b;
    logic [33:0] i_cmp24_i_avgpooling221_o;
    wire [0:0] i_cmp24_i_avgpooling221_c;
    wire [0:0] i_cmp9_i_avgpooling210_qi;
    reg [0:0] i_cmp9_i_avgpooling210_q;
    wire [0:0] i_cmp_i_avgpooling28_qi;
    reg [0:0] i_cmp_i_avgpooling28_q;
    wire [0:0] i_cond46_i_avgpooling229_s;
    reg [31:0] i_cond46_i_avgpooling229_q;
    wire [22:0] i_cond46_i_avgpooling229_vt_const_22_q;
    wire [31:0] i_cond46_i_avgpooling229_vt_join_q;
    wire [7:0] i_cond46_i_avgpooling229_vt_select_30_b;
    wire [0:0] i_cond48_i_avgpooling230_s;
    reg [31:0] i_cond48_i_avgpooling230_q;
    wire [21:0] i_cond48_i_avgpooling230_vt_const_21_q;
    wire [31:0] i_cond48_i_avgpooling230_vt_join_q;
    wire [0:0] i_cond48_i_avgpooling230_vt_select_22_b;
    wire [0:0] i_cond_i_avgpooling228_s;
    reg [31:0] i_cond_i_avgpooling228_q;
    wire [31:0] i_cond_i_avgpooling228_vt_join_q;
    wire [30:0] i_cond_i_avgpooling228_vt_select_30_b;
    wire [0:0] i_or2833_i_avgpooling223_q;
    wire [0:0] i_or32_i_avgpooling220_q;
    wire [0:0] i_or3834_i_avgpooling227_qi;
    reg [0:0] i_or3834_i_avgpooling227_q;
    wire [31:0] i_or50_i_avgpooling232_vt_join_q;
    wire [8:0] i_or50_i_avgpooling232_vt_select_30_b;
    wire [31:0] i_or51_i_avgpooling233_q;
    wire [31:0] i_shr_i_avgpooling26_vt_join_q;
    wire [8:0] i_shr_i_avgpooling26_vt_select_8_b;
    wire [0:0] i_tobool_i_avgpooling214_qi;
    reg [0:0] i_tobool_i_avgpooling214_q;
    wire [0:0] i_unnamed_avgpooling212_s;
    reg [31:0] i_unnamed_avgpooling212_q;
    wire [31:0] i_unnamed_avgpooling212_vt_join_q;
    wire [30:0] i_unnamed_avgpooling212_vt_select_31_b;
    wire [0:0] i_unnamed_avgpooling216_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid91_i_shr_i_avgpooling20_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid93_i_shr_i_avgpooling20_shift_x_q;
    wire [0:0] rightShiftStage0_uid95_i_shr_i_avgpooling20_shift_x_s;
    reg [31:0] rightShiftStage0_uid95_i_shr_i_avgpooling20_shift_x_q;
    wire [29:0] rightShiftStage1Idx1Rng2_uid96_i_shr_i_avgpooling20_shift_x_b;
    wire [1:0] rightShiftStage1Idx1Pad2_uid97_i_shr_i_avgpooling20_shift_x_q;
    wire [31:0] rightShiftStage1Idx1_uid98_i_shr_i_avgpooling20_shift_x_q;
    wire [0:0] rightShiftStage1_uid100_i_shr_i_avgpooling20_shift_x_s;
    reg [31:0] rightShiftStage1_uid100_i_shr_i_avgpooling20_shift_x_q;
    wire [27:0] rightShiftStage2Idx1Rng4_uid101_i_shr_i_avgpooling20_shift_x_b;
    wire [3:0] rightShiftStage2Idx1Pad4_uid102_i_shr_i_avgpooling20_shift_x_q;
    wire [31:0] rightShiftStage2Idx1_uid103_i_shr_i_avgpooling20_shift_x_q;
    wire [0:0] rightShiftStage2_uid105_i_shr_i_avgpooling20_shift_x_s;
    reg [31:0] rightShiftStage2_uid105_i_shr_i_avgpooling20_shift_x_q;
    wire [15:0] rightShiftStage3Idx1Rng16_uid106_i_shr_i_avgpooling20_shift_x_b;
    wire [15:0] rightShiftStage3Idx1Pad16_uid107_i_shr_i_avgpooling20_shift_x_q;
    wire [31:0] rightShiftStage3Idx1_uid108_i_shr_i_avgpooling20_shift_x_q;
    wire [0:0] rightShiftStage3_uid110_i_shr_i_avgpooling20_shift_x_s;
    reg [31:0] rightShiftStage3_uid110_i_shr_i_avgpooling20_shift_x_q;
    wire [7:0] i_and_i_avgpooling27_BitSelect_for_a_b;
    wire [31:0] i_and_i_avgpooling27_join_q;
    wire [7:0] i_or50_i_avgpooling232_BitSelect_for_a_b;
    wire [0:0] i_or50_i_avgpooling232_BitSelect_for_b_b;
    wire [31:0] i_or50_i_avgpooling232_join_q;
    reg [0:0] redist0_i_or50_i_avgpooling232_BitSelect_for_b_b_1_q;
    reg [0:0] redist1_i_or32_i_avgpooling220_q_1_q;
    reg [0:0] redist2_i_cmp_i_avgpooling28_q_2_q;
    reg [0:0] redist3_i_cmp9_i_avgpooling210_q_3_q;
    reg [0:0] redist3_i_cmp9_i_avgpooling210_q_3_delay_0;
    reg [31:0] redist4_i_and_i_avgpooling27_vt_join_q_1_q;
    reg [31:0] redist5_i_add34_avgpooling24_out_primWireOut_1_q;
    reg [31:0] redist6_i_add34_avgpooling24_out_primWireOut_3_q;
    reg [31:0] redist6_i_add34_avgpooling24_out_primWireOut_3_delay_0;
    reg [31:0] redist7_i_add25_avgpooling23_out_primWireOut_1_q;
    reg [31:0] redist8_i_add17_avgpooling22_out_primWireOut_1_q;
    reg [0:0] redist11_sync_together52_aunroll_x_in_i_valid_70_q;
    reg [31:0] redist12_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_q_2_q;
    reg [31:0] redist12_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_q_2_delay_0;
    reg [31:0] redist13_bgTrunc_i_add_i_avgpooling217_sel_x_b_1_q;
    reg [31:0] redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_inputreg0_q;
    reg [31:0] redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_outputreg0_q;
    wire redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_reset0;
    wire [31:0] redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_ia;
    wire [4:0] redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_aa;
    wire [4:0] redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_ab;
    wire [31:0] redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_iq;
    wire [31:0] redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_q;
    wire [4:0] redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_rdcnt_q;
    (* preserve *) reg [4:0] redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_rdcnt_i;
    (* preserve *) reg redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_rdcnt_eq;
    reg [4:0] redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_wraddr_q;
    wire [5:0] redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_last_q;
    wire [5:0] redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_cmp_b;
    wire [0:0] redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_cmp_q;
    (* dont_merge *) reg [0:0] redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_cmpReg_q;
    wire [0:0] redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_notEnable_q;
    wire [0:0] redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_nor_q;
    (* dont_merge *) reg [0:0] redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_sticky_ena_q;
    wire [0:0] redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_enaAnd_q;
    reg [31:0] redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_inputreg0_q;
    reg [31:0] redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_outputreg0_q;
    wire redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_reset0;
    wire [31:0] redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_ia;
    wire [5:0] redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_aa;
    wire [5:0] redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_ab;
    wire [31:0] redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_iq;
    wire [31:0] redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_q;
    wire [5:0] redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_rdcnt_q;
    (* preserve *) reg [5:0] redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_rdcnt_i;
    (* preserve *) reg redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_rdcnt_eq;
    reg [5:0] redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_wraddr_q;
    wire [6:0] redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_last_q;
    wire [6:0] redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_cmp_b;
    wire [0:0] redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_cmp_q;
    reg [0:0] redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_cmpReg_q;
    wire [0:0] redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_notEnable_q;
    wire [0:0] redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_nor_q;
    reg [0:0] redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_sticky_ena_q;
    wire [0:0] redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist11_sync_together52_aunroll_x_in_i_valid_70(DELAY,127)
    dspba_delay_ver #( .width(1), .depth(70), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist11_sync_together52_aunroll_x_in_i_valid_70 ( .xin(in_i_valid), .xout(redist11_sync_together52_aunroll_x_in_i_valid_70_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i8_225(CONSTANT,28)
    assign c_i8_225_q = $unsigned(8'b00000010);

    // i_and_i_avgpooling27_vt_const_31(CONSTANT,39)
    assign i_and_i_avgpooling27_vt_const_31_q = $unsigned(24'b000000000000000000000000);

    // i_cond46_i_avgpooling229_vt_const_22(CONSTANT,47)
    assign i_cond46_i_avgpooling229_vt_const_22_q = $unsigned(23'b00000000000000000000000);

    // rightShiftStage3Idx1Pad16_uid107_i_shr_i_avgpooling20_shift_x(CONSTANT,106)
    assign rightShiftStage3Idx1Pad16_uid107_i_shr_i_avgpooling20_shift_x_q = $unsigned(16'b0000000000000000);

    // rightShiftStage3Idx1Rng16_uid106_i_shr_i_avgpooling20_shift_x(BITSELECT,105)@238
    assign rightShiftStage3Idx1Rng16_uid106_i_shr_i_avgpooling20_shift_x_b = rightShiftStage2_uid105_i_shr_i_avgpooling20_shift_x_q[31:16];

    // rightShiftStage3Idx1_uid108_i_shr_i_avgpooling20_shift_x(BITJOIN,107)@238
    assign rightShiftStage3Idx1_uid108_i_shr_i_avgpooling20_shift_x_q = {rightShiftStage3Idx1Pad16_uid107_i_shr_i_avgpooling20_shift_x_q, rightShiftStage3Idx1Rng16_uid106_i_shr_i_avgpooling20_shift_x_b};

    // rightShiftStage2Idx1Pad4_uid102_i_shr_i_avgpooling20_shift_x(CONSTANT,101)
    assign rightShiftStage2Idx1Pad4_uid102_i_shr_i_avgpooling20_shift_x_q = $unsigned(4'b0000);

    // rightShiftStage2Idx1Rng4_uid101_i_shr_i_avgpooling20_shift_x(BITSELECT,100)@238
    assign rightShiftStage2Idx1Rng4_uid101_i_shr_i_avgpooling20_shift_x_b = rightShiftStage1_uid100_i_shr_i_avgpooling20_shift_x_q[31:4];

    // rightShiftStage2Idx1_uid103_i_shr_i_avgpooling20_shift_x(BITJOIN,102)@238
    assign rightShiftStage2Idx1_uid103_i_shr_i_avgpooling20_shift_x_q = {rightShiftStage2Idx1Pad4_uid102_i_shr_i_avgpooling20_shift_x_q, rightShiftStage2Idx1Rng4_uid101_i_shr_i_avgpooling20_shift_x_b};

    // rightShiftStage1Idx1Pad2_uid97_i_shr_i_avgpooling20_shift_x(CONSTANT,96)
    assign rightShiftStage1Idx1Pad2_uid97_i_shr_i_avgpooling20_shift_x_q = $unsigned(2'b00);

    // rightShiftStage1Idx1Rng2_uid96_i_shr_i_avgpooling20_shift_x(BITSELECT,95)@238
    assign rightShiftStage1Idx1Rng2_uid96_i_shr_i_avgpooling20_shift_x_b = rightShiftStage0_uid95_i_shr_i_avgpooling20_shift_x_q[31:2];

    // rightShiftStage1Idx1_uid98_i_shr_i_avgpooling20_shift_x(BITJOIN,97)@238
    assign rightShiftStage1Idx1_uid98_i_shr_i_avgpooling20_shift_x_q = {rightShiftStage1Idx1Pad2_uid97_i_shr_i_avgpooling20_shift_x_q, rightShiftStage1Idx1Rng2_uid96_i_shr_i_avgpooling20_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid91_i_shr_i_avgpooling20_shift_x(BITSELECT,90)@238
    assign rightShiftStage0Idx1Rng1_uid91_i_shr_i_avgpooling20_shift_x_b = redist5_i_add34_avgpooling24_out_primWireOut_1_q[31:1];

    // rightShiftStage0Idx1_uid93_i_shr_i_avgpooling20_shift_x(BITJOIN,92)@238
    assign rightShiftStage0Idx1_uid93_i_shr_i_avgpooling20_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid91_i_shr_i_avgpooling20_shift_x_b};

    // redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_notEnable(LOGICAL,150)
    assign redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_notEnable_q = $unsigned(~ (VCC_q));

    // redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_nor(LOGICAL,151)
    assign redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_nor_q = ~ (redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_notEnable_q | redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_sticky_ena_q);

    // redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_last(CONSTANT,147)
    assign redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_last_q = $unsigned(7'b0100111);

    // redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_cmp(LOGICAL,148)
    assign redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_cmp_b = {1'b0, redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_rdcnt_q};
    assign redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_cmp_q = $unsigned(redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_last_q == redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_cmp_b ? 1'b1 : 1'b0);

    // redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_cmpReg(REG,149)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_cmpReg_q <= $unsigned(redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_cmp_q);
        end
    end

    // redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_sticky_ena(REG,152)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_nor_q == 1'b1)
        begin
            redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_sticky_ena_q <= $unsigned(redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_cmpReg_q);
        end
    end

    // redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_enaAnd(LOGICAL,153)
    assign redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_enaAnd_q = redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_sticky_ena_q & VCC_q;

    // redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_rdcnt(COUNTER,145)
    // low=0, high=40, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_rdcnt_i <= 6'd0;
            redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_rdcnt_i == 6'd39)
            begin
                redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_rdcnt_eq <= 1'b0;
            end
            if (redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_rdcnt_eq == 1'b1)
            begin
                redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_rdcnt_i <= $unsigned(redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_rdcnt_i) + $unsigned(6'd24);
            end
            else
            begin
                redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_rdcnt_i <= $unsigned(redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_rdcnt_q = redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_rdcnt_i[5:0];

    // redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_inputreg0(DELAY,142)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_inputreg0_q <= '0;
        end
        else
        begin
            redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_inputreg0_q <= $unsigned(in_c0_eni490_4_tpl);
        end
    end

    // redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_wraddr(REG,146)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_wraddr_q <= $unsigned(6'b101000);
        end
        else
        begin
            redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_wraddr_q <= $unsigned(redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_rdcnt_q);
        end
    end

    // redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem(DUALMEM,144)
    assign redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_ia = $unsigned(redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_inputreg0_q);
    assign redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_aa = redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_wraddr_q;
    assign redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_ab = redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_rdcnt_q;
    assign redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(41),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(41),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_dmem (
        .clocken1(redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_reset0),
        .clock1(clock),
        .address_a(redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_aa),
        .data_a(redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_ab),
        .q_b(redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_q = redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_iq[31:0];

    // redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_outputreg0(DELAY,143)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_outputreg0_q <= '0;
        end
        else
        begin
            redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_outputreg0_q <= $unsigned(redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_mem_q);
        end
    end

    // redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_notEnable(LOGICAL,138)
    assign redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_nor(LOGICAL,139)
    assign redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_nor_q = ~ (redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_notEnable_q | redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_sticky_ena_q);

    // redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_last(CONSTANT,135)
    assign redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_last_q = $unsigned(6'b010001);

    // redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_cmp(LOGICAL,136)
    assign redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_cmp_b = {1'b0, redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_rdcnt_q};
    assign redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_cmp_q = $unsigned(redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_last_q == redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_cmp_b ? 1'b1 : 1'b0);

    // redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_cmpReg(REG,137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_cmpReg_q <= $unsigned(redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_cmp_q);
        end
    end

    // redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_sticky_ena(REG,140)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_nor_q == 1'b1)
        begin
            redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_sticky_ena_q <= $unsigned(redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_cmpReg_q);
        end
    end

    // redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_enaAnd(LOGICAL,141)
    assign redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_enaAnd_q = redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_sticky_ena_q & VCC_q;

    // redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_rdcnt(COUNTER,133)
    // low=0, high=18, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_rdcnt_i <= 5'd0;
            redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_rdcnt_i == 5'd17)
            begin
                redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_rdcnt_eq <= 1'b0;
            end
            if (redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_rdcnt_eq == 1'b1)
            begin
                redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_rdcnt_i <= $unsigned(redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_rdcnt_i) + $unsigned(5'd14);
            end
            else
            begin
                redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_rdcnt_i <= $unsigned(redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_rdcnt_q = redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_rdcnt_i[4:0];

    // redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_inputreg0(DELAY,130)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_inputreg0_q <= '0;
        end
        else
        begin
            redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_inputreg0_q <= $unsigned(in_c0_eni490_3_tpl);
        end
    end

    // redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_wraddr(REG,134)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_wraddr_q <= $unsigned(5'b10010);
        end
        else
        begin
            redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_wraddr_q <= $unsigned(redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_rdcnt_q);
        end
    end

    // redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem(DUALMEM,132)
    assign redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_ia = $unsigned(redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_inputreg0_q);
    assign redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_aa = redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_wraddr_q;
    assign redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_ab = redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_rdcnt_q;
    assign redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(19),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(19),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_dmem (
        .clocken1(redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_reset0),
        .clock1(clock),
        .address_a(redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_aa),
        .data_a(redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_ab),
        .q_b(redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_q = redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_iq[31:0];

    // redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_outputreg0(DELAY,131)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_outputreg0_q <= '0;
        end
        else
        begin
            redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_outputreg0_q <= $unsigned(redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_mem_q);
        end
    end

    // i_add17_avgpooling22(BLACKBOX,29)@172
    // out out_primWireOut@193
    avgpooling2_flt_i_sfc_logic_s_c0_in_for_00003a0054c2a6344c246w65 thei_add17_avgpooling22 (
        .in_0(in_c0_eni490_1_tpl),
        .in_1(in_c0_eni490_2_tpl),
        .out_primWireOut(i_add17_avgpooling22_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_add17_avgpooling22_out_primWireOut_1(DELAY,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_add17_avgpooling22_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist8_i_add17_avgpooling22_out_primWireOut_1_q <= $unsigned(i_add17_avgpooling22_out_primWireOut);
        end
    end

    // i_add25_avgpooling23(BLACKBOX,30)@194
    // out out_primWireOut@215
    avgpooling2_flt_i_sfc_logic_s_c0_in_for_00003a0054c2a6344c246w65 thei_add25_avgpooling23 (
        .in_0(redist8_i_add17_avgpooling22_out_primWireOut_1_q),
        .in_1(redist9_sync_together52_aunroll_x_in_c0_eni490_3_tpl_22_outputreg0_q),
        .out_primWireOut(i_add25_avgpooling23_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_add25_avgpooling23_out_primWireOut_1(DELAY,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_add25_avgpooling23_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist7_i_add25_avgpooling23_out_primWireOut_1_q <= $unsigned(i_add25_avgpooling23_out_primWireOut);
        end
    end

    // i_add34_avgpooling24(BLACKBOX,31)@216
    // out out_primWireOut@237
    avgpooling2_flt_i_sfc_logic_s_c0_in_for_00003a0054c2a6344c246w65 thei_add34_avgpooling24 (
        .in_0(redist7_i_add25_avgpooling23_out_primWireOut_1_q),
        .in_1(redist10_sync_together52_aunroll_x_in_c0_eni490_4_tpl_44_outputreg0_q),
        .out_primWireOut(i_add34_avgpooling24_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_add34_avgpooling24_out_primWireOut_1(DELAY,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_add34_avgpooling24_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist5_i_add34_avgpooling24_out_primWireOut_1_q <= $unsigned(i_add34_avgpooling24_out_primWireOut);
        end
    end

    // rightShiftStage0_uid95_i_shr_i_avgpooling20_shift_x(MUX,94)@238
    assign rightShiftStage0_uid95_i_shr_i_avgpooling20_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid95_i_shr_i_avgpooling20_shift_x_s or redist5_i_add34_avgpooling24_out_primWireOut_1_q or rightShiftStage0Idx1_uid93_i_shr_i_avgpooling20_shift_x_q)
    begin
        unique case (rightShiftStage0_uid95_i_shr_i_avgpooling20_shift_x_s)
            1'b0 : rightShiftStage0_uid95_i_shr_i_avgpooling20_shift_x_q = redist5_i_add34_avgpooling24_out_primWireOut_1_q;
            1'b1 : rightShiftStage0_uid95_i_shr_i_avgpooling20_shift_x_q = rightShiftStage0Idx1_uid93_i_shr_i_avgpooling20_shift_x_q;
            default : rightShiftStage0_uid95_i_shr_i_avgpooling20_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid100_i_shr_i_avgpooling20_shift_x(MUX,99)@238
    assign rightShiftStage1_uid100_i_shr_i_avgpooling20_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid100_i_shr_i_avgpooling20_shift_x_s or rightShiftStage0_uid95_i_shr_i_avgpooling20_shift_x_q or rightShiftStage1Idx1_uid98_i_shr_i_avgpooling20_shift_x_q)
    begin
        unique case (rightShiftStage1_uid100_i_shr_i_avgpooling20_shift_x_s)
            1'b0 : rightShiftStage1_uid100_i_shr_i_avgpooling20_shift_x_q = rightShiftStage0_uid95_i_shr_i_avgpooling20_shift_x_q;
            1'b1 : rightShiftStage1_uid100_i_shr_i_avgpooling20_shift_x_q = rightShiftStage1Idx1_uid98_i_shr_i_avgpooling20_shift_x_q;
            default : rightShiftStage1_uid100_i_shr_i_avgpooling20_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage2_uid105_i_shr_i_avgpooling20_shift_x(MUX,104)@238
    assign rightShiftStage2_uid105_i_shr_i_avgpooling20_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid105_i_shr_i_avgpooling20_shift_x_s or rightShiftStage1_uid100_i_shr_i_avgpooling20_shift_x_q or rightShiftStage2Idx1_uid103_i_shr_i_avgpooling20_shift_x_q)
    begin
        unique case (rightShiftStage2_uid105_i_shr_i_avgpooling20_shift_x_s)
            1'b0 : rightShiftStage2_uid105_i_shr_i_avgpooling20_shift_x_q = rightShiftStage1_uid100_i_shr_i_avgpooling20_shift_x_q;
            1'b1 : rightShiftStage2_uid105_i_shr_i_avgpooling20_shift_x_q = rightShiftStage2Idx1_uid103_i_shr_i_avgpooling20_shift_x_q;
            default : rightShiftStage2_uid105_i_shr_i_avgpooling20_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage3_uid110_i_shr_i_avgpooling20_shift_x(MUX,109)@238
    assign rightShiftStage3_uid110_i_shr_i_avgpooling20_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid110_i_shr_i_avgpooling20_shift_x_s or rightShiftStage2_uid105_i_shr_i_avgpooling20_shift_x_q or rightShiftStage3Idx1_uid108_i_shr_i_avgpooling20_shift_x_q)
    begin
        unique case (rightShiftStage3_uid110_i_shr_i_avgpooling20_shift_x_s)
            1'b0 : rightShiftStage3_uid110_i_shr_i_avgpooling20_shift_x_q = rightShiftStage2_uid105_i_shr_i_avgpooling20_shift_x_q;
            1'b1 : rightShiftStage3_uid110_i_shr_i_avgpooling20_shift_x_q = rightShiftStage3Idx1_uid108_i_shr_i_avgpooling20_shift_x_q;
            default : rightShiftStage3_uid110_i_shr_i_avgpooling20_shift_x_q = 32'b0;
        endcase
    end

    // i_shr_i_avgpooling26_vt_select_8(BITSELECT,71)@238
    assign i_shr_i_avgpooling26_vt_select_8_b = rightShiftStage3_uid110_i_shr_i_avgpooling20_shift_x_q[8:0];

    // i_shr_i_avgpooling26_vt_join(BITJOIN,70)@238
    assign i_shr_i_avgpooling26_vt_join_q = {i_cond46_i_avgpooling229_vt_const_22_q, i_shr_i_avgpooling26_vt_select_8_b};

    // i_and_i_avgpooling27_BitSelect_for_a(BITSELECT,111)@238
    assign i_and_i_avgpooling27_BitSelect_for_a_b = i_shr_i_avgpooling26_vt_join_q[7:0];

    // i_and_i_avgpooling27_join(BITJOIN,112)@238
    assign i_and_i_avgpooling27_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_and_i_avgpooling27_BitSelect_for_a_b};

    // i_and_i_avgpooling27_vt_select_7(BITSELECT,41)@238
    assign i_and_i_avgpooling27_vt_select_7_b = i_and_i_avgpooling27_join_q[7:0];

    // i_and_i_avgpooling27_vt_join(BITJOIN,40)@238
    assign i_and_i_avgpooling27_vt_join_q = {i_and_i_avgpooling27_vt_const_31_q, i_and_i_avgpooling27_vt_select_7_b};

    // redist4_i_and_i_avgpooling27_vt_join_q_1(DELAY,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_and_i_avgpooling27_vt_join_q_1_q <= '0;
        end
        else
        begin
            redist4_i_and_i_avgpooling27_vt_join_q_1_q <= $unsigned(i_and_i_avgpooling27_vt_join_q);
        end
    end

    // c_i32_039_recast_x(CONSTANT,3)
    assign c_i32_039_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_240(CONSTANT,24)
    assign c_i32_240_q = $unsigned(32'b11111111111111111111111111111110);

    // i_cmp9_i_avgpooling210(LOGICAL,44)@238 + 1
    assign i_cmp9_i_avgpooling210_qi = $unsigned(i_and_i_avgpooling27_vt_join_q == c_i32_039_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp9_i_avgpooling210_delay ( .xin(i_cmp9_i_avgpooling210_qi), .xout(i_cmp9_i_avgpooling210_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_avgpooling212(MUX,73)@239
    assign i_unnamed_avgpooling212_s = i_cmp9_i_avgpooling210_q;
    always @(i_unnamed_avgpooling212_s or c_i32_240_q or c_i32_039_recast_x_q)
    begin
        unique case (i_unnamed_avgpooling212_s)
            1'b0 : i_unnamed_avgpooling212_q = c_i32_240_q;
            1'b1 : i_unnamed_avgpooling212_q = c_i32_039_recast_x_q;
            default : i_unnamed_avgpooling212_q = 32'b0;
        endcase
    end

    // i_unnamed_avgpooling212_vt_select_31(BITSELECT,76)@239
    assign i_unnamed_avgpooling212_vt_select_31_b = i_unnamed_avgpooling212_q[31:1];

    // i_unnamed_avgpooling212_vt_join(BITJOIN,75)@239
    assign i_unnamed_avgpooling212_vt_join_q = {i_unnamed_avgpooling212_vt_select_31_b, GND_q};

    // i_add_i_avgpooling217(ADD,32)@239
    assign i_add_i_avgpooling217_a = {1'b0, i_unnamed_avgpooling212_vt_join_q};
    assign i_add_i_avgpooling217_b = {1'b0, redist4_i_and_i_avgpooling27_vt_join_q_1_q};
    assign i_add_i_avgpooling217_o = $unsigned(i_add_i_avgpooling217_a) + $unsigned(i_add_i_avgpooling217_b);
    assign i_add_i_avgpooling217_q = i_add_i_avgpooling217_o[32:0];

    // bgTrunc_i_add_i_avgpooling217_sel_x(BITSELECT,2)@239
    assign bgTrunc_i_add_i_avgpooling217_sel_x_b = i_add_i_avgpooling217_q[31:0];

    // redist13_bgTrunc_i_add_i_avgpooling217_sel_x_b_1(DELAY,129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_bgTrunc_i_add_i_avgpooling217_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist13_bgTrunc_i_add_i_avgpooling217_sel_x_b_1_q <= $unsigned(bgTrunc_i_add_i_avgpooling217_sel_x_b);
        end
    end

    // redist6_i_add34_avgpooling24_out_primWireOut_3(DELAY,122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_add34_avgpooling24_out_primWireOut_3_delay_0 <= '0;
            redist6_i_add34_avgpooling24_out_primWireOut_3_q <= '0;
        end
        else
        begin
            redist6_i_add34_avgpooling24_out_primWireOut_3_delay_0 <= $unsigned(redist5_i_add34_avgpooling24_out_primWireOut_1_q);
            redist6_i_add34_avgpooling24_out_primWireOut_3_q <= redist6_i_add34_avgpooling24_out_primWireOut_3_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_dsdk_ip_adapt_bitjoin1_x(BITJOIN,9)@240
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_225_q, redist13_bgTrunc_i_add_i_avgpooling217_sel_x_b_1_q, redist6_i_add34_avgpooling24_out_primWireOut_3_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x(CHOOSEBITS,8)@240
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[31:31], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[15:15], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[14:14], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[13:13], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[12:12], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[11:11], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[10:10], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[9:9], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[7:7], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[6:6], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[5:5], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[4:4], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[3:3], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[2:2], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[1:1], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_a[0:0]};

    // redist12_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_q_2(DELAY,128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_q_2_delay_0 <= '0;
            redist12_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_q_2_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_q);
            redist12_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_q_2_q <= redist12_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_q_2_delay_0;
        end
    end

    // c_i32_214748364847(CONSTANT,22)
    assign c_i32_214748364847_q = $unsigned(32'b10000000000000000000000000000000);

    // c_i32_146(CONSTANT,20)
    assign c_i32_146_q = $unsigned(32'b11111111111111111111111111111111);

    // c_i32_25442_recast_x(CONSTANT,5)
    assign c_i32_25442_recast_x_q = $unsigned(32'b00000000000000000000000011111110);

    // i_cmp19_i_avgpooling218(COMPARE,42)@240 + 1
    assign i_cmp19_i_avgpooling218_a = $unsigned({{2{c_i32_25442_recast_x_q[31]}}, c_i32_25442_recast_x_q});
    assign i_cmp19_i_avgpooling218_b = $unsigned({{2{redist13_bgTrunc_i_add_i_avgpooling217_sel_x_b_1_q[31]}}, redist13_bgTrunc_i_add_i_avgpooling217_sel_x_b_1_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp19_i_avgpooling218_o <= 34'b0;
        end
        else
        begin
            i_cmp19_i_avgpooling218_o <= $unsigned($signed(i_cmp19_i_avgpooling218_a) - $signed(i_cmp19_i_avgpooling218_b));
        end
    end
    assign i_cmp19_i_avgpooling218_c[0] = i_cmp19_i_avgpooling218_o[33];

    // c_i32_25538_recast_x(CONSTANT,6)
    assign c_i32_25538_recast_x_q = $unsigned(32'b00000000000000000000000011111111);

    // i_cmp_i_avgpooling28(LOGICAL,45)@239 + 1
    assign i_cmp_i_avgpooling28_qi = $unsigned(redist4_i_and_i_avgpooling27_vt_join_q_1_q == c_i32_25538_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp_i_avgpooling28_delay ( .xin(i_cmp_i_avgpooling28_qi), .xout(i_cmp_i_avgpooling28_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist2_i_cmp_i_avgpooling28_q_2(DELAY,118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_cmp_i_avgpooling28_q_2_q <= '0;
        end
        else
        begin
            redist2_i_cmp_i_avgpooling28_q_2_q <= $unsigned(i_cmp_i_avgpooling28_q);
        end
    end

    // i_or32_i_avgpooling220(LOGICAL,61)@241
    assign i_or32_i_avgpooling220_q = redist2_i_cmp_i_avgpooling28_q_2_q | i_cmp19_i_avgpooling218_c;

    // c_i32_143_recast_x(CONSTANT,4)
    assign c_i32_143_recast_x_q = $unsigned(32'b00000000000000000000000000000001);

    // i_cmp24_i_avgpooling221(COMPARE,43)@240 + 1
    assign i_cmp24_i_avgpooling221_a = $unsigned({{2{redist13_bgTrunc_i_add_i_avgpooling217_sel_x_b_1_q[31]}}, redist13_bgTrunc_i_add_i_avgpooling217_sel_x_b_1_q});
    assign i_cmp24_i_avgpooling221_b = $unsigned({{2{c_i32_143_recast_x_q[31]}}, c_i32_143_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp24_i_avgpooling221_o <= 34'b0;
        end
        else
        begin
            i_cmp24_i_avgpooling221_o <= $unsigned($signed(i_cmp24_i_avgpooling221_a) - $signed(i_cmp24_i_avgpooling221_b));
        end
    end
    assign i_cmp24_i_avgpooling221_c[0] = i_cmp24_i_avgpooling221_o[33];

    // redist3_i_cmp9_i_avgpooling210_q_3(DELAY,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_cmp9_i_avgpooling210_q_3_delay_0 <= '0;
            redist3_i_cmp9_i_avgpooling210_q_3_q <= '0;
        end
        else
        begin
            redist3_i_cmp9_i_avgpooling210_q_3_delay_0 <= $unsigned(i_cmp9_i_avgpooling210_q);
            redist3_i_cmp9_i_avgpooling210_q_3_q <= redist3_i_cmp9_i_avgpooling210_q_3_delay_0;
        end
    end

    // i_or2833_i_avgpooling223(LOGICAL,60)@241
    assign i_or2833_i_avgpooling223_q = redist3_i_cmp9_i_avgpooling210_q_3_q | i_cmp24_i_avgpooling221_c;

    // i_or3834_i_avgpooling227(LOGICAL,62)@241 + 1
    assign i_or3834_i_avgpooling227_qi = i_or2833_i_avgpooling223_q | i_or32_i_avgpooling220_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_or3834_i_avgpooling227_delay ( .xin(i_or3834_i_avgpooling227_qi), .xout(i_or3834_i_avgpooling227_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_cond_i_avgpooling228(MUX,56)@242
    assign i_cond_i_avgpooling228_s = i_or3834_i_avgpooling227_q;
    always @(i_cond_i_avgpooling228_s or c_i32_146_q or c_i32_214748364847_q)
    begin
        unique case (i_cond_i_avgpooling228_s)
            1'b0 : i_cond_i_avgpooling228_q = c_i32_146_q;
            1'b1 : i_cond_i_avgpooling228_q = c_i32_214748364847_q;
            default : i_cond_i_avgpooling228_q = 32'b0;
        endcase
    end

    // i_cond_i_avgpooling228_vt_select_30(BITSELECT,59)@242
    assign i_cond_i_avgpooling228_vt_select_30_b = i_cond_i_avgpooling228_q[30:0];

    // i_cond_i_avgpooling228_vt_join(BITJOIN,58)@242
    assign i_cond_i_avgpooling228_vt_join_q = {VCC_q, i_cond_i_avgpooling228_vt_select_30_b};

    // i_and49_i_avgpooling231(LOGICAL,37)@242
    assign i_and49_i_avgpooling231_q = i_cond_i_avgpooling228_vt_join_q & redist12_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or33_shuffle_i_avgpooling20_NO_NAME_x_q_2_q;

    // c_i32_213909504048(CONSTANT,21)
    assign c_i32_213909504048_q = $unsigned(32'b01111111100000000000000000000000);

    // redist1_i_or32_i_avgpooling220_q_1(DELAY,117)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_or32_i_avgpooling220_q_1_q <= '0;
        end
        else
        begin
            redist1_i_or32_i_avgpooling220_q_1_q <= $unsigned(i_or32_i_avgpooling220_q);
        end
    end

    // i_cond46_i_avgpooling229(MUX,46)@242
    assign i_cond46_i_avgpooling229_s = redist1_i_or32_i_avgpooling220_q_1_q;
    always @(i_cond46_i_avgpooling229_s or c_i32_039_recast_x_q or c_i32_213909504048_q)
    begin
        unique case (i_cond46_i_avgpooling229_s)
            1'b0 : i_cond46_i_avgpooling229_q = c_i32_039_recast_x_q;
            1'b1 : i_cond46_i_avgpooling229_q = c_i32_213909504048_q;
            default : i_cond46_i_avgpooling229_q = 32'b0;
        endcase
    end

    // i_cond46_i_avgpooling229_vt_select_30(BITSELECT,50)@242
    assign i_cond46_i_avgpooling229_vt_select_30_b = i_cond46_i_avgpooling229_q[30:23];

    // i_cond46_i_avgpooling229_vt_join(BITJOIN,49)@242
    assign i_cond46_i_avgpooling229_vt_join_q = {GND_q, i_cond46_i_avgpooling229_vt_select_30_b, i_cond46_i_avgpooling229_vt_const_22_q};

    // i_or50_i_avgpooling232_BitSelect_for_a(BITSELECT,113)@242
    assign i_or50_i_avgpooling232_BitSelect_for_a_b = i_cond46_i_avgpooling229_vt_join_q[30:23];

    // i_and1_i_avgpooling213_vt_const_31(CONSTANT,34)
    assign i_and1_i_avgpooling213_vt_const_31_q = $unsigned(9'b000000000);

    // c_i32_419430449(CONSTANT,26)
    assign c_i32_419430449_q = $unsigned(32'b00000000010000000000000000000000);

    // c_i32_838860741(CONSTANT,27)
    assign c_i32_838860741_q = $unsigned(32'b00000000011111111111111111111111);

    // i_and1_i_avgpooling213(LOGICAL,33)@240
    assign i_and1_i_avgpooling213_q = redist6_i_add34_avgpooling24_out_primWireOut_3_q & c_i32_838860741_q;

    // i_and1_i_avgpooling213_vt_select_22(BITSELECT,36)@240
    assign i_and1_i_avgpooling213_vt_select_22_b = i_and1_i_avgpooling213_q[22:0];

    // i_and1_i_avgpooling213_vt_join(BITJOIN,35)@240
    assign i_and1_i_avgpooling213_vt_join_q = {i_and1_i_avgpooling213_vt_const_31_q, i_and1_i_avgpooling213_vt_select_22_b};

    // i_tobool_i_avgpooling214(LOGICAL,72)@240 + 1
    assign i_tobool_i_avgpooling214_qi = $unsigned(i_and1_i_avgpooling213_vt_join_q != c_i32_039_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_tobool_i_avgpooling214_delay ( .xin(i_tobool_i_avgpooling214_qi), .xout(i_tobool_i_avgpooling214_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_avgpooling216(LOGICAL,77)@241
    assign i_unnamed_avgpooling216_q = i_tobool_i_avgpooling214_q & redist2_i_cmp_i_avgpooling28_q_2_q;

    // i_cond48_i_avgpooling230(MUX,51)@241
    assign i_cond48_i_avgpooling230_s = i_unnamed_avgpooling216_q;
    always @(i_cond48_i_avgpooling230_s or c_i32_039_recast_x_q or c_i32_419430449_q)
    begin
        unique case (i_cond48_i_avgpooling230_s)
            1'b0 : i_cond48_i_avgpooling230_q = c_i32_039_recast_x_q;
            1'b1 : i_cond48_i_avgpooling230_q = c_i32_419430449_q;
            default : i_cond48_i_avgpooling230_q = 32'b0;
        endcase
    end

    // i_cond48_i_avgpooling230_vt_select_22(BITSELECT,55)@241
    assign i_cond48_i_avgpooling230_vt_select_22_b = i_cond48_i_avgpooling230_q[22:22];

    // i_cond48_i_avgpooling230_vt_join(BITJOIN,54)@241
    assign i_cond48_i_avgpooling230_vt_join_q = {i_and1_i_avgpooling213_vt_const_31_q, i_cond48_i_avgpooling230_vt_select_22_b, i_cond48_i_avgpooling230_vt_const_21_q};

    // i_or50_i_avgpooling232_BitSelect_for_b(BITSELECT,114)@241
    assign i_or50_i_avgpooling232_BitSelect_for_b_b = i_cond48_i_avgpooling230_vt_join_q[22:22];

    // redist0_i_or50_i_avgpooling232_BitSelect_for_b_b_1(DELAY,116)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_or50_i_avgpooling232_BitSelect_for_b_b_1_q <= '0;
        end
        else
        begin
            redist0_i_or50_i_avgpooling232_BitSelect_for_b_b_1_q <= $unsigned(i_or50_i_avgpooling232_BitSelect_for_b_b);
        end
    end

    // i_or50_i_avgpooling232_join(BITJOIN,115)@242
    assign i_or50_i_avgpooling232_join_q = {GND_q, i_or50_i_avgpooling232_BitSelect_for_a_b, redist0_i_or50_i_avgpooling232_BitSelect_for_b_b_1_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q};

    // i_or50_i_avgpooling232_vt_select_30(BITSELECT,67)@242
    assign i_or50_i_avgpooling232_vt_select_30_b = i_or50_i_avgpooling232_join_q[30:22];

    // i_cond48_i_avgpooling230_vt_const_21(CONSTANT,52)
    assign i_cond48_i_avgpooling230_vt_const_21_q = $unsigned(22'b0000000000000000000000);

    // i_or50_i_avgpooling232_vt_join(BITJOIN,66)@242
    assign i_or50_i_avgpooling232_vt_join_q = {GND_q, i_or50_i_avgpooling232_vt_select_30_b, i_cond48_i_avgpooling230_vt_const_21_q};

    // i_or51_i_avgpooling233(LOGICAL,68)@242
    assign i_or51_i_avgpooling233_q = i_or50_i_avgpooling232_vt_join_q | i_and49_i_avgpooling231_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,15)@242
    assign out_c0_exi196_0_tpl = GND_q;
    assign out_c0_exi196_1_tpl = i_or51_i_avgpooling233_q;
    assign out_o_valid = redist11_sync_together52_aunroll_x_in_i_valid_70_q;
    assign out_unnamed_avgpooling21 = GND_q;

endmodule
