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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond13_preheader_conv2s_c0_enter58541_conv20
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:45 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_i_sfc_logic_s_c0_in_for_cond13_pre0000c0_enter58541_conv20 (
    output wire [0:0] out_c0_exi71_0_tpl,
    output wire [31:0] out_c0_exi71_1_tpl,
    output wire [31:0] out_c0_exi71_2_tpl,
    output wire [31:0] out_c0_exi71_3_tpl,
    output wire [31:0] out_c0_exi71_4_tpl,
    output wire [31:0] out_c0_exi71_5_tpl,
    output wire [0:0] out_c0_exi71_6_tpl,
    output wire [0:0] out_c0_exi71_7_tpl,
    output wire [0:0] out_c0_exi71_8_tpl,
    output wire [0:0] out_c0_exi71_9_tpl,
    output wire [31:0] out_c0_exi71_10_tpl,
    output wire [0:0] out_c0_exi71_11_tpl,
    output wire [0:0] out_c0_exi71_12_tpl,
    output wire [0:0] out_c0_exi71_13_tpl,
    output wire [0:0] out_c0_exi71_14_tpl,
    output wire [63:0] out_c0_exi71_15_tpl,
    output wire [63:0] out_c0_exi71_16_tpl,
    output wire [31:0] out_c0_exi71_17_tpl,
    output wire [63:0] out_c0_exi71_18_tpl,
    output wire [0:0] out_c0_exi71_19_tpl,
    output wire [0:0] out_c0_exi71_20_tpl,
    output wire [0:0] out_c0_exi71_21_tpl,
    output wire [0:0] out_c0_exi71_22_tpl,
    output wire [0:0] out_c0_exi71_23_tpl,
    output wire [0:0] out_c0_exi71_24_tpl,
    output wire [0:0] out_c0_exi71_25_tpl,
    output wire [0:0] out_c0_exi71_26_tpl,
    output wire [0:0] out_c0_exi71_27_tpl,
    output wire [31:0] out_c0_exi71_28_tpl,
    output wire [0:0] out_c0_exi71_29_tpl,
    output wire [0:0] out_c0_exi71_30_tpl,
    output wire [0:0] out_c0_exi71_31_tpl,
    output wire [31:0] out_c0_exi71_32_tpl,
    output wire [0:0] out_c0_exi71_33_tpl,
    output wire [0:0] out_c0_exi71_34_tpl,
    output wire [0:0] out_c0_exi71_35_tpl,
    output wire [31:0] out_c0_exi71_36_tpl,
    output wire [0:0] out_c0_exi71_37_tpl,
    output wire [31:0] out_c0_exi71_38_tpl,
    output wire [31:0] out_c0_exi71_39_tpl,
    output wire [63:0] out_c0_exi71_40_tpl,
    output wire [63:0] out_c0_exi71_41_tpl,
    output wire [31:0] out_c0_exi71_42_tpl,
    output wire [63:0] out_c0_exi71_43_tpl,
    output wire [0:0] out_c0_exi71_44_tpl,
    output wire [0:0] out_c0_exi71_45_tpl,
    output wire [0:0] out_c0_exi71_46_tpl,
    output wire [0:0] out_c0_exi71_47_tpl,
    output wire [0:0] out_c0_exi71_48_tpl,
    output wire [0:0] out_c0_exi71_49_tpl,
    output wire [0:0] out_c0_exi71_50_tpl,
    output wire [0:0] out_c0_exi71_51_tpl,
    output wire [0:0] out_c0_exi71_52_tpl,
    output wire [0:0] out_c0_exi71_53_tpl,
    output wire [0:0] out_c0_exi71_54_tpl,
    output wire [31:0] out_c0_exi71_55_tpl,
    output wire [0:0] out_c0_exi71_56_tpl,
    output wire [0:0] out_c0_exi71_57_tpl,
    output wire [0:0] out_c0_exi71_58_tpl,
    output wire [31:0] out_c0_exi71_59_tpl,
    output wire [0:0] out_c0_exi71_60_tpl,
    output wire [0:0] out_c0_exi71_61_tpl,
    output wire [0:0] out_c0_exi71_62_tpl,
    output wire [31:0] out_c0_exi71_63_tpl,
    output wire [0:0] out_c0_exi71_64_tpl,
    output wire [63:0] out_c0_exi71_65_tpl,
    output wire [63:0] out_c0_exi71_66_tpl,
    output wire [31:0] out_c0_exi71_67_tpl,
    output wire [63:0] out_c0_exi71_68_tpl,
    output wire [0:0] out_c0_exi71_69_tpl,
    output wire [0:0] out_c0_exi71_70_tpl,
    output wire [0:0] out_c0_exi71_71_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv21,
    input wire [0:0] in_c0_eni47_0_tpl,
    input wire [0:0] in_c0_eni47_1_tpl,
    input wire [31:0] in_c0_eni47_2_tpl,
    input wire [31:0] in_c0_eni47_3_tpl,
    input wire [0:0] in_c0_eni47_4_tpl,
    input wire [0:0] in_c0_eni47_5_tpl,
    input wire [31:0] in_c0_eni47_6_tpl,
    input wire [0:0] in_c0_eni47_7_tpl,
    input wire [0:0] in_c0_eni47_8_tpl,
    input wire [0:0] in_c0_eni47_9_tpl,
    input wire [0:0] in_c0_eni47_10_tpl,
    input wire [63:0] in_c0_eni47_11_tpl,
    input wire [63:0] in_c0_eni47_12_tpl,
    input wire [31:0] in_c0_eni47_13_tpl,
    input wire [63:0] in_c0_eni47_14_tpl,
    input wire [0:0] in_c0_eni47_15_tpl,
    input wire [0:0] in_c0_eni47_16_tpl,
    input wire [0:0] in_c0_eni47_17_tpl,
    input wire [0:0] in_c0_eni47_18_tpl,
    input wire [0:0] in_c0_eni47_19_tpl,
    input wire [0:0] in_c0_eni47_20_tpl,
    input wire [0:0] in_c0_eni47_21_tpl,
    input wire [0:0] in_c0_eni47_22_tpl,
    input wire [31:0] in_c0_eni47_23_tpl,
    input wire [0:0] in_c0_eni47_24_tpl,
    input wire [0:0] in_c0_eni47_25_tpl,
    input wire [0:0] in_c0_eni47_26_tpl,
    input wire [31:0] in_c0_eni47_27_tpl,
    input wire [0:0] in_c0_eni47_28_tpl,
    input wire [0:0] in_c0_eni47_29_tpl,
    input wire [0:0] in_c0_eni47_30_tpl,
    input wire [31:0] in_c0_eni47_31_tpl,
    input wire [0:0] in_c0_eni47_32_tpl,
    input wire [31:0] in_c0_eni47_33_tpl,
    input wire [31:0] in_c0_eni47_34_tpl,
    input wire [63:0] in_c0_eni47_35_tpl,
    input wire [63:0] in_c0_eni47_36_tpl,
    input wire [31:0] in_c0_eni47_37_tpl,
    input wire [63:0] in_c0_eni47_38_tpl,
    input wire [0:0] in_c0_eni47_39_tpl,
    input wire [0:0] in_c0_eni47_40_tpl,
    input wire [0:0] in_c0_eni47_41_tpl,
    input wire [0:0] in_c0_eni47_42_tpl,
    input wire [0:0] in_c0_eni47_43_tpl,
    input wire [0:0] in_c0_eni47_44_tpl,
    input wire [0:0] in_c0_eni47_45_tpl,
    input wire [0:0] in_c0_eni47_46_tpl,
    input wire [0:0] in_c0_eni47_47_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add_conv27_sel_x_b;
    wire [3:0] bgTrunc_i_fpga_indvars_iv_next18_conv215_sel_x_b;
    wire [31:0] bgTrunc_i_inc67_conv217_sel_x_b;
    wire [31:0] c_i32_099_q;
    wire [31:0] c_i32_1103_q;
    wire [3:0] c_i4_1102_q;
    wire [3:0] c_i4_3100_q;
    wire [32:0] i_add_conv27_a;
    wire [32:0] i_add_conv27_b;
    logic [32:0] i_add_conv27_o;
    wire [32:0] i_add_conv27_q;
    wire [4:0] i_fpga_indvars_iv_next18_conv215_a;
    wire [4:0] i_fpga_indvars_iv_next18_conv215_b;
    logic [4:0] i_fpga_indvars_iv_next18_conv215_o;
    wire [4:0] i_fpga_indvars_iv_next18_conv215_q;
    wire [32:0] i_inc67_conv217_a;
    wire [32:0] i_inc67_conv217_b;
    logic [32:0] i_inc67_conv217_o;
    wire [32:0] i_inc67_conv217_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_conv22_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_conv22_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_conv22_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going38_conv22_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond22127_pop73_conv247_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond22127_pop73_conv247_out_feedback_stall_out_73;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond25118_pop70_conv241_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond25118_pop70_conv241_out_feedback_stall_out_70;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond2890_pop62_conv227_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond2890_pop62_conv227_out_feedback_stall_out_62;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond3170_pop58_conv219_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond3170_pop58_conv219_out_feedback_stall_out_58;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop39133_pop76_conv251_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop39133_pop76_conv251_out_feedback_stall_out_76;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop28124_pop72_conv245_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop28124_pop72_conv245_out_feedback_stall_out_72;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop21102_pop65_conv231_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop21102_pop65_conv231_out_feedback_stall_out_65;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop1885_pop61_conv225_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop1885_pop61_conv225_out_feedback_stall_out_61;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp41129_pop74_conv249_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp41129_pop74_conv249_out_feedback_stall_out_74;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp46121_pop71_conv243_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp46121_pop71_conv243_out_feedback_stall_out_71;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5194_pop63_conv229_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5194_pop63_conv229_out_feedback_stall_out_63;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5675_pop59_conv221_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5675_pop59_conv221_out_feedback_stall_out_59;
    wire [31:0] i_llvm_fpga_pop_i32_channel_039_pop1780_pop60_conv223_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_channel_039_pop1780_pop60_conv223_out_feedback_stall_out_60;
    wire [31:0] i_llvm_fpga_pop_i32_col_037_pop27112_pop68_conv237_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_col_037_pop27112_pop68_conv237_out_feedback_stall_out_68;
    wire [31:0] i_llvm_fpga_pop_i32_i_035_pop56_conv23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_035_pop56_conv23_out_feedback_stall_out_56;
    wire [31:0] i_llvm_fpga_pop_i32_k_036_pop38131_pop75_conv24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_036_pop38131_pop75_conv24_out_feedback_stall_out_75;
    wire [31:0] i_llvm_fpga_pop_i32_row_038_pop2098_pop64_conv26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_row_038_pop2098_pop64_conv26_out_feedback_stall_out_64;
    wire [3:0] i_llvm_fpga_pop_i4_fpga_indvars_iv17_pop55_conv28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_fpga_indvars_iv17_pop55_conv28_out_feedback_stall_out_55;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom25106_pop66_conv233_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom25106_pop66_conv233_out_feedback_stall_out_66;
    wire [63:0] i_llvm_fpga_pop_p1024f32_arrayidx34109_pop67_conv235_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_arrayidx34109_pop67_conv235_out_feedback_stall_out_67;
    wire [63:0] i_llvm_fpga_pop_p1024f32_arrayidx64115_pop69_conv239_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_arrayidx64115_pop69_conv239_out_feedback_stall_out_69;
    wire [0:0] i_llvm_fpga_push_i1_exitcond22127_push73_conv248_out_feedback_out_73;
    wire [0:0] i_llvm_fpga_push_i1_exitcond22127_push73_conv248_out_feedback_valid_out_73;
    wire [0:0] i_llvm_fpga_push_i1_exitcond25118_push70_conv242_out_feedback_out_70;
    wire [0:0] i_llvm_fpga_push_i1_exitcond25118_push70_conv242_out_feedback_valid_out_70;
    wire [0:0] i_llvm_fpga_push_i1_exitcond2890_push62_conv228_out_feedback_out_62;
    wire [0:0] i_llvm_fpga_push_i1_exitcond2890_push62_conv228_out_feedback_valid_out_62;
    wire [0:0] i_llvm_fpga_push_i1_exitcond3170_push58_conv220_out_feedback_out_58;
    wire [0:0] i_llvm_fpga_push_i1_exitcond3170_push58_conv220_out_feedback_valid_out_58;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop39133_push76_conv252_out_feedback_out_76;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop39133_push76_conv252_out_feedback_valid_out_76;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop28124_push72_conv246_out_feedback_out_72;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop28124_push72_conv246_out_feedback_valid_out_72;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop21102_push65_conv232_out_feedback_out_65;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop21102_push65_conv232_out_feedback_valid_out_65;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_pop1885_push61_conv226_out_feedback_out_61;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_pop1885_push61_conv226_out_feedback_valid_out_61;
    wire [0:0] i_llvm_fpga_push_i1_notcmp41129_push74_conv250_out_feedback_out_74;
    wire [0:0] i_llvm_fpga_push_i1_notcmp41129_push74_conv250_out_feedback_valid_out_74;
    wire [0:0] i_llvm_fpga_push_i1_notcmp46121_push71_conv244_out_feedback_out_71;
    wire [0:0] i_llvm_fpga_push_i1_notcmp46121_push71_conv244_out_feedback_valid_out_71;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5194_push63_conv230_out_feedback_out_63;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5194_push63_conv230_out_feedback_valid_out_63;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5675_push59_conv222_out_feedback_out_59;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5675_push59_conv222_out_feedback_valid_out_59;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond39_conv214_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond39_conv214_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_channel_039_pop1780_push60_conv224_out_feedback_out_60;
    wire [0:0] i_llvm_fpga_push_i32_channel_039_pop1780_push60_conv224_out_feedback_valid_out_60;
    wire [31:0] i_llvm_fpga_push_i32_col_037_pop27112_push68_conv238_out_feedback_out_68;
    wire [0:0] i_llvm_fpga_push_i32_col_037_pop27112_push68_conv238_out_feedback_valid_out_68;
    wire [31:0] i_llvm_fpga_push_i32_i_035_push56_conv218_out_feedback_out_56;
    wire [0:0] i_llvm_fpga_push_i32_i_035_push56_conv218_out_feedback_valid_out_56;
    wire [31:0] i_llvm_fpga_push_i32_k_036_pop38131_push75_conv211_out_feedback_out_75;
    wire [0:0] i_llvm_fpga_push_i32_k_036_pop38131_push75_conv211_out_feedback_valid_out_75;
    wire [31:0] i_llvm_fpga_push_i32_row_038_pop2098_push64_conv212_out_feedback_out_64;
    wire [0:0] i_llvm_fpga_push_i32_row_038_pop2098_push64_conv212_out_feedback_valid_out_64;
    wire [7:0] i_llvm_fpga_push_i4_fpga_indvars_iv17_push55_conv216_out_feedback_out_55;
    wire [0:0] i_llvm_fpga_push_i4_fpga_indvars_iv17_push55_conv216_out_feedback_valid_out_55;
    wire [63:0] i_llvm_fpga_push_i64_idxprom25106_push66_conv234_out_feedback_out_66;
    wire [0:0] i_llvm_fpga_push_i64_idxprom25106_push66_conv234_out_feedback_valid_out_66;
    wire [63:0] i_llvm_fpga_push_p1024f32_arrayidx34109_push67_conv236_out_feedback_out_67;
    wire [0:0] i_llvm_fpga_push_p1024f32_arrayidx34109_push67_conv236_out_feedback_valid_out_67;
    wire [63:0] i_llvm_fpga_push_p1024f32_arrayidx64115_push69_conv240_out_feedback_out_69;
    wire [0:0] i_llvm_fpga_push_p1024f32_arrayidx64115_push69_conv240_out_feedback_valid_out_69;
    wire [0:0] i_notcmp36_conv213_q;
    wire [31:0] i_unnamed_conv25_q;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg21_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg22_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg23_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg24_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg25_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg26_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg27_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg28_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg29_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg30_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg31_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg32_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg33_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg34_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg35_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg36_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg37_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg38_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg39_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg40_q;
    wire [0:0] i_exitcond19_conv29_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond19_conv29_cmp_nsign_q_1_q;
    reg [0:0] redist1_i_exitcond19_conv29_cmp_nsign_q_2_q;
    reg [31:0] redist2_i_llvm_fpga_pop_i32_row_038_pop2098_pop64_conv26_out_data_out_1_q;
    reg [31:0] redist3_i_llvm_fpga_pop_i32_i_035_pop56_conv23_out_data_out_1_q;
    reg [0:0] redist4_sync_together152_aunroll_x_in_c0_eni47_1_tpl_1_q;
    reg [0:0] redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q;
    reg [31:0] redist6_sync_together152_aunroll_x_in_c0_eni47_2_tpl_2_q;
    reg [31:0] redist6_sync_together152_aunroll_x_in_c0_eni47_2_tpl_2_delay_0;
    reg [31:0] redist7_sync_together152_aunroll_x_in_c0_eni47_3_tpl_1_q;
    reg [31:0] redist8_sync_together152_aunroll_x_in_c0_eni47_3_tpl_2_q;
    reg [0:0] redist9_sync_together152_aunroll_x_in_c0_eni47_4_tpl_2_q;
    reg [0:0] redist9_sync_together152_aunroll_x_in_c0_eni47_4_tpl_2_delay_0;
    reg [0:0] redist10_sync_together152_aunroll_x_in_c0_eni47_5_tpl_2_q;
    reg [0:0] redist10_sync_together152_aunroll_x_in_c0_eni47_5_tpl_2_delay_0;
    reg [31:0] redist11_sync_together152_aunroll_x_in_c0_eni47_6_tpl_2_q;
    reg [31:0] redist11_sync_together152_aunroll_x_in_c0_eni47_6_tpl_2_delay_0;
    reg [0:0] redist12_sync_together152_aunroll_x_in_c0_eni47_7_tpl_2_q;
    reg [0:0] redist12_sync_together152_aunroll_x_in_c0_eni47_7_tpl_2_delay_0;
    reg [0:0] redist13_sync_together152_aunroll_x_in_c0_eni47_8_tpl_2_q;
    reg [0:0] redist13_sync_together152_aunroll_x_in_c0_eni47_8_tpl_2_delay_0;
    reg [0:0] redist14_sync_together152_aunroll_x_in_c0_eni47_9_tpl_2_q;
    reg [0:0] redist14_sync_together152_aunroll_x_in_c0_eni47_9_tpl_2_delay_0;
    reg [0:0] redist15_sync_together152_aunroll_x_in_c0_eni47_10_tpl_2_q;
    reg [0:0] redist15_sync_together152_aunroll_x_in_c0_eni47_10_tpl_2_delay_0;
    reg [63:0] redist16_sync_together152_aunroll_x_in_c0_eni47_11_tpl_2_q;
    reg [63:0] redist16_sync_together152_aunroll_x_in_c0_eni47_11_tpl_2_delay_0;
    reg [63:0] redist17_sync_together152_aunroll_x_in_c0_eni47_12_tpl_2_q;
    reg [63:0] redist17_sync_together152_aunroll_x_in_c0_eni47_12_tpl_2_delay_0;
    reg [31:0] redist18_sync_together152_aunroll_x_in_c0_eni47_13_tpl_2_q;
    reg [31:0] redist18_sync_together152_aunroll_x_in_c0_eni47_13_tpl_2_delay_0;
    reg [63:0] redist19_sync_together152_aunroll_x_in_c0_eni47_14_tpl_2_q;
    reg [63:0] redist19_sync_together152_aunroll_x_in_c0_eni47_14_tpl_2_delay_0;
    reg [0:0] redist20_sync_together152_aunroll_x_in_c0_eni47_15_tpl_2_q;
    reg [0:0] redist20_sync_together152_aunroll_x_in_c0_eni47_15_tpl_2_delay_0;
    reg [0:0] redist21_sync_together152_aunroll_x_in_c0_eni47_16_tpl_2_q;
    reg [0:0] redist21_sync_together152_aunroll_x_in_c0_eni47_16_tpl_2_delay_0;
    reg [0:0] redist22_sync_together152_aunroll_x_in_c0_eni47_17_tpl_2_q;
    reg [0:0] redist22_sync_together152_aunroll_x_in_c0_eni47_17_tpl_2_delay_0;
    reg [0:0] redist23_sync_together152_aunroll_x_in_c0_eni47_18_tpl_2_q;
    reg [0:0] redist23_sync_together152_aunroll_x_in_c0_eni47_18_tpl_2_delay_0;
    reg [0:0] redist24_sync_together152_aunroll_x_in_c0_eni47_19_tpl_2_q;
    reg [0:0] redist24_sync_together152_aunroll_x_in_c0_eni47_19_tpl_2_delay_0;
    reg [0:0] redist25_sync_together152_aunroll_x_in_c0_eni47_20_tpl_2_q;
    reg [0:0] redist25_sync_together152_aunroll_x_in_c0_eni47_20_tpl_2_delay_0;
    reg [0:0] redist26_sync_together152_aunroll_x_in_c0_eni47_21_tpl_2_q;
    reg [0:0] redist26_sync_together152_aunroll_x_in_c0_eni47_21_tpl_2_delay_0;
    reg [0:0] redist27_sync_together152_aunroll_x_in_c0_eni47_22_tpl_2_q;
    reg [0:0] redist27_sync_together152_aunroll_x_in_c0_eni47_22_tpl_2_delay_0;
    reg [31:0] redist28_sync_together152_aunroll_x_in_c0_eni47_23_tpl_2_q;
    reg [31:0] redist28_sync_together152_aunroll_x_in_c0_eni47_23_tpl_2_delay_0;
    reg [0:0] redist29_sync_together152_aunroll_x_in_c0_eni47_24_tpl_2_q;
    reg [0:0] redist29_sync_together152_aunroll_x_in_c0_eni47_24_tpl_2_delay_0;
    reg [0:0] redist30_sync_together152_aunroll_x_in_c0_eni47_25_tpl_2_q;
    reg [0:0] redist30_sync_together152_aunroll_x_in_c0_eni47_25_tpl_2_delay_0;
    reg [0:0] redist31_sync_together152_aunroll_x_in_c0_eni47_26_tpl_2_q;
    reg [0:0] redist31_sync_together152_aunroll_x_in_c0_eni47_26_tpl_2_delay_0;
    reg [31:0] redist32_sync_together152_aunroll_x_in_c0_eni47_27_tpl_2_q;
    reg [31:0] redist32_sync_together152_aunroll_x_in_c0_eni47_27_tpl_2_delay_0;
    reg [0:0] redist33_sync_together152_aunroll_x_in_c0_eni47_28_tpl_2_q;
    reg [0:0] redist33_sync_together152_aunroll_x_in_c0_eni47_28_tpl_2_delay_0;
    reg [0:0] redist34_sync_together152_aunroll_x_in_c0_eni47_29_tpl_2_q;
    reg [0:0] redist34_sync_together152_aunroll_x_in_c0_eni47_29_tpl_2_delay_0;
    reg [0:0] redist35_sync_together152_aunroll_x_in_c0_eni47_30_tpl_2_q;
    reg [0:0] redist35_sync_together152_aunroll_x_in_c0_eni47_30_tpl_2_delay_0;
    reg [31:0] redist36_sync_together152_aunroll_x_in_c0_eni47_31_tpl_2_q;
    reg [31:0] redist36_sync_together152_aunroll_x_in_c0_eni47_31_tpl_2_delay_0;
    reg [0:0] redist37_sync_together152_aunroll_x_in_c0_eni47_32_tpl_2_q;
    reg [0:0] redist37_sync_together152_aunroll_x_in_c0_eni47_32_tpl_2_delay_0;
    reg [31:0] redist38_sync_together152_aunroll_x_in_c0_eni47_33_tpl_2_q;
    reg [31:0] redist38_sync_together152_aunroll_x_in_c0_eni47_33_tpl_2_delay_0;
    reg [31:0] redist39_sync_together152_aunroll_x_in_c0_eni47_34_tpl_2_q;
    reg [31:0] redist39_sync_together152_aunroll_x_in_c0_eni47_34_tpl_2_delay_0;
    reg [63:0] redist40_sync_together152_aunroll_x_in_c0_eni47_35_tpl_2_q;
    reg [63:0] redist40_sync_together152_aunroll_x_in_c0_eni47_35_tpl_2_delay_0;
    reg [63:0] redist41_sync_together152_aunroll_x_in_c0_eni47_36_tpl_2_q;
    reg [63:0] redist41_sync_together152_aunroll_x_in_c0_eni47_36_tpl_2_delay_0;
    reg [31:0] redist42_sync_together152_aunroll_x_in_c0_eni47_37_tpl_2_q;
    reg [31:0] redist42_sync_together152_aunroll_x_in_c0_eni47_37_tpl_2_delay_0;
    reg [63:0] redist43_sync_together152_aunroll_x_in_c0_eni47_38_tpl_2_q;
    reg [63:0] redist43_sync_together152_aunroll_x_in_c0_eni47_38_tpl_2_delay_0;
    reg [0:0] redist44_sync_together152_aunroll_x_in_c0_eni47_39_tpl_2_q;
    reg [0:0] redist44_sync_together152_aunroll_x_in_c0_eni47_39_tpl_2_delay_0;
    reg [0:0] redist45_sync_together152_aunroll_x_in_c0_eni47_40_tpl_2_q;
    reg [0:0] redist45_sync_together152_aunroll_x_in_c0_eni47_40_tpl_2_delay_0;
    reg [0:0] redist46_sync_together152_aunroll_x_in_c0_eni47_41_tpl_2_q;
    reg [0:0] redist46_sync_together152_aunroll_x_in_c0_eni47_41_tpl_2_delay_0;
    reg [0:0] redist47_sync_together152_aunroll_x_in_c0_eni47_42_tpl_2_q;
    reg [0:0] redist47_sync_together152_aunroll_x_in_c0_eni47_42_tpl_2_delay_0;
    reg [0:0] redist48_sync_together152_aunroll_x_in_c0_eni47_43_tpl_2_q;
    reg [0:0] redist48_sync_together152_aunroll_x_in_c0_eni47_43_tpl_2_delay_0;
    reg [0:0] redist49_sync_together152_aunroll_x_in_c0_eni47_44_tpl_2_q;
    reg [0:0] redist49_sync_together152_aunroll_x_in_c0_eni47_44_tpl_2_delay_0;
    reg [0:0] redist50_sync_together152_aunroll_x_in_c0_eni47_45_tpl_2_q;
    reg [0:0] redist50_sync_together152_aunroll_x_in_c0_eni47_45_tpl_2_delay_0;
    reg [0:0] redist51_sync_together152_aunroll_x_in_c0_eni47_46_tpl_2_q;
    reg [0:0] redist51_sync_together152_aunroll_x_in_c0_eni47_46_tpl_2_delay_0;
    reg [0:0] redist52_sync_together152_aunroll_x_in_c0_eni47_47_tpl_2_q;
    reg [0:0] redist52_sync_together152_aunroll_x_in_c0_eni47_47_tpl_2_delay_0;
    reg [0:0] redist53_sync_together152_aunroll_x_in_i_valid_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist53_sync_together152_aunroll_x_in_i_valid_1(DELAY,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_sync_together152_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist53_sync_together152_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,117)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist22_sync_together152_aunroll_x_in_c0_eni47_17_tpl_2(DELAY,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together152_aunroll_x_in_c0_eni47_17_tpl_2_delay_0 <= '0;
            redist22_sync_together152_aunroll_x_in_c0_eni47_17_tpl_2_q <= '0;
        end
        else
        begin
            redist22_sync_together152_aunroll_x_in_c0_eni47_17_tpl_2_delay_0 <= $unsigned(in_c0_eni47_17_tpl);
            redist22_sync_together152_aunroll_x_in_c0_eni47_17_tpl_2_q <= redist22_sync_together152_aunroll_x_in_c0_eni47_17_tpl_2_delay_0;
        end
    end

    // redist21_sync_together152_aunroll_x_in_c0_eni47_16_tpl_2(DELAY,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together152_aunroll_x_in_c0_eni47_16_tpl_2_delay_0 <= '0;
            redist21_sync_together152_aunroll_x_in_c0_eni47_16_tpl_2_q <= '0;
        end
        else
        begin
            redist21_sync_together152_aunroll_x_in_c0_eni47_16_tpl_2_delay_0 <= $unsigned(in_c0_eni47_16_tpl);
            redist21_sync_together152_aunroll_x_in_c0_eni47_16_tpl_2_q <= redist21_sync_together152_aunroll_x_in_c0_eni47_16_tpl_2_delay_0;
        end
    end

    // redist20_sync_together152_aunroll_x_in_c0_eni47_15_tpl_2(DELAY,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together152_aunroll_x_in_c0_eni47_15_tpl_2_delay_0 <= '0;
            redist20_sync_together152_aunroll_x_in_c0_eni47_15_tpl_2_q <= '0;
        end
        else
        begin
            redist20_sync_together152_aunroll_x_in_c0_eni47_15_tpl_2_delay_0 <= $unsigned(in_c0_eni47_15_tpl);
            redist20_sync_together152_aunroll_x_in_c0_eni47_15_tpl_2_q <= redist20_sync_together152_aunroll_x_in_c0_eni47_15_tpl_2_delay_0;
        end
    end

    // redist19_sync_together152_aunroll_x_in_c0_eni47_14_tpl_2(DELAY,182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together152_aunroll_x_in_c0_eni47_14_tpl_2_delay_0 <= '0;
            redist19_sync_together152_aunroll_x_in_c0_eni47_14_tpl_2_q <= '0;
        end
        else
        begin
            redist19_sync_together152_aunroll_x_in_c0_eni47_14_tpl_2_delay_0 <= $unsigned(in_c0_eni47_14_tpl);
            redist19_sync_together152_aunroll_x_in_c0_eni47_14_tpl_2_q <= redist19_sync_together152_aunroll_x_in_c0_eni47_14_tpl_2_delay_0;
        end
    end

    // redist18_sync_together152_aunroll_x_in_c0_eni47_13_tpl_2(DELAY,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together152_aunroll_x_in_c0_eni47_13_tpl_2_delay_0 <= '0;
            redist18_sync_together152_aunroll_x_in_c0_eni47_13_tpl_2_q <= '0;
        end
        else
        begin
            redist18_sync_together152_aunroll_x_in_c0_eni47_13_tpl_2_delay_0 <= $unsigned(in_c0_eni47_13_tpl);
            redist18_sync_together152_aunroll_x_in_c0_eni47_13_tpl_2_q <= redist18_sync_together152_aunroll_x_in_c0_eni47_13_tpl_2_delay_0;
        end
    end

    // redist17_sync_together152_aunroll_x_in_c0_eni47_12_tpl_2(DELAY,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together152_aunroll_x_in_c0_eni47_12_tpl_2_delay_0 <= '0;
            redist17_sync_together152_aunroll_x_in_c0_eni47_12_tpl_2_q <= '0;
        end
        else
        begin
            redist17_sync_together152_aunroll_x_in_c0_eni47_12_tpl_2_delay_0 <= $unsigned(in_c0_eni47_12_tpl);
            redist17_sync_together152_aunroll_x_in_c0_eni47_12_tpl_2_q <= redist17_sync_together152_aunroll_x_in_c0_eni47_12_tpl_2_delay_0;
        end
    end

    // redist16_sync_together152_aunroll_x_in_c0_eni47_11_tpl_2(DELAY,179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together152_aunroll_x_in_c0_eni47_11_tpl_2_delay_0 <= '0;
            redist16_sync_together152_aunroll_x_in_c0_eni47_11_tpl_2_q <= '0;
        end
        else
        begin
            redist16_sync_together152_aunroll_x_in_c0_eni47_11_tpl_2_delay_0 <= $unsigned(in_c0_eni47_11_tpl);
            redist16_sync_together152_aunroll_x_in_c0_eni47_11_tpl_2_q <= redist16_sync_together152_aunroll_x_in_c0_eni47_11_tpl_2_delay_0;
        end
    end

    // redist15_sync_together152_aunroll_x_in_c0_eni47_10_tpl_2(DELAY,178)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together152_aunroll_x_in_c0_eni47_10_tpl_2_delay_0 <= '0;
            redist15_sync_together152_aunroll_x_in_c0_eni47_10_tpl_2_q <= '0;
        end
        else
        begin
            redist15_sync_together152_aunroll_x_in_c0_eni47_10_tpl_2_delay_0 <= $unsigned(in_c0_eni47_10_tpl);
            redist15_sync_together152_aunroll_x_in_c0_eni47_10_tpl_2_q <= redist15_sync_together152_aunroll_x_in_c0_eni47_10_tpl_2_delay_0;
        end
    end

    // redist7_sync_together152_aunroll_x_in_c0_eni47_3_tpl_1(DELAY,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together152_aunroll_x_in_c0_eni47_3_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together152_aunroll_x_in_c0_eni47_3_tpl_1_q <= $unsigned(in_c0_eni47_3_tpl);
        end
    end

    // redist8_sync_together152_aunroll_x_in_c0_eni47_3_tpl_2(DELAY,171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together152_aunroll_x_in_c0_eni47_3_tpl_2_q <= '0;
        end
        else
        begin
            redist8_sync_together152_aunroll_x_in_c0_eni47_3_tpl_2_q <= $unsigned(redist7_sync_together152_aunroll_x_in_c0_eni47_3_tpl_1_q);
        end
    end

    // redist14_sync_together152_aunroll_x_in_c0_eni47_9_tpl_2(DELAY,177)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together152_aunroll_x_in_c0_eni47_9_tpl_2_delay_0 <= '0;
            redist14_sync_together152_aunroll_x_in_c0_eni47_9_tpl_2_q <= '0;
        end
        else
        begin
            redist14_sync_together152_aunroll_x_in_c0_eni47_9_tpl_2_delay_0 <= $unsigned(in_c0_eni47_9_tpl);
            redist14_sync_together152_aunroll_x_in_c0_eni47_9_tpl_2_q <= redist14_sync_together152_aunroll_x_in_c0_eni47_9_tpl_2_delay_0;
        end
    end

    // redist13_sync_together152_aunroll_x_in_c0_eni47_8_tpl_2(DELAY,176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together152_aunroll_x_in_c0_eni47_8_tpl_2_delay_0 <= '0;
            redist13_sync_together152_aunroll_x_in_c0_eni47_8_tpl_2_q <= '0;
        end
        else
        begin
            redist13_sync_together152_aunroll_x_in_c0_eni47_8_tpl_2_delay_0 <= $unsigned(in_c0_eni47_8_tpl);
            redist13_sync_together152_aunroll_x_in_c0_eni47_8_tpl_2_q <= redist13_sync_together152_aunroll_x_in_c0_eni47_8_tpl_2_delay_0;
        end
    end

    // redist12_sync_together152_aunroll_x_in_c0_eni47_7_tpl_2(DELAY,175)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together152_aunroll_x_in_c0_eni47_7_tpl_2_delay_0 <= '0;
            redist12_sync_together152_aunroll_x_in_c0_eni47_7_tpl_2_q <= '0;
        end
        else
        begin
            redist12_sync_together152_aunroll_x_in_c0_eni47_7_tpl_2_delay_0 <= $unsigned(in_c0_eni47_7_tpl);
            redist12_sync_together152_aunroll_x_in_c0_eni47_7_tpl_2_q <= redist12_sync_together152_aunroll_x_in_c0_eni47_7_tpl_2_delay_0;
        end
    end

    // redist11_sync_together152_aunroll_x_in_c0_eni47_6_tpl_2(DELAY,174)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together152_aunroll_x_in_c0_eni47_6_tpl_2_delay_0 <= '0;
            redist11_sync_together152_aunroll_x_in_c0_eni47_6_tpl_2_q <= '0;
        end
        else
        begin
            redist11_sync_together152_aunroll_x_in_c0_eni47_6_tpl_2_delay_0 <= $unsigned(in_c0_eni47_6_tpl);
            redist11_sync_together152_aunroll_x_in_c0_eni47_6_tpl_2_q <= redist11_sync_together152_aunroll_x_in_c0_eni47_6_tpl_2_delay_0;
        end
    end

    // redist10_sync_together152_aunroll_x_in_c0_eni47_5_tpl_2(DELAY,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together152_aunroll_x_in_c0_eni47_5_tpl_2_delay_0 <= '0;
            redist10_sync_together152_aunroll_x_in_c0_eni47_5_tpl_2_q <= '0;
        end
        else
        begin
            redist10_sync_together152_aunroll_x_in_c0_eni47_5_tpl_2_delay_0 <= $unsigned(in_c0_eni47_5_tpl);
            redist10_sync_together152_aunroll_x_in_c0_eni47_5_tpl_2_q <= redist10_sync_together152_aunroll_x_in_c0_eni47_5_tpl_2_delay_0;
        end
    end

    // redist9_sync_together152_aunroll_x_in_c0_eni47_4_tpl_2(DELAY,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together152_aunroll_x_in_c0_eni47_4_tpl_2_delay_0 <= '0;
            redist9_sync_together152_aunroll_x_in_c0_eni47_4_tpl_2_q <= '0;
        end
        else
        begin
            redist9_sync_together152_aunroll_x_in_c0_eni47_4_tpl_2_delay_0 <= $unsigned(in_c0_eni47_4_tpl);
            redist9_sync_together152_aunroll_x_in_c0_eni47_4_tpl_2_q <= redist9_sync_together152_aunroll_x_in_c0_eni47_4_tpl_2_delay_0;
        end
    end

    // redist25_sync_together152_aunroll_x_in_c0_eni47_20_tpl_2(DELAY,188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together152_aunroll_x_in_c0_eni47_20_tpl_2_delay_0 <= '0;
            redist25_sync_together152_aunroll_x_in_c0_eni47_20_tpl_2_q <= '0;
        end
        else
        begin
            redist25_sync_together152_aunroll_x_in_c0_eni47_20_tpl_2_delay_0 <= $unsigned(in_c0_eni47_20_tpl);
            redist25_sync_together152_aunroll_x_in_c0_eni47_20_tpl_2_q <= redist25_sync_together152_aunroll_x_in_c0_eni47_20_tpl_2_delay_0;
        end
    end

    // redist6_sync_together152_aunroll_x_in_c0_eni47_2_tpl_2(DELAY,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together152_aunroll_x_in_c0_eni47_2_tpl_2_delay_0 <= '0;
            redist6_sync_together152_aunroll_x_in_c0_eni47_2_tpl_2_q <= '0;
        end
        else
        begin
            redist6_sync_together152_aunroll_x_in_c0_eni47_2_tpl_2_delay_0 <= $unsigned(in_c0_eni47_2_tpl);
            redist6_sync_together152_aunroll_x_in_c0_eni47_2_tpl_2_q <= redist6_sync_together152_aunroll_x_in_c0_eni47_2_tpl_2_delay_0;
        end
    end

    // redist24_sync_together152_aunroll_x_in_c0_eni47_19_tpl_2(DELAY,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together152_aunroll_x_in_c0_eni47_19_tpl_2_delay_0 <= '0;
            redist24_sync_together152_aunroll_x_in_c0_eni47_19_tpl_2_q <= '0;
        end
        else
        begin
            redist24_sync_together152_aunroll_x_in_c0_eni47_19_tpl_2_delay_0 <= $unsigned(in_c0_eni47_19_tpl);
            redist24_sync_together152_aunroll_x_in_c0_eni47_19_tpl_2_q <= redist24_sync_together152_aunroll_x_in_c0_eni47_19_tpl_2_delay_0;
        end
    end

    // redist23_sync_together152_aunroll_x_in_c0_eni47_18_tpl_2(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together152_aunroll_x_in_c0_eni47_18_tpl_2_delay_0 <= '0;
            redist23_sync_together152_aunroll_x_in_c0_eni47_18_tpl_2_q <= '0;
        end
        else
        begin
            redist23_sync_together152_aunroll_x_in_c0_eni47_18_tpl_2_delay_0 <= $unsigned(in_c0_eni47_18_tpl);
            redist23_sync_together152_aunroll_x_in_c0_eni47_18_tpl_2_q <= redist23_sync_together152_aunroll_x_in_c0_eni47_18_tpl_2_delay_0;
        end
    end

    // redist52_sync_together152_aunroll_x_in_c0_eni47_47_tpl_2(DELAY,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_sync_together152_aunroll_x_in_c0_eni47_47_tpl_2_delay_0 <= '0;
            redist52_sync_together152_aunroll_x_in_c0_eni47_47_tpl_2_q <= '0;
        end
        else
        begin
            redist52_sync_together152_aunroll_x_in_c0_eni47_47_tpl_2_delay_0 <= $unsigned(in_c0_eni47_47_tpl);
            redist52_sync_together152_aunroll_x_in_c0_eni47_47_tpl_2_q <= redist52_sync_together152_aunroll_x_in_c0_eni47_47_tpl_2_delay_0;
        end
    end

    // redist51_sync_together152_aunroll_x_in_c0_eni47_46_tpl_2(DELAY,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_sync_together152_aunroll_x_in_c0_eni47_46_tpl_2_delay_0 <= '0;
            redist51_sync_together152_aunroll_x_in_c0_eni47_46_tpl_2_q <= '0;
        end
        else
        begin
            redist51_sync_together152_aunroll_x_in_c0_eni47_46_tpl_2_delay_0 <= $unsigned(in_c0_eni47_46_tpl);
            redist51_sync_together152_aunroll_x_in_c0_eni47_46_tpl_2_q <= redist51_sync_together152_aunroll_x_in_c0_eni47_46_tpl_2_delay_0;
        end
    end

    // redist50_sync_together152_aunroll_x_in_c0_eni47_45_tpl_2(DELAY,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together152_aunroll_x_in_c0_eni47_45_tpl_2_delay_0 <= '0;
            redist50_sync_together152_aunroll_x_in_c0_eni47_45_tpl_2_q <= '0;
        end
        else
        begin
            redist50_sync_together152_aunroll_x_in_c0_eni47_45_tpl_2_delay_0 <= $unsigned(in_c0_eni47_45_tpl);
            redist50_sync_together152_aunroll_x_in_c0_eni47_45_tpl_2_q <= redist50_sync_together152_aunroll_x_in_c0_eni47_45_tpl_2_delay_0;
        end
    end

    // redist49_sync_together152_aunroll_x_in_c0_eni47_44_tpl_2(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_sync_together152_aunroll_x_in_c0_eni47_44_tpl_2_delay_0 <= '0;
            redist49_sync_together152_aunroll_x_in_c0_eni47_44_tpl_2_q <= '0;
        end
        else
        begin
            redist49_sync_together152_aunroll_x_in_c0_eni47_44_tpl_2_delay_0 <= $unsigned(in_c0_eni47_44_tpl);
            redist49_sync_together152_aunroll_x_in_c0_eni47_44_tpl_2_q <= redist49_sync_together152_aunroll_x_in_c0_eni47_44_tpl_2_delay_0;
        end
    end

    // redist48_sync_together152_aunroll_x_in_c0_eni47_43_tpl_2(DELAY,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_sync_together152_aunroll_x_in_c0_eni47_43_tpl_2_delay_0 <= '0;
            redist48_sync_together152_aunroll_x_in_c0_eni47_43_tpl_2_q <= '0;
        end
        else
        begin
            redist48_sync_together152_aunroll_x_in_c0_eni47_43_tpl_2_delay_0 <= $unsigned(in_c0_eni47_43_tpl);
            redist48_sync_together152_aunroll_x_in_c0_eni47_43_tpl_2_q <= redist48_sync_together152_aunroll_x_in_c0_eni47_43_tpl_2_delay_0;
        end
    end

    // redist47_sync_together152_aunroll_x_in_c0_eni47_42_tpl_2(DELAY,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sync_together152_aunroll_x_in_c0_eni47_42_tpl_2_delay_0 <= '0;
            redist47_sync_together152_aunroll_x_in_c0_eni47_42_tpl_2_q <= '0;
        end
        else
        begin
            redist47_sync_together152_aunroll_x_in_c0_eni47_42_tpl_2_delay_0 <= $unsigned(in_c0_eni47_42_tpl);
            redist47_sync_together152_aunroll_x_in_c0_eni47_42_tpl_2_q <= redist47_sync_together152_aunroll_x_in_c0_eni47_42_tpl_2_delay_0;
        end
    end

    // redist46_sync_together152_aunroll_x_in_c0_eni47_41_tpl_2(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together152_aunroll_x_in_c0_eni47_41_tpl_2_delay_0 <= '0;
            redist46_sync_together152_aunroll_x_in_c0_eni47_41_tpl_2_q <= '0;
        end
        else
        begin
            redist46_sync_together152_aunroll_x_in_c0_eni47_41_tpl_2_delay_0 <= $unsigned(in_c0_eni47_41_tpl);
            redist46_sync_together152_aunroll_x_in_c0_eni47_41_tpl_2_q <= redist46_sync_together152_aunroll_x_in_c0_eni47_41_tpl_2_delay_0;
        end
    end

    // redist45_sync_together152_aunroll_x_in_c0_eni47_40_tpl_2(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together152_aunroll_x_in_c0_eni47_40_tpl_2_delay_0 <= '0;
            redist45_sync_together152_aunroll_x_in_c0_eni47_40_tpl_2_q <= '0;
        end
        else
        begin
            redist45_sync_together152_aunroll_x_in_c0_eni47_40_tpl_2_delay_0 <= $unsigned(in_c0_eni47_40_tpl);
            redist45_sync_together152_aunroll_x_in_c0_eni47_40_tpl_2_q <= redist45_sync_together152_aunroll_x_in_c0_eni47_40_tpl_2_delay_0;
        end
    end

    // redist44_sync_together152_aunroll_x_in_c0_eni47_39_tpl_2(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together152_aunroll_x_in_c0_eni47_39_tpl_2_delay_0 <= '0;
            redist44_sync_together152_aunroll_x_in_c0_eni47_39_tpl_2_q <= '0;
        end
        else
        begin
            redist44_sync_together152_aunroll_x_in_c0_eni47_39_tpl_2_delay_0 <= $unsigned(in_c0_eni47_39_tpl);
            redist44_sync_together152_aunroll_x_in_c0_eni47_39_tpl_2_q <= redist44_sync_together152_aunroll_x_in_c0_eni47_39_tpl_2_delay_0;
        end
    end

    // redist43_sync_together152_aunroll_x_in_c0_eni47_38_tpl_2(DELAY,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together152_aunroll_x_in_c0_eni47_38_tpl_2_delay_0 <= '0;
            redist43_sync_together152_aunroll_x_in_c0_eni47_38_tpl_2_q <= '0;
        end
        else
        begin
            redist43_sync_together152_aunroll_x_in_c0_eni47_38_tpl_2_delay_0 <= $unsigned(in_c0_eni47_38_tpl);
            redist43_sync_together152_aunroll_x_in_c0_eni47_38_tpl_2_q <= redist43_sync_together152_aunroll_x_in_c0_eni47_38_tpl_2_delay_0;
        end
    end

    // redist42_sync_together152_aunroll_x_in_c0_eni47_37_tpl_2(DELAY,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together152_aunroll_x_in_c0_eni47_37_tpl_2_delay_0 <= '0;
            redist42_sync_together152_aunroll_x_in_c0_eni47_37_tpl_2_q <= '0;
        end
        else
        begin
            redist42_sync_together152_aunroll_x_in_c0_eni47_37_tpl_2_delay_0 <= $unsigned(in_c0_eni47_37_tpl);
            redist42_sync_together152_aunroll_x_in_c0_eni47_37_tpl_2_q <= redist42_sync_together152_aunroll_x_in_c0_eni47_37_tpl_2_delay_0;
        end
    end

    // redist41_sync_together152_aunroll_x_in_c0_eni47_36_tpl_2(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together152_aunroll_x_in_c0_eni47_36_tpl_2_delay_0 <= '0;
            redist41_sync_together152_aunroll_x_in_c0_eni47_36_tpl_2_q <= '0;
        end
        else
        begin
            redist41_sync_together152_aunroll_x_in_c0_eni47_36_tpl_2_delay_0 <= $unsigned(in_c0_eni47_36_tpl);
            redist41_sync_together152_aunroll_x_in_c0_eni47_36_tpl_2_q <= redist41_sync_together152_aunroll_x_in_c0_eni47_36_tpl_2_delay_0;
        end
    end

    // redist40_sync_together152_aunroll_x_in_c0_eni47_35_tpl_2(DELAY,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together152_aunroll_x_in_c0_eni47_35_tpl_2_delay_0 <= '0;
            redist40_sync_together152_aunroll_x_in_c0_eni47_35_tpl_2_q <= '0;
        end
        else
        begin
            redist40_sync_together152_aunroll_x_in_c0_eni47_35_tpl_2_delay_0 <= $unsigned(in_c0_eni47_35_tpl);
            redist40_sync_together152_aunroll_x_in_c0_eni47_35_tpl_2_q <= redist40_sync_together152_aunroll_x_in_c0_eni47_35_tpl_2_delay_0;
        end
    end

    // redist39_sync_together152_aunroll_x_in_c0_eni47_34_tpl_2(DELAY,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together152_aunroll_x_in_c0_eni47_34_tpl_2_delay_0 <= '0;
            redist39_sync_together152_aunroll_x_in_c0_eni47_34_tpl_2_q <= '0;
        end
        else
        begin
            redist39_sync_together152_aunroll_x_in_c0_eni47_34_tpl_2_delay_0 <= $unsigned(in_c0_eni47_34_tpl);
            redist39_sync_together152_aunroll_x_in_c0_eni47_34_tpl_2_q <= redist39_sync_together152_aunroll_x_in_c0_eni47_34_tpl_2_delay_0;
        end
    end

    // redist38_sync_together152_aunroll_x_in_c0_eni47_33_tpl_2(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together152_aunroll_x_in_c0_eni47_33_tpl_2_delay_0 <= '0;
            redist38_sync_together152_aunroll_x_in_c0_eni47_33_tpl_2_q <= '0;
        end
        else
        begin
            redist38_sync_together152_aunroll_x_in_c0_eni47_33_tpl_2_delay_0 <= $unsigned(in_c0_eni47_33_tpl);
            redist38_sync_together152_aunroll_x_in_c0_eni47_33_tpl_2_q <= redist38_sync_together152_aunroll_x_in_c0_eni47_33_tpl_2_delay_0;
        end
    end

    // redist37_sync_together152_aunroll_x_in_c0_eni47_32_tpl_2(DELAY,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together152_aunroll_x_in_c0_eni47_32_tpl_2_delay_0 <= '0;
            redist37_sync_together152_aunroll_x_in_c0_eni47_32_tpl_2_q <= '0;
        end
        else
        begin
            redist37_sync_together152_aunroll_x_in_c0_eni47_32_tpl_2_delay_0 <= $unsigned(in_c0_eni47_32_tpl);
            redist37_sync_together152_aunroll_x_in_c0_eni47_32_tpl_2_q <= redist37_sync_together152_aunroll_x_in_c0_eni47_32_tpl_2_delay_0;
        end
    end

    // redist36_sync_together152_aunroll_x_in_c0_eni47_31_tpl_2(DELAY,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together152_aunroll_x_in_c0_eni47_31_tpl_2_delay_0 <= '0;
            redist36_sync_together152_aunroll_x_in_c0_eni47_31_tpl_2_q <= '0;
        end
        else
        begin
            redist36_sync_together152_aunroll_x_in_c0_eni47_31_tpl_2_delay_0 <= $unsigned(in_c0_eni47_31_tpl);
            redist36_sync_together152_aunroll_x_in_c0_eni47_31_tpl_2_q <= redist36_sync_together152_aunroll_x_in_c0_eni47_31_tpl_2_delay_0;
        end
    end

    // redist35_sync_together152_aunroll_x_in_c0_eni47_30_tpl_2(DELAY,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together152_aunroll_x_in_c0_eni47_30_tpl_2_delay_0 <= '0;
            redist35_sync_together152_aunroll_x_in_c0_eni47_30_tpl_2_q <= '0;
        end
        else
        begin
            redist35_sync_together152_aunroll_x_in_c0_eni47_30_tpl_2_delay_0 <= $unsigned(in_c0_eni47_30_tpl);
            redist35_sync_together152_aunroll_x_in_c0_eni47_30_tpl_2_q <= redist35_sync_together152_aunroll_x_in_c0_eni47_30_tpl_2_delay_0;
        end
    end

    // redist34_sync_together152_aunroll_x_in_c0_eni47_29_tpl_2(DELAY,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together152_aunroll_x_in_c0_eni47_29_tpl_2_delay_0 <= '0;
            redist34_sync_together152_aunroll_x_in_c0_eni47_29_tpl_2_q <= '0;
        end
        else
        begin
            redist34_sync_together152_aunroll_x_in_c0_eni47_29_tpl_2_delay_0 <= $unsigned(in_c0_eni47_29_tpl);
            redist34_sync_together152_aunroll_x_in_c0_eni47_29_tpl_2_q <= redist34_sync_together152_aunroll_x_in_c0_eni47_29_tpl_2_delay_0;
        end
    end

    // redist33_sync_together152_aunroll_x_in_c0_eni47_28_tpl_2(DELAY,196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together152_aunroll_x_in_c0_eni47_28_tpl_2_delay_0 <= '0;
            redist33_sync_together152_aunroll_x_in_c0_eni47_28_tpl_2_q <= '0;
        end
        else
        begin
            redist33_sync_together152_aunroll_x_in_c0_eni47_28_tpl_2_delay_0 <= $unsigned(in_c0_eni47_28_tpl);
            redist33_sync_together152_aunroll_x_in_c0_eni47_28_tpl_2_q <= redist33_sync_together152_aunroll_x_in_c0_eni47_28_tpl_2_delay_0;
        end
    end

    // redist32_sync_together152_aunroll_x_in_c0_eni47_27_tpl_2(DELAY,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together152_aunroll_x_in_c0_eni47_27_tpl_2_delay_0 <= '0;
            redist32_sync_together152_aunroll_x_in_c0_eni47_27_tpl_2_q <= '0;
        end
        else
        begin
            redist32_sync_together152_aunroll_x_in_c0_eni47_27_tpl_2_delay_0 <= $unsigned(in_c0_eni47_27_tpl);
            redist32_sync_together152_aunroll_x_in_c0_eni47_27_tpl_2_q <= redist32_sync_together152_aunroll_x_in_c0_eni47_27_tpl_2_delay_0;
        end
    end

    // redist31_sync_together152_aunroll_x_in_c0_eni47_26_tpl_2(DELAY,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together152_aunroll_x_in_c0_eni47_26_tpl_2_delay_0 <= '0;
            redist31_sync_together152_aunroll_x_in_c0_eni47_26_tpl_2_q <= '0;
        end
        else
        begin
            redist31_sync_together152_aunroll_x_in_c0_eni47_26_tpl_2_delay_0 <= $unsigned(in_c0_eni47_26_tpl);
            redist31_sync_together152_aunroll_x_in_c0_eni47_26_tpl_2_q <= redist31_sync_together152_aunroll_x_in_c0_eni47_26_tpl_2_delay_0;
        end
    end

    // redist30_sync_together152_aunroll_x_in_c0_eni47_25_tpl_2(DELAY,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together152_aunroll_x_in_c0_eni47_25_tpl_2_delay_0 <= '0;
            redist30_sync_together152_aunroll_x_in_c0_eni47_25_tpl_2_q <= '0;
        end
        else
        begin
            redist30_sync_together152_aunroll_x_in_c0_eni47_25_tpl_2_delay_0 <= $unsigned(in_c0_eni47_25_tpl);
            redist30_sync_together152_aunroll_x_in_c0_eni47_25_tpl_2_q <= redist30_sync_together152_aunroll_x_in_c0_eni47_25_tpl_2_delay_0;
        end
    end

    // redist29_sync_together152_aunroll_x_in_c0_eni47_24_tpl_2(DELAY,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together152_aunroll_x_in_c0_eni47_24_tpl_2_delay_0 <= '0;
            redist29_sync_together152_aunroll_x_in_c0_eni47_24_tpl_2_q <= '0;
        end
        else
        begin
            redist29_sync_together152_aunroll_x_in_c0_eni47_24_tpl_2_delay_0 <= $unsigned(in_c0_eni47_24_tpl);
            redist29_sync_together152_aunroll_x_in_c0_eni47_24_tpl_2_q <= redist29_sync_together152_aunroll_x_in_c0_eni47_24_tpl_2_delay_0;
        end
    end

    // redist28_sync_together152_aunroll_x_in_c0_eni47_23_tpl_2(DELAY,191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together152_aunroll_x_in_c0_eni47_23_tpl_2_delay_0 <= '0;
            redist28_sync_together152_aunroll_x_in_c0_eni47_23_tpl_2_q <= '0;
        end
        else
        begin
            redist28_sync_together152_aunroll_x_in_c0_eni47_23_tpl_2_delay_0 <= $unsigned(in_c0_eni47_23_tpl);
            redist28_sync_together152_aunroll_x_in_c0_eni47_23_tpl_2_q <= redist28_sync_together152_aunroll_x_in_c0_eni47_23_tpl_2_delay_0;
        end
    end

    // redist27_sync_together152_aunroll_x_in_c0_eni47_22_tpl_2(DELAY,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together152_aunroll_x_in_c0_eni47_22_tpl_2_delay_0 <= '0;
            redist27_sync_together152_aunroll_x_in_c0_eni47_22_tpl_2_q <= '0;
        end
        else
        begin
            redist27_sync_together152_aunroll_x_in_c0_eni47_22_tpl_2_delay_0 <= $unsigned(in_c0_eni47_22_tpl);
            redist27_sync_together152_aunroll_x_in_c0_eni47_22_tpl_2_q <= redist27_sync_together152_aunroll_x_in_c0_eni47_22_tpl_2_delay_0;
        end
    end

    // redist26_sync_together152_aunroll_x_in_c0_eni47_21_tpl_2(DELAY,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together152_aunroll_x_in_c0_eni47_21_tpl_2_delay_0 <= '0;
            redist26_sync_together152_aunroll_x_in_c0_eni47_21_tpl_2_q <= '0;
        end
        else
        begin
            redist26_sync_together152_aunroll_x_in_c0_eni47_21_tpl_2_delay_0 <= $unsigned(in_c0_eni47_21_tpl);
            redist26_sync_together152_aunroll_x_in_c0_eni47_21_tpl_2_q <= redist26_sync_together152_aunroll_x_in_c0_eni47_21_tpl_2_delay_0;
        end
    end

    // redist4_sync_together152_aunroll_x_in_c0_eni47_1_tpl_1(DELAY,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together152_aunroll_x_in_c0_eni47_1_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together152_aunroll_x_in_c0_eni47_1_tpl_1_q <= $unsigned(in_c0_eni47_1_tpl);
        end
    end

    // redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2(DELAY,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q <= '0;
        end
        else
        begin
            redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q <= $unsigned(redist4_sync_together152_aunroll_x_in_c0_eni47_1_tpl_1_q);
        end
    end

    // valid_fanout_reg39(REG,156)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg40(REG,157)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi3_pop39133_push76_conv252(BLACKBOX,93)@3
    // out out_feedback_out_76@20000000
    // out out_feedback_valid_out_76@20000000
    conv2_i_llvm_fpga_push_i1_memdep_phi3_pop39133_push76_0 thei_llvm_fpga_push_i1_memdep_phi3_pop39133_push76_conv252 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi3_pop39133_pop76_conv251_out_data_out),
        .in_exitcond19(redist1_i_exitcond19_conv29_cmp_nsign_q_2_q),
        .in_feedback_stall_in_76(i_llvm_fpga_pop_i1_memdep_phi3_pop39133_pop76_conv251_out_feedback_stall_out_76),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_data_out(),
        .out_feedback_out_76(i_llvm_fpga_push_i1_memdep_phi3_pop39133_push76_conv252_out_feedback_out_76),
        .out_feedback_valid_out_76(i_llvm_fpga_push_i1_memdep_phi3_pop39133_push76_conv252_out_feedback_valid_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi3_pop39133_pop76_conv251(BLACKBOX,72)@3
    // out out_feedback_stall_out_76@20000000
    conv2_i_llvm_fpga_pop_i1_memdep_phi3_pop39133_pop76_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop39133_pop76_conv251 (
        .in_data_in(redist25_sync_together152_aunroll_x_in_c0_eni47_20_tpl_2_q),
        .in_dir(redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q),
        .in_feedback_in_76(i_llvm_fpga_push_i1_memdep_phi3_pop39133_push76_conv252_out_feedback_out_76),
        .in_feedback_valid_in_76(i_llvm_fpga_push_i1_memdep_phi3_pop39133_push76_conv252_out_feedback_valid_out_76),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop39133_pop76_conv251_out_data_out),
        .out_feedback_stall_out_76(i_llvm_fpga_pop_i1_memdep_phi3_pop39133_pop76_conv251_out_feedback_stall_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg37(REG,154)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg38(REG,155)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp41129_push74_conv250(BLACKBOX,97)@3
    // out out_feedback_out_74@20000000
    // out out_feedback_valid_out_74@20000000
    conv2_i_llvm_fpga_push_i1_notcmp41129_push74_0 thei_llvm_fpga_push_i1_notcmp41129_push74_conv250 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp41129_pop74_conv249_out_data_out),
        .in_exitcond19(redist1_i_exitcond19_conv29_cmp_nsign_q_2_q),
        .in_feedback_stall_in_74(i_llvm_fpga_pop_i1_notcmp41129_pop74_conv249_out_feedback_stall_out_74),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_data_out(),
        .out_feedback_out_74(i_llvm_fpga_push_i1_notcmp41129_push74_conv250_out_feedback_out_74),
        .out_feedback_valid_out_74(i_llvm_fpga_push_i1_notcmp41129_push74_conv250_out_feedback_valid_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp41129_pop74_conv249(BLACKBOX,76)@3
    // out out_feedback_stall_out_74@20000000
    conv2_i_llvm_fpga_pop_i1_notcmp41129_pop74_0 thei_llvm_fpga_pop_i1_notcmp41129_pop74_conv249 (
        .in_data_in(redist24_sync_together152_aunroll_x_in_c0_eni47_19_tpl_2_q),
        .in_dir(redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q),
        .in_feedback_in_74(i_llvm_fpga_push_i1_notcmp41129_push74_conv250_out_feedback_out_74),
        .in_feedback_valid_in_74(i_llvm_fpga_push_i1_notcmp41129_push74_conv250_out_feedback_valid_out_74),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp41129_pop74_conv249_out_data_out),
        .out_feedback_stall_out_74(i_llvm_fpga_pop_i1_notcmp41129_pop74_conv249_out_feedback_stall_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg35(REG,152)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg36(REG,153)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond22127_push73_conv248(BLACKBOX,89)@3
    // out out_feedback_out_73@20000000
    // out out_feedback_valid_out_73@20000000
    conv2_i_llvm_fpga_push_i1_exitcond22127_push73_0 thei_llvm_fpga_push_i1_exitcond22127_push73_conv248 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond22127_pop73_conv247_out_data_out),
        .in_exitcond19(redist1_i_exitcond19_conv29_cmp_nsign_q_2_q),
        .in_feedback_stall_in_73(i_llvm_fpga_pop_i1_exitcond22127_pop73_conv247_out_feedback_stall_out_73),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_data_out(),
        .out_feedback_out_73(i_llvm_fpga_push_i1_exitcond22127_push73_conv248_out_feedback_out_73),
        .out_feedback_valid_out_73(i_llvm_fpga_push_i1_exitcond22127_push73_conv248_out_feedback_valid_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond22127_pop73_conv247(BLACKBOX,68)@3
    // out out_feedback_stall_out_73@20000000
    conv2_i_llvm_fpga_pop_i1_exitcond22127_pop73_0 thei_llvm_fpga_pop_i1_exitcond22127_pop73_conv247 (
        .in_data_in(redist23_sync_together152_aunroll_x_in_c0_eni47_18_tpl_2_q),
        .in_dir(redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q),
        .in_feedback_in_73(i_llvm_fpga_push_i1_exitcond22127_push73_conv248_out_feedback_out_73),
        .in_feedback_valid_in_73(i_llvm_fpga_push_i1_exitcond22127_push73_conv248_out_feedback_valid_out_73),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond22127_pop73_conv247_out_data_out),
        .out_feedback_stall_out_73(i_llvm_fpga_pop_i1_exitcond22127_pop73_conv247_out_feedback_stall_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg33(REG,150)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg34(REG,151)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi4_pop28124_push72_conv246(BLACKBOX,94)@3
    // out out_feedback_out_72@20000000
    // out out_feedback_valid_out_72@20000000
    conv2_i_llvm_fpga_push_i1_memdep_phi4_pop28124_push72_0 thei_llvm_fpga_push_i1_memdep_phi4_pop28124_push72_conv246 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi4_pop28124_pop72_conv245_out_data_out),
        .in_exitcond19(redist1_i_exitcond19_conv29_cmp_nsign_q_2_q),
        .in_feedback_stall_in_72(i_llvm_fpga_pop_i1_memdep_phi4_pop28124_pop72_conv245_out_feedback_stall_out_72),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(),
        .out_feedback_out_72(i_llvm_fpga_push_i1_memdep_phi4_pop28124_push72_conv246_out_feedback_out_72),
        .out_feedback_valid_out_72(i_llvm_fpga_push_i1_memdep_phi4_pop28124_push72_conv246_out_feedback_valid_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi4_pop28124_pop72_conv245(BLACKBOX,73)@3
    // out out_feedback_stall_out_72@20000000
    conv2_i_llvm_fpga_pop_i1_memdep_phi4_pop28124_pop72_0 thei_llvm_fpga_pop_i1_memdep_phi4_pop28124_pop72_conv245 (
        .in_data_in(redist22_sync_together152_aunroll_x_in_c0_eni47_17_tpl_2_q),
        .in_dir(redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q),
        .in_feedback_in_72(i_llvm_fpga_push_i1_memdep_phi4_pop28124_push72_conv246_out_feedback_out_72),
        .in_feedback_valid_in_72(i_llvm_fpga_push_i1_memdep_phi4_pop28124_push72_conv246_out_feedback_valid_out_72),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi4_pop28124_pop72_conv245_out_data_out),
        .out_feedback_stall_out_72(i_llvm_fpga_pop_i1_memdep_phi4_pop28124_pop72_conv245_out_feedback_stall_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg31(REG,148)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg32(REG,149)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp46121_push71_conv244(BLACKBOX,98)@3
    // out out_feedback_out_71@20000000
    // out out_feedback_valid_out_71@20000000
    conv2_i_llvm_fpga_push_i1_notcmp46121_push71_0 thei_llvm_fpga_push_i1_notcmp46121_push71_conv244 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp46121_pop71_conv243_out_data_out),
        .in_exitcond19(redist1_i_exitcond19_conv29_cmp_nsign_q_2_q),
        .in_feedback_stall_in_71(i_llvm_fpga_pop_i1_notcmp46121_pop71_conv243_out_feedback_stall_out_71),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(),
        .out_feedback_out_71(i_llvm_fpga_push_i1_notcmp46121_push71_conv244_out_feedback_out_71),
        .out_feedback_valid_out_71(i_llvm_fpga_push_i1_notcmp46121_push71_conv244_out_feedback_valid_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp46121_pop71_conv243(BLACKBOX,77)@3
    // out out_feedback_stall_out_71@20000000
    conv2_i_llvm_fpga_pop_i1_notcmp46121_pop71_0 thei_llvm_fpga_pop_i1_notcmp46121_pop71_conv243 (
        .in_data_in(redist21_sync_together152_aunroll_x_in_c0_eni47_16_tpl_2_q),
        .in_dir(redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q),
        .in_feedback_in_71(i_llvm_fpga_push_i1_notcmp46121_push71_conv244_out_feedback_out_71),
        .in_feedback_valid_in_71(i_llvm_fpga_push_i1_notcmp46121_push71_conv244_out_feedback_valid_out_71),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp46121_pop71_conv243_out_data_out),
        .out_feedback_stall_out_71(i_llvm_fpga_pop_i1_notcmp46121_pop71_conv243_out_feedback_stall_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg29(REG,146)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg30(REG,147)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond25118_push70_conv242(BLACKBOX,90)@3
    // out out_feedback_out_70@20000000
    // out out_feedback_valid_out_70@20000000
    conv2_i_llvm_fpga_push_i1_exitcond25118_push70_0 thei_llvm_fpga_push_i1_exitcond25118_push70_conv242 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond25118_pop70_conv241_out_data_out),
        .in_exitcond19(redist1_i_exitcond19_conv29_cmp_nsign_q_2_q),
        .in_feedback_stall_in_70(i_llvm_fpga_pop_i1_exitcond25118_pop70_conv241_out_feedback_stall_out_70),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(),
        .out_feedback_out_70(i_llvm_fpga_push_i1_exitcond25118_push70_conv242_out_feedback_out_70),
        .out_feedback_valid_out_70(i_llvm_fpga_push_i1_exitcond25118_push70_conv242_out_feedback_valid_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond25118_pop70_conv241(BLACKBOX,69)@3
    // out out_feedback_stall_out_70@20000000
    conv2_i_llvm_fpga_pop_i1_exitcond25118_pop70_0 thei_llvm_fpga_pop_i1_exitcond25118_pop70_conv241 (
        .in_data_in(redist20_sync_together152_aunroll_x_in_c0_eni47_15_tpl_2_q),
        .in_dir(redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q),
        .in_feedback_in_70(i_llvm_fpga_push_i1_exitcond25118_push70_conv242_out_feedback_out_70),
        .in_feedback_valid_in_70(i_llvm_fpga_push_i1_exitcond25118_push70_conv242_out_feedback_valid_out_70),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond25118_pop70_conv241_out_data_out),
        .out_feedback_stall_out_70(i_llvm_fpga_pop_i1_exitcond25118_pop70_conv241_out_feedback_stall_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg27(REG,144)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg28(REG,145)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_p1024f32_arrayidx64115_push69_conv240(BLACKBOX,110)@3
    // out out_feedback_out_69@20000000
    // out out_feedback_valid_out_69@20000000
    conv2_i_llvm_fpga_push_p1024f32_arrayidx64115_push69_0 thei_llvm_fpga_push_p1024f32_arrayidx64115_push69_conv240 (
        .in_data_in(i_llvm_fpga_pop_p1024f32_arrayidx64115_pop69_conv239_out_data_out),
        .in_exitcond19(redist1_i_exitcond19_conv29_cmp_nsign_q_2_q),
        .in_feedback_stall_in_69(i_llvm_fpga_pop_p1024f32_arrayidx64115_pop69_conv239_out_feedback_stall_out_69),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(),
        .out_feedback_out_69(i_llvm_fpga_push_p1024f32_arrayidx64115_push69_conv240_out_feedback_out_69),
        .out_feedback_valid_out_69(i_llvm_fpga_push_p1024f32_arrayidx64115_push69_conv240_out_feedback_valid_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024f32_arrayidx64115_pop69_conv239(BLACKBOX,88)@3
    // out out_feedback_stall_out_69@20000000
    conv2_i_llvm_fpga_pop_p1024f32_arrayidx64115_pop69_0 thei_llvm_fpga_pop_p1024f32_arrayidx64115_pop69_conv239 (
        .in_data_in(redist19_sync_together152_aunroll_x_in_c0_eni47_14_tpl_2_q),
        .in_dir(redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q),
        .in_feedback_in_69(i_llvm_fpga_push_p1024f32_arrayidx64115_push69_conv240_out_feedback_out_69),
        .in_feedback_valid_in_69(i_llvm_fpga_push_p1024f32_arrayidx64115_push69_conv240_out_feedback_valid_out_69),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_arrayidx64115_pop69_conv239_out_data_out),
        .out_feedback_stall_out_69(i_llvm_fpga_pop_p1024f32_arrayidx64115_pop69_conv239_out_feedback_stall_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg25(REG,142)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg26(REG,143)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_col_037_pop27112_push68_conv238(BLACKBOX,103)@3
    // out out_feedback_out_68@20000000
    // out out_feedback_valid_out_68@20000000
    conv2_i_llvm_fpga_push_i32_col_037_pop27112_push68_0 thei_llvm_fpga_push_i32_col_037_pop27112_push68_conv238 (
        .in_data_in(i_llvm_fpga_pop_i32_col_037_pop27112_pop68_conv237_out_data_out),
        .in_exitcond19(redist1_i_exitcond19_conv29_cmp_nsign_q_2_q),
        .in_feedback_stall_in_68(i_llvm_fpga_pop_i32_col_037_pop27112_pop68_conv237_out_feedback_stall_out_68),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_68(i_llvm_fpga_push_i32_col_037_pop27112_push68_conv238_out_feedback_out_68),
        .out_feedback_valid_out_68(i_llvm_fpga_push_i32_col_037_pop27112_push68_conv238_out_feedback_valid_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_col_037_pop27112_pop68_conv237(BLACKBOX,81)@3
    // out out_feedback_stall_out_68@20000000
    conv2_i_llvm_fpga_pop_i32_col_037_pop27112_pop68_0 thei_llvm_fpga_pop_i32_col_037_pop27112_pop68_conv237 (
        .in_data_in(redist18_sync_together152_aunroll_x_in_c0_eni47_13_tpl_2_q),
        .in_dir(redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q),
        .in_feedback_in_68(i_llvm_fpga_push_i32_col_037_pop27112_push68_conv238_out_feedback_out_68),
        .in_feedback_valid_in_68(i_llvm_fpga_push_i32_col_037_pop27112_push68_conv238_out_feedback_valid_out_68),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_i32_col_037_pop27112_pop68_conv237_out_data_out),
        .out_feedback_stall_out_68(i_llvm_fpga_pop_i32_col_037_pop27112_pop68_conv237_out_feedback_stall_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg23(REG,140)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg24(REG,141)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_p1024f32_arrayidx34109_push67_conv236(BLACKBOX,109)@3
    // out out_feedback_out_67@20000000
    // out out_feedback_valid_out_67@20000000
    conv2_i_llvm_fpga_push_p1024f32_arrayidx34109_push67_0 thei_llvm_fpga_push_p1024f32_arrayidx34109_push67_conv236 (
        .in_data_in(i_llvm_fpga_pop_p1024f32_arrayidx34109_pop67_conv235_out_data_out),
        .in_exitcond19(redist1_i_exitcond19_conv29_cmp_nsign_q_2_q),
        .in_feedback_stall_in_67(i_llvm_fpga_pop_p1024f32_arrayidx34109_pop67_conv235_out_feedback_stall_out_67),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_67(i_llvm_fpga_push_p1024f32_arrayidx34109_push67_conv236_out_feedback_out_67),
        .out_feedback_valid_out_67(i_llvm_fpga_push_p1024f32_arrayidx34109_push67_conv236_out_feedback_valid_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024f32_arrayidx34109_pop67_conv235(BLACKBOX,87)@3
    // out out_feedback_stall_out_67@20000000
    conv2_i_llvm_fpga_pop_p1024f32_arrayidx34109_pop67_0 thei_llvm_fpga_pop_p1024f32_arrayidx34109_pop67_conv235 (
        .in_data_in(redist17_sync_together152_aunroll_x_in_c0_eni47_12_tpl_2_q),
        .in_dir(redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q),
        .in_feedback_in_67(i_llvm_fpga_push_p1024f32_arrayidx34109_push67_conv236_out_feedback_out_67),
        .in_feedback_valid_in_67(i_llvm_fpga_push_p1024f32_arrayidx34109_push67_conv236_out_feedback_valid_out_67),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_arrayidx34109_pop67_conv235_out_data_out),
        .out_feedback_stall_out_67(i_llvm_fpga_pop_p1024f32_arrayidx34109_pop67_conv235_out_feedback_stall_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg21(REG,138)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg22(REG,139)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i64_idxprom25106_push66_conv234(BLACKBOX,108)@3
    // out out_feedback_out_66@20000000
    // out out_feedback_valid_out_66@20000000
    conv2_i_llvm_fpga_push_i64_idxprom25106_push66_0 thei_llvm_fpga_push_i64_idxprom25106_push66_conv234 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom25106_pop66_conv233_out_data_out),
        .in_exitcond19(redist1_i_exitcond19_conv29_cmp_nsign_q_2_q),
        .in_feedback_stall_in_66(i_llvm_fpga_pop_i64_idxprom25106_pop66_conv233_out_feedback_stall_out_66),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_66(i_llvm_fpga_push_i64_idxprom25106_push66_conv234_out_feedback_out_66),
        .out_feedback_valid_out_66(i_llvm_fpga_push_i64_idxprom25106_push66_conv234_out_feedback_valid_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_idxprom25106_pop66_conv233(BLACKBOX,86)@3
    // out out_feedback_stall_out_66@20000000
    conv2_i_llvm_fpga_pop_i64_idxprom25106_pop66_0 thei_llvm_fpga_pop_i64_idxprom25106_pop66_conv233 (
        .in_data_in(redist16_sync_together152_aunroll_x_in_c0_eni47_11_tpl_2_q),
        .in_dir(redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q),
        .in_feedback_in_66(i_llvm_fpga_push_i64_idxprom25106_push66_conv234_out_feedback_out_66),
        .in_feedback_valid_in_66(i_llvm_fpga_push_i64_idxprom25106_push66_conv234_out_feedback_valid_out_66),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom25106_pop66_conv233_out_data_out),
        .out_feedback_stall_out_66(i_llvm_fpga_pop_i64_idxprom25106_pop66_conv233_out_feedback_stall_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg19(REG,136)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg20(REG,137)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi5_pop21102_push65_conv232(BLACKBOX,95)@3
    // out out_feedback_out_65@20000000
    // out out_feedback_valid_out_65@20000000
    conv2_i_llvm_fpga_push_i1_memdep_phi5_pop21102_push65_0 thei_llvm_fpga_push_i1_memdep_phi5_pop21102_push65_conv232 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi5_pop21102_pop65_conv231_out_data_out),
        .in_exitcond19(redist1_i_exitcond19_conv29_cmp_nsign_q_2_q),
        .in_feedback_stall_in_65(i_llvm_fpga_pop_i1_memdep_phi5_pop21102_pop65_conv231_out_feedback_stall_out_65),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_65(i_llvm_fpga_push_i1_memdep_phi5_pop21102_push65_conv232_out_feedback_out_65),
        .out_feedback_valid_out_65(i_llvm_fpga_push_i1_memdep_phi5_pop21102_push65_conv232_out_feedback_valid_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi5_pop21102_pop65_conv231(BLACKBOX,74)@3
    // out out_feedback_stall_out_65@20000000
    conv2_i_llvm_fpga_pop_i1_memdep_phi5_pop21102_pop65_0 thei_llvm_fpga_pop_i1_memdep_phi5_pop21102_pop65_conv231 (
        .in_data_in(redist15_sync_together152_aunroll_x_in_c0_eni47_10_tpl_2_q),
        .in_dir(redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q),
        .in_feedback_in_65(i_llvm_fpga_push_i1_memdep_phi5_pop21102_push65_conv232_out_feedback_out_65),
        .in_feedback_valid_in_65(i_llvm_fpga_push_i1_memdep_phi5_pop21102_push65_conv232_out_feedback_valid_out_65),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi5_pop21102_pop65_conv231_out_data_out),
        .out_feedback_stall_out_65(i_llvm_fpga_pop_i1_memdep_phi5_pop21102_pop65_conv231_out_feedback_stall_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg17(REG,134)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg18(REG,135)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp5194_push63_conv230(BLACKBOX,99)@3
    // out out_feedback_out_63@20000000
    // out out_feedback_valid_out_63@20000000
    conv2_i_llvm_fpga_push_i1_notcmp5194_push63_0 thei_llvm_fpga_push_i1_notcmp5194_push63_conv230 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp5194_pop63_conv229_out_data_out),
        .in_exitcond19(redist1_i_exitcond19_conv29_cmp_nsign_q_2_q),
        .in_feedback_stall_in_63(i_llvm_fpga_pop_i1_notcmp5194_pop63_conv229_out_feedback_stall_out_63),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_63(i_llvm_fpga_push_i1_notcmp5194_push63_conv230_out_feedback_out_63),
        .out_feedback_valid_out_63(i_llvm_fpga_push_i1_notcmp5194_push63_conv230_out_feedback_valid_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp5194_pop63_conv229(BLACKBOX,78)@3
    // out out_feedback_stall_out_63@20000000
    conv2_i_llvm_fpga_pop_i1_notcmp5194_pop63_0 thei_llvm_fpga_pop_i1_notcmp5194_pop63_conv229 (
        .in_data_in(redist14_sync_together152_aunroll_x_in_c0_eni47_9_tpl_2_q),
        .in_dir(redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q),
        .in_feedback_in_63(i_llvm_fpga_push_i1_notcmp5194_push63_conv230_out_feedback_out_63),
        .in_feedback_valid_in_63(i_llvm_fpga_push_i1_notcmp5194_push63_conv230_out_feedback_valid_out_63),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp5194_pop63_conv229_out_data_out),
        .out_feedback_stall_out_63(i_llvm_fpga_pop_i1_notcmp5194_pop63_conv229_out_feedback_stall_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg15(REG,132)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg16(REG,133)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond2890_push62_conv228(BLACKBOX,91)@3
    // out out_feedback_out_62@20000000
    // out out_feedback_valid_out_62@20000000
    conv2_i_llvm_fpga_push_i1_exitcond2890_push62_0 thei_llvm_fpga_push_i1_exitcond2890_push62_conv228 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond2890_pop62_conv227_out_data_out),
        .in_exitcond19(redist1_i_exitcond19_conv29_cmp_nsign_q_2_q),
        .in_feedback_stall_in_62(i_llvm_fpga_pop_i1_exitcond2890_pop62_conv227_out_feedback_stall_out_62),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_62(i_llvm_fpga_push_i1_exitcond2890_push62_conv228_out_feedback_out_62),
        .out_feedback_valid_out_62(i_llvm_fpga_push_i1_exitcond2890_push62_conv228_out_feedback_valid_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond2890_pop62_conv227(BLACKBOX,70)@3
    // out out_feedback_stall_out_62@20000000
    conv2_i_llvm_fpga_pop_i1_exitcond2890_pop62_0 thei_llvm_fpga_pop_i1_exitcond2890_pop62_conv227 (
        .in_data_in(redist13_sync_together152_aunroll_x_in_c0_eni47_8_tpl_2_q),
        .in_dir(redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q),
        .in_feedback_in_62(i_llvm_fpga_push_i1_exitcond2890_push62_conv228_out_feedback_out_62),
        .in_feedback_valid_in_62(i_llvm_fpga_push_i1_exitcond2890_push62_conv228_out_feedback_valid_out_62),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond2890_pop62_conv227_out_data_out),
        .out_feedback_stall_out_62(i_llvm_fpga_pop_i1_exitcond2890_pop62_conv227_out_feedback_stall_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg13(REG,130)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg14(REG,131)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi6_pop1885_push61_conv226(BLACKBOX,96)@3
    // out out_feedback_out_61@20000000
    // out out_feedback_valid_out_61@20000000
    conv2_i_llvm_fpga_push_i1_memdep_phi6_pop1885_push61_0 thei_llvm_fpga_push_i1_memdep_phi6_pop1885_push61_conv226 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi6_pop1885_pop61_conv225_out_data_out),
        .in_exitcond19(redist1_i_exitcond19_conv29_cmp_nsign_q_2_q),
        .in_feedback_stall_in_61(i_llvm_fpga_pop_i1_memdep_phi6_pop1885_pop61_conv225_out_feedback_stall_out_61),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_61(i_llvm_fpga_push_i1_memdep_phi6_pop1885_push61_conv226_out_feedback_out_61),
        .out_feedback_valid_out_61(i_llvm_fpga_push_i1_memdep_phi6_pop1885_push61_conv226_out_feedback_valid_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi6_pop1885_pop61_conv225(BLACKBOX,75)@3
    // out out_feedback_stall_out_61@20000000
    conv2_i_llvm_fpga_pop_i1_memdep_phi6_pop1885_pop61_0 thei_llvm_fpga_pop_i1_memdep_phi6_pop1885_pop61_conv225 (
        .in_data_in(redist12_sync_together152_aunroll_x_in_c0_eni47_7_tpl_2_q),
        .in_dir(redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q),
        .in_feedback_in_61(i_llvm_fpga_push_i1_memdep_phi6_pop1885_push61_conv226_out_feedback_out_61),
        .in_feedback_valid_in_61(i_llvm_fpga_push_i1_memdep_phi6_pop1885_push61_conv226_out_feedback_valid_out_61),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi6_pop1885_pop61_conv225_out_data_out),
        .out_feedback_stall_out_61(i_llvm_fpga_pop_i1_memdep_phi6_pop1885_pop61_conv225_out_feedback_stall_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,128)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg12(REG,129)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_channel_039_pop1780_push60_conv224(BLACKBOX,102)@3
    // out out_feedback_out_60@20000000
    // out out_feedback_valid_out_60@20000000
    conv2_i_llvm_fpga_push_i32_channel_039_pop1780_push60_0 thei_llvm_fpga_push_i32_channel_039_pop1780_push60_conv224 (
        .in_data_in(i_llvm_fpga_pop_i32_channel_039_pop1780_pop60_conv223_out_data_out),
        .in_exitcond19(redist1_i_exitcond19_conv29_cmp_nsign_q_2_q),
        .in_feedback_stall_in_60(i_llvm_fpga_pop_i32_channel_039_pop1780_pop60_conv223_out_feedback_stall_out_60),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_60(i_llvm_fpga_push_i32_channel_039_pop1780_push60_conv224_out_feedback_out_60),
        .out_feedback_valid_out_60(i_llvm_fpga_push_i32_channel_039_pop1780_push60_conv224_out_feedback_valid_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_channel_039_pop1780_pop60_conv223(BLACKBOX,80)@3
    // out out_feedback_stall_out_60@20000000
    conv2_i_llvm_fpga_pop_i32_channel_039_pop1780_pop60_0 thei_llvm_fpga_pop_i32_channel_039_pop1780_pop60_conv223 (
        .in_data_in(redist11_sync_together152_aunroll_x_in_c0_eni47_6_tpl_2_q),
        .in_dir(redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q),
        .in_feedback_in_60(i_llvm_fpga_push_i32_channel_039_pop1780_push60_conv224_out_feedback_out_60),
        .in_feedback_valid_in_60(i_llvm_fpga_push_i32_channel_039_pop1780_push60_conv224_out_feedback_valid_out_60),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_channel_039_pop1780_pop60_conv223_out_data_out),
        .out_feedback_stall_out_60(i_llvm_fpga_pop_i32_channel_039_pop1780_pop60_conv223_out_feedback_stall_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,126)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg10(REG,127)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp5675_push59_conv222(BLACKBOX,100)@3
    // out out_feedback_out_59@20000000
    // out out_feedback_valid_out_59@20000000
    conv2_i_llvm_fpga_push_i1_notcmp5675_push59_0 thei_llvm_fpga_push_i1_notcmp5675_push59_conv222 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp5675_pop59_conv221_out_data_out),
        .in_exitcond19(redist1_i_exitcond19_conv29_cmp_nsign_q_2_q),
        .in_feedback_stall_in_59(i_llvm_fpga_pop_i1_notcmp5675_pop59_conv221_out_feedback_stall_out_59),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_59(i_llvm_fpga_push_i1_notcmp5675_push59_conv222_out_feedback_out_59),
        .out_feedback_valid_out_59(i_llvm_fpga_push_i1_notcmp5675_push59_conv222_out_feedback_valid_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp5675_pop59_conv221(BLACKBOX,79)@3
    // out out_feedback_stall_out_59@20000000
    conv2_i_llvm_fpga_pop_i1_notcmp5675_pop59_0 thei_llvm_fpga_pop_i1_notcmp5675_pop59_conv221 (
        .in_data_in(redist10_sync_together152_aunroll_x_in_c0_eni47_5_tpl_2_q),
        .in_dir(redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q),
        .in_feedback_in_59(i_llvm_fpga_push_i1_notcmp5675_push59_conv222_out_feedback_out_59),
        .in_feedback_valid_in_59(i_llvm_fpga_push_i1_notcmp5675_push59_conv222_out_feedback_valid_out_59),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp5675_pop59_conv221_out_data_out),
        .out_feedback_stall_out_59(i_llvm_fpga_pop_i1_notcmp5675_pop59_conv221_out_feedback_stall_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,124)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg8(REG,125)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond3170_push58_conv220(BLACKBOX,92)@3
    // out out_feedback_out_58@20000000
    // out out_feedback_valid_out_58@20000000
    conv2_i_llvm_fpga_push_i1_exitcond3170_push58_0 thei_llvm_fpga_push_i1_exitcond3170_push58_conv220 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond3170_pop58_conv219_out_data_out),
        .in_exitcond19(redist1_i_exitcond19_conv29_cmp_nsign_q_2_q),
        .in_feedback_stall_in_58(i_llvm_fpga_pop_i1_exitcond3170_pop58_conv219_out_feedback_stall_out_58),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_58(i_llvm_fpga_push_i1_exitcond3170_push58_conv220_out_feedback_out_58),
        .out_feedback_valid_out_58(i_llvm_fpga_push_i1_exitcond3170_push58_conv220_out_feedback_valid_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond3170_pop58_conv219(BLACKBOX,71)@3
    // out out_feedback_stall_out_58@20000000
    conv2_i_llvm_fpga_pop_i1_exitcond3170_pop58_0 thei_llvm_fpga_pop_i1_exitcond3170_pop58_conv219 (
        .in_data_in(redist9_sync_together152_aunroll_x_in_c0_eni47_4_tpl_2_q),
        .in_dir(redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q),
        .in_feedback_in_58(i_llvm_fpga_push_i1_exitcond3170_push58_conv220_out_feedback_out_58),
        .in_feedback_valid_in_58(i_llvm_fpga_push_i1_exitcond3170_push58_conv220_out_feedback_valid_out_58),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond3170_pop58_conv219_out_data_out),
        .out_feedback_stall_out_58(i_llvm_fpga_pop_i1_exitcond3170_pop58_conv219_out_feedback_stall_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp36_conv213(LOGICAL,111)@3
    assign i_notcmp36_conv213_q = redist1_i_exitcond19_conv29_cmp_nsign_q_2_q ^ VCC_q;

    // c_i4_1102(CONSTANT,60)
    assign c_i4_1102_q = $unsigned(4'b1111);

    // i_fpga_indvars_iv_next18_conv215(ADD,65)@1
    assign i_fpga_indvars_iv_next18_conv215_a = {1'b0, i_llvm_fpga_pop_i4_fpga_indvars_iv17_pop55_conv28_out_data_out};
    assign i_fpga_indvars_iv_next18_conv215_b = {1'b0, c_i4_1102_q};
    assign i_fpga_indvars_iv_next18_conv215_o = $unsigned(i_fpga_indvars_iv_next18_conv215_a) + $unsigned(i_fpga_indvars_iv_next18_conv215_b);
    assign i_fpga_indvars_iv_next18_conv215_q = i_fpga_indvars_iv_next18_conv215_o[4:0];

    // bgTrunc_i_fpga_indvars_iv_next18_conv215_sel_x(BITSELECT,3)@1
    assign bgTrunc_i_fpga_indvars_iv_next18_conv215_sel_x_b = i_fpga_indvars_iv_next18_conv215_q[3:0];

    // i_llvm_fpga_push_i4_fpga_indvars_iv17_push55_conv216(BLACKBOX,107)@1
    // out out_feedback_out_55@20000000
    // out out_feedback_valid_out_55@20000000
    conv2_i_llvm_fpga_push_i4_fpga_indvars_iv17_push55_0 thei_llvm_fpga_push_i4_fpga_indvars_iv17_push55_conv216 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next18_conv215_sel_x_b),
        .in_exitcond19(i_exitcond19_conv29_cmp_nsign_q),
        .in_feedback_stall_in_55(i_llvm_fpga_pop_i4_fpga_indvars_iv17_pop55_conv28_out_feedback_stall_out_55),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_55(i_llvm_fpga_push_i4_fpga_indvars_iv17_push55_conv216_out_feedback_out_55),
        .out_feedback_valid_out_55(i_llvm_fpga_push_i4_fpga_indvars_iv17_push55_conv216_out_feedback_valid_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_3100(CONSTANT,61)
    assign c_i4_3100_q = $unsigned(4'b0011);

    // i_llvm_fpga_pop_i4_fpga_indvars_iv17_pop55_conv28(BLACKBOX,85)@1
    // out out_feedback_stall_out_55@20000000
    conv2_i_llvm_fpga_pop_i4_fpga_indvars_iv17_pop55_0 thei_llvm_fpga_pop_i4_fpga_indvars_iv17_pop55_conv28 (
        .in_data_in(c_i4_3100_q),
        .in_dir(in_c0_eni47_1_tpl),
        .in_feedback_in_55(i_llvm_fpga_push_i4_fpga_indvars_iv17_push55_conv216_out_feedback_out_55),
        .in_feedback_valid_in_55(i_llvm_fpga_push_i4_fpga_indvars_iv17_push55_conv216_out_feedback_valid_out_55),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i4_fpga_indvars_iv17_pop55_conv28_out_data_out),
        .out_feedback_stall_out_55(i_llvm_fpga_pop_i4_fpga_indvars_iv17_pop55_conv28_out_feedback_stall_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond19_conv29_cmp_nsign(LOGICAL,162)@1
    assign i_exitcond19_conv29_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i4_fpga_indvars_iv17_pop55_conv28_out_data_out[3:3]));

    // redist0_i_exitcond19_conv29_cmp_nsign_q_1(DELAY,163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond19_conv29_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond19_conv29_cmp_nsign_q_1_q <= $unsigned(i_exitcond19_conv29_cmp_nsign_q);
        end
    end

    // redist1_i_exitcond19_conv29_cmp_nsign_q_2(DELAY,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_exitcond19_conv29_cmp_nsign_q_2_q <= '0;
        end
        else
        begin
            redist1_i_exitcond19_conv29_cmp_nsign_q_2_q <= $unsigned(redist0_i_exitcond19_conv29_cmp_nsign_q_1_q);
        end
    end

    // i_add_conv27(ADD,63)@3
    assign i_add_conv27_a = {1'b0, redist3_i_llvm_fpga_pop_i32_i_035_pop56_conv23_out_data_out_1_q};
    assign i_add_conv27_b = {1'b0, redist2_i_llvm_fpga_pop_i32_row_038_pop2098_pop64_conv26_out_data_out_1_q};
    assign i_add_conv27_o = $unsigned(i_add_conv27_a) + $unsigned(i_add_conv27_b);
    assign i_add_conv27_q = i_add_conv27_o[32:0];

    // bgTrunc_i_add_conv27_sel_x(BITSELECT,2)@3
    assign bgTrunc_i_add_conv27_sel_x_b = i_add_conv27_q[31:0];

    // valid_fanout_reg3(REG,120)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg5(REG,122)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_row_038_pop2098_push64_conv212(BLACKBOX,106)@3
    // out out_feedback_out_64@20000000
    // out out_feedback_valid_out_64@20000000
    conv2_i_llvm_fpga_push_i32_row_038_pop2098_push64_0 thei_llvm_fpga_push_i32_row_038_pop2098_push64_conv212 (
        .in_data_in(redist2_i_llvm_fpga_pop_i32_row_038_pop2098_pop64_conv26_out_data_out_1_q),
        .in_exitcond19(redist1_i_exitcond19_conv29_cmp_nsign_q_2_q),
        .in_feedback_stall_in_64(i_llvm_fpga_pop_i32_row_038_pop2098_pop64_conv26_out_feedback_stall_out_64),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_64(i_llvm_fpga_push_i32_row_038_pop2098_push64_conv212_out_feedback_out_64),
        .out_feedback_valid_out_64(i_llvm_fpga_push_i32_row_038_pop2098_push64_conv212_out_feedback_valid_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_row_038_pop2098_pop64_conv26(BLACKBOX,84)@2
    // out out_feedback_stall_out_64@20000000
    conv2_i_llvm_fpga_pop_i32_row_038_pop2098_pop64_0 thei_llvm_fpga_pop_i32_row_038_pop2098_pop64_conv26 (
        .in_data_in(redist7_sync_together152_aunroll_x_in_c0_eni47_3_tpl_1_q),
        .in_dir(redist4_sync_together152_aunroll_x_in_c0_eni47_1_tpl_1_q),
        .in_feedback_in_64(i_llvm_fpga_push_i32_row_038_pop2098_push64_conv212_out_feedback_out_64),
        .in_feedback_valid_in_64(i_llvm_fpga_push_i32_row_038_pop2098_push64_conv212_out_feedback_valid_out_64),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_row_038_pop2098_pop64_conv26_out_data_out),
        .out_feedback_stall_out_64(i_llvm_fpga_pop_i32_row_038_pop2098_pop64_conv26_out_feedback_stall_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_i_llvm_fpga_pop_i32_row_038_pop2098_pop64_conv26_out_data_out_1(DELAY,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_pop_i32_row_038_pop2098_pop64_conv26_out_data_out_1_q <= '0;
        end
        else
        begin
            redist2_i_llvm_fpga_pop_i32_row_038_pop2098_pop64_conv26_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_row_038_pop2098_pop64_conv26_out_data_out);
        end
    end

    // i_unnamed_conv25(LOGICAL,112)@3
    assign i_unnamed_conv25_q = redist3_i_llvm_fpga_pop_i32_i_035_pop56_conv23_out_data_out_1_q | i_llvm_fpga_pop_i32_k_036_pop38131_pop75_conv24_out_data_out;

    // valid_fanout_reg2(REG,119)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg4(REG,121)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist53_sync_together152_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_k_036_pop38131_push75_conv211(BLACKBOX,105)@3
    // out out_feedback_out_75@20000000
    // out out_feedback_valid_out_75@20000000
    conv2_i_llvm_fpga_push_i32_k_036_pop38131_push75_0 thei_llvm_fpga_push_i32_k_036_pop38131_push75_conv211 (
        .in_data_in(i_llvm_fpga_pop_i32_k_036_pop38131_pop75_conv24_out_data_out),
        .in_exitcond19(redist1_i_exitcond19_conv29_cmp_nsign_q_2_q),
        .in_feedback_stall_in_75(i_llvm_fpga_pop_i32_k_036_pop38131_pop75_conv24_out_feedback_stall_out_75),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_75(i_llvm_fpga_push_i32_k_036_pop38131_push75_conv211_out_feedback_out_75),
        .out_feedback_valid_out_75(i_llvm_fpga_push_i32_k_036_pop38131_push75_conv211_out_feedback_valid_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k_036_pop38131_pop75_conv24(BLACKBOX,83)@3
    // out out_feedback_stall_out_75@20000000
    conv2_i_llvm_fpga_pop_i32_k_036_pop38131_pop75_0 thei_llvm_fpga_pop_i32_k_036_pop38131_pop75_conv24 (
        .in_data_in(redist6_sync_together152_aunroll_x_in_c0_eni47_2_tpl_2_q),
        .in_dir(redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q),
        .in_feedback_in_75(i_llvm_fpga_push_i32_k_036_pop38131_push75_conv211_out_feedback_out_75),
        .in_feedback_valid_in_75(i_llvm_fpga_push_i32_k_036_pop38131_push75_conv211_out_feedback_valid_out_75),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_036_pop38131_pop75_conv24_out_data_out),
        .out_feedback_stall_out_75(i_llvm_fpga_pop_i32_k_036_pop38131_pop75_conv24_out_feedback_stall_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,118)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg6(REG,123)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_1103(CONSTANT,59)
    assign c_i32_1103_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc67_conv217(ADD,66)@2
    assign i_inc67_conv217_a = {1'b0, i_llvm_fpga_pop_i32_i_035_pop56_conv23_out_data_out};
    assign i_inc67_conv217_b = {1'b0, c_i32_1103_q};
    assign i_inc67_conv217_o = $unsigned(i_inc67_conv217_a) + $unsigned(i_inc67_conv217_b);
    assign i_inc67_conv217_q = i_inc67_conv217_o[32:0];

    // bgTrunc_i_inc67_conv217_sel_x(BITSELECT,4)@2
    assign bgTrunc_i_inc67_conv217_sel_x_b = i_inc67_conv217_q[31:0];

    // i_llvm_fpga_push_i32_i_035_push56_conv218(BLACKBOX,104)@2
    // out out_feedback_out_56@20000000
    // out out_feedback_valid_out_56@20000000
    conv2_i_llvm_fpga_push_i32_i_035_push56_0 thei_llvm_fpga_push_i32_i_035_push56_conv218 (
        .in_data_in(bgTrunc_i_inc67_conv217_sel_x_b),
        .in_exitcond19(redist0_i_exitcond19_conv29_cmp_nsign_q_1_q),
        .in_feedback_stall_in_56(i_llvm_fpga_pop_i32_i_035_pop56_conv23_out_feedback_stall_out_56),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_56(i_llvm_fpga_push_i32_i_035_push56_conv218_out_feedback_out_56),
        .out_feedback_valid_out_56(i_llvm_fpga_push_i32_i_035_push56_conv218_out_feedback_valid_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_099(CONSTANT,58)
    assign c_i32_099_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_035_pop56_conv23(BLACKBOX,82)@2
    // out out_feedback_stall_out_56@20000000
    conv2_i_llvm_fpga_pop_i32_i_035_pop56_0 thei_llvm_fpga_pop_i32_i_035_pop56_conv23 (
        .in_data_in(c_i32_099_q),
        .in_dir(redist4_sync_together152_aunroll_x_in_c0_eni47_1_tpl_1_q),
        .in_feedback_in_56(i_llvm_fpga_push_i32_i_035_push56_conv218_out_feedback_out_56),
        .in_feedback_valid_in_56(i_llvm_fpga_push_i32_i_035_push56_conv218_out_feedback_valid_out_56),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_035_pop56_conv23_out_data_out),
        .out_feedback_stall_out_56(i_llvm_fpga_pop_i32_i_035_pop56_conv23_out_feedback_stall_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_i_llvm_fpga_pop_i32_i_035_pop56_conv23_out_data_out_1(DELAY,166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_llvm_fpga_pop_i32_i_035_pop56_conv23_out_data_out_1_q <= '0;
        end
        else
        begin
            redist3_i_llvm_fpga_pop_i32_i_035_pop56_conv23_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_035_pop56_conv23_out_data_out);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,6)@3
    assign out_c0_exi71_0_tpl = GND_q;
    assign out_c0_exi71_1_tpl = redist3_i_llvm_fpga_pop_i32_i_035_pop56_conv23_out_data_out_1_q;
    assign out_c0_exi71_2_tpl = i_llvm_fpga_pop_i32_k_036_pop38131_pop75_conv24_out_data_out;
    assign out_c0_exi71_3_tpl = i_unnamed_conv25_q;
    assign out_c0_exi71_4_tpl = redist2_i_llvm_fpga_pop_i32_row_038_pop2098_pop64_conv26_out_data_out_1_q;
    assign out_c0_exi71_5_tpl = bgTrunc_i_add_conv27_sel_x_b;
    assign out_c0_exi71_6_tpl = redist1_i_exitcond19_conv29_cmp_nsign_q_2_q;
    assign out_c0_exi71_7_tpl = i_notcmp36_conv213_q;
    assign out_c0_exi71_8_tpl = i_llvm_fpga_pop_i1_exitcond3170_pop58_conv219_out_data_out;
    assign out_c0_exi71_9_tpl = i_llvm_fpga_pop_i1_notcmp5675_pop59_conv221_out_data_out;
    assign out_c0_exi71_10_tpl = i_llvm_fpga_pop_i32_channel_039_pop1780_pop60_conv223_out_data_out;
    assign out_c0_exi71_11_tpl = i_llvm_fpga_pop_i1_memdep_phi6_pop1885_pop61_conv225_out_data_out;
    assign out_c0_exi71_12_tpl = i_llvm_fpga_pop_i1_exitcond2890_pop62_conv227_out_data_out;
    assign out_c0_exi71_13_tpl = i_llvm_fpga_pop_i1_notcmp5194_pop63_conv229_out_data_out;
    assign out_c0_exi71_14_tpl = i_llvm_fpga_pop_i1_memdep_phi5_pop21102_pop65_conv231_out_data_out;
    assign out_c0_exi71_15_tpl = i_llvm_fpga_pop_i64_idxprom25106_pop66_conv233_out_data_out;
    assign out_c0_exi71_16_tpl = i_llvm_fpga_pop_p1024f32_arrayidx34109_pop67_conv235_out_data_out;
    assign out_c0_exi71_17_tpl = i_llvm_fpga_pop_i32_col_037_pop27112_pop68_conv237_out_data_out;
    assign out_c0_exi71_18_tpl = i_llvm_fpga_pop_p1024f32_arrayidx64115_pop69_conv239_out_data_out;
    assign out_c0_exi71_19_tpl = i_llvm_fpga_pop_i1_exitcond25118_pop70_conv241_out_data_out;
    assign out_c0_exi71_20_tpl = i_llvm_fpga_pop_i1_notcmp46121_pop71_conv243_out_data_out;
    assign out_c0_exi71_21_tpl = i_llvm_fpga_pop_i1_memdep_phi4_pop28124_pop72_conv245_out_data_out;
    assign out_c0_exi71_22_tpl = i_llvm_fpga_pop_i1_exitcond22127_pop73_conv247_out_data_out;
    assign out_c0_exi71_23_tpl = i_llvm_fpga_pop_i1_notcmp41129_pop74_conv249_out_data_out;
    assign out_c0_exi71_24_tpl = i_llvm_fpga_pop_i1_memdep_phi3_pop39133_pop76_conv251_out_data_out;
    assign out_c0_exi71_25_tpl = redist5_sync_together152_aunroll_x_in_c0_eni47_1_tpl_2_q;
    assign out_c0_exi71_26_tpl = redist26_sync_together152_aunroll_x_in_c0_eni47_21_tpl_2_q;
    assign out_c0_exi71_27_tpl = redist27_sync_together152_aunroll_x_in_c0_eni47_22_tpl_2_q;
    assign out_c0_exi71_28_tpl = redist28_sync_together152_aunroll_x_in_c0_eni47_23_tpl_2_q;
    assign out_c0_exi71_29_tpl = redist29_sync_together152_aunroll_x_in_c0_eni47_24_tpl_2_q;
    assign out_c0_exi71_30_tpl = redist30_sync_together152_aunroll_x_in_c0_eni47_25_tpl_2_q;
    assign out_c0_exi71_31_tpl = redist31_sync_together152_aunroll_x_in_c0_eni47_26_tpl_2_q;
    assign out_c0_exi71_32_tpl = redist32_sync_together152_aunroll_x_in_c0_eni47_27_tpl_2_q;
    assign out_c0_exi71_33_tpl = redist33_sync_together152_aunroll_x_in_c0_eni47_28_tpl_2_q;
    assign out_c0_exi71_34_tpl = redist34_sync_together152_aunroll_x_in_c0_eni47_29_tpl_2_q;
    assign out_c0_exi71_35_tpl = redist35_sync_together152_aunroll_x_in_c0_eni47_30_tpl_2_q;
    assign out_c0_exi71_36_tpl = redist36_sync_together152_aunroll_x_in_c0_eni47_31_tpl_2_q;
    assign out_c0_exi71_37_tpl = redist37_sync_together152_aunroll_x_in_c0_eni47_32_tpl_2_q;
    assign out_c0_exi71_38_tpl = redist38_sync_together152_aunroll_x_in_c0_eni47_33_tpl_2_q;
    assign out_c0_exi71_39_tpl = redist39_sync_together152_aunroll_x_in_c0_eni47_34_tpl_2_q;
    assign out_c0_exi71_40_tpl = redist40_sync_together152_aunroll_x_in_c0_eni47_35_tpl_2_q;
    assign out_c0_exi71_41_tpl = redist41_sync_together152_aunroll_x_in_c0_eni47_36_tpl_2_q;
    assign out_c0_exi71_42_tpl = redist42_sync_together152_aunroll_x_in_c0_eni47_37_tpl_2_q;
    assign out_c0_exi71_43_tpl = redist43_sync_together152_aunroll_x_in_c0_eni47_38_tpl_2_q;
    assign out_c0_exi71_44_tpl = redist44_sync_together152_aunroll_x_in_c0_eni47_39_tpl_2_q;
    assign out_c0_exi71_45_tpl = redist45_sync_together152_aunroll_x_in_c0_eni47_40_tpl_2_q;
    assign out_c0_exi71_46_tpl = redist46_sync_together152_aunroll_x_in_c0_eni47_41_tpl_2_q;
    assign out_c0_exi71_47_tpl = redist47_sync_together152_aunroll_x_in_c0_eni47_42_tpl_2_q;
    assign out_c0_exi71_48_tpl = redist48_sync_together152_aunroll_x_in_c0_eni47_43_tpl_2_q;
    assign out_c0_exi71_49_tpl = redist49_sync_together152_aunroll_x_in_c0_eni47_44_tpl_2_q;
    assign out_c0_exi71_50_tpl = redist50_sync_together152_aunroll_x_in_c0_eni47_45_tpl_2_q;
    assign out_c0_exi71_51_tpl = redist51_sync_together152_aunroll_x_in_c0_eni47_46_tpl_2_q;
    assign out_c0_exi71_52_tpl = redist52_sync_together152_aunroll_x_in_c0_eni47_47_tpl_2_q;
    assign out_c0_exi71_53_tpl = redist23_sync_together152_aunroll_x_in_c0_eni47_18_tpl_2_q;
    assign out_c0_exi71_54_tpl = redist24_sync_together152_aunroll_x_in_c0_eni47_19_tpl_2_q;
    assign out_c0_exi71_55_tpl = redist6_sync_together152_aunroll_x_in_c0_eni47_2_tpl_2_q;
    assign out_c0_exi71_56_tpl = redist25_sync_together152_aunroll_x_in_c0_eni47_20_tpl_2_q;
    assign out_c0_exi71_57_tpl = redist9_sync_together152_aunroll_x_in_c0_eni47_4_tpl_2_q;
    assign out_c0_exi71_58_tpl = redist10_sync_together152_aunroll_x_in_c0_eni47_5_tpl_2_q;
    assign out_c0_exi71_59_tpl = redist11_sync_together152_aunroll_x_in_c0_eni47_6_tpl_2_q;
    assign out_c0_exi71_60_tpl = redist12_sync_together152_aunroll_x_in_c0_eni47_7_tpl_2_q;
    assign out_c0_exi71_61_tpl = redist13_sync_together152_aunroll_x_in_c0_eni47_8_tpl_2_q;
    assign out_c0_exi71_62_tpl = redist14_sync_together152_aunroll_x_in_c0_eni47_9_tpl_2_q;
    assign out_c0_exi71_63_tpl = redist8_sync_together152_aunroll_x_in_c0_eni47_3_tpl_2_q;
    assign out_c0_exi71_64_tpl = redist15_sync_together152_aunroll_x_in_c0_eni47_10_tpl_2_q;
    assign out_c0_exi71_65_tpl = redist16_sync_together152_aunroll_x_in_c0_eni47_11_tpl_2_q;
    assign out_c0_exi71_66_tpl = redist17_sync_together152_aunroll_x_in_c0_eni47_12_tpl_2_q;
    assign out_c0_exi71_67_tpl = redist18_sync_together152_aunroll_x_in_c0_eni47_13_tpl_2_q;
    assign out_c0_exi71_68_tpl = redist19_sync_together152_aunroll_x_in_c0_eni47_14_tpl_2_q;
    assign out_c0_exi71_69_tpl = redist20_sync_together152_aunroll_x_in_c0_eni47_15_tpl_2_q;
    assign out_c0_exi71_70_tpl = redist21_sync_together152_aunroll_x_in_c0_eni47_16_tpl_2_q;
    assign out_c0_exi71_71_tpl = redist22_sync_together152_aunroll_x_in_c0_eni47_17_tpl_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv21 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond39_conv214(BLACKBOX,101)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    conv2_i_llvm_fpga_push_i1_notexitcond39_0 thei_llvm_fpga_push_i1_notexitcond39_conv214 (
        .in_data_in(i_exitcond19_conv29_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going38_conv22_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond39_conv214_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond39_conv214_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going38_conv22(BLACKBOX,67)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2_i_llvm_fpga_pipeline_keep_going38_0 thei_llvm_fpga_pipeline_keep_going38_conv22 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond39_conv214_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond39_conv214_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going38_conv22_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going38_conv22_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going38_conv22_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going38_conv22_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,62)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_valid_out = i_llvm_fpga_pipeline_keep_going38_conv22_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_stall_out = i_llvm_fpga_pipeline_keep_going38_conv22_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,115)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going38_conv22_out_pipeline_valid_out;

endmodule
