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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond10_preheader_conv2s_c0_enter48840_conv20
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_i_sfc_logic_s_c0_in_for_cond10_pre0000c0_enter48840_conv20 (
    output wire [0:0] out_c0_exi46_0_tpl,
    output wire [0:0] out_c0_exi46_1_tpl,
    output wire [0:0] out_c0_exi46_2_tpl,
    output wire [31:0] out_c0_exi46_3_tpl,
    output wire [0:0] out_c0_exi46_4_tpl,
    output wire [0:0] out_c0_exi46_5_tpl,
    output wire [31:0] out_c0_exi46_6_tpl,
    output wire [0:0] out_c0_exi46_7_tpl,
    output wire [0:0] out_c0_exi46_8_tpl,
    output wire [0:0] out_c0_exi46_9_tpl,
    output wire [31:0] out_c0_exi46_10_tpl,
    output wire [0:0] out_c0_exi46_11_tpl,
    output wire [63:0] out_c0_exi46_12_tpl,
    output wire [63:0] out_c0_exi46_13_tpl,
    output wire [31:0] out_c0_exi46_14_tpl,
    output wire [63:0] out_c0_exi46_15_tpl,
    output wire [0:0] out_c0_exi46_16_tpl,
    output wire [0:0] out_c0_exi46_17_tpl,
    output wire [0:0] out_c0_exi46_18_tpl,
    output wire [0:0] out_c0_exi46_19_tpl,
    output wire [0:0] out_c0_exi46_20_tpl,
    output wire [0:0] out_c0_exi46_21_tpl,
    output wire [31:0] out_c0_exi46_22_tpl,
    output wire [0:0] out_c0_exi46_23_tpl,
    output wire [0:0] out_c0_exi46_24_tpl,
    output wire [0:0] out_c0_exi46_25_tpl,
    output wire [31:0] out_c0_exi46_26_tpl,
    output wire [0:0] out_c0_exi46_27_tpl,
    output wire [0:0] out_c0_exi46_28_tpl,
    output wire [0:0] out_c0_exi46_29_tpl,
    output wire [31:0] out_c0_exi46_30_tpl,
    output wire [0:0] out_c0_exi46_31_tpl,
    output wire [31:0] out_c0_exi46_32_tpl,
    output wire [31:0] out_c0_exi46_33_tpl,
    output wire [63:0] out_c0_exi46_34_tpl,
    output wire [63:0] out_c0_exi46_35_tpl,
    output wire [31:0] out_c0_exi46_36_tpl,
    output wire [63:0] out_c0_exi46_37_tpl,
    output wire [0:0] out_c0_exi46_38_tpl,
    output wire [0:0] out_c0_exi46_39_tpl,
    output wire [0:0] out_c0_exi46_40_tpl,
    output wire [0:0] out_c0_exi46_41_tpl,
    output wire [0:0] out_c0_exi46_42_tpl,
    output wire [0:0] out_c0_exi46_43_tpl,
    output wire [0:0] out_c0_exi46_44_tpl,
    output wire [0:0] out_c0_exi46_45_tpl,
    output wire [0:0] out_c0_exi46_46_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv21,
    input wire [0:0] in_c0_eni28_0_tpl,
    input wire [0:0] in_c0_eni28_1_tpl,
    input wire [0:0] in_c0_eni28_2_tpl,
    input wire [0:0] in_c0_eni28_3_tpl,
    input wire [31:0] in_c0_eni28_4_tpl,
    input wire [0:0] in_c0_eni28_5_tpl,
    input wire [0:0] in_c0_eni28_6_tpl,
    input wire [0:0] in_c0_eni28_7_tpl,
    input wire [31:0] in_c0_eni28_8_tpl,
    input wire [0:0] in_c0_eni28_9_tpl,
    input wire [63:0] in_c0_eni28_10_tpl,
    input wire [63:0] in_c0_eni28_11_tpl,
    input wire [31:0] in_c0_eni28_12_tpl,
    input wire [63:0] in_c0_eni28_13_tpl,
    input wire [0:0] in_c0_eni28_14_tpl,
    input wire [0:0] in_c0_eni28_15_tpl,
    input wire [0:0] in_c0_eni28_16_tpl,
    input wire [0:0] in_c0_eni28_17_tpl,
    input wire [0:0] in_c0_eni28_18_tpl,
    input wire [31:0] in_c0_eni28_19_tpl,
    input wire [0:0] in_c0_eni28_20_tpl,
    input wire [0:0] in_c0_eni28_21_tpl,
    input wire [0:0] in_c0_eni28_22_tpl,
    input wire [31:0] in_c0_eni28_23_tpl,
    input wire [0:0] in_c0_eni28_24_tpl,
    input wire [0:0] in_c0_eni28_25_tpl,
    input wire [0:0] in_c0_eni28_26_tpl,
    input wire [31:0] in_c0_eni28_27_tpl,
    input wire [0:0] in_c0_eni28_28_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [3:0] bgTrunc_i_fpga_indvars_iv_next21_conv28_sel_x_b;
    wire [31:0] bgTrunc_i_inc70_conv211_sel_x_b;
    wire [31:0] c_i32_084_q;
    wire [31:0] c_i32_185_q;
    wire [3:0] c_i4_183_q;
    wire [3:0] c_i4_481_q;
    wire [4:0] i_fpga_indvars_iv_next21_conv28_a;
    wire [4:0] i_fpga_indvars_iv_next21_conv28_b;
    logic [4:0] i_fpga_indvars_iv_next21_conv28_o;
    wire [4:0] i_fpga_indvars_iv_next21_conv28_q;
    wire [32:0] i_inc70_conv211_a;
    wire [32:0] i_inc70_conv211_b;
    logic [32:0] i_inc70_conv211_o;
    wire [32:0] i_inc70_conv211_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_conv22_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_conv22_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_conv22_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_conv22_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond25117_pop52_conv237_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond25117_pop52_conv237_out_feedback_stall_out_52;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond2889_pop44_conv221_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond2889_pop44_conv221_out_feedback_stall_out_44;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond3169_pop40_conv213_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond3169_pop40_conv213_out_feedback_stall_out_40;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop28123_pop54_conv241_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop28123_pop54_conv241_out_feedback_stall_out_54;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop21101_pop47_conv227_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop21101_pop47_conv227_out_feedback_stall_out_47;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop1884_pop43_conv219_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop1884_pop43_conv219_out_feedback_stall_out_43;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp46120_pop53_conv239_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp46120_pop53_conv239_out_feedback_stall_out_53;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5193_pop45_conv223_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5193_pop45_conv223_out_feedback_stall_out_45;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5674_pop41_conv215_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5674_pop41_conv215_out_feedback_stall_out_41;
    wire [31:0] i_llvm_fpga_pop_i32_channel_039_pop1779_pop42_conv217_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_channel_039_pop1779_pop42_conv217_out_feedback_stall_out_42;
    wire [31:0] i_llvm_fpga_pop_i32_col_037_pop27111_pop50_conv233_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_col_037_pop27111_pop50_conv233_out_feedback_stall_out_50;
    wire [31:0] i_llvm_fpga_pop_i32_k_036_pop38_conv210_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_036_pop38_conv210_out_feedback_stall_out_38;
    wire [31:0] i_llvm_fpga_pop_i32_row_038_pop2097_pop46_conv225_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_row_038_pop2097_pop46_conv225_out_feedback_stall_out_46;
    wire [3:0] i_llvm_fpga_pop_i4_fpga_indvars_iv20_pop37_conv23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_fpga_indvars_iv20_pop37_conv23_out_feedback_stall_out_37;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom25105_pop48_conv229_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom25105_pop48_conv229_out_feedback_stall_out_48;
    wire [63:0] i_llvm_fpga_pop_p1024f32_arrayidx34108_pop49_conv231_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_arrayidx34108_pop49_conv231_out_feedback_stall_out_49;
    wire [63:0] i_llvm_fpga_pop_p1024f32_arrayidx64114_pop51_conv235_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_arrayidx64114_pop51_conv235_out_feedback_stall_out_51;
    wire [0:0] i_llvm_fpga_push_i1_exitcond25117_push52_conv238_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_i1_exitcond25117_push52_conv238_out_feedback_valid_out_52;
    wire [0:0] i_llvm_fpga_push_i1_exitcond2889_push44_conv222_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i1_exitcond2889_push44_conv222_out_feedback_valid_out_44;
    wire [0:0] i_llvm_fpga_push_i1_exitcond3169_push40_conv214_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i1_exitcond3169_push40_conv214_out_feedback_valid_out_40;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop28123_push54_conv242_out_feedback_out_54;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop28123_push54_conv242_out_feedback_valid_out_54;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop21101_push47_conv228_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop21101_push47_conv228_out_feedback_valid_out_47;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_pop1884_push43_conv220_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_pop1884_push43_conv220_out_feedback_valid_out_43;
    wire [0:0] i_llvm_fpga_push_i1_notcmp46120_push53_conv240_out_feedback_out_53;
    wire [0:0] i_llvm_fpga_push_i1_notcmp46120_push53_conv240_out_feedback_valid_out_53;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5193_push45_conv224_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5193_push45_conv224_out_feedback_valid_out_45;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5674_push41_conv216_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5674_push41_conv216_out_feedback_valid_out_41;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond44_conv27_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond44_conv27_out_feedback_valid_out_7;
    wire [31:0] i_llvm_fpga_push_i32_channel_039_pop1779_push42_conv218_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i32_channel_039_pop1779_push42_conv218_out_feedback_valid_out_42;
    wire [31:0] i_llvm_fpga_push_i32_col_037_pop27111_push50_conv234_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i32_col_037_pop27111_push50_conv234_out_feedback_valid_out_50;
    wire [31:0] i_llvm_fpga_push_i32_k_036_push38_conv212_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i32_k_036_push38_conv212_out_feedback_valid_out_38;
    wire [31:0] i_llvm_fpga_push_i32_row_038_pop2097_push46_conv226_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i32_row_038_pop2097_push46_conv226_out_feedback_valid_out_46;
    wire [7:0] i_llvm_fpga_push_i4_fpga_indvars_iv20_push37_conv29_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i4_fpga_indvars_iv20_push37_conv29_out_feedback_valid_out_37;
    wire [63:0] i_llvm_fpga_push_i64_idxprom25105_push48_conv230_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i64_idxprom25105_push48_conv230_out_feedback_valid_out_48;
    wire [63:0] i_llvm_fpga_push_p1024f32_arrayidx34108_push49_conv232_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_p1024f32_arrayidx34108_push49_conv232_out_feedback_valid_out_49;
    wire [63:0] i_llvm_fpga_push_p1024f32_arrayidx64114_push51_conv236_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_p1024f32_arrayidx64114_push51_conv236_out_feedback_valid_out_51;
    wire [0:0] i_notcmp41_conv26_q;
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
    wire [0:0] i_exitcond22_conv24_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond22_conv24_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1_q;
    reg [0:0] redist2_sync_together126_aunroll_x_in_c0_eni28_2_tpl_1_q;
    reg [0:0] redist3_sync_together126_aunroll_x_in_c0_eni28_3_tpl_1_q;
    reg [31:0] redist4_sync_together126_aunroll_x_in_c0_eni28_4_tpl_1_q;
    reg [0:0] redist5_sync_together126_aunroll_x_in_c0_eni28_5_tpl_1_q;
    reg [0:0] redist6_sync_together126_aunroll_x_in_c0_eni28_6_tpl_1_q;
    reg [0:0] redist7_sync_together126_aunroll_x_in_c0_eni28_7_tpl_1_q;
    reg [31:0] redist8_sync_together126_aunroll_x_in_c0_eni28_8_tpl_1_q;
    reg [0:0] redist9_sync_together126_aunroll_x_in_c0_eni28_9_tpl_1_q;
    reg [63:0] redist10_sync_together126_aunroll_x_in_c0_eni28_10_tpl_1_q;
    reg [63:0] redist11_sync_together126_aunroll_x_in_c0_eni28_11_tpl_1_q;
    reg [31:0] redist12_sync_together126_aunroll_x_in_c0_eni28_12_tpl_1_q;
    reg [63:0] redist13_sync_together126_aunroll_x_in_c0_eni28_13_tpl_1_q;
    reg [0:0] redist14_sync_together126_aunroll_x_in_c0_eni28_14_tpl_1_q;
    reg [0:0] redist15_sync_together126_aunroll_x_in_c0_eni28_15_tpl_1_q;
    reg [0:0] redist16_sync_together126_aunroll_x_in_c0_eni28_16_tpl_1_q;
    reg [0:0] redist17_sync_together126_aunroll_x_in_c0_eni28_17_tpl_1_q;
    reg [0:0] redist18_sync_together126_aunroll_x_in_c0_eni28_18_tpl_1_q;
    reg [31:0] redist19_sync_together126_aunroll_x_in_c0_eni28_19_tpl_1_q;
    reg [0:0] redist20_sync_together126_aunroll_x_in_c0_eni28_20_tpl_1_q;
    reg [0:0] redist21_sync_together126_aunroll_x_in_c0_eni28_21_tpl_1_q;
    reg [0:0] redist22_sync_together126_aunroll_x_in_c0_eni28_22_tpl_1_q;
    reg [31:0] redist23_sync_together126_aunroll_x_in_c0_eni28_23_tpl_1_q;
    reg [0:0] redist24_sync_together126_aunroll_x_in_c0_eni28_24_tpl_1_q;
    reg [0:0] redist25_sync_together126_aunroll_x_in_c0_eni28_25_tpl_1_q;
    reg [0:0] redist26_sync_together126_aunroll_x_in_c0_eni28_26_tpl_1_q;
    reg [31:0] redist27_sync_together126_aunroll_x_in_c0_eni28_27_tpl_1_q;
    reg [0:0] redist28_sync_together126_aunroll_x_in_c0_eni28_28_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,97)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // redist9_sync_together126_aunroll_x_in_c0_eni28_9_tpl_1(DELAY,143)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together126_aunroll_x_in_c0_eni28_9_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together126_aunroll_x_in_c0_eni28_9_tpl_1_q <= $unsigned(in_c0_eni28_9_tpl);
        end
    end

    // redist7_sync_together126_aunroll_x_in_c0_eni28_7_tpl_1(DELAY,141)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together126_aunroll_x_in_c0_eni28_7_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together126_aunroll_x_in_c0_eni28_7_tpl_1_q <= $unsigned(in_c0_eni28_7_tpl);
        end
    end

    // redist6_sync_together126_aunroll_x_in_c0_eni28_6_tpl_1(DELAY,140)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together126_aunroll_x_in_c0_eni28_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together126_aunroll_x_in_c0_eni28_6_tpl_1_q <= $unsigned(in_c0_eni28_6_tpl);
        end
    end

    // redist5_sync_together126_aunroll_x_in_c0_eni28_5_tpl_1(DELAY,139)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together126_aunroll_x_in_c0_eni28_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together126_aunroll_x_in_c0_eni28_5_tpl_1_q <= $unsigned(in_c0_eni28_5_tpl);
        end
    end

    // redist3_sync_together126_aunroll_x_in_c0_eni28_3_tpl_1(DELAY,137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together126_aunroll_x_in_c0_eni28_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together126_aunroll_x_in_c0_eni28_3_tpl_1_q <= $unsigned(in_c0_eni28_3_tpl);
        end
    end

    // redist2_sync_together126_aunroll_x_in_c0_eni28_2_tpl_1(DELAY,136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together126_aunroll_x_in_c0_eni28_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together126_aunroll_x_in_c0_eni28_2_tpl_1_q <= $unsigned(in_c0_eni28_2_tpl);
        end
    end

    // redist16_sync_together126_aunroll_x_in_c0_eni28_16_tpl_1(DELAY,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together126_aunroll_x_in_c0_eni28_16_tpl_1_q <= '0;
        end
        else
        begin
            redist16_sync_together126_aunroll_x_in_c0_eni28_16_tpl_1_q <= $unsigned(in_c0_eni28_16_tpl);
        end
    end

    // redist15_sync_together126_aunroll_x_in_c0_eni28_15_tpl_1(DELAY,149)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together126_aunroll_x_in_c0_eni28_15_tpl_1_q <= '0;
        end
        else
        begin
            redist15_sync_together126_aunroll_x_in_c0_eni28_15_tpl_1_q <= $unsigned(in_c0_eni28_15_tpl);
        end
    end

    // redist14_sync_together126_aunroll_x_in_c0_eni28_14_tpl_1(DELAY,148)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together126_aunroll_x_in_c0_eni28_14_tpl_1_q <= '0;
        end
        else
        begin
            redist14_sync_together126_aunroll_x_in_c0_eni28_14_tpl_1_q <= $unsigned(in_c0_eni28_14_tpl);
        end
    end

    // redist13_sync_together126_aunroll_x_in_c0_eni28_13_tpl_1(DELAY,147)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together126_aunroll_x_in_c0_eni28_13_tpl_1_q <= '0;
        end
        else
        begin
            redist13_sync_together126_aunroll_x_in_c0_eni28_13_tpl_1_q <= $unsigned(in_c0_eni28_13_tpl);
        end
    end

    // redist12_sync_together126_aunroll_x_in_c0_eni28_12_tpl_1(DELAY,146)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together126_aunroll_x_in_c0_eni28_12_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together126_aunroll_x_in_c0_eni28_12_tpl_1_q <= $unsigned(in_c0_eni28_12_tpl);
        end
    end

    // redist11_sync_together126_aunroll_x_in_c0_eni28_11_tpl_1(DELAY,145)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together126_aunroll_x_in_c0_eni28_11_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together126_aunroll_x_in_c0_eni28_11_tpl_1_q <= $unsigned(in_c0_eni28_11_tpl);
        end
    end

    // redist10_sync_together126_aunroll_x_in_c0_eni28_10_tpl_1(DELAY,144)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together126_aunroll_x_in_c0_eni28_10_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together126_aunroll_x_in_c0_eni28_10_tpl_1_q <= $unsigned(in_c0_eni28_10_tpl);
        end
    end

    // redist4_sync_together126_aunroll_x_in_c0_eni28_4_tpl_1(DELAY,138)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together126_aunroll_x_in_c0_eni28_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together126_aunroll_x_in_c0_eni28_4_tpl_1_q <= $unsigned(in_c0_eni28_4_tpl);
        end
    end

    // redist8_sync_together126_aunroll_x_in_c0_eni28_8_tpl_1(DELAY,142)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together126_aunroll_x_in_c0_eni28_8_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together126_aunroll_x_in_c0_eni28_8_tpl_1_q <= $unsigned(in_c0_eni28_8_tpl);
        end
    end

    // redist28_sync_together126_aunroll_x_in_c0_eni28_28_tpl_1(DELAY,162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together126_aunroll_x_in_c0_eni28_28_tpl_1_q <= '0;
        end
        else
        begin
            redist28_sync_together126_aunroll_x_in_c0_eni28_28_tpl_1_q <= $unsigned(in_c0_eni28_28_tpl);
        end
    end

    // redist27_sync_together126_aunroll_x_in_c0_eni28_27_tpl_1(DELAY,161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together126_aunroll_x_in_c0_eni28_27_tpl_1_q <= '0;
        end
        else
        begin
            redist27_sync_together126_aunroll_x_in_c0_eni28_27_tpl_1_q <= $unsigned(in_c0_eni28_27_tpl);
        end
    end

    // redist26_sync_together126_aunroll_x_in_c0_eni28_26_tpl_1(DELAY,160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together126_aunroll_x_in_c0_eni28_26_tpl_1_q <= '0;
        end
        else
        begin
            redist26_sync_together126_aunroll_x_in_c0_eni28_26_tpl_1_q <= $unsigned(in_c0_eni28_26_tpl);
        end
    end

    // redist25_sync_together126_aunroll_x_in_c0_eni28_25_tpl_1(DELAY,159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together126_aunroll_x_in_c0_eni28_25_tpl_1_q <= '0;
        end
        else
        begin
            redist25_sync_together126_aunroll_x_in_c0_eni28_25_tpl_1_q <= $unsigned(in_c0_eni28_25_tpl);
        end
    end

    // redist24_sync_together126_aunroll_x_in_c0_eni28_24_tpl_1(DELAY,158)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together126_aunroll_x_in_c0_eni28_24_tpl_1_q <= '0;
        end
        else
        begin
            redist24_sync_together126_aunroll_x_in_c0_eni28_24_tpl_1_q <= $unsigned(in_c0_eni28_24_tpl);
        end
    end

    // redist23_sync_together126_aunroll_x_in_c0_eni28_23_tpl_1(DELAY,157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together126_aunroll_x_in_c0_eni28_23_tpl_1_q <= '0;
        end
        else
        begin
            redist23_sync_together126_aunroll_x_in_c0_eni28_23_tpl_1_q <= $unsigned(in_c0_eni28_23_tpl);
        end
    end

    // redist22_sync_together126_aunroll_x_in_c0_eni28_22_tpl_1(DELAY,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together126_aunroll_x_in_c0_eni28_22_tpl_1_q <= '0;
        end
        else
        begin
            redist22_sync_together126_aunroll_x_in_c0_eni28_22_tpl_1_q <= $unsigned(in_c0_eni28_22_tpl);
        end
    end

    // redist21_sync_together126_aunroll_x_in_c0_eni28_21_tpl_1(DELAY,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together126_aunroll_x_in_c0_eni28_21_tpl_1_q <= '0;
        end
        else
        begin
            redist21_sync_together126_aunroll_x_in_c0_eni28_21_tpl_1_q <= $unsigned(in_c0_eni28_21_tpl);
        end
    end

    // redist20_sync_together126_aunroll_x_in_c0_eni28_20_tpl_1(DELAY,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together126_aunroll_x_in_c0_eni28_20_tpl_1_q <= '0;
        end
        else
        begin
            redist20_sync_together126_aunroll_x_in_c0_eni28_20_tpl_1_q <= $unsigned(in_c0_eni28_20_tpl);
        end
    end

    // redist19_sync_together126_aunroll_x_in_c0_eni28_19_tpl_1(DELAY,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together126_aunroll_x_in_c0_eni28_19_tpl_1_q <= '0;
        end
        else
        begin
            redist19_sync_together126_aunroll_x_in_c0_eni28_19_tpl_1_q <= $unsigned(in_c0_eni28_19_tpl);
        end
    end

    // redist18_sync_together126_aunroll_x_in_c0_eni28_18_tpl_1(DELAY,152)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together126_aunroll_x_in_c0_eni28_18_tpl_1_q <= '0;
        end
        else
        begin
            redist18_sync_together126_aunroll_x_in_c0_eni28_18_tpl_1_q <= $unsigned(in_c0_eni28_18_tpl);
        end
    end

    // redist17_sync_together126_aunroll_x_in_c0_eni28_17_tpl_1(DELAY,151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together126_aunroll_x_in_c0_eni28_17_tpl_1_q <= '0;
        end
        else
        begin
            redist17_sync_together126_aunroll_x_in_c0_eni28_17_tpl_1_q <= $unsigned(in_c0_eni28_17_tpl);
        end
    end

    // redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1(DELAY,135)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1_q <= $unsigned(in_c0_eni28_1_tpl);
        end
    end

    // valid_fanout_reg31(REG,128)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg32(REG,129)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi4_pop28123_push54_conv242(BLACKBOX,77)@2
    // out out_feedback_out_54@20000000
    // out out_feedback_valid_out_54@20000000
    conv2_i_llvm_fpga_push_i1_memdep_phi4_pop28123_push54_0 thei_llvm_fpga_push_i1_memdep_phi4_pop28123_push54_conv242 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi4_pop28123_pop54_conv241_out_data_out),
        .in_exitcond22(redist0_i_exitcond22_conv24_cmp_nsign_q_1_q),
        .in_feedback_stall_in_54(i_llvm_fpga_pop_i1_memdep_phi4_pop28123_pop54_conv241_out_feedback_stall_out_54),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(),
        .out_feedback_out_54(i_llvm_fpga_push_i1_memdep_phi4_pop28123_push54_conv242_out_feedback_out_54),
        .out_feedback_valid_out_54(i_llvm_fpga_push_i1_memdep_phi4_pop28123_push54_conv242_out_feedback_valid_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi4_pop28123_pop54_conv241(BLACKBOX,60)@2
    // out out_feedback_stall_out_54@20000000
    conv2_i_llvm_fpga_pop_i1_memdep_phi4_pop28123_pop54_0 thei_llvm_fpga_pop_i1_memdep_phi4_pop28123_pop54_conv241 (
        .in_data_in(redist16_sync_together126_aunroll_x_in_c0_eni28_16_tpl_1_q),
        .in_dir(redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1_q),
        .in_feedback_in_54(i_llvm_fpga_push_i1_memdep_phi4_pop28123_push54_conv242_out_feedback_out_54),
        .in_feedback_valid_in_54(i_llvm_fpga_push_i1_memdep_phi4_pop28123_push54_conv242_out_feedback_valid_out_54),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi4_pop28123_pop54_conv241_out_data_out),
        .out_feedback_stall_out_54(i_llvm_fpga_pop_i1_memdep_phi4_pop28123_pop54_conv241_out_feedback_stall_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg29(REG,126)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg30(REG,127)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp46120_push53_conv240(BLACKBOX,80)@2
    // out out_feedback_out_53@20000000
    // out out_feedback_valid_out_53@20000000
    conv2_i_llvm_fpga_push_i1_notcmp46120_push53_0 thei_llvm_fpga_push_i1_notcmp46120_push53_conv240 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp46120_pop53_conv239_out_data_out),
        .in_exitcond22(redist0_i_exitcond22_conv24_cmp_nsign_q_1_q),
        .in_feedback_stall_in_53(i_llvm_fpga_pop_i1_notcmp46120_pop53_conv239_out_feedback_stall_out_53),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(),
        .out_feedback_out_53(i_llvm_fpga_push_i1_notcmp46120_push53_conv240_out_feedback_out_53),
        .out_feedback_valid_out_53(i_llvm_fpga_push_i1_notcmp46120_push53_conv240_out_feedback_valid_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp46120_pop53_conv239(BLACKBOX,63)@2
    // out out_feedback_stall_out_53@20000000
    conv2_i_llvm_fpga_pop_i1_notcmp46120_pop53_0 thei_llvm_fpga_pop_i1_notcmp46120_pop53_conv239 (
        .in_data_in(redist15_sync_together126_aunroll_x_in_c0_eni28_15_tpl_1_q),
        .in_dir(redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1_q),
        .in_feedback_in_53(i_llvm_fpga_push_i1_notcmp46120_push53_conv240_out_feedback_out_53),
        .in_feedback_valid_in_53(i_llvm_fpga_push_i1_notcmp46120_push53_conv240_out_feedback_valid_out_53),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp46120_pop53_conv239_out_data_out),
        .out_feedback_stall_out_53(i_llvm_fpga_pop_i1_notcmp46120_pop53_conv239_out_feedback_stall_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg27(REG,124)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg28(REG,125)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_exitcond25117_push52_conv238(BLACKBOX,74)@2
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    conv2_i_llvm_fpga_push_i1_exitcond25117_push52_0 thei_llvm_fpga_push_i1_exitcond25117_push52_conv238 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond25117_pop52_conv237_out_data_out),
        .in_exitcond22(redist0_i_exitcond22_conv24_cmp_nsign_q_1_q),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_i1_exitcond25117_pop52_conv237_out_feedback_stall_out_52),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_i1_exitcond25117_push52_conv238_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_i1_exitcond25117_push52_conv238_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond25117_pop52_conv237(BLACKBOX,57)@2
    // out out_feedback_stall_out_52@20000000
    conv2_i_llvm_fpga_pop_i1_exitcond25117_pop52_0 thei_llvm_fpga_pop_i1_exitcond25117_pop52_conv237 (
        .in_data_in(redist14_sync_together126_aunroll_x_in_c0_eni28_14_tpl_1_q),
        .in_dir(redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1_q),
        .in_feedback_in_52(i_llvm_fpga_push_i1_exitcond25117_push52_conv238_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_i1_exitcond25117_push52_conv238_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond25117_pop52_conv237_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_i1_exitcond25117_pop52_conv237_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg25(REG,122)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg26(REG,123)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_p1024f32_arrayidx64114_push51_conv236(BLACKBOX,91)@2
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    conv2_i_llvm_fpga_push_p1024f32_arrayidx64114_push51_0 thei_llvm_fpga_push_p1024f32_arrayidx64114_push51_conv236 (
        .in_data_in(i_llvm_fpga_pop_p1024f32_arrayidx64114_pop51_conv235_out_data_out),
        .in_exitcond22(redist0_i_exitcond22_conv24_cmp_nsign_q_1_q),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_p1024f32_arrayidx64114_pop51_conv235_out_feedback_stall_out_51),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_p1024f32_arrayidx64114_push51_conv236_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_p1024f32_arrayidx64114_push51_conv236_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024f32_arrayidx64114_pop51_conv235(BLACKBOX,73)@2
    // out out_feedback_stall_out_51@20000000
    conv2_i_llvm_fpga_pop_p1024f32_arrayidx64114_pop51_0 thei_llvm_fpga_pop_p1024f32_arrayidx64114_pop51_conv235 (
        .in_data_in(redist13_sync_together126_aunroll_x_in_c0_eni28_13_tpl_1_q),
        .in_dir(redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1_q),
        .in_feedback_in_51(i_llvm_fpga_push_p1024f32_arrayidx64114_push51_conv236_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_p1024f32_arrayidx64114_push51_conv236_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_arrayidx64114_pop51_conv235_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_p1024f32_arrayidx64114_pop51_conv235_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg23(REG,120)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg24(REG,121)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_col_037_pop27111_push50_conv234(BLACKBOX,85)@2
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    conv2_i_llvm_fpga_push_i32_col_037_pop27111_push50_0 thei_llvm_fpga_push_i32_col_037_pop27111_push50_conv234 (
        .in_data_in(i_llvm_fpga_pop_i32_col_037_pop27111_pop50_conv233_out_data_out),
        .in_exitcond22(redist0_i_exitcond22_conv24_cmp_nsign_q_1_q),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i32_col_037_pop27111_pop50_conv233_out_feedback_stall_out_50),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i32_col_037_pop27111_push50_conv234_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i32_col_037_pop27111_push50_conv234_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_col_037_pop27111_pop50_conv233(BLACKBOX,67)@2
    // out out_feedback_stall_out_50@20000000
    conv2_i_llvm_fpga_pop_i32_col_037_pop27111_pop50_0 thei_llvm_fpga_pop_i32_col_037_pop27111_pop50_conv233 (
        .in_data_in(redist12_sync_together126_aunroll_x_in_c0_eni28_12_tpl_1_q),
        .in_dir(redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1_q),
        .in_feedback_in_50(i_llvm_fpga_push_i32_col_037_pop27111_push50_conv234_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i32_col_037_pop27111_push50_conv234_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_i32_col_037_pop27111_pop50_conv233_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i32_col_037_pop27111_pop50_conv233_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg21(REG,118)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg22(REG,119)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_p1024f32_arrayidx34108_push49_conv232(BLACKBOX,90)@2
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    conv2_i_llvm_fpga_push_p1024f32_arrayidx34108_push49_0 thei_llvm_fpga_push_p1024f32_arrayidx34108_push49_conv232 (
        .in_data_in(i_llvm_fpga_pop_p1024f32_arrayidx34108_pop49_conv231_out_data_out),
        .in_exitcond22(redist0_i_exitcond22_conv24_cmp_nsign_q_1_q),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_p1024f32_arrayidx34108_pop49_conv231_out_feedback_stall_out_49),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_p1024f32_arrayidx34108_push49_conv232_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_p1024f32_arrayidx34108_push49_conv232_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024f32_arrayidx34108_pop49_conv231(BLACKBOX,72)@2
    // out out_feedback_stall_out_49@20000000
    conv2_i_llvm_fpga_pop_p1024f32_arrayidx34108_pop49_0 thei_llvm_fpga_pop_p1024f32_arrayidx34108_pop49_conv231 (
        .in_data_in(redist11_sync_together126_aunroll_x_in_c0_eni28_11_tpl_1_q),
        .in_dir(redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1_q),
        .in_feedback_in_49(i_llvm_fpga_push_p1024f32_arrayidx34108_push49_conv232_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_p1024f32_arrayidx34108_push49_conv232_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_arrayidx34108_pop49_conv231_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_p1024f32_arrayidx34108_pop49_conv231_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg19(REG,116)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg20(REG,117)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i64_idxprom25105_push48_conv230(BLACKBOX,89)@2
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    conv2_i_llvm_fpga_push_i64_idxprom25105_push48_0 thei_llvm_fpga_push_i64_idxprom25105_push48_conv230 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom25105_pop48_conv229_out_data_out),
        .in_exitcond22(redist0_i_exitcond22_conv24_cmp_nsign_q_1_q),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i64_idxprom25105_pop48_conv229_out_feedback_stall_out_48),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i64_idxprom25105_push48_conv230_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i64_idxprom25105_push48_conv230_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_idxprom25105_pop48_conv229(BLACKBOX,71)@2
    // out out_feedback_stall_out_48@20000000
    conv2_i_llvm_fpga_pop_i64_idxprom25105_pop48_0 thei_llvm_fpga_pop_i64_idxprom25105_pop48_conv229 (
        .in_data_in(redist10_sync_together126_aunroll_x_in_c0_eni28_10_tpl_1_q),
        .in_dir(redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1_q),
        .in_feedback_in_48(i_llvm_fpga_push_i64_idxprom25105_push48_conv230_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i64_idxprom25105_push48_conv230_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom25105_pop48_conv229_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i64_idxprom25105_pop48_conv229_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg17(REG,114)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg18(REG,115)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi5_pop21101_push47_conv228(BLACKBOX,78)@2
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    conv2_i_llvm_fpga_push_i1_memdep_phi5_pop21101_push47_0 thei_llvm_fpga_push_i1_memdep_phi5_pop21101_push47_conv228 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi5_pop21101_pop47_conv227_out_data_out),
        .in_exitcond22(redist0_i_exitcond22_conv24_cmp_nsign_q_1_q),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_i1_memdep_phi5_pop21101_pop47_conv227_out_feedback_stall_out_47),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_i1_memdep_phi5_pop21101_push47_conv228_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_i1_memdep_phi5_pop21101_push47_conv228_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi5_pop21101_pop47_conv227(BLACKBOX,61)@2
    // out out_feedback_stall_out_47@20000000
    conv2_i_llvm_fpga_pop_i1_memdep_phi5_pop21101_pop47_0 thei_llvm_fpga_pop_i1_memdep_phi5_pop21101_pop47_conv227 (
        .in_data_in(redist9_sync_together126_aunroll_x_in_c0_eni28_9_tpl_1_q),
        .in_dir(redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1_q),
        .in_feedback_in_47(i_llvm_fpga_push_i1_memdep_phi5_pop21101_push47_conv228_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_i1_memdep_phi5_pop21101_push47_conv228_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi5_pop21101_pop47_conv227_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i1_memdep_phi5_pop21101_pop47_conv227_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg15(REG,112)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg16(REG,113)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_row_038_pop2097_push46_conv226(BLACKBOX,87)@2
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    conv2_i_llvm_fpga_push_i32_row_038_pop2097_push46_0 thei_llvm_fpga_push_i32_row_038_pop2097_push46_conv226 (
        .in_data_in(i_llvm_fpga_pop_i32_row_038_pop2097_pop46_conv225_out_data_out),
        .in_exitcond22(redist0_i_exitcond22_conv24_cmp_nsign_q_1_q),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i32_row_038_pop2097_pop46_conv225_out_feedback_stall_out_46),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i32_row_038_pop2097_push46_conv226_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i32_row_038_pop2097_push46_conv226_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_row_038_pop2097_pop46_conv225(BLACKBOX,69)@2
    // out out_feedback_stall_out_46@20000000
    conv2_i_llvm_fpga_pop_i32_row_038_pop2097_pop46_0 thei_llvm_fpga_pop_i32_row_038_pop2097_pop46_conv225 (
        .in_data_in(redist8_sync_together126_aunroll_x_in_c0_eni28_8_tpl_1_q),
        .in_dir(redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1_q),
        .in_feedback_in_46(i_llvm_fpga_push_i32_row_038_pop2097_push46_conv226_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i32_row_038_pop2097_push46_conv226_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i32_row_038_pop2097_pop46_conv225_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i32_row_038_pop2097_pop46_conv225_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg13(REG,110)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg14(REG,111)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp5193_push45_conv224(BLACKBOX,81)@2
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    conv2_i_llvm_fpga_push_i1_notcmp5193_push45_0 thei_llvm_fpga_push_i1_notcmp5193_push45_conv224 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp5193_pop45_conv223_out_data_out),
        .in_exitcond22(redist0_i_exitcond22_conv24_cmp_nsign_q_1_q),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i1_notcmp5193_pop45_conv223_out_feedback_stall_out_45),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i1_notcmp5193_push45_conv224_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i1_notcmp5193_push45_conv224_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp5193_pop45_conv223(BLACKBOX,64)@2
    // out out_feedback_stall_out_45@20000000
    conv2_i_llvm_fpga_pop_i1_notcmp5193_pop45_0 thei_llvm_fpga_pop_i1_notcmp5193_pop45_conv223 (
        .in_data_in(redist7_sync_together126_aunroll_x_in_c0_eni28_7_tpl_1_q),
        .in_dir(redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1_q),
        .in_feedback_in_45(i_llvm_fpga_push_i1_notcmp5193_push45_conv224_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i1_notcmp5193_push45_conv224_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp5193_pop45_conv223_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i1_notcmp5193_pop45_conv223_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,108)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg12(REG,109)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_exitcond2889_push44_conv222(BLACKBOX,75)@2
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    conv2_i_llvm_fpga_push_i1_exitcond2889_push44_0 thei_llvm_fpga_push_i1_exitcond2889_push44_conv222 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond2889_pop44_conv221_out_data_out),
        .in_exitcond22(redist0_i_exitcond22_conv24_cmp_nsign_q_1_q),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i1_exitcond2889_pop44_conv221_out_feedback_stall_out_44),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i1_exitcond2889_push44_conv222_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i1_exitcond2889_push44_conv222_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond2889_pop44_conv221(BLACKBOX,58)@2
    // out out_feedback_stall_out_44@20000000
    conv2_i_llvm_fpga_pop_i1_exitcond2889_pop44_0 thei_llvm_fpga_pop_i1_exitcond2889_pop44_conv221 (
        .in_data_in(redist6_sync_together126_aunroll_x_in_c0_eni28_6_tpl_1_q),
        .in_dir(redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1_q),
        .in_feedback_in_44(i_llvm_fpga_push_i1_exitcond2889_push44_conv222_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i1_exitcond2889_push44_conv222_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond2889_pop44_conv221_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i1_exitcond2889_pop44_conv221_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,106)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg10(REG,107)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi6_pop1884_push43_conv220(BLACKBOX,79)@2
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    conv2_i_llvm_fpga_push_i1_memdep_phi6_pop1884_push43_0 thei_llvm_fpga_push_i1_memdep_phi6_pop1884_push43_conv220 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi6_pop1884_pop43_conv219_out_data_out),
        .in_exitcond22(redist0_i_exitcond22_conv24_cmp_nsign_q_1_q),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i1_memdep_phi6_pop1884_pop43_conv219_out_feedback_stall_out_43),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i1_memdep_phi6_pop1884_push43_conv220_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i1_memdep_phi6_pop1884_push43_conv220_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi6_pop1884_pop43_conv219(BLACKBOX,62)@2
    // out out_feedback_stall_out_43@20000000
    conv2_i_llvm_fpga_pop_i1_memdep_phi6_pop1884_pop43_0 thei_llvm_fpga_pop_i1_memdep_phi6_pop1884_pop43_conv219 (
        .in_data_in(redist5_sync_together126_aunroll_x_in_c0_eni28_5_tpl_1_q),
        .in_dir(redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1_q),
        .in_feedback_in_43(i_llvm_fpga_push_i1_memdep_phi6_pop1884_push43_conv220_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i1_memdep_phi6_pop1884_push43_conv220_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi6_pop1884_pop43_conv219_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i1_memdep_phi6_pop1884_pop43_conv219_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,104)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg8(REG,105)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_channel_039_pop1779_push42_conv218(BLACKBOX,84)@2
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    conv2_i_llvm_fpga_push_i32_channel_039_pop1779_push42_0 thei_llvm_fpga_push_i32_channel_039_pop1779_push42_conv218 (
        .in_data_in(i_llvm_fpga_pop_i32_channel_039_pop1779_pop42_conv217_out_data_out),
        .in_exitcond22(redist0_i_exitcond22_conv24_cmp_nsign_q_1_q),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i32_channel_039_pop1779_pop42_conv217_out_feedback_stall_out_42),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i32_channel_039_pop1779_push42_conv218_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i32_channel_039_pop1779_push42_conv218_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_channel_039_pop1779_pop42_conv217(BLACKBOX,66)@2
    // out out_feedback_stall_out_42@20000000
    conv2_i_llvm_fpga_pop_i32_channel_039_pop1779_pop42_0 thei_llvm_fpga_pop_i32_channel_039_pop1779_pop42_conv217 (
        .in_data_in(redist4_sync_together126_aunroll_x_in_c0_eni28_4_tpl_1_q),
        .in_dir(redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1_q),
        .in_feedback_in_42(i_llvm_fpga_push_i32_channel_039_pop1779_push42_conv218_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i32_channel_039_pop1779_push42_conv218_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_channel_039_pop1779_pop42_conv217_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i32_channel_039_pop1779_pop42_conv217_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,102)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg6(REG,103)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp5674_push41_conv216(BLACKBOX,82)@2
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    conv2_i_llvm_fpga_push_i1_notcmp5674_push41_0 thei_llvm_fpga_push_i1_notcmp5674_push41_conv216 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp5674_pop41_conv215_out_data_out),
        .in_exitcond22(redist0_i_exitcond22_conv24_cmp_nsign_q_1_q),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i1_notcmp5674_pop41_conv215_out_feedback_stall_out_41),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i1_notcmp5674_push41_conv216_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i1_notcmp5674_push41_conv216_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp5674_pop41_conv215(BLACKBOX,65)@2
    // out out_feedback_stall_out_41@20000000
    conv2_i_llvm_fpga_pop_i1_notcmp5674_pop41_0 thei_llvm_fpga_pop_i1_notcmp5674_pop41_conv215 (
        .in_data_in(redist3_sync_together126_aunroll_x_in_c0_eni28_3_tpl_1_q),
        .in_dir(redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1_q),
        .in_feedback_in_41(i_llvm_fpga_push_i1_notcmp5674_push41_conv216_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i1_notcmp5674_push41_conv216_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp5674_pop41_conv215_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i1_notcmp5674_pop41_conv215_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,100)@1 + 1
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

    // valid_fanout_reg4(REG,101)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_exitcond3169_push40_conv214(BLACKBOX,76)@2
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    conv2_i_llvm_fpga_push_i1_exitcond3169_push40_0 thei_llvm_fpga_push_i1_exitcond3169_push40_conv214 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond3169_pop40_conv213_out_data_out),
        .in_exitcond22(redist0_i_exitcond22_conv24_cmp_nsign_q_1_q),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i1_exitcond3169_pop40_conv213_out_feedback_stall_out_40),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i1_exitcond3169_push40_conv214_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i1_exitcond3169_push40_conv214_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond3169_pop40_conv213(BLACKBOX,59)@2
    // out out_feedback_stall_out_40@20000000
    conv2_i_llvm_fpga_pop_i1_exitcond3169_pop40_0 thei_llvm_fpga_pop_i1_exitcond3169_pop40_conv213 (
        .in_data_in(redist2_sync_together126_aunroll_x_in_c0_eni28_2_tpl_1_q),
        .in_dir(redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1_q),
        .in_feedback_in_40(i_llvm_fpga_push_i1_exitcond3169_push40_conv214_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i1_exitcond3169_push40_conv214_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond3169_pop40_conv213_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i1_exitcond3169_pop40_conv213_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,98)@1 + 1
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

    // valid_fanout_reg2(REG,99)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_185(CONSTANT,49)
    assign c_i32_185_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc70_conv211(ADD,55)@2
    assign i_inc70_conv211_a = {1'b0, i_llvm_fpga_pop_i32_k_036_pop38_conv210_out_data_out};
    assign i_inc70_conv211_b = {1'b0, c_i32_185_q};
    assign i_inc70_conv211_o = $unsigned(i_inc70_conv211_a) + $unsigned(i_inc70_conv211_b);
    assign i_inc70_conv211_q = i_inc70_conv211_o[32:0];

    // bgTrunc_i_inc70_conv211_sel_x(BITSELECT,3)@2
    assign bgTrunc_i_inc70_conv211_sel_x_b = i_inc70_conv211_q[31:0];

    // i_llvm_fpga_push_i32_k_036_push38_conv212(BLACKBOX,86)@2
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    conv2_i_llvm_fpga_push_i32_k_036_push38_0 thei_llvm_fpga_push_i32_k_036_push38_conv212 (
        .in_data_in(bgTrunc_i_inc70_conv211_sel_x_b),
        .in_exitcond22(redist0_i_exitcond22_conv24_cmp_nsign_q_1_q),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i32_k_036_pop38_conv210_out_feedback_stall_out_38),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i32_k_036_push38_conv212_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i32_k_036_push38_conv212_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_084(CONSTANT,48)
    assign c_i32_084_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_k_036_pop38_conv210(BLACKBOX,68)@2
    // out out_feedback_stall_out_38@20000000
    conv2_i_llvm_fpga_pop_i32_k_036_pop38_0 thei_llvm_fpga_pop_i32_k_036_pop38_conv210 (
        .in_data_in(c_i32_084_q),
        .in_dir(redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1_q),
        .in_feedback_in_38(i_llvm_fpga_push_i32_k_036_push38_conv212_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i32_k_036_push38_conv212_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_036_pop38_conv210_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i32_k_036_pop38_conv210_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp41_conv26(LOGICAL,92)@2
    assign i_notcmp41_conv26_q = redist0_i_exitcond22_conv24_cmp_nsign_q_1_q ^ VCC_q;

    // c_i4_183(CONSTANT,50)
    assign c_i4_183_q = $unsigned(4'b1111);

    // i_fpga_indvars_iv_next21_conv28(ADD,54)@1
    assign i_fpga_indvars_iv_next21_conv28_a = {1'b0, i_llvm_fpga_pop_i4_fpga_indvars_iv20_pop37_conv23_out_data_out};
    assign i_fpga_indvars_iv_next21_conv28_b = {1'b0, c_i4_183_q};
    assign i_fpga_indvars_iv_next21_conv28_o = $unsigned(i_fpga_indvars_iv_next21_conv28_a) + $unsigned(i_fpga_indvars_iv_next21_conv28_b);
    assign i_fpga_indvars_iv_next21_conv28_q = i_fpga_indvars_iv_next21_conv28_o[4:0];

    // bgTrunc_i_fpga_indvars_iv_next21_conv28_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next21_conv28_sel_x_b = i_fpga_indvars_iv_next21_conv28_q[3:0];

    // i_llvm_fpga_push_i4_fpga_indvars_iv20_push37_conv29(BLACKBOX,88)@1
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    conv2_i_llvm_fpga_push_i4_fpga_indvars_iv20_push37_0 thei_llvm_fpga_push_i4_fpga_indvars_iv20_push37_conv29 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next21_conv28_sel_x_b),
        .in_exitcond22(i_exitcond22_conv24_cmp_nsign_q),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i4_fpga_indvars_iv20_pop37_conv23_out_feedback_stall_out_37),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i4_fpga_indvars_iv20_push37_conv29_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i4_fpga_indvars_iv20_push37_conv29_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_481(CONSTANT,51)
    assign c_i4_481_q = $unsigned(4'b0100);

    // i_llvm_fpga_pop_i4_fpga_indvars_iv20_pop37_conv23(BLACKBOX,70)@1
    // out out_feedback_stall_out_37@20000000
    conv2_i_llvm_fpga_pop_i4_fpga_indvars_iv20_pop37_0 thei_llvm_fpga_pop_i4_fpga_indvars_iv20_pop37_conv23 (
        .in_data_in(c_i4_481_q),
        .in_dir(in_c0_eni28_1_tpl),
        .in_feedback_in_37(i_llvm_fpga_push_i4_fpga_indvars_iv20_push37_conv29_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i4_fpga_indvars_iv20_push37_conv29_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i4_fpga_indvars_iv20_pop37_conv23_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i4_fpga_indvars_iv20_pop37_conv23_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond22_conv24_cmp_nsign(LOGICAL,133)@1
    assign i_exitcond22_conv24_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i4_fpga_indvars_iv20_pop37_conv23_out_data_out[3:3]));

    // redist0_i_exitcond22_conv24_cmp_nsign_q_1(DELAY,134)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond22_conv24_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond22_conv24_cmp_nsign_q_1_q <= $unsigned(i_exitcond22_conv24_cmp_nsign_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,5)@2
    assign out_c0_exi46_0_tpl = GND_q;
    assign out_c0_exi46_1_tpl = redist0_i_exitcond22_conv24_cmp_nsign_q_1_q;
    assign out_c0_exi46_2_tpl = i_notcmp41_conv26_q;
    assign out_c0_exi46_3_tpl = i_llvm_fpga_pop_i32_k_036_pop38_conv210_out_data_out;
    assign out_c0_exi46_4_tpl = i_llvm_fpga_pop_i1_exitcond3169_pop40_conv213_out_data_out;
    assign out_c0_exi46_5_tpl = i_llvm_fpga_pop_i1_notcmp5674_pop41_conv215_out_data_out;
    assign out_c0_exi46_6_tpl = i_llvm_fpga_pop_i32_channel_039_pop1779_pop42_conv217_out_data_out;
    assign out_c0_exi46_7_tpl = i_llvm_fpga_pop_i1_memdep_phi6_pop1884_pop43_conv219_out_data_out;
    assign out_c0_exi46_8_tpl = i_llvm_fpga_pop_i1_exitcond2889_pop44_conv221_out_data_out;
    assign out_c0_exi46_9_tpl = i_llvm_fpga_pop_i1_notcmp5193_pop45_conv223_out_data_out;
    assign out_c0_exi46_10_tpl = i_llvm_fpga_pop_i32_row_038_pop2097_pop46_conv225_out_data_out;
    assign out_c0_exi46_11_tpl = i_llvm_fpga_pop_i1_memdep_phi5_pop21101_pop47_conv227_out_data_out;
    assign out_c0_exi46_12_tpl = i_llvm_fpga_pop_i64_idxprom25105_pop48_conv229_out_data_out;
    assign out_c0_exi46_13_tpl = i_llvm_fpga_pop_p1024f32_arrayidx34108_pop49_conv231_out_data_out;
    assign out_c0_exi46_14_tpl = i_llvm_fpga_pop_i32_col_037_pop27111_pop50_conv233_out_data_out;
    assign out_c0_exi46_15_tpl = i_llvm_fpga_pop_p1024f32_arrayidx64114_pop51_conv235_out_data_out;
    assign out_c0_exi46_16_tpl = i_llvm_fpga_pop_i1_exitcond25117_pop52_conv237_out_data_out;
    assign out_c0_exi46_17_tpl = i_llvm_fpga_pop_i1_notcmp46120_pop53_conv239_out_data_out;
    assign out_c0_exi46_18_tpl = i_llvm_fpga_pop_i1_memdep_phi4_pop28123_pop54_conv241_out_data_out;
    assign out_c0_exi46_19_tpl = redist1_sync_together126_aunroll_x_in_c0_eni28_1_tpl_1_q;
    assign out_c0_exi46_20_tpl = redist17_sync_together126_aunroll_x_in_c0_eni28_17_tpl_1_q;
    assign out_c0_exi46_21_tpl = redist18_sync_together126_aunroll_x_in_c0_eni28_18_tpl_1_q;
    assign out_c0_exi46_22_tpl = redist19_sync_together126_aunroll_x_in_c0_eni28_19_tpl_1_q;
    assign out_c0_exi46_23_tpl = redist20_sync_together126_aunroll_x_in_c0_eni28_20_tpl_1_q;
    assign out_c0_exi46_24_tpl = redist21_sync_together126_aunroll_x_in_c0_eni28_21_tpl_1_q;
    assign out_c0_exi46_25_tpl = redist22_sync_together126_aunroll_x_in_c0_eni28_22_tpl_1_q;
    assign out_c0_exi46_26_tpl = redist23_sync_together126_aunroll_x_in_c0_eni28_23_tpl_1_q;
    assign out_c0_exi46_27_tpl = redist24_sync_together126_aunroll_x_in_c0_eni28_24_tpl_1_q;
    assign out_c0_exi46_28_tpl = redist25_sync_together126_aunroll_x_in_c0_eni28_25_tpl_1_q;
    assign out_c0_exi46_29_tpl = redist26_sync_together126_aunroll_x_in_c0_eni28_26_tpl_1_q;
    assign out_c0_exi46_30_tpl = redist27_sync_together126_aunroll_x_in_c0_eni28_27_tpl_1_q;
    assign out_c0_exi46_31_tpl = redist28_sync_together126_aunroll_x_in_c0_eni28_28_tpl_1_q;
    assign out_c0_exi46_32_tpl = redist8_sync_together126_aunroll_x_in_c0_eni28_8_tpl_1_q;
    assign out_c0_exi46_33_tpl = redist4_sync_together126_aunroll_x_in_c0_eni28_4_tpl_1_q;
    assign out_c0_exi46_34_tpl = redist10_sync_together126_aunroll_x_in_c0_eni28_10_tpl_1_q;
    assign out_c0_exi46_35_tpl = redist11_sync_together126_aunroll_x_in_c0_eni28_11_tpl_1_q;
    assign out_c0_exi46_36_tpl = redist12_sync_together126_aunroll_x_in_c0_eni28_12_tpl_1_q;
    assign out_c0_exi46_37_tpl = redist13_sync_together126_aunroll_x_in_c0_eni28_13_tpl_1_q;
    assign out_c0_exi46_38_tpl = redist14_sync_together126_aunroll_x_in_c0_eni28_14_tpl_1_q;
    assign out_c0_exi46_39_tpl = redist15_sync_together126_aunroll_x_in_c0_eni28_15_tpl_1_q;
    assign out_c0_exi46_40_tpl = redist16_sync_together126_aunroll_x_in_c0_eni28_16_tpl_1_q;
    assign out_c0_exi46_41_tpl = redist2_sync_together126_aunroll_x_in_c0_eni28_2_tpl_1_q;
    assign out_c0_exi46_42_tpl = redist3_sync_together126_aunroll_x_in_c0_eni28_3_tpl_1_q;
    assign out_c0_exi46_43_tpl = redist5_sync_together126_aunroll_x_in_c0_eni28_5_tpl_1_q;
    assign out_c0_exi46_44_tpl = redist6_sync_together126_aunroll_x_in_c0_eni28_6_tpl_1_q;
    assign out_c0_exi46_45_tpl = redist7_sync_together126_aunroll_x_in_c0_eni28_7_tpl_1_q;
    assign out_c0_exi46_46_tpl = redist9_sync_together126_aunroll_x_in_c0_eni28_9_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv21 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond44_conv27(BLACKBOX,83)@1
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    conv2_i_llvm_fpga_push_i1_notexitcond44_0 thei_llvm_fpga_push_i1_notexitcond44_conv27 (
        .in_data_in(i_exitcond22_conv24_cmp_nsign_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going43_conv22_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond44_conv27_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond44_conv27_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going43_conv22(BLACKBOX,56)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2_i_llvm_fpga_pipeline_keep_going43_0 thei_llvm_fpga_pipeline_keep_going43_conv22 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond44_conv27_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond44_conv27_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going43_conv22_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going43_conv22_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going43_conv22_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going43_conv22_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,52)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_valid_out = i_llvm_fpga_pipeline_keep_going43_conv22_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_stall_out = i_llvm_fpga_pipeline_keep_going43_conv22_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,95)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going43_conv22_out_pipeline_valid_out;

endmodule
