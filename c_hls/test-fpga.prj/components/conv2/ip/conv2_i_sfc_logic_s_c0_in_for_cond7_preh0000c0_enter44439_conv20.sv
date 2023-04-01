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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond7_preheader_conv2s_c0_enter44439_conv20
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_i_sfc_logic_s_c0_in_for_cond7_preh0000c0_enter44439_conv20 (
    output wire [0:0] out_c0_exi27_0_tpl,
    output wire [31:0] out_c0_exi27_1_tpl,
    output wire [31:0] out_c0_exi27_2_tpl,
    output wire [63:0] out_c0_exi27_3_tpl,
    output wire [63:0] out_c0_exi27_4_tpl,
    output wire [31:0] out_c0_exi27_5_tpl,
    output wire [63:0] out_c0_exi27_6_tpl,
    output wire [0:0] out_c0_exi27_7_tpl,
    output wire [0:0] out_c0_exi27_8_tpl,
    output wire [0:0] out_c0_exi27_9_tpl,
    output wire [0:0] out_c0_exi27_10_tpl,
    output wire [0:0] out_c0_exi27_11_tpl,
    output wire [0:0] out_c0_exi27_12_tpl,
    output wire [0:0] out_c0_exi27_13_tpl,
    output wire [0:0] out_c0_exi27_14_tpl,
    output wire [0:0] out_c0_exi27_15_tpl,
    output wire [0:0] out_c0_exi27_16_tpl,
    output wire [0:0] out_c0_exi27_17_tpl,
    output wire [31:0] out_c0_exi27_18_tpl,
    output wire [0:0] out_c0_exi27_19_tpl,
    output wire [0:0] out_c0_exi27_20_tpl,
    output wire [0:0] out_c0_exi27_21_tpl,
    output wire [31:0] out_c0_exi27_22_tpl,
    output wire [0:0] out_c0_exi27_23_tpl,
    output wire [0:0] out_c0_exi27_24_tpl,
    output wire [0:0] out_c0_exi27_25_tpl,
    output wire [31:0] out_c0_exi27_26_tpl,
    output wire [0:0] out_c0_exi27_27_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv21,
    input wire [0:0] in_c0_eni13_0_tpl,
    input wire [31:0] in_c0_eni13_1_tpl,
    input wire [0:0] in_c0_eni13_2_tpl,
    input wire [31:0] in_c0_eni13_3_tpl,
    input wire [0:0] in_c0_eni13_4_tpl,
    input wire [0:0] in_c0_eni13_5_tpl,
    input wire [0:0] in_c0_eni13_6_tpl,
    input wire [0:0] in_c0_eni13_7_tpl,
    input wire [0:0] in_c0_eni13_8_tpl,
    input wire [0:0] in_c0_eni13_9_tpl,
    input wire [0:0] in_c0_eni13_10_tpl,
    input wire [0:0] in_c0_eni13_11_tpl,
    input wire [31:0] in_c0_eni13_12_tpl,
    input wire [0:0] in_c0_eni13_13_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next24_conv220_sel_x_b;
    wire [31:0] bgTrunc_i_inc73_conv222_sel_x_b;
    wire [63:0] i_arrayidx34_conv20_dupName_0_trunc_sel_x_b;
    wire [1:0] i_arrayidx34_conv20_c_i2_01_x_q;
    wire [63:0] i_arrayidx64_conv20_dupName_4_trunc_sel_x_b;
    wire [63:0] i_idxprom25_conv26_sel_x_b;
    wire [63:0] i_idxprom61_conv24_sel_x_b;
    wire [31:0] c_i32_040_q;
    wire [31:0] c_i32_144_q;
    wire [4:0] c_i5_143_q;
    wire [4:0] c_i5_841_q;
    wire [5:0] i_fpga_indvars_iv_next24_conv220_a;
    wire [5:0] i_fpga_indvars_iv_next24_conv220_b;
    logic [5:0] i_fpga_indvars_iv_next24_conv220_o;
    wire [5:0] i_fpga_indvars_iv_next24_conv220_q;
    wire [63:0] i_idxprom25_conv26_vt_join_q;
    wire [31:0] i_idxprom25_conv26_vt_select_31_b;
    wire [63:0] i_idxprom61_conv24_vt_join_q;
    wire [31:0] i_idxprom61_conv24_vt_select_31_b;
    wire [32:0] i_inc73_conv222_a;
    wire [32:0] i_inc73_conv222_b;
    logic [32:0] i_inc73_conv222_o;
    wire [32:0] i_inc73_conv222_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a10a10f32_out04335_conv211_out_dest_data_out_3_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_bias4234_conv27_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_conv22_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_conv22_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_conv22_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_conv22_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond2888_pop33_conv230_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond2888_pop33_conv230_out_feedback_stall_out_33;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond3168_pop29_conv224_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond3168_pop29_conv224_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop21100_pop36_conv234_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop21100_pop36_conv234_out_feedback_stall_out_36;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop1883_pop32_conv228_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop1883_pop32_conv228_out_feedback_stall_out_32;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5192_pop34_conv232_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5192_pop34_conv232_out_feedback_stall_out_34;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5673_pop30_conv226_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5673_pop30_conv226_out_feedback_stall_out_30;
    wire [31:0] i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_feedback_stall_out_31;
    wire [31:0] i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_feedback_stall_out_27;
    wire [31:0] i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_feedback_stall_out_35;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv23_pop26_conv213_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv23_pop26_conv213_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_push_i1_exitcond2888_push33_conv231_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i1_exitcond2888_push33_conv231_out_feedback_valid_out_33;
    wire [0:0] i_llvm_fpga_push_i1_exitcond3168_push29_conv225_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i1_exitcond3168_push29_conv225_out_feedback_valid_out_29;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop21100_push36_conv235_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop21100_push36_conv235_out_feedback_valid_out_36;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_pop1883_push32_conv229_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_pop1883_push32_conv229_out_feedback_valid_out_32;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5192_push34_conv233_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5192_push34_conv233_out_feedback_valid_out_34;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5673_push30_conv227_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5673_push30_conv227_out_feedback_valid_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond49_conv219_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond49_conv219_out_feedback_valid_out_9;
    wire [31:0] i_llvm_fpga_push_i32_channel_039_pop1778_push31_conv217_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i32_channel_039_pop1778_push31_conv217_out_feedback_valid_out_31;
    wire [31:0] i_llvm_fpga_push_i32_col_037_push27_conv223_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i32_col_037_push27_conv223_out_feedback_valid_out_27;
    wire [31:0] i_llvm_fpga_push_i32_row_038_pop2096_push35_conv216_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i32_row_038_pop2096_push35_conv216_out_feedback_valid_out_35;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv23_push26_conv221_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv23_push26_conv221_out_feedback_valid_out_26;
    wire [0:0] i_notcmp46_conv218_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg17_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg18_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg19_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg20_q;
    wire [35:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_align_0_qint;
    wire [41:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_align_3_qint;
    wire [35:0] i_arrayidx64_conv20_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx64_conv20_mult_x_sums_align_0_qint;
    wire [44:0] i_arrayidx64_conv20_mult_x_sums_align_2_q;
    wire [44:0] i_arrayidx64_conv20_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx64_conv20_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx64_conv20_mult_x_sums_align_3_qint;
    wire [0:0] i_exitcond25_conv214_cmp_nsign_q;
    wire [15:0] highBBits_uid197_i_arrayidx64_conv20_dupName_0_mult_x_im0_b;
    wire [18:0] addsumAHighB_uid198_i_arrayidx64_conv20_dupName_0_mult_x_im0_a;
    wire [18:0] addsumAHighB_uid198_i_arrayidx64_conv20_dupName_0_mult_x_im0_b;
    logic [18:0] addsumAHighB_uid198_i_arrayidx64_conv20_dupName_0_mult_x_im0_o;
    wire [18:0] addsumAHighB_uid198_i_arrayidx64_conv20_dupName_0_mult_x_im0_q;
    wire [2:0] sR_bottomExtension_uid202_i_arrayidx64_conv20_dupName_0_mult_x_im0_q;
    wire [18:0] addsumAHighB_uid256_i_arrayidx64_conv20_dupName_0_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid256_i_arrayidx64_conv20_dupName_0_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid256_i_arrayidx64_conv20_dupName_0_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid256_i_arrayidx64_conv20_dupName_0_mult_x_im3_q;
    wire [20:0] add_uid257_i_arrayidx64_conv20_dupName_0_mult_x_im3_q;
    wire [23:0] sR_mergedSignalTM_uid262_i_arrayidx64_conv20_dupName_0_mult_x_im3_q;
    wire [18:0] addsumAHighB_uid314_i_arrayidx64_conv20_dupName_0_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid314_i_arrayidx64_conv20_dupName_0_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid314_i_arrayidx64_conv20_dupName_0_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid314_i_arrayidx64_conv20_dupName_0_mult_x_im6_q;
    wire [20:0] add_uid315_i_arrayidx64_conv20_dupName_0_mult_x_im6_q;
    wire [23:0] sR_mergedSignalTM_uid320_i_arrayidx64_conv20_dupName_0_mult_x_im6_q;
    wire [10:0] addsumAHighB_uid372_i_arrayidx64_conv20_dupName_0_mult_x_im9_a;
    wire [10:0] addsumAHighB_uid372_i_arrayidx64_conv20_dupName_0_mult_x_im9_b;
    logic [10:0] addsumAHighB_uid372_i_arrayidx64_conv20_dupName_0_mult_x_im9_o;
    wire [10:0] addsumAHighB_uid372_i_arrayidx64_conv20_dupName_0_mult_x_im9_q;
    wire [12:0] add_uid373_i_arrayidx64_conv20_dupName_0_mult_x_im9_q;
    wire [15:0] sR_mergedSignalTM_uid378_i_arrayidx64_conv20_dupName_0_mult_x_im9_q;
    wire [0:0] lowRangeB_uid417_i_arrayidx64_conv20_mult_x_im0_in;
    wire [0:0] lowRangeB_uid417_i_arrayidx64_conv20_mult_x_im0_b;
    wire [16:0] highBBits_uid418_i_arrayidx64_conv20_mult_x_im0_b;
    wire [18:0] addsumAHighB_uid419_i_arrayidx64_conv20_mult_x_im0_a;
    wire [18:0] addsumAHighB_uid419_i_arrayidx64_conv20_mult_x_im0_b;
    logic [18:0] addsumAHighB_uid419_i_arrayidx64_conv20_mult_x_im0_o;
    wire [18:0] addsumAHighB_uid419_i_arrayidx64_conv20_mult_x_im0_q;
    wire [19:0] add_uid420_i_arrayidx64_conv20_mult_x_im0_q;
    wire [14:0] highBBits_uid423_i_arrayidx64_conv20_mult_x_im0_b;
    wire [20:0] a_subconst_25_sumAHighB_uid424_i_arrayidx64_conv20_mult_x_im0_a;
    wire [20:0] a_subconst_25_sumAHighB_uid424_i_arrayidx64_conv20_mult_x_im0_b;
    logic [20:0] a_subconst_25_sumAHighB_uid424_i_arrayidx64_conv20_mult_x_im0_o;
    wire [20:0] a_subconst_25_sumAHighB_uid424_i_arrayidx64_conv20_mult_x_im0_q;
    wire [3:0] sR_bottomExtension_uid428_i_arrayidx64_conv20_mult_x_im0_q;
    wire [0:0] lowRangeB_uid486_i_arrayidx64_conv20_mult_x_im3_in;
    wire [0:0] lowRangeB_uid486_i_arrayidx64_conv20_mult_x_im3_b;
    wire [16:0] highBBits_uid487_i_arrayidx64_conv20_mult_x_im3_b;
    wire [18:0] addsumAHighB_uid488_i_arrayidx64_conv20_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid488_i_arrayidx64_conv20_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid488_i_arrayidx64_conv20_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid488_i_arrayidx64_conv20_mult_x_im3_q;
    wire [19:0] add_uid489_i_arrayidx64_conv20_mult_x_im3_q;
    wire [2:0] lowRangeB_uid491_i_arrayidx64_conv20_mult_x_im3_in;
    wire [2:0] lowRangeB_uid491_i_arrayidx64_conv20_mult_x_im3_b;
    wire [14:0] highBBits_uid492_i_arrayidx64_conv20_mult_x_im3_b;
    wire [20:0] a_subconst_25_sumAHighB_uid493_i_arrayidx64_conv20_mult_x_im3_a;
    wire [20:0] a_subconst_25_sumAHighB_uid493_i_arrayidx64_conv20_mult_x_im3_b;
    logic [20:0] a_subconst_25_sumAHighB_uid493_i_arrayidx64_conv20_mult_x_im3_o;
    wire [20:0] a_subconst_25_sumAHighB_uid493_i_arrayidx64_conv20_mult_x_im3_q;
    wire [23:0] a_subconst_25_uid494_i_arrayidx64_conv20_mult_x_im3_q;
    wire [22:0] sR_bottomRange_uid498_i_arrayidx64_conv20_mult_x_im3_in;
    wire [22:0] sR_bottomRange_uid498_i_arrayidx64_conv20_mult_x_im3_b;
    wire [26:0] sR_mergedSignalTM_uid499_i_arrayidx64_conv20_mult_x_im3_q;
    wire [0:0] lowRangeB_uid555_i_arrayidx64_conv20_mult_x_im6_in;
    wire [0:0] lowRangeB_uid555_i_arrayidx64_conv20_mult_x_im6_b;
    wire [16:0] highBBits_uid556_i_arrayidx64_conv20_mult_x_im6_b;
    wire [18:0] addsumAHighB_uid557_i_arrayidx64_conv20_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid557_i_arrayidx64_conv20_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid557_i_arrayidx64_conv20_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid557_i_arrayidx64_conv20_mult_x_im6_q;
    wire [19:0] add_uid558_i_arrayidx64_conv20_mult_x_im6_q;
    wire [2:0] lowRangeB_uid560_i_arrayidx64_conv20_mult_x_im6_in;
    wire [2:0] lowRangeB_uid560_i_arrayidx64_conv20_mult_x_im6_b;
    wire [14:0] highBBits_uid561_i_arrayidx64_conv20_mult_x_im6_b;
    wire [20:0] a_subconst_25_sumAHighB_uid562_i_arrayidx64_conv20_mult_x_im6_a;
    wire [20:0] a_subconst_25_sumAHighB_uid562_i_arrayidx64_conv20_mult_x_im6_b;
    logic [20:0] a_subconst_25_sumAHighB_uid562_i_arrayidx64_conv20_mult_x_im6_o;
    wire [20:0] a_subconst_25_sumAHighB_uid562_i_arrayidx64_conv20_mult_x_im6_q;
    wire [23:0] a_subconst_25_uid563_i_arrayidx64_conv20_mult_x_im6_q;
    wire [22:0] sR_bottomRange_uid567_i_arrayidx64_conv20_mult_x_im6_in;
    wire [22:0] sR_bottomRange_uid567_i_arrayidx64_conv20_mult_x_im6_b;
    wire [26:0] sR_mergedSignalTM_uid568_i_arrayidx64_conv20_mult_x_im6_q;
    wire [0:0] lowRangeB_uid624_i_arrayidx64_conv20_mult_x_im9_in;
    wire [0:0] lowRangeB_uid624_i_arrayidx64_conv20_mult_x_im9_b;
    wire [8:0] highBBits_uid625_i_arrayidx64_conv20_mult_x_im9_b;
    wire [10:0] addsumAHighB_uid626_i_arrayidx64_conv20_mult_x_im9_a;
    wire [10:0] addsumAHighB_uid626_i_arrayidx64_conv20_mult_x_im9_b;
    logic [10:0] addsumAHighB_uid626_i_arrayidx64_conv20_mult_x_im9_o;
    wire [10:0] addsumAHighB_uid626_i_arrayidx64_conv20_mult_x_im9_q;
    wire [11:0] add_uid627_i_arrayidx64_conv20_mult_x_im9_q;
    wire [2:0] lowRangeB_uid629_i_arrayidx64_conv20_mult_x_im9_in;
    wire [2:0] lowRangeB_uid629_i_arrayidx64_conv20_mult_x_im9_b;
    wire [6:0] highBBits_uid630_i_arrayidx64_conv20_mult_x_im9_b;
    wire [12:0] a_subconst_25_sumAHighB_uid631_i_arrayidx64_conv20_mult_x_im9_a;
    wire [12:0] a_subconst_25_sumAHighB_uid631_i_arrayidx64_conv20_mult_x_im9_b;
    logic [12:0] a_subconst_25_sumAHighB_uid631_i_arrayidx64_conv20_mult_x_im9_o;
    wire [12:0] a_subconst_25_sumAHighB_uid631_i_arrayidx64_conv20_mult_x_im9_q;
    wire [15:0] a_subconst_25_uid632_i_arrayidx64_conv20_mult_x_im9_q;
    wire [14:0] sR_bottomRange_uid636_i_arrayidx64_conv20_mult_x_im9_in;
    wire [14:0] sR_bottomRange_uid636_i_arrayidx64_conv20_mult_x_im9_b;
    wire [18:0] sR_mergedSignalTM_uid637_i_arrayidx64_conv20_mult_x_im9_q;
    wire [52:0] i_arrayidx34_conv20_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx34_conv20_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx34_conv20_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx34_conv20_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx34_conv20_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx34_conv20_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx34_conv20_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx34_conv20_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx34_conv20_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx34_conv20_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx34_conv20_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx64_conv20_dupName_0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx64_conv20_dupName_0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx64_conv20_dupName_0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx64_conv20_dupName_0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx64_conv20_dupName_0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx64_conv20_dupName_0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx64_conv20_dupName_0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx64_conv20_dupName_0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx64_conv20_dupName_0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx64_conv20_dupName_0_add_x_p2_of_2_q;
    wire [52:0] i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx64_conv20_dupName_1_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx64_conv20_dupName_1_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx64_conv20_dupName_1_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx64_conv20_dupName_1_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx64_conv20_dupName_1_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx64_conv20_dupName_1_add_x_BitJoin_for_q_q;
    wire [52:0] i_arrayidx64_conv20_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx64_conv20_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx64_conv20_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx64_conv20_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx64_conv20_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx64_conv20_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx64_conv20_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx64_conv20_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx64_conv20_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx64_conv20_add_x_p2_of_2_q;
    wire [10:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q;
    wire [52:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [20:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [20:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [20:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [18:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [52:0] i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p1_of_2_q;
    wire [23:0] i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p2_of_2_a;
    wire [23:0] i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p2_of_2_b;
    logic [23:0] i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p2_of_2_cin;
    wire [21:0] i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p2_of_2_q;
    wire [12:0] i_arrayidx34_conv20_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [17:0] i_arrayidx34_conv20_add_x_BitSelect_for_b_tessel0_2_b;
    wire [51:0] i_arrayidx34_conv20_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [11:0] i_arrayidx34_conv20_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx34_conv20_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx64_conv20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx64_conv20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx64_conv20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx64_conv20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [11:0] i_arrayidx64_conv20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b;
    wire [12:0] i_arrayidx64_conv20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx64_conv20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [12:0] i_arrayidx64_conv20_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [11:0] i_arrayidx64_conv20_add_x_BitSelect_for_b_tessel1_0_b;
    wire [12:0] i_arrayidx64_conv20_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [1:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b;
    wire [51:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [18:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [18:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    wire [2:0] i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b;
    wire [19:0] i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b;
    wire [51:0] i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [21:0] i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [21:0] i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    wire [17:0] i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_d;
    wire [9:0] i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_e;
    wire [17:0] i_arrayidx64_conv20_dupName_0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx64_conv20_dupName_0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx64_conv20_dupName_0_mult_x_bs1_merged_bit_select_d;
    wire [9:0] i_arrayidx64_conv20_dupName_0_mult_x_bs1_merged_bit_select_e;
    wire [51:0] i_arrayidx64_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx64_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [51:0] i_arrayidx34_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx34_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [27:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b;
    wire [7:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c;
    wire [9:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [17:0] i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    wire [24:0] i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b;
    wire [10:0] i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c;
    wire [6:0] i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [20:0] i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    wire [1:0] lowRangeB_uid254_i_arrayidx64_conv20_dupName_0_mult_x_im3_merged_bit_select_b;
    wire [15:0] lowRangeB_uid254_i_arrayidx64_conv20_dupName_0_mult_x_im3_merged_bit_select_c;
    wire [1:0] lowRangeB_uid312_i_arrayidx64_conv20_dupName_0_mult_x_im6_merged_bit_select_b;
    wire [15:0] lowRangeB_uid312_i_arrayidx64_conv20_dupName_0_mult_x_im6_merged_bit_select_c;
    wire [1:0] lowRangeB_uid370_i_arrayidx64_conv20_dupName_0_mult_x_im9_merged_bit_select_b;
    wire [7:0] lowRangeB_uid370_i_arrayidx64_conv20_dupName_0_mult_x_im9_merged_bit_select_c;
    reg [1:0] redist0_lowRangeB_uid370_i_arrayidx64_conv20_dupName_0_mult_x_im9_merged_bit_select_b_1_q;
    reg [1:0] redist1_lowRangeB_uid312_i_arrayidx64_conv20_dupName_0_mult_x_im6_merged_bit_select_b_1_q;
    reg [1:0] redist2_lowRangeB_uid254_i_arrayidx64_conv20_dupName_0_mult_x_im3_merged_bit_select_b_1_q;
    reg [20:0] redist3_i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_q;
    reg [10:0] redist4_i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_q;
    reg [17:0] redist5_i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_q;
    reg [7:0] redist6_i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_q;
    reg [11:0] redist7_i_arrayidx34_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [11:0] redist8_i_arrayidx64_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [17:0] redist9_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_c_1_q;
    reg [17:0] redist10_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_d_1_q;
    reg [9:0] redist11_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_e_1_q;
    reg [19:0] redist12_i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_q;
    reg [51:0] redist13_i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_q_1_q;
    reg [51:0] redist14_i_arrayidx34_conv20_add_x_p1_of_2_q_1_q;
    reg [14:0] redist15_sR_bottomRange_uid636_i_arrayidx64_conv20_mult_x_im9_b_1_q;
    reg [22:0] redist16_sR_bottomRange_uid567_i_arrayidx64_conv20_mult_x_im6_b_1_q;
    reg [22:0] redist17_sR_bottomRange_uid498_i_arrayidx64_conv20_mult_x_im3_b_1_q;
    reg [14:0] redist18_highBBits_uid423_i_arrayidx64_conv20_mult_x_im0_b_1_q;
    reg [0:0] redist19_lowRangeB_uid417_i_arrayidx64_conv20_mult_x_im0_b_1_q;
    reg [0:0] redist20_i_exitcond25_conv214_cmp_nsign_q_2_q;
    reg [0:0] redist20_i_exitcond25_conv214_cmp_nsign_q_2_delay_0;
    reg [0:0] redist21_i_exitcond25_conv214_cmp_nsign_q_4_q;
    reg [0:0] redist21_i_exitcond25_conv214_cmp_nsign_q_4_delay_0;
    reg [0:0] redist22_i_exitcond25_conv214_cmp_nsign_q_7_q;
    reg [0:0] redist22_i_exitcond25_conv214_cmp_nsign_q_7_delay_0;
    reg [0:0] redist22_i_exitcond25_conv214_cmp_nsign_q_7_delay_1;
    reg [0:0] redist23_i_exitcond25_conv214_cmp_nsign_q_9_q;
    reg [0:0] redist23_i_exitcond25_conv214_cmp_nsign_q_9_delay_0;
    reg [31:0] redist24_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_1_q;
    reg [31:0] redist25_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_2_q;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_6_q;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_6_delay_0;
    reg [31:0] redist27_i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_data_out_1_q;
    reg [31:0] redist28_i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_data_out_3_q;
    reg [31:0] redist28_i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_data_out_3_delay_0;
    reg [31:0] redist29_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_1_q;
    reg [31:0] redist30_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_3_q;
    reg [31:0] redist30_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_3_delay_0;
    reg [31:0] redist31_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_6_q;
    reg [31:0] redist31_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_6_delay_0;
    reg [31:0] redist32_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_8_q;
    reg [31:0] redist32_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_8_delay_0;
    reg [31:0] redist34_sync_together73_aunroll_x_in_c0_eni13_1_tpl_3_q;
    reg [31:0] redist34_sync_together73_aunroll_x_in_c0_eni13_1_tpl_3_delay_0;
    reg [0:0] redist36_sync_together73_aunroll_x_in_c0_eni13_2_tpl_1_q;
    reg [0:0] redist37_sync_together73_aunroll_x_in_c0_eni13_2_tpl_3_q;
    reg [0:0] redist37_sync_together73_aunroll_x_in_c0_eni13_2_tpl_3_delay_0;
    reg [0:0] redist38_sync_together73_aunroll_x_in_c0_eni13_2_tpl_6_q;
    reg [0:0] redist38_sync_together73_aunroll_x_in_c0_eni13_2_tpl_6_delay_0;
    reg [0:0] redist38_sync_together73_aunroll_x_in_c0_eni13_2_tpl_6_delay_1;
    reg [0:0] redist39_sync_together73_aunroll_x_in_c0_eni13_2_tpl_9_q;
    reg [0:0] redist39_sync_together73_aunroll_x_in_c0_eni13_2_tpl_9_delay_0;
    reg [0:0] redist39_sync_together73_aunroll_x_in_c0_eni13_2_tpl_9_delay_1;
    reg [31:0] redist40_sync_together73_aunroll_x_in_c0_eni13_3_tpl_1_q;
    reg [0:0] redist42_sync_together73_aunroll_x_in_c0_eni13_4_tpl_9_q;
    reg [0:0] redist43_sync_together73_aunroll_x_in_c0_eni13_5_tpl_9_q;
    reg [0:0] redist44_sync_together73_aunroll_x_in_c0_eni13_6_tpl_9_q;
    reg [0:0] redist45_sync_together73_aunroll_x_in_c0_eni13_7_tpl_9_q;
    reg [0:0] redist46_sync_together73_aunroll_x_in_c0_eni13_8_tpl_9_q;
    reg [0:0] redist47_sync_together73_aunroll_x_in_c0_eni13_9_tpl_9_q;
    reg [0:0] redist48_sync_together73_aunroll_x_in_c0_eni13_10_tpl_9_q;
    reg [0:0] redist49_sync_together73_aunroll_x_in_c0_eni13_11_tpl_9_q;
    reg [0:0] redist51_sync_together73_aunroll_x_in_c0_eni13_13_tpl_9_q;
    reg [0:0] redist52_sync_together73_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist53_sync_together73_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist54_sync_together73_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist55_sync_together73_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist56_sync_together73_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist57_sync_together73_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist58_sync_together73_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist58_sync_together73_aunroll_x_in_i_valid_8_delay_0;
    wire [0:0] dupName_0_enable_stall_connector_x_not_enable_q;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_6_inputreg0_q;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_6_outputreg0_q;
    reg [31:0] redist31_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_6_inputreg0_q;
    reg [63:0] redist33_i_idxprom25_conv26_vt_join_q_7_inputreg0_q;
    reg [63:0] redist33_i_idxprom25_conv26_vt_join_q_7_outputreg0_q;
    wire redist33_i_idxprom25_conv26_vt_join_q_7_mem_reset0;
    wire [63:0] redist33_i_idxprom25_conv26_vt_join_q_7_mem_ia;
    wire [1:0] redist33_i_idxprom25_conv26_vt_join_q_7_mem_aa;
    wire [1:0] redist33_i_idxprom25_conv26_vt_join_q_7_mem_ab;
    wire [63:0] redist33_i_idxprom25_conv26_vt_join_q_7_mem_iq;
    wire [63:0] redist33_i_idxprom25_conv26_vt_join_q_7_mem_q;
    wire [1:0] redist33_i_idxprom25_conv26_vt_join_q_7_rdcnt_q;
    (* preserve *) reg [1:0] redist33_i_idxprom25_conv26_vt_join_q_7_rdcnt_i;
    wire [0:0] redist33_i_idxprom25_conv26_vt_join_q_7_rdmux_s;
    reg [1:0] redist33_i_idxprom25_conv26_vt_join_q_7_rdmux_q;
    reg [1:0] redist33_i_idxprom25_conv26_vt_join_q_7_wraddr_q;
    wire [2:0] redist33_i_idxprom25_conv26_vt_join_q_7_mem_last_q;
    wire [2:0] redist33_i_idxprom25_conv26_vt_join_q_7_cmp_b;
    wire [0:0] redist33_i_idxprom25_conv26_vt_join_q_7_cmp_q;
    (* dont_merge *) reg [0:0] redist33_i_idxprom25_conv26_vt_join_q_7_cmpReg_q;
    wire [0:0] redist33_i_idxprom25_conv26_vt_join_q_7_notEnable_q;
    wire [0:0] redist33_i_idxprom25_conv26_vt_join_q_7_nor_q;
    (* dont_merge *) reg [0:0] redist33_i_idxprom25_conv26_vt_join_q_7_sticky_ena_q;
    wire [0:0] redist33_i_idxprom25_conv26_vt_join_q_7_enaAnd_q;
    reg [31:0] redist34_sync_together73_aunroll_x_in_c0_eni13_1_tpl_3_inputreg0_q;
    reg [31:0] redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_inputreg0_q;
    reg [31:0] redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_outputreg0_q;
    wire redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_reset0;
    wire [31:0] redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_ia;
    wire [1:0] redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_aa;
    wire [1:0] redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_ab;
    wire [31:0] redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_iq;
    wire [31:0] redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_q;
    wire [1:0] redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdcnt_q;
    (* preserve *) reg [1:0] redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdcnt_i;
    (* preserve *) reg redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdcnt_eq;
    wire [0:0] redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdmux_s;
    reg [1:0] redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdmux_q;
    reg [1:0] redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_wraddr_q;
    wire [1:0] redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_last_q;
    wire [0:0] redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_cmpReg_q;
    wire [0:0] redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_notEnable_q;
    wire [0:0] redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_sticky_ena_q;
    wire [0:0] redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_enaAnd_q;
    reg [31:0] redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_inputreg0_q;
    reg [31:0] redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_outputreg0_q;
    wire redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_reset0;
    wire [31:0] redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_ia;
    wire [2:0] redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_aa;
    wire [2:0] redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_ab;
    wire [31:0] redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_iq;
    wire [31:0] redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_q;
    wire [2:0] redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdcnt_i;
    (* preserve *) reg redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdcnt_eq;
    wire [0:0] redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdmux_s;
    reg [2:0] redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdmux_q;
    reg [2:0] redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_wraddr_q;
    wire [2:0] redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_last_q;
    wire [0:0] redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_cmpReg_q;
    wire [0:0] redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_notEnable_q;
    wire [0:0] redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_sticky_ena_q;
    wire [0:0] redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_enaAnd_q;
    reg [31:0] redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_inputreg0_q;
    reg [31:0] redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_outputreg0_q;
    wire redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_reset0;
    wire [31:0] redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_ia;
    wire [2:0] redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_aa;
    wire [2:0] redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_ab;
    wire [31:0] redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_iq;
    wire [31:0] redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_q;
    wire [2:0] redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdcnt_i;
    (* preserve *) reg redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdcnt_eq;
    wire [0:0] redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdmux_s;
    reg [2:0] redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdmux_q;
    reg [2:0] redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_wraddr_q;
    wire [3:0] redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_last_q;
    wire [3:0] redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_cmp_b;
    wire [0:0] redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_cmpReg_q;
    wire [0:0] redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_notEnable_q;
    wire [0:0] redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_sticky_ena_q;
    wire [0:0] redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_enaAnd_q;


    // redist52_sync_together73_aunroll_x_in_i_valid_1(DELAY,861)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_sync_together73_aunroll_x_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist52_sync_together73_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist53_sync_together73_aunroll_x_in_i_valid_2(DELAY,862)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_sync_together73_aunroll_x_in_i_valid_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist53_sync_together73_aunroll_x_in_i_valid_2_q <= $unsigned(redist52_sync_together73_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist54_sync_together73_aunroll_x_in_i_valid_3(DELAY,863)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_sync_together73_aunroll_x_in_i_valid_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist54_sync_together73_aunroll_x_in_i_valid_3_q <= $unsigned(redist53_sync_together73_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist55_sync_together73_aunroll_x_in_i_valid_4(DELAY,864)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_sync_together73_aunroll_x_in_i_valid_4_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist55_sync_together73_aunroll_x_in_i_valid_4_q <= $unsigned(redist54_sync_together73_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist56_sync_together73_aunroll_x_in_i_valid_5(DELAY,865)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_sync_together73_aunroll_x_in_i_valid_5_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist56_sync_together73_aunroll_x_in_i_valid_5_q <= $unsigned(redist55_sync_together73_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist57_sync_together73_aunroll_x_in_i_valid_6(DELAY,866)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_sync_together73_aunroll_x_in_i_valid_6_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist57_sync_together73_aunroll_x_in_i_valid_6_q <= $unsigned(redist56_sync_together73_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist58_sync_together73_aunroll_x_in_i_valid_8(DELAY,867)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_sync_together73_aunroll_x_in_i_valid_8_delay_0 <= '0;
            redist58_sync_together73_aunroll_x_in_i_valid_8_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist58_sync_together73_aunroll_x_in_i_valid_8_delay_0 <= $unsigned(redist57_sync_together73_aunroll_x_in_i_valid_6_q);
            redist58_sync_together73_aunroll_x_in_i_valid_8_q <= redist58_sync_together73_aunroll_x_in_i_valid_8_delay_0;
        end
    end

    // valid_fanout_reg0(REG,124)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist58_sync_together73_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist44_sync_together73_aunroll_x_in_c0_eni13_6_tpl_9(DELAY,853)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist44_sync_together73_aunroll_x_in_c0_eni13_6_tpl_9 ( .xin(in_c0_eni13_6_tpl), .xout(redist44_sync_together73_aunroll_x_in_c0_eni13_6_tpl_9_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_notEnable(LOGICAL,931)
    assign redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_notEnable_q = $unsigned(~ (in_enable));

    // redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_nor(LOGICAL,932)
    assign redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_nor_q = ~ (redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_notEnable_q | redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_sticky_ena_q);

    // redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_last(CONSTANT,928)
    assign redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_last_q = $unsigned(3'b011);

    // redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_cmp(LOGICAL,929)
    assign redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_cmp_q = $unsigned(redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_last_q == redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdmux_q ? 1'b1 : 1'b0);

    // redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_cmpReg(REG,930)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_cmpReg_q <= $unsigned(redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_cmp_q);
        end
    end

    // redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_sticky_ena(REG,933)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_nor_q == 1'b1)
        begin
            redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_sticky_ena_q <= $unsigned(redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_cmpReg_q);
        end
    end

    // redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_enaAnd(LOGICAL,934)
    assign redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_enaAnd_q = redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_sticky_ena_q & in_enable;

    // redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdcnt(COUNTER,925)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdcnt_i <= 3'd0;
            redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdcnt_eq <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            if (redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdcnt_i == 3'd3)
            begin
                redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdcnt_eq <= 1'b0;
            end
            if (redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdcnt_eq == 1'b1)
            begin
                redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdcnt_i <= $unsigned(redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdcnt_i <= $unsigned(redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdcnt_q = redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdcnt_i[2:0];

    // redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdmux(MUX,926)
    assign redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdmux_s = in_enable;
    always @(redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdmux_s or redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_wraddr_q or redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdcnt_q)
    begin
        unique case (redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdmux_s)
            1'b0 : redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdmux_q = redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_wraddr_q;
            1'b1 : redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdmux_q = redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdcnt_q;
            default : redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdmux_q = 3'b0;
        endcase
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist40_sync_together73_aunroll_x_in_c0_eni13_3_tpl_1(DELAY,849)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together73_aunroll_x_in_c0_eni13_3_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist40_sync_together73_aunroll_x_in_c0_eni13_3_tpl_1_q <= $unsigned(in_c0_eni13_3_tpl);
        end
    end

    // redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_inputreg0(DELAY,922)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_inputreg0_q <= $unsigned(redist40_sync_together73_aunroll_x_in_c0_eni13_3_tpl_1_q);
        end
    end

    // redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_wraddr(REG,927)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_wraddr_q <= $unsigned(redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdmux_q);
        end
    end

    // redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem(DUALMEM,924)
    assign redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_ia = $unsigned(redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_inputreg0_q);
    assign redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_aa = redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_wraddr_q;
    assign redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_ab = redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_rdmux_q;
    assign redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_dmem (
        .clocken1(redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_aa),
        .data_a(redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_ia),
        .wren_a(in_enable[0]),
        .address_b(redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_ab),
        .q_b(redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_iq),
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
    assign redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_q = redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_iq[31:0];

    // redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_outputreg0(DELAY,923)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_outputreg0_q <= $unsigned(redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_mem_q);
        end
    end

    // redist43_sync_together73_aunroll_x_in_c0_eni13_5_tpl_9(DELAY,852)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist43_sync_together73_aunroll_x_in_c0_eni13_5_tpl_9 ( .xin(in_c0_eni13_5_tpl), .xout(redist43_sync_together73_aunroll_x_in_c0_eni13_5_tpl_9_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // redist42_sync_together73_aunroll_x_in_c0_eni13_4_tpl_9(DELAY,851)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist42_sync_together73_aunroll_x_in_c0_eni13_4_tpl_9 ( .xin(in_c0_eni13_4_tpl), .xout(redist42_sync_together73_aunroll_x_in_c0_eni13_4_tpl_9_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // redist47_sync_together73_aunroll_x_in_c0_eni13_9_tpl_9(DELAY,856)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist47_sync_together73_aunroll_x_in_c0_eni13_9_tpl_9 ( .xin(in_c0_eni13_9_tpl), .xout(redist47_sync_together73_aunroll_x_in_c0_eni13_9_tpl_9_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_notEnable(LOGICAL,918)
    assign redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_notEnable_q = $unsigned(~ (in_enable));

    // redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_nor(LOGICAL,919)
    assign redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_nor_q = ~ (redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_notEnable_q | redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_sticky_ena_q);

    // redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_last(CONSTANT,915)
    assign redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_last_q = $unsigned(2'b01);

    // redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_cmp(LOGICAL,916)
    assign redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_cmp_q = $unsigned(redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_last_q == redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdmux_q ? 1'b1 : 1'b0);

    // redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_cmpReg(REG,917)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_cmpReg_q <= $unsigned(redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_cmp_q);
        end
    end

    // redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_sticky_ena(REG,920)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_nor_q == 1'b1)
        begin
            redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_sticky_ena_q <= $unsigned(redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_cmpReg_q);
        end
    end

    // redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_enaAnd(LOGICAL,921)
    assign redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_enaAnd_q = redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_sticky_ena_q & in_enable;

    // redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdcnt(COUNTER,912)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdcnt_i <= 2'd0;
            redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdcnt_eq <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            if (redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdcnt_i == 2'd1)
            begin
                redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdcnt_eq <= 1'b0;
            end
            if (redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdcnt_eq == 1'b1)
            begin
                redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdcnt_i <= $unsigned(redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdcnt_i <= $unsigned(redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdcnt_q = redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdcnt_i[1:0];

    // redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdmux(MUX,913)
    assign redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdmux_s = in_enable;
    always @(redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdmux_s or redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_wraddr_q or redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdcnt_q)
    begin
        unique case (redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdmux_s)
            1'b0 : redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdmux_q = redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_wraddr_q;
            1'b1 : redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdmux_q = redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdcnt_q;
            default : redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdmux_q = 2'b0;
        endcase
    end

    // redist34_sync_together73_aunroll_x_in_c0_eni13_1_tpl_3_inputreg0(DELAY,908)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together73_aunroll_x_in_c0_eni13_1_tpl_3_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist34_sync_together73_aunroll_x_in_c0_eni13_1_tpl_3_inputreg0_q <= $unsigned(in_c0_eni13_1_tpl);
        end
    end

    // redist34_sync_together73_aunroll_x_in_c0_eni13_1_tpl_3(DELAY,843)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together73_aunroll_x_in_c0_eni13_1_tpl_3_delay_0 <= '0;
            redist34_sync_together73_aunroll_x_in_c0_eni13_1_tpl_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist34_sync_together73_aunroll_x_in_c0_eni13_1_tpl_3_delay_0 <= $unsigned(redist34_sync_together73_aunroll_x_in_c0_eni13_1_tpl_3_inputreg0_q);
            redist34_sync_together73_aunroll_x_in_c0_eni13_1_tpl_3_q <= redist34_sync_together73_aunroll_x_in_c0_eni13_1_tpl_3_delay_0;
        end
    end

    // redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_inputreg0(DELAY,909)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_inputreg0_q <= $unsigned(redist34_sync_together73_aunroll_x_in_c0_eni13_1_tpl_3_q);
        end
    end

    // redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_wraddr(REG,914)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_wraddr_q <= $unsigned(redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdmux_q);
        end
    end

    // redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem(DUALMEM,911)
    assign redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_ia = $unsigned(redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_inputreg0_q);
    assign redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_aa = redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_wraddr_q;
    assign redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_ab = redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_rdmux_q;
    assign redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
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
    ) redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_dmem (
        .clocken1(redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_aa),
        .data_a(redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_ia),
        .wren_a(in_enable[0]),
        .address_b(redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_ab),
        .q_b(redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_iq),
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
    assign redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_q = redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_iq[31:0];

    // redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_outputreg0(DELAY,910)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_outputreg0_q <= $unsigned(redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_mem_q);
        end
    end

    // redist46_sync_together73_aunroll_x_in_c0_eni13_8_tpl_9(DELAY,855)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist46_sync_together73_aunroll_x_in_c0_eni13_8_tpl_9 ( .xin(in_c0_eni13_8_tpl), .xout(redist46_sync_together73_aunroll_x_in_c0_eni13_8_tpl_9_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // redist45_sync_together73_aunroll_x_in_c0_eni13_7_tpl_9(DELAY,854)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist45_sync_together73_aunroll_x_in_c0_eni13_7_tpl_9 ( .xin(in_c0_eni13_7_tpl), .xout(redist45_sync_together73_aunroll_x_in_c0_eni13_7_tpl_9_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // redist51_sync_together73_aunroll_x_in_c0_eni13_13_tpl_9(DELAY,860)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist51_sync_together73_aunroll_x_in_c0_eni13_13_tpl_9 ( .xin(in_c0_eni13_13_tpl), .xout(redist51_sync_together73_aunroll_x_in_c0_eni13_13_tpl_9_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_notEnable(LOGICAL,944)
    assign redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_notEnable_q = $unsigned(~ (in_enable));

    // redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_nor(LOGICAL,945)
    assign redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_nor_q = ~ (redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_notEnable_q | redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_sticky_ena_q);

    // redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_last(CONSTANT,941)
    assign redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_last_q = $unsigned(4'b0100);

    // redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_cmp(LOGICAL,942)
    assign redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_cmp_b = {1'b0, redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdmux_q};
    assign redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_cmp_q = $unsigned(redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_last_q == redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_cmpReg(REG,943)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_cmpReg_q <= $unsigned(redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_cmp_q);
        end
    end

    // redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_sticky_ena(REG,946)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_nor_q == 1'b1)
        begin
            redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_sticky_ena_q <= $unsigned(redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_cmpReg_q);
        end
    end

    // redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_enaAnd(LOGICAL,947)
    assign redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_enaAnd_q = redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_sticky_ena_q & in_enable;

    // redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdcnt(COUNTER,938)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdcnt_i <= 3'd0;
            redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdcnt_eq <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            if (redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdcnt_i == 3'd4)
            begin
                redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdcnt_eq <= 1'b0;
            end
            if (redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdcnt_eq == 1'b1)
            begin
                redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdcnt_i <= $unsigned(redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdcnt_i <= $unsigned(redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdcnt_q = redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdcnt_i[2:0];

    // redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdmux(MUX,939)
    assign redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdmux_s = in_enable;
    always @(redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdmux_s or redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_wraddr_q or redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdcnt_q)
    begin
        unique case (redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdmux_s)
            1'b0 : redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdmux_q = redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_wraddr_q;
            1'b1 : redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdmux_q = redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdcnt_q;
            default : redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdmux_q = 3'b0;
        endcase
    end

    // redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_inputreg0(DELAY,935)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_inputreg0_q <= $unsigned(in_c0_eni13_12_tpl);
        end
    end

    // redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_wraddr(REG,940)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_wraddr_q <= $unsigned(redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdmux_q);
        end
    end

    // redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem(DUALMEM,937)
    assign redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_ia = $unsigned(redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_inputreg0_q);
    assign redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_aa = redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_wraddr_q;
    assign redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_ab = redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_rdmux_q;
    assign redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_dmem (
        .clocken1(redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_aa),
        .data_a(redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_ia),
        .wren_a(in_enable[0]),
        .address_b(redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_ab),
        .q_b(redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_iq),
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
    assign redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_q = redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_iq[31:0];

    // redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_outputreg0(DELAY,936)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_outputreg0_q <= $unsigned(redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_mem_q);
        end
    end

    // redist49_sync_together73_aunroll_x_in_c0_eni13_11_tpl_9(DELAY,858)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist49_sync_together73_aunroll_x_in_c0_eni13_11_tpl_9 ( .xin(in_c0_eni13_11_tpl), .xout(redist49_sync_together73_aunroll_x_in_c0_eni13_11_tpl_9_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // redist48_sync_together73_aunroll_x_in_c0_eni13_10_tpl_9(DELAY,857)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist48_sync_together73_aunroll_x_in_c0_eni13_10_tpl_9 ( .xin(in_c0_eni13_10_tpl), .xout(redist48_sync_together73_aunroll_x_in_c0_eni13_10_tpl_9_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // redist36_sync_together73_aunroll_x_in_c0_eni13_2_tpl_1(DELAY,845)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together73_aunroll_x_in_c0_eni13_2_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist36_sync_together73_aunroll_x_in_c0_eni13_2_tpl_1_q <= $unsigned(in_c0_eni13_2_tpl);
        end
    end

    // redist37_sync_together73_aunroll_x_in_c0_eni13_2_tpl_3(DELAY,846)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together73_aunroll_x_in_c0_eni13_2_tpl_3_delay_0 <= '0;
            redist37_sync_together73_aunroll_x_in_c0_eni13_2_tpl_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist37_sync_together73_aunroll_x_in_c0_eni13_2_tpl_3_delay_0 <= $unsigned(redist36_sync_together73_aunroll_x_in_c0_eni13_2_tpl_1_q);
            redist37_sync_together73_aunroll_x_in_c0_eni13_2_tpl_3_q <= redist37_sync_together73_aunroll_x_in_c0_eni13_2_tpl_3_delay_0;
        end
    end

    // redist38_sync_together73_aunroll_x_in_c0_eni13_2_tpl_6(DELAY,847)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together73_aunroll_x_in_c0_eni13_2_tpl_6_delay_0 <= '0;
            redist38_sync_together73_aunroll_x_in_c0_eni13_2_tpl_6_delay_1 <= '0;
            redist38_sync_together73_aunroll_x_in_c0_eni13_2_tpl_6_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist38_sync_together73_aunroll_x_in_c0_eni13_2_tpl_6_delay_0 <= $unsigned(redist37_sync_together73_aunroll_x_in_c0_eni13_2_tpl_3_q);
            redist38_sync_together73_aunroll_x_in_c0_eni13_2_tpl_6_delay_1 <= redist38_sync_together73_aunroll_x_in_c0_eni13_2_tpl_6_delay_0;
            redist38_sync_together73_aunroll_x_in_c0_eni13_2_tpl_6_q <= redist38_sync_together73_aunroll_x_in_c0_eni13_2_tpl_6_delay_1;
        end
    end

    // redist39_sync_together73_aunroll_x_in_c0_eni13_2_tpl_9(DELAY,848)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together73_aunroll_x_in_c0_eni13_2_tpl_9_delay_0 <= '0;
            redist39_sync_together73_aunroll_x_in_c0_eni13_2_tpl_9_delay_1 <= '0;
            redist39_sync_together73_aunroll_x_in_c0_eni13_2_tpl_9_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist39_sync_together73_aunroll_x_in_c0_eni13_2_tpl_9_delay_0 <= $unsigned(redist38_sync_together73_aunroll_x_in_c0_eni13_2_tpl_6_q);
            redist39_sync_together73_aunroll_x_in_c0_eni13_2_tpl_9_delay_1 <= redist39_sync_together73_aunroll_x_in_c0_eni13_2_tpl_9_delay_0;
            redist39_sync_together73_aunroll_x_in_c0_eni13_2_tpl_9_q <= redist39_sync_together73_aunroll_x_in_c0_eni13_2_tpl_9_delay_1;
        end
    end

    // valid_fanout_reg19(REG,143)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg19_q <= $unsigned(redist58_sync_together73_aunroll_x_in_i_valid_8_q);
        end
    end

    // dupName_0_enable_stall_connector_x_not_enable(LOGICAL,868)
    assign dupName_0_enable_stall_connector_x_not_enable_q = $unsigned(~ (in_enable));

    // valid_fanout_reg20(REG,144)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg20_q <= $unsigned(redist58_sync_together73_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi5_pop21100_push36_conv235(BLACKBOX,108)@10
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    conv2_i_llvm_fpga_push_i1_memdep_phi5_pop21100_push36_0 thei_llvm_fpga_push_i1_memdep_phi5_pop21100_push36_conv235 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi5_pop21100_pop36_conv234_out_data_out),
        .in_exitcond25(redist23_i_exitcond25_conv214_cmp_nsign_q_9_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i1_memdep_phi5_pop21100_pop36_conv234_out_feedback_stall_out_36),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i1_memdep_phi5_pop21100_push36_conv235_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i1_memdep_phi5_pop21100_push36_conv235_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi5_pop21100_pop36_conv234(BLACKBOX,98)@10
    // out out_feedback_stall_out_36@20000000
    conv2_i_llvm_fpga_pop_i1_memdep_phi5_pop21100_pop36_0 thei_llvm_fpga_pop_i1_memdep_phi5_pop21100_pop36_conv234 (
        .in_data_in(redist47_sync_together73_aunroll_x_in_c0_eni13_9_tpl_9_q),
        .in_dir(redist39_sync_together73_aunroll_x_in_c0_eni13_2_tpl_9_q),
        .in_feedback_in_36(i_llvm_fpga_push_i1_memdep_phi5_pop21100_push36_conv235_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i1_memdep_phi5_pop21100_push36_conv235_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi5_pop21100_pop36_conv234_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i1_memdep_phi5_pop21100_pop36_conv234_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg17(REG,141)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg17_q <= $unsigned(redist58_sync_together73_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg18(REG,142)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg18_q <= $unsigned(redist58_sync_together73_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp5192_push34_conv233(BLACKBOX,110)@10
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    conv2_i_llvm_fpga_push_i1_notcmp5192_push34_0 thei_llvm_fpga_push_i1_notcmp5192_push34_conv233 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp5192_pop34_conv232_out_data_out),
        .in_exitcond25(redist23_i_exitcond25_conv214_cmp_nsign_q_9_q),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i1_notcmp5192_pop34_conv232_out_feedback_stall_out_34),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i1_notcmp5192_push34_conv233_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i1_notcmp5192_push34_conv233_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp5192_pop34_conv232(BLACKBOX,100)@10
    // out out_feedback_stall_out_34@20000000
    conv2_i_llvm_fpga_pop_i1_notcmp5192_pop34_0 thei_llvm_fpga_pop_i1_notcmp5192_pop34_conv232 (
        .in_data_in(redist46_sync_together73_aunroll_x_in_c0_eni13_8_tpl_9_q),
        .in_dir(redist39_sync_together73_aunroll_x_in_c0_eni13_2_tpl_9_q),
        .in_feedback_in_34(i_llvm_fpga_push_i1_notcmp5192_push34_conv233_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i1_notcmp5192_push34_conv233_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp5192_pop34_conv232_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i1_notcmp5192_pop34_conv232_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg15(REG,139)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg15_q <= $unsigned(redist58_sync_together73_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg16(REG,140)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg16_q <= $unsigned(redist58_sync_together73_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond2888_push33_conv231(BLACKBOX,106)@10
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    conv2_i_llvm_fpga_push_i1_exitcond2888_push33_0 thei_llvm_fpga_push_i1_exitcond2888_push33_conv231 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond2888_pop33_conv230_out_data_out),
        .in_exitcond25(redist23_i_exitcond25_conv214_cmp_nsign_q_9_q),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i1_exitcond2888_pop33_conv230_out_feedback_stall_out_33),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i1_exitcond2888_push33_conv231_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i1_exitcond2888_push33_conv231_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond2888_pop33_conv230(BLACKBOX,96)@10
    // out out_feedback_stall_out_33@20000000
    conv2_i_llvm_fpga_pop_i1_exitcond2888_pop33_0 thei_llvm_fpga_pop_i1_exitcond2888_pop33_conv230 (
        .in_data_in(redist45_sync_together73_aunroll_x_in_c0_eni13_7_tpl_9_q),
        .in_dir(redist39_sync_together73_aunroll_x_in_c0_eni13_2_tpl_9_q),
        .in_feedback_in_33(i_llvm_fpga_push_i1_exitcond2888_push33_conv231_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i1_exitcond2888_push33_conv231_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond2888_pop33_conv230_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i1_exitcond2888_pop33_conv230_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg13(REG,137)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg13_q <= $unsigned(redist58_sync_together73_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg14(REG,138)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg14_q <= $unsigned(redist58_sync_together73_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi6_pop1883_push32_conv229(BLACKBOX,109)@10
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    conv2_i_llvm_fpga_push_i1_memdep_phi6_pop1883_push32_0 thei_llvm_fpga_push_i1_memdep_phi6_pop1883_push32_conv229 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi6_pop1883_pop32_conv228_out_data_out),
        .in_exitcond25(redist23_i_exitcond25_conv214_cmp_nsign_q_9_q),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i1_memdep_phi6_pop1883_pop32_conv228_out_feedback_stall_out_32),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i1_memdep_phi6_pop1883_push32_conv229_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i1_memdep_phi6_pop1883_push32_conv229_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi6_pop1883_pop32_conv228(BLACKBOX,99)@10
    // out out_feedback_stall_out_32@20000000
    conv2_i_llvm_fpga_pop_i1_memdep_phi6_pop1883_pop32_0 thei_llvm_fpga_pop_i1_memdep_phi6_pop1883_pop32_conv228 (
        .in_data_in(redist44_sync_together73_aunroll_x_in_c0_eni13_6_tpl_9_q),
        .in_dir(redist39_sync_together73_aunroll_x_in_c0_eni13_2_tpl_9_q),
        .in_feedback_in_32(i_llvm_fpga_push_i1_memdep_phi6_pop1883_push32_conv229_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i1_memdep_phi6_pop1883_push32_conv229_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi6_pop1883_pop32_conv228_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i1_memdep_phi6_pop1883_pop32_conv228_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,135)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg11_q <= $unsigned(redist58_sync_together73_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg12(REG,136)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg12_q <= $unsigned(redist58_sync_together73_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp5673_push30_conv227(BLACKBOX,111)@10
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    conv2_i_llvm_fpga_push_i1_notcmp5673_push30_0 thei_llvm_fpga_push_i1_notcmp5673_push30_conv227 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp5673_pop30_conv226_out_data_out),
        .in_exitcond25(redist23_i_exitcond25_conv214_cmp_nsign_q_9_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i1_notcmp5673_pop30_conv226_out_feedback_stall_out_30),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i1_notcmp5673_push30_conv227_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i1_notcmp5673_push30_conv227_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp5673_pop30_conv226(BLACKBOX,101)@10
    // out out_feedback_stall_out_30@20000000
    conv2_i_llvm_fpga_pop_i1_notcmp5673_pop30_0 thei_llvm_fpga_pop_i1_notcmp5673_pop30_conv226 (
        .in_data_in(redist43_sync_together73_aunroll_x_in_c0_eni13_5_tpl_9_q),
        .in_dir(redist39_sync_together73_aunroll_x_in_c0_eni13_2_tpl_9_q),
        .in_feedback_in_30(i_llvm_fpga_push_i1_notcmp5673_push30_conv227_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i1_notcmp5673_push30_conv227_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp5673_pop30_conv226_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i1_notcmp5673_pop30_conv226_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,133)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg9_q <= $unsigned(redist58_sync_together73_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg10(REG,134)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg10_q <= $unsigned(redist58_sync_together73_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond3168_push29_conv225(BLACKBOX,107)@10
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    conv2_i_llvm_fpga_push_i1_exitcond3168_push29_0 thei_llvm_fpga_push_i1_exitcond3168_push29_conv225 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond3168_pop29_conv224_out_data_out),
        .in_exitcond25(redist23_i_exitcond25_conv214_cmp_nsign_q_9_q),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i1_exitcond3168_pop29_conv224_out_feedback_stall_out_29),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i1_exitcond3168_push29_conv225_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i1_exitcond3168_push29_conv225_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond3168_pop29_conv224(BLACKBOX,97)@10
    // out out_feedback_stall_out_29@20000000
    conv2_i_llvm_fpga_pop_i1_exitcond3168_pop29_0 thei_llvm_fpga_pop_i1_exitcond3168_pop29_conv224 (
        .in_data_in(redist42_sync_together73_aunroll_x_in_c0_eni13_4_tpl_9_q),
        .in_dir(redist39_sync_together73_aunroll_x_in_c0_eni13_2_tpl_9_q),
        .in_feedback_in_29(i_llvm_fpga_push_i1_exitcond3168_push29_conv225_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i1_exitcond3168_push29_conv225_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond3168_pop29_conv224_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i1_exitcond3168_pop29_conv224_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp46_conv218(LOGICAL,117)@10
    assign i_notcmp46_conv218_q = redist23_i_exitcond25_conv214_cmp_nsign_q_9_q ^ VCC_q;

    // c_i5_143(CONSTANT,73)
    assign c_i5_143_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next24_conv220(ADD,79)@1
    assign i_fpga_indvars_iv_next24_conv220_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv23_pop26_conv213_out_data_out};
    assign i_fpga_indvars_iv_next24_conv220_b = {1'b0, c_i5_143_q};
    assign i_fpga_indvars_iv_next24_conv220_o = $unsigned(i_fpga_indvars_iv_next24_conv220_a) + $unsigned(i_fpga_indvars_iv_next24_conv220_b);
    assign i_fpga_indvars_iv_next24_conv220_q = i_fpga_indvars_iv_next24_conv220_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next24_conv220_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next24_conv220_sel_x_b = i_fpga_indvars_iv_next24_conv220_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv23_push26_conv221(BLACKBOX,116)@1
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    conv2_i_llvm_fpga_push_i5_fpga_indvars_iv23_push26_0 thei_llvm_fpga_push_i5_fpga_indvars_iv23_push26_conv221 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next24_conv220_sel_x_b),
        .in_exitcond25(i_exitcond25_conv214_cmp_nsign_q),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i5_fpga_indvars_iv23_pop26_conv213_out_feedback_stall_out_26),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i5_fpga_indvars_iv23_push26_conv221_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i5_fpga_indvars_iv23_push26_conv221_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_841(CONSTANT,74)
    assign c_i5_841_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv23_pop26_conv213(BLACKBOX,105)@1
    // out out_feedback_stall_out_26@20000000
    conv2_i_llvm_fpga_pop_i5_fpga_indvars_iv23_pop26_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv23_pop26_conv213 (
        .in_data_in(c_i5_841_q),
        .in_dir(in_c0_eni13_2_tpl),
        .in_feedback_in_26(i_llvm_fpga_push_i5_fpga_indvars_iv23_push26_conv221_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i5_fpga_indvars_iv23_push26_conv221_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv23_pop26_conv213_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i5_fpga_indvars_iv23_pop26_conv213_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond25_conv214_cmp_nsign(LOGICAL,187)@1
    assign i_exitcond25_conv214_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv23_pop26_conv213_out_data_out[4:4]));

    // redist20_i_exitcond25_conv214_cmp_nsign_q_2(DELAY,829)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_exitcond25_conv214_cmp_nsign_q_2_delay_0 <= '0;
            redist20_i_exitcond25_conv214_cmp_nsign_q_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist20_i_exitcond25_conv214_cmp_nsign_q_2_delay_0 <= $unsigned(i_exitcond25_conv214_cmp_nsign_q);
            redist20_i_exitcond25_conv214_cmp_nsign_q_2_q <= redist20_i_exitcond25_conv214_cmp_nsign_q_2_delay_0;
        end
    end

    // redist21_i_exitcond25_conv214_cmp_nsign_q_4(DELAY,830)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_exitcond25_conv214_cmp_nsign_q_4_delay_0 <= '0;
            redist21_i_exitcond25_conv214_cmp_nsign_q_4_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist21_i_exitcond25_conv214_cmp_nsign_q_4_delay_0 <= $unsigned(redist20_i_exitcond25_conv214_cmp_nsign_q_2_q);
            redist21_i_exitcond25_conv214_cmp_nsign_q_4_q <= redist21_i_exitcond25_conv214_cmp_nsign_q_4_delay_0;
        end
    end

    // redist22_i_exitcond25_conv214_cmp_nsign_q_7(DELAY,831)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_exitcond25_conv214_cmp_nsign_q_7_delay_0 <= '0;
            redist22_i_exitcond25_conv214_cmp_nsign_q_7_delay_1 <= '0;
            redist22_i_exitcond25_conv214_cmp_nsign_q_7_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist22_i_exitcond25_conv214_cmp_nsign_q_7_delay_0 <= $unsigned(redist21_i_exitcond25_conv214_cmp_nsign_q_4_q);
            redist22_i_exitcond25_conv214_cmp_nsign_q_7_delay_1 <= redist22_i_exitcond25_conv214_cmp_nsign_q_7_delay_0;
            redist22_i_exitcond25_conv214_cmp_nsign_q_7_q <= redist22_i_exitcond25_conv214_cmp_nsign_q_7_delay_1;
        end
    end

    // redist23_i_exitcond25_conv214_cmp_nsign_q_9(DELAY,832)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_exitcond25_conv214_cmp_nsign_q_9_delay_0 <= '0;
            redist23_i_exitcond25_conv214_cmp_nsign_q_9_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist23_i_exitcond25_conv214_cmp_nsign_q_9_delay_0 <= $unsigned(redist22_i_exitcond25_conv214_cmp_nsign_q_7_q);
            redist23_i_exitcond25_conv214_cmp_nsign_q_9_q <= redist23_i_exitcond25_conv214_cmp_nsign_q_9_delay_0;
        end
    end

    // c_i32_040(CONSTANT,71)
    assign c_i32_040_q = $unsigned(32'b00000000000000000000000000000000);

    // i_arrayidx34_conv20_add_x_BitSelect_for_b_tessel0_2(BITSELECT,733)
    assign i_arrayidx34_conv20_add_x_BitSelect_for_b_tessel0_2_b = c_i32_040_q[17:0];

    // valid_fanout_reg4(REG,128)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg4_q <= $unsigned(redist56_sync_together73_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg8(REG,132)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg8_q <= $unsigned(redist57_sync_together73_aunroll_x_in_i_valid_6_q);
        end
    end

    // c_i32_144(CONSTANT,72)
    assign c_i32_144_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc73_conv222(ADD,92)@8
    assign i_inc73_conv222_a = {1'b0, redist27_i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_data_out_1_q};
    assign i_inc73_conv222_b = {1'b0, c_i32_144_q};
    assign i_inc73_conv222_o = $unsigned(i_inc73_conv222_a) + $unsigned(i_inc73_conv222_b);
    assign i_inc73_conv222_q = i_inc73_conv222_o[32:0];

    // bgTrunc_i_inc73_conv222_sel_x(BITSELECT,3)@8
    assign bgTrunc_i_inc73_conv222_sel_x_b = i_inc73_conv222_q[31:0];

    // i_llvm_fpga_push_i32_col_037_push27_conv223(BLACKBOX,114)@8
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    conv2_i_llvm_fpga_push_i32_col_037_push27_0 thei_llvm_fpga_push_i32_col_037_push27_conv223 (
        .in_data_in(bgTrunc_i_inc73_conv222_sel_x_b),
        .in_exitcond25(redist22_i_exitcond25_conv214_cmp_nsign_q_7_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_feedback_stall_out_27),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i32_col_037_push27_conv223_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i32_col_037_push27_conv223_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_col_037_pop27_conv29(BLACKBOX,103)@7
    // out out_feedback_stall_out_27@20000000
    conv2_i_llvm_fpga_pop_i32_col_037_pop27_0 thei_llvm_fpga_pop_i32_col_037_pop27_conv29 (
        .in_data_in(c_i32_040_q),
        .in_dir(redist38_sync_together73_aunroll_x_in_c0_eni13_2_tpl_6_q),
        .in_feedback_in_27(i_llvm_fpga_push_i32_col_037_push27_conv223_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i32_col_037_push27_conv223_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_data_out_1(DELAY,836)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist27_i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_data_out);
        end
    end

    // i_arrayidx34_conv20_c_i2_01_x(CONSTANT,31)
    assign i_arrayidx34_conv20_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx64_conv20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,756)@8
    assign i_arrayidx64_conv20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx34_conv20_add_x_BitSelect_for_b_tessel0_2_b, redist27_i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_data_out_1_q, i_arrayidx34_conv20_c_i2_01_x_q};

    // lowRangeB_uid370_i_arrayidx64_conv20_dupName_0_mult_x_im9_merged_bit_select(BITSELECT,808)@5
    assign lowRangeB_uid370_i_arrayidx64_conv20_dupName_0_mult_x_im9_merged_bit_select_b = i_arrayidx64_conv20_dupName_0_mult_x_bs1_merged_bit_select_e[1:0];
    assign lowRangeB_uid370_i_arrayidx64_conv20_dupName_0_mult_x_im9_merged_bit_select_c = i_arrayidx64_conv20_dupName_0_mult_x_bs1_merged_bit_select_e[9:2];

    // valid_fanout_reg1(REG,125)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(redist53_sync_together73_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg6(REG,130)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg6_q <= $unsigned(redist54_sync_together73_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_row_038_pop2096_push35_conv216(BLACKBOX,115)@5
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    conv2_i_llvm_fpga_push_i32_row_038_pop2096_push35_0 thei_llvm_fpga_push_i32_row_038_pop2096_push35_conv216 (
        .in_data_in(redist24_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_1_q),
        .in_exitcond25(redist21_i_exitcond25_conv214_cmp_nsign_q_4_q),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_feedback_stall_out_35),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i32_row_038_pop2096_push35_conv216_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i32_row_038_pop2096_push35_conv216_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23(BLACKBOX,104)@4
    // out out_feedback_stall_out_35@20000000
    conv2_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_0 thei_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23 (
        .in_data_in(redist34_sync_together73_aunroll_x_in_c0_eni13_1_tpl_3_q),
        .in_dir(redist37_sync_together73_aunroll_x_in_c0_eni13_2_tpl_3_q),
        .in_feedback_in_35(i_llvm_fpga_push_i32_row_038_pop2096_push35_conv216_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i32_row_038_pop2096_push35_conv216_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_1(DELAY,833)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist24_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out);
        end
    end

    // i_idxprom61_conv24_sel_x(BITSELECT,61)@5
    assign i_idxprom61_conv24_sel_x_b = {32'b00000000000000000000000000000000, redist24_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_1_q[31:0]};

    // i_idxprom61_conv24_vt_select_31(BITSELECT,87)@5
    assign i_idxprom61_conv24_vt_select_31_b = i_idxprom61_conv24_sel_x_b[31:0];

    // i_idxprom61_conv24_vt_join(BITJOIN,86)@5
    assign i_idxprom61_conv24_vt_join_q = {c_i32_040_q, i_idxprom61_conv24_vt_select_31_b};

    // i_arrayidx64_conv20_dupName_0_mult_x_bs1_merged_bit_select(BITSELECT,799)@5
    assign i_arrayidx64_conv20_dupName_0_mult_x_bs1_merged_bit_select_b = i_idxprom61_conv24_vt_join_q[17:0];
    assign i_arrayidx64_conv20_dupName_0_mult_x_bs1_merged_bit_select_c = i_idxprom61_conv24_vt_join_q[35:18];
    assign i_arrayidx64_conv20_dupName_0_mult_x_bs1_merged_bit_select_d = i_idxprom61_conv24_vt_join_q[53:36];
    assign i_arrayidx64_conv20_dupName_0_mult_x_bs1_merged_bit_select_e = i_idxprom61_conv24_vt_join_q[63:54];

    // addsumAHighB_uid372_i_arrayidx64_conv20_dupName_0_mult_x_im9(ADD,371)@5 + 1
    assign addsumAHighB_uid372_i_arrayidx64_conv20_dupName_0_mult_x_im9_a = {1'b0, i_arrayidx64_conv20_dupName_0_mult_x_bs1_merged_bit_select_e};
    assign addsumAHighB_uid372_i_arrayidx64_conv20_dupName_0_mult_x_im9_b = {3'b000, lowRangeB_uid370_i_arrayidx64_conv20_dupName_0_mult_x_im9_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid372_i_arrayidx64_conv20_dupName_0_mult_x_im9_o <= 11'b0;
        end
        else if (in_enable == 1'b1)
        begin
            addsumAHighB_uid372_i_arrayidx64_conv20_dupName_0_mult_x_im9_o <= $unsigned(addsumAHighB_uid372_i_arrayidx64_conv20_dupName_0_mult_x_im9_a) + $unsigned(addsumAHighB_uid372_i_arrayidx64_conv20_dupName_0_mult_x_im9_b);
        end
    end
    assign addsumAHighB_uid372_i_arrayidx64_conv20_dupName_0_mult_x_im9_q = addsumAHighB_uid372_i_arrayidx64_conv20_dupName_0_mult_x_im9_o[10:0];

    // redist0_lowRangeB_uid370_i_arrayidx64_conv20_dupName_0_mult_x_im9_merged_bit_select_b_1(DELAY,809)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_lowRangeB_uid370_i_arrayidx64_conv20_dupName_0_mult_x_im9_merged_bit_select_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_lowRangeB_uid370_i_arrayidx64_conv20_dupName_0_mult_x_im9_merged_bit_select_b_1_q <= $unsigned(lowRangeB_uid370_i_arrayidx64_conv20_dupName_0_mult_x_im9_merged_bit_select_b);
        end
    end

    // add_uid373_i_arrayidx64_conv20_dupName_0_mult_x_im9(BITJOIN,372)@6
    assign add_uid373_i_arrayidx64_conv20_dupName_0_mult_x_im9_q = {addsumAHighB_uid372_i_arrayidx64_conv20_dupName_0_mult_x_im9_q, redist0_lowRangeB_uid370_i_arrayidx64_conv20_dupName_0_mult_x_im9_merged_bit_select_b_1_q};

    // sR_bottomExtension_uid202_i_arrayidx64_conv20_dupName_0_mult_x_im0(CONSTANT,201)
    assign sR_bottomExtension_uid202_i_arrayidx64_conv20_dupName_0_mult_x_im0_q = $unsigned(3'b000);

    // sR_mergedSignalTM_uid378_i_arrayidx64_conv20_dupName_0_mult_x_im9(BITJOIN,377)@6
    assign sR_mergedSignalTM_uid378_i_arrayidx64_conv20_dupName_0_mult_x_im9_q = {add_uid373_i_arrayidx64_conv20_dupName_0_mult_x_im9_q, sR_bottomExtension_uid202_i_arrayidx64_conv20_dupName_0_mult_x_im0_q};

    // i_arrayidx64_conv20_dupName_0_mult_x_sums_align_3(BITSHIFT,165)@6
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid378_i_arrayidx64_conv20_dupName_0_mult_x_im9_q, 12'b000000000000 };
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_align_3_q = i_arrayidx64_conv20_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,803)@6
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_arrayidx64_conv20_dupName_0_mult_x_sums_align_3_q[9:0]);
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_arrayidx64_conv20_dupName_0_mult_x_sums_align_3_q[27:10]);

    // lowRangeB_uid254_i_arrayidx64_conv20_dupName_0_mult_x_im3_merged_bit_select(BITSELECT,806)@5
    assign lowRangeB_uid254_i_arrayidx64_conv20_dupName_0_mult_x_im3_merged_bit_select_b = i_arrayidx64_conv20_dupName_0_mult_x_bs1_merged_bit_select_c[1:0];
    assign lowRangeB_uid254_i_arrayidx64_conv20_dupName_0_mult_x_im3_merged_bit_select_c = i_arrayidx64_conv20_dupName_0_mult_x_bs1_merged_bit_select_c[17:2];

    // addsumAHighB_uid256_i_arrayidx64_conv20_dupName_0_mult_x_im3(ADD,255)@5 + 1
    assign addsumAHighB_uid256_i_arrayidx64_conv20_dupName_0_mult_x_im3_a = {1'b0, i_arrayidx64_conv20_dupName_0_mult_x_bs1_merged_bit_select_c};
    assign addsumAHighB_uid256_i_arrayidx64_conv20_dupName_0_mult_x_im3_b = {3'b000, lowRangeB_uid254_i_arrayidx64_conv20_dupName_0_mult_x_im3_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid256_i_arrayidx64_conv20_dupName_0_mult_x_im3_o <= 19'b0;
        end
        else if (in_enable == 1'b1)
        begin
            addsumAHighB_uid256_i_arrayidx64_conv20_dupName_0_mult_x_im3_o <= $unsigned(addsumAHighB_uid256_i_arrayidx64_conv20_dupName_0_mult_x_im3_a) + $unsigned(addsumAHighB_uid256_i_arrayidx64_conv20_dupName_0_mult_x_im3_b);
        end
    end
    assign addsumAHighB_uid256_i_arrayidx64_conv20_dupName_0_mult_x_im3_q = addsumAHighB_uid256_i_arrayidx64_conv20_dupName_0_mult_x_im3_o[18:0];

    // redist2_lowRangeB_uid254_i_arrayidx64_conv20_dupName_0_mult_x_im3_merged_bit_select_b_1(DELAY,811)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_lowRangeB_uid254_i_arrayidx64_conv20_dupName_0_mult_x_im3_merged_bit_select_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_lowRangeB_uid254_i_arrayidx64_conv20_dupName_0_mult_x_im3_merged_bit_select_b_1_q <= $unsigned(lowRangeB_uid254_i_arrayidx64_conv20_dupName_0_mult_x_im3_merged_bit_select_b);
        end
    end

    // add_uid257_i_arrayidx64_conv20_dupName_0_mult_x_im3(BITJOIN,256)@6
    assign add_uid257_i_arrayidx64_conv20_dupName_0_mult_x_im3_q = {addsumAHighB_uid256_i_arrayidx64_conv20_dupName_0_mult_x_im3_q, redist2_lowRangeB_uid254_i_arrayidx64_conv20_dupName_0_mult_x_im3_merged_bit_select_b_1_q};

    // sR_mergedSignalTM_uid262_i_arrayidx64_conv20_dupName_0_mult_x_im3(BITJOIN,261)@6
    assign sR_mergedSignalTM_uid262_i_arrayidx64_conv20_dupName_0_mult_x_im3_q = {add_uid257_i_arrayidx64_conv20_dupName_0_mult_x_im3_q, sR_bottomExtension_uid202_i_arrayidx64_conv20_dupName_0_mult_x_im0_q};

    // i_arrayidx64_conv20_dupName_0_mult_x_sums_align_2(BITSHIFT,164)@6
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid262_i_arrayidx64_conv20_dupName_0_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_align_2_q = i_arrayidx64_conv20_dupName_0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,780)@6
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_arrayidx64_conv20_dupName_0_mult_x_sums_align_2_q};

    // lowRangeB_uid312_i_arrayidx64_conv20_dupName_0_mult_x_im6_merged_bit_select(BITSELECT,807)@5
    assign lowRangeB_uid312_i_arrayidx64_conv20_dupName_0_mult_x_im6_merged_bit_select_b = i_arrayidx64_conv20_dupName_0_mult_x_bs1_merged_bit_select_d[1:0];
    assign lowRangeB_uid312_i_arrayidx64_conv20_dupName_0_mult_x_im6_merged_bit_select_c = i_arrayidx64_conv20_dupName_0_mult_x_bs1_merged_bit_select_d[17:2];

    // addsumAHighB_uid314_i_arrayidx64_conv20_dupName_0_mult_x_im6(ADD,313)@5 + 1
    assign addsumAHighB_uid314_i_arrayidx64_conv20_dupName_0_mult_x_im6_a = {1'b0, i_arrayidx64_conv20_dupName_0_mult_x_bs1_merged_bit_select_d};
    assign addsumAHighB_uid314_i_arrayidx64_conv20_dupName_0_mult_x_im6_b = {3'b000, lowRangeB_uid312_i_arrayidx64_conv20_dupName_0_mult_x_im6_merged_bit_select_c};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid314_i_arrayidx64_conv20_dupName_0_mult_x_im6_o <= 19'b0;
        end
        else if (in_enable == 1'b1)
        begin
            addsumAHighB_uid314_i_arrayidx64_conv20_dupName_0_mult_x_im6_o <= $unsigned(addsumAHighB_uid314_i_arrayidx64_conv20_dupName_0_mult_x_im6_a) + $unsigned(addsumAHighB_uid314_i_arrayidx64_conv20_dupName_0_mult_x_im6_b);
        end
    end
    assign addsumAHighB_uid314_i_arrayidx64_conv20_dupName_0_mult_x_im6_q = addsumAHighB_uid314_i_arrayidx64_conv20_dupName_0_mult_x_im6_o[18:0];

    // redist1_lowRangeB_uid312_i_arrayidx64_conv20_dupName_0_mult_x_im6_merged_bit_select_b_1(DELAY,810)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_lowRangeB_uid312_i_arrayidx64_conv20_dupName_0_mult_x_im6_merged_bit_select_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_lowRangeB_uid312_i_arrayidx64_conv20_dupName_0_mult_x_im6_merged_bit_select_b_1_q <= $unsigned(lowRangeB_uid312_i_arrayidx64_conv20_dupName_0_mult_x_im6_merged_bit_select_b);
        end
    end

    // add_uid315_i_arrayidx64_conv20_dupName_0_mult_x_im6(BITJOIN,314)@6
    assign add_uid315_i_arrayidx64_conv20_dupName_0_mult_x_im6_q = {addsumAHighB_uid314_i_arrayidx64_conv20_dupName_0_mult_x_im6_q, redist1_lowRangeB_uid312_i_arrayidx64_conv20_dupName_0_mult_x_im6_merged_bit_select_b_1_q};

    // sR_mergedSignalTM_uid320_i_arrayidx64_conv20_dupName_0_mult_x_im6(BITJOIN,319)@6
    assign sR_mergedSignalTM_uid320_i_arrayidx64_conv20_dupName_0_mult_x_im6_q = {add_uid315_i_arrayidx64_conv20_dupName_0_mult_x_im6_q, sR_bottomExtension_uid202_i_arrayidx64_conv20_dupName_0_mult_x_im0_q};

    // i_arrayidx64_conv20_dupName_0_mult_x_sums_align_0(BITSHIFT,162)@6
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid320_i_arrayidx64_conv20_dupName_0_mult_x_im6_q, 12'b000000000000 };
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_align_0_q = i_arrayidx64_conv20_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select(BITSELECT,802)@6
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b = $unsigned(i_arrayidx64_conv20_dupName_0_mult_x_sums_align_0_q[27:0]);
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c = $unsigned(i_arrayidx64_conv20_dupName_0_mult_x_sums_align_0_q[35:28]);

    // highBBits_uid197_i_arrayidx64_conv20_dupName_0_mult_x_im0(BITSELECT,196)@5
    assign highBBits_uid197_i_arrayidx64_conv20_dupName_0_mult_x_im0_b = i_arrayidx64_conv20_dupName_0_mult_x_bs1_merged_bit_select_b[17:2];

    // addsumAHighB_uid198_i_arrayidx64_conv20_dupName_0_mult_x_im0(ADD,197)@5 + 1
    assign addsumAHighB_uid198_i_arrayidx64_conv20_dupName_0_mult_x_im0_a = {1'b0, i_arrayidx64_conv20_dupName_0_mult_x_bs1_merged_bit_select_b};
    assign addsumAHighB_uid198_i_arrayidx64_conv20_dupName_0_mult_x_im0_b = {3'b000, highBBits_uid197_i_arrayidx64_conv20_dupName_0_mult_x_im0_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid198_i_arrayidx64_conv20_dupName_0_mult_x_im0_o <= 19'b0;
        end
        else if (in_enable == 1'b1)
        begin
            addsumAHighB_uid198_i_arrayidx64_conv20_dupName_0_mult_x_im0_o <= $unsigned(addsumAHighB_uid198_i_arrayidx64_conv20_dupName_0_mult_x_im0_a) + $unsigned(addsumAHighB_uid198_i_arrayidx64_conv20_dupName_0_mult_x_im0_b);
        end
    end
    assign addsumAHighB_uid198_i_arrayidx64_conv20_dupName_0_mult_x_im0_q = addsumAHighB_uid198_i_arrayidx64_conv20_dupName_0_mult_x_im0_o[18:0];

    // redist25_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_2(DELAY,834)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist25_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_2_q <= $unsigned(redist24_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_1_q);
        end
    end

    // i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1(BITSELECT,771)@6
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b = $unsigned(redist25_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_2_q[1:0]);

    // i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,774)@6
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b, addsumAHighB_uid198_i_arrayidx64_conv20_dupName_0_mult_x_im0_q, i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b, sR_bottomExtension_uid202_i_arrayidx64_conv20_dupName_0_mult_x_im0_q};

    // i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2(ADD,714)@6 + 1
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q};
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // valid_fanout_reg2(REG,126)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg7(REG,131)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg7_q <= $unsigned(redist52_sync_together73_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_channel_039_pop1778_push31_conv217(BLACKBOX,113)@3
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    conv2_i_llvm_fpga_push_i32_channel_039_pop1778_push31_0 thei_llvm_fpga_push_i32_channel_039_pop1778_push31_conv217 (
        .in_data_in(redist29_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_1_q),
        .in_exitcond25(redist20_i_exitcond25_conv214_cmp_nsign_q_2_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_feedback_stall_out_31),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i32_channel_039_pop1778_push31_conv217_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i32_channel_039_pop1778_push31_conv217_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25(BLACKBOX,102)@2
    // out out_feedback_stall_out_31@20000000
    conv2_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_0 thei_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25 (
        .in_data_in(redist40_sync_together73_aunroll_x_in_c0_eni13_3_tpl_1_q),
        .in_dir(redist36_sync_together73_aunroll_x_in_c0_eni13_2_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i32_channel_039_pop1778_push31_conv217_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i32_channel_039_pop1778_push31_conv217_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_1(DELAY,838)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist29_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out);
        end
    end

    // i_idxprom25_conv26_sel_x(BITSELECT,60)@3
    assign i_idxprom25_conv26_sel_x_b = {32'b00000000000000000000000000000000, redist29_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_1_q[31:0]};

    // i_idxprom25_conv26_vt_select_31(BITSELECT,83)@3
    assign i_idxprom25_conv26_vt_select_31_b = i_idxprom25_conv26_sel_x_b[31:0];

    // i_idxprom25_conv26_vt_join(BITJOIN,82)@3
    assign i_idxprom25_conv26_vt_join_q = {c_i32_040_q, i_idxprom25_conv26_vt_select_31_b};

    // i_arrayidx64_conv20_mult_x_bs1_merged_bit_select(BITSELECT,798)@3
    assign i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_b = i_idxprom25_conv26_vt_join_q[17:0];
    assign i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_c = i_idxprom25_conv26_vt_join_q[35:18];
    assign i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_d = i_idxprom25_conv26_vt_join_q[53:36];
    assign i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_e = i_idxprom25_conv26_vt_join_q[63:54];

    // redist11_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_e_1(DELAY,820)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_e_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist11_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_e_1_q <= $unsigned(i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_e);
        end
    end

    // highBBits_uid630_i_arrayidx64_conv20_mult_x_im9(BITSELECT,629)@4
    assign highBBits_uid630_i_arrayidx64_conv20_mult_x_im9_b = redist11_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_e_1_q[9:3];

    // highBBits_uid625_i_arrayidx64_conv20_mult_x_im9(BITSELECT,624)@3
    assign highBBits_uid625_i_arrayidx64_conv20_mult_x_im9_b = i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_e[9:1];

    // addsumAHighB_uid626_i_arrayidx64_conv20_mult_x_im9(ADD,625)@3 + 1
    assign addsumAHighB_uid626_i_arrayidx64_conv20_mult_x_im9_a = {1'b0, i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_e};
    assign addsumAHighB_uid626_i_arrayidx64_conv20_mult_x_im9_b = {2'b00, highBBits_uid625_i_arrayidx64_conv20_mult_x_im9_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid626_i_arrayidx64_conv20_mult_x_im9_o <= 11'b0;
        end
        else if (in_enable == 1'b1)
        begin
            addsumAHighB_uid626_i_arrayidx64_conv20_mult_x_im9_o <= $unsigned(addsumAHighB_uid626_i_arrayidx64_conv20_mult_x_im9_a) + $unsigned(addsumAHighB_uid626_i_arrayidx64_conv20_mult_x_im9_b);
        end
    end
    assign addsumAHighB_uid626_i_arrayidx64_conv20_mult_x_im9_q = addsumAHighB_uid626_i_arrayidx64_conv20_mult_x_im9_o[10:0];

    // lowRangeB_uid624_i_arrayidx64_conv20_mult_x_im9(BITSELECT,623)@4
    assign lowRangeB_uid624_i_arrayidx64_conv20_mult_x_im9_in = redist11_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_e_1_q[0:0];
    assign lowRangeB_uid624_i_arrayidx64_conv20_mult_x_im9_b = lowRangeB_uid624_i_arrayidx64_conv20_mult_x_im9_in[0:0];

    // add_uid627_i_arrayidx64_conv20_mult_x_im9(BITJOIN,626)@4
    assign add_uid627_i_arrayidx64_conv20_mult_x_im9_q = {addsumAHighB_uid626_i_arrayidx64_conv20_mult_x_im9_q, lowRangeB_uid624_i_arrayidx64_conv20_mult_x_im9_b};

    // a_subconst_25_sumAHighB_uid631_i_arrayidx64_conv20_mult_x_im9(ADD,630)@4
    assign a_subconst_25_sumAHighB_uid631_i_arrayidx64_conv20_mult_x_im9_a = {1'b0, add_uid627_i_arrayidx64_conv20_mult_x_im9_q};
    assign a_subconst_25_sumAHighB_uid631_i_arrayidx64_conv20_mult_x_im9_b = {6'b000000, highBBits_uid630_i_arrayidx64_conv20_mult_x_im9_b};
    assign a_subconst_25_sumAHighB_uid631_i_arrayidx64_conv20_mult_x_im9_o = $unsigned(a_subconst_25_sumAHighB_uid631_i_arrayidx64_conv20_mult_x_im9_a) + $unsigned(a_subconst_25_sumAHighB_uid631_i_arrayidx64_conv20_mult_x_im9_b);
    assign a_subconst_25_sumAHighB_uid631_i_arrayidx64_conv20_mult_x_im9_q = a_subconst_25_sumAHighB_uid631_i_arrayidx64_conv20_mult_x_im9_o[12:0];

    // lowRangeB_uid629_i_arrayidx64_conv20_mult_x_im9(BITSELECT,628)@4
    assign lowRangeB_uid629_i_arrayidx64_conv20_mult_x_im9_in = redist11_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_e_1_q[2:0];
    assign lowRangeB_uid629_i_arrayidx64_conv20_mult_x_im9_b = lowRangeB_uid629_i_arrayidx64_conv20_mult_x_im9_in[2:0];

    // a_subconst_25_uid632_i_arrayidx64_conv20_mult_x_im9(BITJOIN,631)@4
    assign a_subconst_25_uid632_i_arrayidx64_conv20_mult_x_im9_q = {a_subconst_25_sumAHighB_uid631_i_arrayidx64_conv20_mult_x_im9_q, lowRangeB_uid629_i_arrayidx64_conv20_mult_x_im9_b};

    // sR_bottomRange_uid636_i_arrayidx64_conv20_mult_x_im9(BITSELECT,635)@4
    assign sR_bottomRange_uid636_i_arrayidx64_conv20_mult_x_im9_in = a_subconst_25_uid632_i_arrayidx64_conv20_mult_x_im9_q[14:0];
    assign sR_bottomRange_uid636_i_arrayidx64_conv20_mult_x_im9_b = sR_bottomRange_uid636_i_arrayidx64_conv20_mult_x_im9_in[14:0];

    // redist15_sR_bottomRange_uid636_i_arrayidx64_conv20_mult_x_im9_b_1(DELAY,824)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sR_bottomRange_uid636_i_arrayidx64_conv20_mult_x_im9_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist15_sR_bottomRange_uid636_i_arrayidx64_conv20_mult_x_im9_b_1_q <= $unsigned(sR_bottomRange_uid636_i_arrayidx64_conv20_mult_x_im9_b);
        end
    end

    // sR_bottomExtension_uid428_i_arrayidx64_conv20_mult_x_im0(CONSTANT,427)
    assign sR_bottomExtension_uid428_i_arrayidx64_conv20_mult_x_im0_q = $unsigned(4'b0000);

    // sR_mergedSignalTM_uid637_i_arrayidx64_conv20_mult_x_im9(BITJOIN,636)@5
    assign sR_mergedSignalTM_uid637_i_arrayidx64_conv20_mult_x_im9_q = {redist15_sR_bottomRange_uid636_i_arrayidx64_conv20_mult_x_im9_b_1_q, sR_bottomExtension_uid428_i_arrayidx64_conv20_mult_x_im0_q};

    // i_arrayidx64_conv20_mult_x_sums_align_3(BITSHIFT,183)@5
    assign i_arrayidx64_conv20_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid637_i_arrayidx64_conv20_mult_x_im9_q, 9'b000000000 };
    assign i_arrayidx64_conv20_mult_x_sums_align_3_q = i_arrayidx64_conv20_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,805)@5
    assign i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_arrayidx64_conv20_mult_x_sums_align_3_q[6:0]);
    assign i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_arrayidx64_conv20_mult_x_sums_align_3_q[27:7]);

    // redist9_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_c_1(DELAY,818)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist9_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_c_1_q <= $unsigned(i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_c);
        end
    end

    // highBBits_uid492_i_arrayidx64_conv20_mult_x_im3(BITSELECT,491)@4
    assign highBBits_uid492_i_arrayidx64_conv20_mult_x_im3_b = redist9_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_c_1_q[17:3];

    // highBBits_uid487_i_arrayidx64_conv20_mult_x_im3(BITSELECT,486)@3
    assign highBBits_uid487_i_arrayidx64_conv20_mult_x_im3_b = i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_c[17:1];

    // addsumAHighB_uid488_i_arrayidx64_conv20_mult_x_im3(ADD,487)@3 + 1
    assign addsumAHighB_uid488_i_arrayidx64_conv20_mult_x_im3_a = {1'b0, i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_c};
    assign addsumAHighB_uid488_i_arrayidx64_conv20_mult_x_im3_b = {2'b00, highBBits_uid487_i_arrayidx64_conv20_mult_x_im3_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid488_i_arrayidx64_conv20_mult_x_im3_o <= 19'b0;
        end
        else if (in_enable == 1'b1)
        begin
            addsumAHighB_uid488_i_arrayidx64_conv20_mult_x_im3_o <= $unsigned(addsumAHighB_uid488_i_arrayidx64_conv20_mult_x_im3_a) + $unsigned(addsumAHighB_uid488_i_arrayidx64_conv20_mult_x_im3_b);
        end
    end
    assign addsumAHighB_uid488_i_arrayidx64_conv20_mult_x_im3_q = addsumAHighB_uid488_i_arrayidx64_conv20_mult_x_im3_o[18:0];

    // lowRangeB_uid486_i_arrayidx64_conv20_mult_x_im3(BITSELECT,485)@4
    assign lowRangeB_uid486_i_arrayidx64_conv20_mult_x_im3_in = redist9_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_c_1_q[0:0];
    assign lowRangeB_uid486_i_arrayidx64_conv20_mult_x_im3_b = lowRangeB_uid486_i_arrayidx64_conv20_mult_x_im3_in[0:0];

    // add_uid489_i_arrayidx64_conv20_mult_x_im3(BITJOIN,488)@4
    assign add_uid489_i_arrayidx64_conv20_mult_x_im3_q = {addsumAHighB_uid488_i_arrayidx64_conv20_mult_x_im3_q, lowRangeB_uid486_i_arrayidx64_conv20_mult_x_im3_b};

    // a_subconst_25_sumAHighB_uid493_i_arrayidx64_conv20_mult_x_im3(ADD,492)@4
    assign a_subconst_25_sumAHighB_uid493_i_arrayidx64_conv20_mult_x_im3_a = {1'b0, add_uid489_i_arrayidx64_conv20_mult_x_im3_q};
    assign a_subconst_25_sumAHighB_uid493_i_arrayidx64_conv20_mult_x_im3_b = {6'b000000, highBBits_uid492_i_arrayidx64_conv20_mult_x_im3_b};
    assign a_subconst_25_sumAHighB_uid493_i_arrayidx64_conv20_mult_x_im3_o = $unsigned(a_subconst_25_sumAHighB_uid493_i_arrayidx64_conv20_mult_x_im3_a) + $unsigned(a_subconst_25_sumAHighB_uid493_i_arrayidx64_conv20_mult_x_im3_b);
    assign a_subconst_25_sumAHighB_uid493_i_arrayidx64_conv20_mult_x_im3_q = a_subconst_25_sumAHighB_uid493_i_arrayidx64_conv20_mult_x_im3_o[20:0];

    // lowRangeB_uid491_i_arrayidx64_conv20_mult_x_im3(BITSELECT,490)@4
    assign lowRangeB_uid491_i_arrayidx64_conv20_mult_x_im3_in = redist9_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_c_1_q[2:0];
    assign lowRangeB_uid491_i_arrayidx64_conv20_mult_x_im3_b = lowRangeB_uid491_i_arrayidx64_conv20_mult_x_im3_in[2:0];

    // a_subconst_25_uid494_i_arrayidx64_conv20_mult_x_im3(BITJOIN,493)@4
    assign a_subconst_25_uid494_i_arrayidx64_conv20_mult_x_im3_q = {a_subconst_25_sumAHighB_uid493_i_arrayidx64_conv20_mult_x_im3_q, lowRangeB_uid491_i_arrayidx64_conv20_mult_x_im3_b};

    // sR_bottomRange_uid498_i_arrayidx64_conv20_mult_x_im3(BITSELECT,497)@4
    assign sR_bottomRange_uid498_i_arrayidx64_conv20_mult_x_im3_in = a_subconst_25_uid494_i_arrayidx64_conv20_mult_x_im3_q[22:0];
    assign sR_bottomRange_uid498_i_arrayidx64_conv20_mult_x_im3_b = sR_bottomRange_uid498_i_arrayidx64_conv20_mult_x_im3_in[22:0];

    // redist17_sR_bottomRange_uid498_i_arrayidx64_conv20_mult_x_im3_b_1(DELAY,826)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sR_bottomRange_uid498_i_arrayidx64_conv20_mult_x_im3_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist17_sR_bottomRange_uid498_i_arrayidx64_conv20_mult_x_im3_b_1_q <= $unsigned(sR_bottomRange_uid498_i_arrayidx64_conv20_mult_x_im3_b);
        end
    end

    // sR_mergedSignalTM_uid499_i_arrayidx64_conv20_mult_x_im3(BITJOIN,498)@5
    assign sR_mergedSignalTM_uid499_i_arrayidx64_conv20_mult_x_im3_q = {redist17_sR_bottomRange_uid498_i_arrayidx64_conv20_mult_x_im3_b_1_q, sR_bottomExtension_uid428_i_arrayidx64_conv20_mult_x_im0_q};

    // i_arrayidx64_conv20_mult_x_sums_align_2(BITSHIFT,182)@5
    assign i_arrayidx64_conv20_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid499_i_arrayidx64_conv20_mult_x_im3_q, 18'b000000000000000000 };
    assign i_arrayidx64_conv20_mult_x_sums_align_2_q = i_arrayidx64_conv20_mult_x_sums_align_2_qint[44:0];

    // i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,794)@5
    assign i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_arrayidx64_conv20_mult_x_sums_align_2_q};

    // redist10_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_d_1(DELAY,819)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_d_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist10_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_d_1_q <= $unsigned(i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_d);
        end
    end

    // highBBits_uid561_i_arrayidx64_conv20_mult_x_im6(BITSELECT,560)@4
    assign highBBits_uid561_i_arrayidx64_conv20_mult_x_im6_b = redist10_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_d_1_q[17:3];

    // highBBits_uid556_i_arrayidx64_conv20_mult_x_im6(BITSELECT,555)@3
    assign highBBits_uid556_i_arrayidx64_conv20_mult_x_im6_b = i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_d[17:1];

    // addsumAHighB_uid557_i_arrayidx64_conv20_mult_x_im6(ADD,556)@3 + 1
    assign addsumAHighB_uid557_i_arrayidx64_conv20_mult_x_im6_a = {1'b0, i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_d};
    assign addsumAHighB_uid557_i_arrayidx64_conv20_mult_x_im6_b = {2'b00, highBBits_uid556_i_arrayidx64_conv20_mult_x_im6_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid557_i_arrayidx64_conv20_mult_x_im6_o <= 19'b0;
        end
        else if (in_enable == 1'b1)
        begin
            addsumAHighB_uid557_i_arrayidx64_conv20_mult_x_im6_o <= $unsigned(addsumAHighB_uid557_i_arrayidx64_conv20_mult_x_im6_a) + $unsigned(addsumAHighB_uid557_i_arrayidx64_conv20_mult_x_im6_b);
        end
    end
    assign addsumAHighB_uid557_i_arrayidx64_conv20_mult_x_im6_q = addsumAHighB_uid557_i_arrayidx64_conv20_mult_x_im6_o[18:0];

    // lowRangeB_uid555_i_arrayidx64_conv20_mult_x_im6(BITSELECT,554)@4
    assign lowRangeB_uid555_i_arrayidx64_conv20_mult_x_im6_in = redist10_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_d_1_q[0:0];
    assign lowRangeB_uid555_i_arrayidx64_conv20_mult_x_im6_b = lowRangeB_uid555_i_arrayidx64_conv20_mult_x_im6_in[0:0];

    // add_uid558_i_arrayidx64_conv20_mult_x_im6(BITJOIN,557)@4
    assign add_uid558_i_arrayidx64_conv20_mult_x_im6_q = {addsumAHighB_uid557_i_arrayidx64_conv20_mult_x_im6_q, lowRangeB_uid555_i_arrayidx64_conv20_mult_x_im6_b};

    // a_subconst_25_sumAHighB_uid562_i_arrayidx64_conv20_mult_x_im6(ADD,561)@4
    assign a_subconst_25_sumAHighB_uid562_i_arrayidx64_conv20_mult_x_im6_a = {1'b0, add_uid558_i_arrayidx64_conv20_mult_x_im6_q};
    assign a_subconst_25_sumAHighB_uid562_i_arrayidx64_conv20_mult_x_im6_b = {6'b000000, highBBits_uid561_i_arrayidx64_conv20_mult_x_im6_b};
    assign a_subconst_25_sumAHighB_uid562_i_arrayidx64_conv20_mult_x_im6_o = $unsigned(a_subconst_25_sumAHighB_uid562_i_arrayidx64_conv20_mult_x_im6_a) + $unsigned(a_subconst_25_sumAHighB_uid562_i_arrayidx64_conv20_mult_x_im6_b);
    assign a_subconst_25_sumAHighB_uid562_i_arrayidx64_conv20_mult_x_im6_q = a_subconst_25_sumAHighB_uid562_i_arrayidx64_conv20_mult_x_im6_o[20:0];

    // lowRangeB_uid560_i_arrayidx64_conv20_mult_x_im6(BITSELECT,559)@4
    assign lowRangeB_uid560_i_arrayidx64_conv20_mult_x_im6_in = redist10_i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_d_1_q[2:0];
    assign lowRangeB_uid560_i_arrayidx64_conv20_mult_x_im6_b = lowRangeB_uid560_i_arrayidx64_conv20_mult_x_im6_in[2:0];

    // a_subconst_25_uid563_i_arrayidx64_conv20_mult_x_im6(BITJOIN,562)@4
    assign a_subconst_25_uid563_i_arrayidx64_conv20_mult_x_im6_q = {a_subconst_25_sumAHighB_uid562_i_arrayidx64_conv20_mult_x_im6_q, lowRangeB_uid560_i_arrayidx64_conv20_mult_x_im6_b};

    // sR_bottomRange_uid567_i_arrayidx64_conv20_mult_x_im6(BITSELECT,566)@4
    assign sR_bottomRange_uid567_i_arrayidx64_conv20_mult_x_im6_in = a_subconst_25_uid563_i_arrayidx64_conv20_mult_x_im6_q[22:0];
    assign sR_bottomRange_uid567_i_arrayidx64_conv20_mult_x_im6_b = sR_bottomRange_uid567_i_arrayidx64_conv20_mult_x_im6_in[22:0];

    // redist16_sR_bottomRange_uid567_i_arrayidx64_conv20_mult_x_im6_b_1(DELAY,825)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sR_bottomRange_uid567_i_arrayidx64_conv20_mult_x_im6_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist16_sR_bottomRange_uid567_i_arrayidx64_conv20_mult_x_im6_b_1_q <= $unsigned(sR_bottomRange_uid567_i_arrayidx64_conv20_mult_x_im6_b);
        end
    end

    // sR_mergedSignalTM_uid568_i_arrayidx64_conv20_mult_x_im6(BITJOIN,567)@5
    assign sR_mergedSignalTM_uid568_i_arrayidx64_conv20_mult_x_im6_q = {redist16_sR_bottomRange_uid567_i_arrayidx64_conv20_mult_x_im6_b_1_q, sR_bottomExtension_uid428_i_arrayidx64_conv20_mult_x_im0_q};

    // i_arrayidx64_conv20_mult_x_sums_align_0(BITSHIFT,180)@5
    assign i_arrayidx64_conv20_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid568_i_arrayidx64_conv20_mult_x_im6_q, 9'b000000000 };
    assign i_arrayidx64_conv20_mult_x_sums_align_0_q = i_arrayidx64_conv20_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select(BITSELECT,804)@5
    assign i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b = $unsigned(i_arrayidx64_conv20_mult_x_sums_align_0_q[24:0]);
    assign i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c = $unsigned(i_arrayidx64_conv20_mult_x_sums_align_0_q[35:25]);

    // highBBits_uid423_i_arrayidx64_conv20_mult_x_im0(BITSELECT,422)@3
    assign highBBits_uid423_i_arrayidx64_conv20_mult_x_im0_b = i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_b[17:3];

    // redist18_highBBits_uid423_i_arrayidx64_conv20_mult_x_im0_b_1(DELAY,827)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_highBBits_uid423_i_arrayidx64_conv20_mult_x_im0_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist18_highBBits_uid423_i_arrayidx64_conv20_mult_x_im0_b_1_q <= $unsigned(highBBits_uid423_i_arrayidx64_conv20_mult_x_im0_b);
        end
    end

    // highBBits_uid418_i_arrayidx64_conv20_mult_x_im0(BITSELECT,417)@3
    assign highBBits_uid418_i_arrayidx64_conv20_mult_x_im0_b = i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_b[17:1];

    // addsumAHighB_uid419_i_arrayidx64_conv20_mult_x_im0(ADD,418)@3 + 1
    assign addsumAHighB_uid419_i_arrayidx64_conv20_mult_x_im0_a = {1'b0, i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_b};
    assign addsumAHighB_uid419_i_arrayidx64_conv20_mult_x_im0_b = {2'b00, highBBits_uid418_i_arrayidx64_conv20_mult_x_im0_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid419_i_arrayidx64_conv20_mult_x_im0_o <= 19'b0;
        end
        else if (in_enable == 1'b1)
        begin
            addsumAHighB_uid419_i_arrayidx64_conv20_mult_x_im0_o <= $unsigned(addsumAHighB_uid419_i_arrayidx64_conv20_mult_x_im0_a) + $unsigned(addsumAHighB_uid419_i_arrayidx64_conv20_mult_x_im0_b);
        end
    end
    assign addsumAHighB_uid419_i_arrayidx64_conv20_mult_x_im0_q = addsumAHighB_uid419_i_arrayidx64_conv20_mult_x_im0_o[18:0];

    // lowRangeB_uid417_i_arrayidx64_conv20_mult_x_im0(BITSELECT,416)@3
    assign lowRangeB_uid417_i_arrayidx64_conv20_mult_x_im0_in = i_arrayidx64_conv20_mult_x_bs1_merged_bit_select_b[0:0];
    assign lowRangeB_uid417_i_arrayidx64_conv20_mult_x_im0_b = lowRangeB_uid417_i_arrayidx64_conv20_mult_x_im0_in[0:0];

    // redist19_lowRangeB_uid417_i_arrayidx64_conv20_mult_x_im0_b_1(DELAY,828)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_lowRangeB_uid417_i_arrayidx64_conv20_mult_x_im0_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist19_lowRangeB_uid417_i_arrayidx64_conv20_mult_x_im0_b_1_q <= $unsigned(lowRangeB_uid417_i_arrayidx64_conv20_mult_x_im0_b);
        end
    end

    // add_uid420_i_arrayidx64_conv20_mult_x_im0(BITJOIN,419)@4
    assign add_uid420_i_arrayidx64_conv20_mult_x_im0_q = {addsumAHighB_uid419_i_arrayidx64_conv20_mult_x_im0_q, redist19_lowRangeB_uid417_i_arrayidx64_conv20_mult_x_im0_b_1_q};

    // a_subconst_25_sumAHighB_uid424_i_arrayidx64_conv20_mult_x_im0(ADD,423)@4
    assign a_subconst_25_sumAHighB_uid424_i_arrayidx64_conv20_mult_x_im0_a = {1'b0, add_uid420_i_arrayidx64_conv20_mult_x_im0_q};
    assign a_subconst_25_sumAHighB_uid424_i_arrayidx64_conv20_mult_x_im0_b = {6'b000000, redist18_highBBits_uid423_i_arrayidx64_conv20_mult_x_im0_b_1_q};
    assign a_subconst_25_sumAHighB_uid424_i_arrayidx64_conv20_mult_x_im0_o = $unsigned(a_subconst_25_sumAHighB_uid424_i_arrayidx64_conv20_mult_x_im0_a) + $unsigned(a_subconst_25_sumAHighB_uid424_i_arrayidx64_conv20_mult_x_im0_b);
    assign a_subconst_25_sumAHighB_uid424_i_arrayidx64_conv20_mult_x_im0_q = a_subconst_25_sumAHighB_uid424_i_arrayidx64_conv20_mult_x_im0_o[20:0];

    // i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2(BITSELECT,786)@4
    assign i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b = $unsigned(a_subconst_25_sumAHighB_uid424_i_arrayidx64_conv20_mult_x_im0_q[19:0]);

    // redist12_i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1(DELAY,821)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist12_i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_q <= $unsigned(i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b);
        end
    end

    // redist30_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_3(DELAY,839)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_3_delay_0 <= '0;
            redist30_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist30_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_3_delay_0 <= $unsigned(redist29_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_1_q);
            redist30_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_3_q <= redist30_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_3_delay_0;
        end
    end

    // i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1(BITSELECT,785)@5
    assign i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b = $unsigned(redist30_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_3_q[2:0]);

    // i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,788)@5
    assign i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_b, redist12_i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_2_b_1_q, i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b, sR_bottomExtension_uid428_i_arrayidx64_conv20_mult_x_im0_q};

    // i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p1_of_2(ADD,723)@5 + 1
    assign i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p1_of_2_a = {1'b0, i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q};
    assign i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p1_of_2_b = {1'b0, i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p1_of_2_c[0] = i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p1_of_2_o[52];
    assign i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p1_of_2_q = i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p1_of_2_o[51:0];

    // valid_fanout_reg5(REG,129)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg5_q <= $unsigned(redist55_sync_together73_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a10a10f32_out04335_conv211(BLACKBOX,93)@6
    conv2_i_llvm_fpga_ffwd_dest_p1024a10a10f32_out04335_0 thei_llvm_fpga_ffwd_dest_p1024a10a10f32_out04335_conv211 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_p1024a10a10f32_out04335_conv211_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx64_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,800)@6
    assign i_arrayidx64_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1024a10a10f32_out04335_conv211_out_dest_data_out_3_0[51:0]);
    assign i_arrayidx64_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1024a10a10f32_out04335_conv211_out_dest_data_out_3_0[63:52]);

    // i_arrayidx64_conv20_add_x_p1_of_2(ADD,705)@6 + 1
    assign i_arrayidx64_conv20_add_x_p1_of_2_a = {1'b0, i_arrayidx64_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_arrayidx64_conv20_add_x_p1_of_2_b = {1'b0, i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p1_of_2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx64_conv20_add_x_p1_of_2_o <= 53'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_arrayidx64_conv20_add_x_p1_of_2_o <= $unsigned(i_arrayidx64_conv20_add_x_p1_of_2_a) + $unsigned(i_arrayidx64_conv20_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx64_conv20_add_x_p1_of_2_c[0] = i_arrayidx64_conv20_add_x_p1_of_2_o[52];
    assign i_arrayidx64_conv20_add_x_p1_of_2_q = i_arrayidx64_conv20_add_x_p1_of_2_o[51:0];

    // i_arrayidx64_conv20_dupName_0_add_x_p1_of_2(ADD,687)@7 + 1
    assign i_arrayidx64_conv20_dupName_0_add_x_p1_of_2_a = {1'b0, i_arrayidx64_conv20_add_x_p1_of_2_q};
    assign i_arrayidx64_conv20_dupName_0_add_x_p1_of_2_b = {1'b0, i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx64_conv20_dupName_0_add_x_p1_of_2_o <= 53'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_arrayidx64_conv20_dupName_0_add_x_p1_of_2_o <= $unsigned(i_arrayidx64_conv20_dupName_0_add_x_p1_of_2_a) + $unsigned(i_arrayidx64_conv20_dupName_0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx64_conv20_dupName_0_add_x_p1_of_2_c[0] = i_arrayidx64_conv20_dupName_0_add_x_p1_of_2_o[52];
    assign i_arrayidx64_conv20_dupName_0_add_x_p1_of_2_q = i_arrayidx64_conv20_dupName_0_add_x_p1_of_2_o[51:0];

    // i_arrayidx64_conv20_dupName_1_add_x_p1_of_2(ADD,696)@8 + 1
    assign i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_a = {1'b0, i_arrayidx64_conv20_dupName_0_add_x_p1_of_2_q};
    assign i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_b = {1'b0, i_arrayidx64_conv20_dupName_1_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_o <= 53'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_o <= $unsigned(i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_a) + $unsigned(i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_c[0] = i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_o[52];
    assign i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_q = i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_o[51:0];

    // i_arrayidx34_conv20_add_x_BitSelect_for_b_tessel1_0(BITSELECT,735)
    assign i_arrayidx34_conv20_add_x_BitSelect_for_b_tessel1_0_b = c_i32_040_q[29:18];

    // i_arrayidx34_conv20_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,737)@9
    assign i_arrayidx34_conv20_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx34_conv20_add_x_BitSelect_for_b_tessel1_0_b};

    // redist5_i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1(DELAY,814)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_q <= $unsigned(i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
        end
    end

    // i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,783)@7
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist5_i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_q};

    // i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a(CONSTANT,709)
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q = $unsigned(11'b00000000000);

    // redist6_i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1(DELAY,815)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist6_i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_q <= $unsigned(i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c);
        end
    end

    // i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,777)@7
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, redist6_i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_q};

    // i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2(ADD,715)@7 + 1
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin = i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p1_of_2_c;
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q}, i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= 21'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_o[19:1];

    // i_arrayidx64_conv20_dupName_0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,745)@8
    assign i_arrayidx64_conv20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx64_conv20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,747)@8
    assign i_arrayidx64_conv20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx64_conv20_dupName_0_add_x_BitSelect_for_b_tessel1_0_b};

    // redist3_i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1(DELAY,812)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_q <= $unsigned(i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
        end
    end

    // i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,797)@6
    assign i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist3_i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_q};

    // redist4_i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1(DELAY,813)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_q <= $unsigned(i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c);
        end
    end

    // i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,791)@6
    assign i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {i_arrayidx64_conv20_dupName_0_mult_x_sums_result_add_0_0_UpperBits_for_a_q, redist4_i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_tessel0_3_merged_bit_select_c_1_q};

    // i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p2_of_2(ADD,724)@6 + 1
    assign i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p2_of_2_cin = i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p1_of_2_c;
    assign i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p2_of_2_a = { {1'b0, i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p2_of_2_b = { {1'b0, i_arrayidx64_conv20_mult_x_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q}, i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p2_of_2_o <= 24'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p2_of_2_q = i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p2_of_2_o[22:1];

    // i_arrayidx64_conv20_add_x_BitSelect_for_b_tessel1_0(BITSELECT,767)@7
    assign i_arrayidx64_conv20_add_x_BitSelect_for_b_tessel1_0_b = $unsigned(i_arrayidx64_conv20_mult_x_sums_result_add_0_0_p2_of_2_q[11:0]);

    // i_arrayidx64_conv20_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,769)@7
    assign i_arrayidx64_conv20_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx64_conv20_add_x_BitSelect_for_b_tessel1_0_b};

    // redist8_i_arrayidx64_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,817)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx64_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist8_i_arrayidx64_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_arrayidx64_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx64_conv20_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,764)@7
    assign i_arrayidx64_conv20_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist8_i_arrayidx64_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_arrayidx64_conv20_add_x_p2_of_2(ADD,706)@7 + 1
    assign i_arrayidx64_conv20_add_x_p2_of_2_cin = i_arrayidx64_conv20_add_x_p1_of_2_c;
    assign i_arrayidx64_conv20_add_x_p2_of_2_a = { {1'b0, i_arrayidx64_conv20_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_arrayidx64_conv20_add_x_p2_of_2_b = { {1'b0, i_arrayidx64_conv20_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_arrayidx64_conv20_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx64_conv20_add_x_p2_of_2_o <= 15'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_arrayidx64_conv20_add_x_p2_of_2_o <= $unsigned(i_arrayidx64_conv20_add_x_p2_of_2_a) + $unsigned(i_arrayidx64_conv20_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx64_conv20_add_x_p2_of_2_q = i_arrayidx64_conv20_add_x_p2_of_2_o[13:1];

    // i_arrayidx64_conv20_dupName_0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,740)@8
    assign i_arrayidx64_conv20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx64_conv20_add_x_p2_of_2_q[11:0]);

    // i_arrayidx64_conv20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,742)@8
    assign i_arrayidx64_conv20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx64_conv20_dupName_0_add_x_BitSelect_for_a_tessel1_0_b};

    // i_arrayidx64_conv20_dupName_0_add_x_p2_of_2(ADD,688)@8 + 1
    assign i_arrayidx64_conv20_dupName_0_add_x_p2_of_2_cin = i_arrayidx64_conv20_dupName_0_add_x_p1_of_2_c;
    assign i_arrayidx64_conv20_dupName_0_add_x_p2_of_2_a = { {1'b0, i_arrayidx64_conv20_dupName_0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_arrayidx64_conv20_dupName_0_add_x_p2_of_2_b = { {1'b0, i_arrayidx64_conv20_dupName_0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_arrayidx64_conv20_dupName_0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx64_conv20_dupName_0_add_x_p2_of_2_o <= 15'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_arrayidx64_conv20_dupName_0_add_x_p2_of_2_o <= $unsigned(i_arrayidx64_conv20_dupName_0_add_x_p2_of_2_a) + $unsigned(i_arrayidx64_conv20_dupName_0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx64_conv20_dupName_0_add_x_p2_of_2_q = i_arrayidx64_conv20_dupName_0_add_x_p2_of_2_o[13:1];

    // i_arrayidx64_conv20_dupName_1_add_x_BitSelect_for_a_tessel1_0(BITSELECT,750)@9
    assign i_arrayidx64_conv20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(i_arrayidx64_conv20_dupName_0_add_x_p2_of_2_q[11:0]);

    // i_arrayidx64_conv20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,752)@9
    assign i_arrayidx64_conv20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, i_arrayidx64_conv20_dupName_1_add_x_BitSelect_for_a_tessel1_0_b};

    // i_arrayidx64_conv20_dupName_1_add_x_p2_of_2(ADD,697)@9 + 1
    assign i_arrayidx64_conv20_dupName_1_add_x_p2_of_2_cin = i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_c;
    assign i_arrayidx64_conv20_dupName_1_add_x_p2_of_2_a = { {1'b0, i_arrayidx64_conv20_dupName_1_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_arrayidx64_conv20_dupName_1_add_x_p2_of_2_b = { {1'b0, i_arrayidx34_conv20_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_arrayidx64_conv20_dupName_1_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx64_conv20_dupName_1_add_x_p2_of_2_o <= 15'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_arrayidx64_conv20_dupName_1_add_x_p2_of_2_o <= $unsigned(i_arrayidx64_conv20_dupName_1_add_x_p2_of_2_a) + $unsigned(i_arrayidx64_conv20_dupName_1_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx64_conv20_dupName_1_add_x_p2_of_2_q = i_arrayidx64_conv20_dupName_1_add_x_p2_of_2_o[13:1];

    // redist13_i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_q_1(DELAY,822)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist13_i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_q_1_q <= $unsigned(i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_q);
        end
    end

    // i_arrayidx64_conv20_dupName_1_add_x_BitJoin_for_q(BITJOIN,698)@10
    assign i_arrayidx64_conv20_dupName_1_add_x_BitJoin_for_q_q = {i_arrayidx64_conv20_dupName_1_add_x_p2_of_2_q, redist13_i_arrayidx64_conv20_dupName_1_add_x_p1_of_2_q_1_q};

    // i_arrayidx64_conv20_dupName_4_trunc_sel_x(BITSELECT,39)@10
    assign i_arrayidx64_conv20_dupName_4_trunc_sel_x_b = i_arrayidx64_conv20_dupName_1_add_x_BitJoin_for_q_q[63:0];

    // redist28_i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_data_out_3(DELAY,837)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_data_out_3_delay_0 <= '0;
            redist28_i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_data_out_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist28_i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_data_out_3_delay_0 <= $unsigned(redist27_i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_data_out_1_q);
            redist28_i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_data_out_3_q <= redist28_i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_data_out_3_delay_0;
        end
    end

    // redist31_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_6_inputreg0(DELAY,894)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_6_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist31_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_6_inputreg0_q <= $unsigned(redist30_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_3_q);
        end
    end

    // redist31_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_6(DELAY,840)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_6_delay_0 <= '0;
            redist31_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_6_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist31_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_6_delay_0 <= $unsigned(redist31_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_6_inputreg0_q);
            redist31_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_6_q <= redist31_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_6_delay_0;
        end
    end

    // i_arrayidx34_conv20_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,734)@8
    assign i_arrayidx34_conv20_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx34_conv20_add_x_BitSelect_for_b_tessel0_2_b, redist31_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_6_q, i_arrayidx34_conv20_c_i2_01_x_q};

    // valid_fanout_reg3(REG,127)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg3_q <= $unsigned(redist57_sync_together73_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024f32_bias4234_conv27(BLACKBOX,94)@8
    conv2_i_llvm_fpga_ffwd_dest_p1024f32_bias4234_0 thei_llvm_fpga_ffwd_dest_p1024f32_bias4234_conv27 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1024f32_bias4234_conv27_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx34_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,801)@8
    assign i_arrayidx34_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1024f32_bias4234_conv27_out_dest_data_out_2_0[51:0]);
    assign i_arrayidx34_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1024f32_bias4234_conv27_out_dest_data_out_2_0[63:52]);

    // i_arrayidx34_conv20_add_x_p1_of_2(ADD,678)@8 + 1
    assign i_arrayidx34_conv20_add_x_p1_of_2_a = {1'b0, i_arrayidx34_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_arrayidx34_conv20_add_x_p1_of_2_b = {1'b0, i_arrayidx34_conv20_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx34_conv20_add_x_p1_of_2_o <= 53'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_arrayidx34_conv20_add_x_p1_of_2_o <= $unsigned(i_arrayidx34_conv20_add_x_p1_of_2_a) + $unsigned(i_arrayidx34_conv20_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx34_conv20_add_x_p1_of_2_c[0] = i_arrayidx34_conv20_add_x_p1_of_2_o[52];
    assign i_arrayidx34_conv20_add_x_p1_of_2_q = i_arrayidx34_conv20_add_x_p1_of_2_o[51:0];

    // redist7_i_arrayidx34_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,816)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx34_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist7_i_arrayidx34_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_arrayidx34_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx34_conv20_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,730)@9
    assign i_arrayidx34_conv20_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist7_i_arrayidx34_conv20_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_arrayidx34_conv20_add_x_p2_of_2(ADD,679)@9 + 1
    assign i_arrayidx34_conv20_add_x_p2_of_2_cin = i_arrayidx34_conv20_add_x_p1_of_2_c;
    assign i_arrayidx34_conv20_add_x_p2_of_2_a = { {1'b0, i_arrayidx34_conv20_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_arrayidx34_conv20_add_x_p2_of_2_b = { {1'b0, i_arrayidx34_conv20_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_arrayidx34_conv20_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx34_conv20_add_x_p2_of_2_o <= 15'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_arrayidx34_conv20_add_x_p2_of_2_o <= $unsigned(i_arrayidx34_conv20_add_x_p2_of_2_a) + $unsigned(i_arrayidx34_conv20_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx34_conv20_add_x_p2_of_2_q = i_arrayidx34_conv20_add_x_p2_of_2_o[13:1];

    // redist14_i_arrayidx34_conv20_add_x_p1_of_2_q_1(DELAY,823)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_arrayidx34_conv20_add_x_p1_of_2_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist14_i_arrayidx34_conv20_add_x_p1_of_2_q_1_q <= $unsigned(i_arrayidx34_conv20_add_x_p1_of_2_q);
        end
    end

    // i_arrayidx34_conv20_add_x_BitJoin_for_q(BITJOIN,680)@10
    assign i_arrayidx34_conv20_add_x_BitJoin_for_q_q = {i_arrayidx34_conv20_add_x_p2_of_2_q, redist14_i_arrayidx34_conv20_add_x_p1_of_2_q_1_q};

    // i_arrayidx34_conv20_dupName_0_trunc_sel_x(BITSELECT,28)@10
    assign i_arrayidx34_conv20_dupName_0_trunc_sel_x_b = i_arrayidx34_conv20_add_x_BitJoin_for_q_q[63:0];

    // redist33_i_idxprom25_conv26_vt_join_q_7_notEnable(LOGICAL,904)
    assign redist33_i_idxprom25_conv26_vt_join_q_7_notEnable_q = $unsigned(~ (in_enable));

    // redist33_i_idxprom25_conv26_vt_join_q_7_nor(LOGICAL,905)
    assign redist33_i_idxprom25_conv26_vt_join_q_7_nor_q = ~ (redist33_i_idxprom25_conv26_vt_join_q_7_notEnable_q | redist33_i_idxprom25_conv26_vt_join_q_7_sticky_ena_q);

    // redist33_i_idxprom25_conv26_vt_join_q_7_mem_last(CONSTANT,901)
    assign redist33_i_idxprom25_conv26_vt_join_q_7_mem_last_q = $unsigned(3'b010);

    // redist33_i_idxprom25_conv26_vt_join_q_7_cmp(LOGICAL,902)
    assign redist33_i_idxprom25_conv26_vt_join_q_7_cmp_b = {1'b0, redist33_i_idxprom25_conv26_vt_join_q_7_rdmux_q};
    assign redist33_i_idxprom25_conv26_vt_join_q_7_cmp_q = $unsigned(redist33_i_idxprom25_conv26_vt_join_q_7_mem_last_q == redist33_i_idxprom25_conv26_vt_join_q_7_cmp_b ? 1'b1 : 1'b0);

    // redist33_i_idxprom25_conv26_vt_join_q_7_cmpReg(REG,903)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_idxprom25_conv26_vt_join_q_7_cmpReg_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            redist33_i_idxprom25_conv26_vt_join_q_7_cmpReg_q <= $unsigned(redist33_i_idxprom25_conv26_vt_join_q_7_cmp_q);
        end
    end

    // redist33_i_idxprom25_conv26_vt_join_q_7_sticky_ena(REG,906)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_idxprom25_conv26_vt_join_q_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist33_i_idxprom25_conv26_vt_join_q_7_nor_q == 1'b1)
        begin
            redist33_i_idxprom25_conv26_vt_join_q_7_sticky_ena_q <= $unsigned(redist33_i_idxprom25_conv26_vt_join_q_7_cmpReg_q);
        end
    end

    // redist33_i_idxprom25_conv26_vt_join_q_7_enaAnd(LOGICAL,907)
    assign redist33_i_idxprom25_conv26_vt_join_q_7_enaAnd_q = redist33_i_idxprom25_conv26_vt_join_q_7_sticky_ena_q & in_enable;

    // redist33_i_idxprom25_conv26_vt_join_q_7_rdcnt(COUNTER,898)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_idxprom25_conv26_vt_join_q_7_rdcnt_i <= 2'd0;
        end
        else if (in_enable == 1'b1)
        begin
            redist33_i_idxprom25_conv26_vt_join_q_7_rdcnt_i <= $unsigned(redist33_i_idxprom25_conv26_vt_join_q_7_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist33_i_idxprom25_conv26_vt_join_q_7_rdcnt_q = redist33_i_idxprom25_conv26_vt_join_q_7_rdcnt_i[1:0];

    // redist33_i_idxprom25_conv26_vt_join_q_7_rdmux(MUX,899)
    assign redist33_i_idxprom25_conv26_vt_join_q_7_rdmux_s = in_enable;
    always @(redist33_i_idxprom25_conv26_vt_join_q_7_rdmux_s or redist33_i_idxprom25_conv26_vt_join_q_7_wraddr_q or redist33_i_idxprom25_conv26_vt_join_q_7_rdcnt_q)
    begin
        unique case (redist33_i_idxprom25_conv26_vt_join_q_7_rdmux_s)
            1'b0 : redist33_i_idxprom25_conv26_vt_join_q_7_rdmux_q = redist33_i_idxprom25_conv26_vt_join_q_7_wraddr_q;
            1'b1 : redist33_i_idxprom25_conv26_vt_join_q_7_rdmux_q = redist33_i_idxprom25_conv26_vt_join_q_7_rdcnt_q;
            default : redist33_i_idxprom25_conv26_vt_join_q_7_rdmux_q = 2'b0;
        endcase
    end

    // redist33_i_idxprom25_conv26_vt_join_q_7_inputreg0(DELAY,895)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_idxprom25_conv26_vt_join_q_7_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist33_i_idxprom25_conv26_vt_join_q_7_inputreg0_q <= $unsigned(i_idxprom25_conv26_vt_join_q);
        end
    end

    // redist33_i_idxprom25_conv26_vt_join_q_7_wraddr(REG,900)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_idxprom25_conv26_vt_join_q_7_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist33_i_idxprom25_conv26_vt_join_q_7_wraddr_q <= $unsigned(redist33_i_idxprom25_conv26_vt_join_q_7_rdmux_q);
        end
    end

    // redist33_i_idxprom25_conv26_vt_join_q_7_mem(DUALMEM,897)
    assign redist33_i_idxprom25_conv26_vt_join_q_7_mem_ia = $unsigned(redist33_i_idxprom25_conv26_vt_join_q_7_inputreg0_q);
    assign redist33_i_idxprom25_conv26_vt_join_q_7_mem_aa = redist33_i_idxprom25_conv26_vt_join_q_7_wraddr_q;
    assign redist33_i_idxprom25_conv26_vt_join_q_7_mem_ab = redist33_i_idxprom25_conv26_vt_join_q_7_rdmux_q;
    assign redist33_i_idxprom25_conv26_vt_join_q_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist33_i_idxprom25_conv26_vt_join_q_7_mem_dmem (
        .clocken1(redist33_i_idxprom25_conv26_vt_join_q_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist33_i_idxprom25_conv26_vt_join_q_7_mem_reset0),
        .clock1(clock),
        .address_a(redist33_i_idxprom25_conv26_vt_join_q_7_mem_aa),
        .data_a(redist33_i_idxprom25_conv26_vt_join_q_7_mem_ia),
        .wren_a(in_enable[0]),
        .address_b(redist33_i_idxprom25_conv26_vt_join_q_7_mem_ab),
        .q_b(redist33_i_idxprom25_conv26_vt_join_q_7_mem_iq),
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
    assign redist33_i_idxprom25_conv26_vt_join_q_7_mem_q = redist33_i_idxprom25_conv26_vt_join_q_7_mem_iq[63:0];

    // redist33_i_idxprom25_conv26_vt_join_q_7_outputreg0(DELAY,896)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_idxprom25_conv26_vt_join_q_7_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist33_i_idxprom25_conv26_vt_join_q_7_outputreg0_q <= $unsigned(redist33_i_idxprom25_conv26_vt_join_q_7_mem_q);
        end
    end

    // redist32_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_8(DELAY,841)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_8_delay_0 <= '0;
            redist32_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_8_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist32_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_8_delay_0 <= $unsigned(redist31_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_6_q);
            redist32_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_8_q <= redist32_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_8_delay_0;
        end
    end

    // redist26_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_6_inputreg0(DELAY,892)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_6_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist26_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_6_inputreg0_q <= $unsigned(redist25_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_2_q);
        end
    end

    // redist26_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_6(DELAY,835)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_6_delay_0 <= '0;
            redist26_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_6_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist26_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_6_delay_0 <= $unsigned(redist26_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_6_inputreg0_q);
            redist26_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_6_q <= redist26_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_6_delay_0;
        end
    end

    // redist26_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_6_outputreg0(DELAY,893)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_6_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist26_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_6_outputreg0_q <= $unsigned(redist26_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_6_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,63)@10
    assign out_c0_exi27_0_tpl = GND_q;
    assign out_c0_exi27_1_tpl = redist26_i_llvm_fpga_pop_i32_row_038_pop2096_pop35_conv23_out_data_out_6_outputreg0_q;
    assign out_c0_exi27_2_tpl = redist32_i_llvm_fpga_pop_i32_channel_039_pop1778_pop31_conv25_out_data_out_8_q;
    assign out_c0_exi27_3_tpl = redist33_i_idxprom25_conv26_vt_join_q_7_outputreg0_q;
    assign out_c0_exi27_4_tpl = i_arrayidx34_conv20_dupName_0_trunc_sel_x_b;
    assign out_c0_exi27_5_tpl = redist28_i_llvm_fpga_pop_i32_col_037_pop27_conv29_out_data_out_3_q;
    assign out_c0_exi27_6_tpl = i_arrayidx64_conv20_dupName_4_trunc_sel_x_b;
    assign out_c0_exi27_7_tpl = redist23_i_exitcond25_conv214_cmp_nsign_q_9_q;
    assign out_c0_exi27_8_tpl = i_notcmp46_conv218_q;
    assign out_c0_exi27_9_tpl = i_llvm_fpga_pop_i1_exitcond3168_pop29_conv224_out_data_out;
    assign out_c0_exi27_10_tpl = i_llvm_fpga_pop_i1_notcmp5673_pop30_conv226_out_data_out;
    assign out_c0_exi27_11_tpl = i_llvm_fpga_pop_i1_memdep_phi6_pop1883_pop32_conv228_out_data_out;
    assign out_c0_exi27_12_tpl = i_llvm_fpga_pop_i1_exitcond2888_pop33_conv230_out_data_out;
    assign out_c0_exi27_13_tpl = i_llvm_fpga_pop_i1_notcmp5192_pop34_conv232_out_data_out;
    assign out_c0_exi27_14_tpl = i_llvm_fpga_pop_i1_memdep_phi5_pop21100_pop36_conv234_out_data_out;
    assign out_c0_exi27_15_tpl = redist39_sync_together73_aunroll_x_in_c0_eni13_2_tpl_9_q;
    assign out_c0_exi27_16_tpl = redist48_sync_together73_aunroll_x_in_c0_eni13_10_tpl_9_q;
    assign out_c0_exi27_17_tpl = redist49_sync_together73_aunroll_x_in_c0_eni13_11_tpl_9_q;
    assign out_c0_exi27_18_tpl = redist50_sync_together73_aunroll_x_in_c0_eni13_12_tpl_9_outputreg0_q;
    assign out_c0_exi27_19_tpl = redist51_sync_together73_aunroll_x_in_c0_eni13_13_tpl_9_q;
    assign out_c0_exi27_20_tpl = redist45_sync_together73_aunroll_x_in_c0_eni13_7_tpl_9_q;
    assign out_c0_exi27_21_tpl = redist46_sync_together73_aunroll_x_in_c0_eni13_8_tpl_9_q;
    assign out_c0_exi27_22_tpl = redist35_sync_together73_aunroll_x_in_c0_eni13_1_tpl_9_outputreg0_q;
    assign out_c0_exi27_23_tpl = redist47_sync_together73_aunroll_x_in_c0_eni13_9_tpl_9_q;
    assign out_c0_exi27_24_tpl = redist42_sync_together73_aunroll_x_in_c0_eni13_4_tpl_9_q;
    assign out_c0_exi27_25_tpl = redist43_sync_together73_aunroll_x_in_c0_eni13_5_tpl_9_q;
    assign out_c0_exi27_26_tpl = redist41_sync_together73_aunroll_x_in_c0_eni13_3_tpl_9_outputreg0_q;
    assign out_c0_exi27_27_tpl = redist44_sync_together73_aunroll_x_in_c0_eni13_6_tpl_9_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv21 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond49_conv219(BLACKBOX,112)@1
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    conv2_i_llvm_fpga_push_i1_notexitcond49_0 thei_llvm_fpga_push_i1_notexitcond49_conv219 (
        .in_data_in(i_exitcond25_conv214_cmp_nsign_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pipeline_keep_going48_conv22_out_not_exitcond_stall_out),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_notexitcond49_conv219_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_notexitcond49_conv219_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going48_conv22(BLACKBOX,95)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2_i_llvm_fpga_pipeline_keep_going48_0 thei_llvm_fpga_pipeline_keep_going48_conv22 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond49_conv219_out_feedback_out_9),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond49_conv219_out_feedback_valid_out_9),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going48_conv22_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going48_conv22_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going48_conv22_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going48_conv22_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,77)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_valid_out = i_llvm_fpga_pipeline_keep_going48_conv22_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_conv22_exiting_stall_out = i_llvm_fpga_pipeline_keep_going48_conv22_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,120)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going48_conv22_out_pipeline_valid_out;

endmodule
