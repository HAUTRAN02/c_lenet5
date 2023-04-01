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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond4_preheader_conv1s_c0_enter7811_conv10
// Created for function/kernel conv1
// SystemVerilog created on Sat Apr  1 13:10:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv1_i_sfc_logic_s_c0_in_for_cond4_preh0000_c0_enter7811_conv10 (
    output wire [0:0] out_c0_exi12_0_tpl,
    output wire [0:0] out_c0_exi12_1_tpl,
    output wire [0:0] out_c0_exi12_2_tpl,
    output wire [31:0] out_c0_exi12_3_tpl,
    output wire [0:0] out_c0_exi12_4_tpl,
    output wire [0:0] out_c0_exi12_5_tpl,
    output wire [31:0] out_c0_exi12_6_tpl,
    output wire [0:0] out_c0_exi12_7_tpl,
    output wire [0:0] out_c0_exi12_8_tpl,
    output wire [0:0] out_c0_exi12_9_tpl,
    output wire [0:0] out_c0_exi12_10_tpl,
    output wire [31:0] out_c0_exi12_11_tpl,
    output wire [0:0] out_c0_exi12_12_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv11,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [0:0] in_c0_eni5_1_tpl,
    input wire [0:0] in_c0_eni5_2_tpl,
    input wire [0:0] in_c0_eni5_3_tpl,
    input wire [31:0] in_c0_eni5_4_tpl,
    input wire [0:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv12_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv12_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next8_conv18_sel_x_b;
    wire [31:0] bgTrunc_i_inc60_conv111_sel_x_b;
    wire [31:0] c_i32_040_q;
    wire [31:0] c_i32_141_q;
    wire [5:0] c_i6_139_q;
    wire [5:0] c_i6_2637_q;
    wire [6:0] i_fpga_indvars_iv_next8_conv18_a;
    wire [6:0] i_fpga_indvars_iv_next8_conv18_b;
    logic [6:0] i_fpga_indvars_iv_next8_conv18_o;
    wire [6:0] i_fpga_indvars_iv_next8_conv18_q;
    wire [32:0] i_inc60_conv111_a;
    wire [32:0] i_inc60_conv111_b;
    logic [32:0] i_inc60_conv111_o;
    wire [32:0] i_inc60_conv111_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_conv12_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_conv12_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_conv12_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_conv12_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1233_pop16_conv113_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1233_pop16_conv113_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1239_pop19_conv119_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop1239_pop19_conv119_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2235_pop17_conv115_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2235_pop17_conv115_out_feedback_stall_out_17;
    wire [31:0] i_llvm_fpga_pop_i32_channel_029_pop1137_pop18_conv117_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_channel_029_pop1137_pop18_conv117_out_feedback_stall_out_18;
    wire [31:0] i_llvm_fpga_pop_i32_row_028_pop14_conv110_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_row_028_pop14_conv110_out_feedback_stall_out_14;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop13_conv13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop13_conv13_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1233_push16_conv114_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1233_push16_conv114_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1239_push19_conv120_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_pop1239_push19_conv120_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2235_push17_conv116_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2235_push17_conv116_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond20_conv17_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond20_conv17_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_channel_029_pop1137_push18_conv118_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i32_channel_029_pop1137_push18_conv118_out_feedback_valid_out_18;
    wire [31:0] i_llvm_fpga_push_i32_row_028_push14_conv112_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i32_row_028_push14_conv112_out_feedback_valid_out_14;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push13_conv19_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv7_push13_conv19_out_feedback_valid_out_13;
    wire [0:0] i_notcmp17_conv16_q;
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
    wire [0:0] i_exitcond9_conv14_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond9_conv14_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together59_aunroll_x_in_c0_eni5_1_tpl_1_q;
    reg [0:0] redist2_sync_together59_aunroll_x_in_c0_eni5_2_tpl_1_q;
    reg [0:0] redist3_sync_together59_aunroll_x_in_c0_eni5_3_tpl_1_q;
    reg [31:0] redist4_sync_together59_aunroll_x_in_c0_eni5_4_tpl_1_q;
    reg [0:0] redist5_sync_together59_aunroll_x_in_c0_eni5_5_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,53)@1 + 1
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

    // redist5_sync_together59_aunroll_x_in_c0_eni5_5_tpl_1(DELAY,73)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together59_aunroll_x_in_c0_eni5_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together59_aunroll_x_in_c0_eni5_5_tpl_1_q <= $unsigned(in_c0_eni5_5_tpl);
        end
    end

    // redist4_sync_together59_aunroll_x_in_c0_eni5_4_tpl_1(DELAY,72)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together59_aunroll_x_in_c0_eni5_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together59_aunroll_x_in_c0_eni5_4_tpl_1_q <= $unsigned(in_c0_eni5_4_tpl);
        end
    end

    // redist3_sync_together59_aunroll_x_in_c0_eni5_3_tpl_1(DELAY,71)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together59_aunroll_x_in_c0_eni5_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together59_aunroll_x_in_c0_eni5_3_tpl_1_q <= $unsigned(in_c0_eni5_3_tpl);
        end
    end

    // redist2_sync_together59_aunroll_x_in_c0_eni5_2_tpl_1(DELAY,70)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together59_aunroll_x_in_c0_eni5_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together59_aunroll_x_in_c0_eni5_2_tpl_1_q <= $unsigned(in_c0_eni5_2_tpl);
        end
    end

    // redist1_sync_together59_aunroll_x_in_c0_eni5_1_tpl_1(DELAY,69)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together59_aunroll_x_in_c0_eni5_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together59_aunroll_x_in_c0_eni5_1_tpl_1_q <= $unsigned(in_c0_eni5_1_tpl);
        end
    end

    // valid_fanout_reg9(REG,62)@1 + 1
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

    // valid_fanout_reg10(REG,63)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi2_pop1239_push19_conv120(BLACKBOX,42)@2
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    conv1_i_llvm_fpga_push_i1_memdep_phi2_pop1239_push19_0 thei_llvm_fpga_push_i1_memdep_phi2_pop1239_push19_conv120 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi2_pop1239_pop19_conv119_out_data_out),
        .in_exitcond9(redist0_i_exitcond9_conv14_cmp_nsign_q_1_q),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i1_memdep_phi2_pop1239_pop19_conv119_out_feedback_stall_out_19),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_memdep_phi2_pop1239_push19_conv120_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_memdep_phi2_pop1239_push19_conv120_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi2_pop1239_pop19_conv119(BLACKBOX,36)@2
    // out out_feedback_stall_out_19@20000000
    conv1_i_llvm_fpga_pop_i1_memdep_phi2_pop1239_pop19_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop1239_pop19_conv119 (
        .in_data_in(redist5_sync_together59_aunroll_x_in_c0_eni5_5_tpl_1_q),
        .in_dir(redist1_sync_together59_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_i1_memdep_phi2_pop1239_push19_conv120_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i1_memdep_phi2_pop1239_push19_conv120_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop1239_pop19_conv119_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i1_memdep_phi2_pop1239_pop19_conv119_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,60)@1 + 1
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

    // valid_fanout_reg8(REG,61)@1 + 1
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

    // i_llvm_fpga_push_i32_channel_029_pop1137_push18_conv118(BLACKBOX,45)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    conv1_i_llvm_fpga_push_i32_channel_029_pop1137_push18_0 thei_llvm_fpga_push_i32_channel_029_pop1137_push18_conv118 (
        .in_data_in(i_llvm_fpga_pop_i32_channel_029_pop1137_pop18_conv117_out_data_out),
        .in_exitcond9(redist0_i_exitcond9_conv14_cmp_nsign_q_1_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i32_channel_029_pop1137_pop18_conv117_out_feedback_stall_out_18),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i32_channel_029_pop1137_push18_conv118_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i32_channel_029_pop1137_push18_conv118_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_channel_029_pop1137_pop18_conv117(BLACKBOX,38)@2
    // out out_feedback_stall_out_18@20000000
    conv1_i_llvm_fpga_pop_i32_channel_029_pop1137_pop18_0 thei_llvm_fpga_pop_i32_channel_029_pop1137_pop18_conv117 (
        .in_data_in(redist4_sync_together59_aunroll_x_in_c0_eni5_4_tpl_1_q),
        .in_dir(redist1_sync_together59_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i32_channel_029_pop1137_push18_conv118_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i32_channel_029_pop1137_push18_conv118_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_channel_029_pop1137_pop18_conv117_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i32_channel_029_pop1137_pop18_conv117_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,58)@1 + 1
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

    // valid_fanout_reg6(REG,59)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp2235_push17_conv116(BLACKBOX,43)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    conv1_i_llvm_fpga_push_i1_notcmp2235_push17_0 thei_llvm_fpga_push_i1_notcmp2235_push17_conv116 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2235_pop17_conv115_out_data_out),
        .in_exitcond9(redist0_i_exitcond9_conv14_cmp_nsign_q_1_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i1_notcmp2235_pop17_conv115_out_feedback_stall_out_17),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i1_notcmp2235_push17_conv116_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i1_notcmp2235_push17_conv116_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp2235_pop17_conv115(BLACKBOX,37)@2
    // out out_feedback_stall_out_17@20000000
    conv1_i_llvm_fpga_pop_i1_notcmp2235_pop17_0 thei_llvm_fpga_pop_i1_notcmp2235_pop17_conv115 (
        .in_data_in(redist3_sync_together59_aunroll_x_in_c0_eni5_3_tpl_1_q),
        .in_dir(redist1_sync_together59_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i1_notcmp2235_push17_conv116_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i1_notcmp2235_push17_conv116_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2235_pop17_conv115_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i1_notcmp2235_pop17_conv115_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,56)@1 + 1
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

    // valid_fanout_reg4(REG,57)@1 + 1
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

    // i_llvm_fpga_push_i1_exitcond1233_push16_conv114(BLACKBOX,41)@2
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    conv1_i_llvm_fpga_push_i1_exitcond1233_push16_0 thei_llvm_fpga_push_i1_exitcond1233_push16_conv114 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond1233_pop16_conv113_out_data_out),
        .in_exitcond9(redist0_i_exitcond9_conv14_cmp_nsign_q_1_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i1_exitcond1233_pop16_conv113_out_feedback_stall_out_16),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i1_exitcond1233_push16_conv114_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i1_exitcond1233_push16_conv114_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond1233_pop16_conv113(BLACKBOX,35)@2
    // out out_feedback_stall_out_16@20000000
    conv1_i_llvm_fpga_pop_i1_exitcond1233_pop16_0 thei_llvm_fpga_pop_i1_exitcond1233_pop16_conv113 (
        .in_data_in(redist2_sync_together59_aunroll_x_in_c0_eni5_2_tpl_1_q),
        .in_dir(redist1_sync_together59_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i1_exitcond1233_push16_conv114_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i1_exitcond1233_push16_conv114_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1233_pop16_conv113_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i1_exitcond1233_pop16_conv113_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,54)@1 + 1
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

    // valid_fanout_reg2(REG,55)@1 + 1
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

    // c_i32_141(CONSTANT,27)
    assign c_i32_141_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc60_conv111(ADD,33)@2
    assign i_inc60_conv111_a = {1'b0, i_llvm_fpga_pop_i32_row_028_pop14_conv110_out_data_out};
    assign i_inc60_conv111_b = {1'b0, c_i32_141_q};
    assign i_inc60_conv111_o = $unsigned(i_inc60_conv111_a) + $unsigned(i_inc60_conv111_b);
    assign i_inc60_conv111_q = i_inc60_conv111_o[32:0];

    // bgTrunc_i_inc60_conv111_sel_x(BITSELECT,3)@2
    assign bgTrunc_i_inc60_conv111_sel_x_b = i_inc60_conv111_q[31:0];

    // i_llvm_fpga_push_i32_row_028_push14_conv112(BLACKBOX,46)@2
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    conv1_i_llvm_fpga_push_i32_row_028_push14_0 thei_llvm_fpga_push_i32_row_028_push14_conv112 (
        .in_data_in(bgTrunc_i_inc60_conv111_sel_x_b),
        .in_exitcond9(redist0_i_exitcond9_conv14_cmp_nsign_q_1_q),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i32_row_028_pop14_conv110_out_feedback_stall_out_14),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i32_row_028_push14_conv112_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i32_row_028_push14_conv112_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_040(CONSTANT,26)
    assign c_i32_040_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_row_028_pop14_conv110(BLACKBOX,39)@2
    // out out_feedback_stall_out_14@20000000
    conv1_i_llvm_fpga_pop_i32_row_028_pop14_0 thei_llvm_fpga_pop_i32_row_028_pop14_conv110 (
        .in_data_in(c_i32_040_q),
        .in_dir(redist1_sync_together59_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_i32_row_028_push14_conv112_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i32_row_028_push14_conv112_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_row_028_pop14_conv110_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i32_row_028_pop14_conv110_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp17_conv16(LOGICAL,48)@2
    assign i_notcmp17_conv16_q = redist0_i_exitcond9_conv14_cmp_nsign_q_1_q ^ VCC_q;

    // c_i6_139(CONSTANT,28)
    assign c_i6_139_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next8_conv18(ADD,32)@1
    assign i_fpga_indvars_iv_next8_conv18_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop13_conv13_out_data_out};
    assign i_fpga_indvars_iv_next8_conv18_b = {1'b0, c_i6_139_q};
    assign i_fpga_indvars_iv_next8_conv18_o = $unsigned(i_fpga_indvars_iv_next8_conv18_a) + $unsigned(i_fpga_indvars_iv_next8_conv18_b);
    assign i_fpga_indvars_iv_next8_conv18_q = i_fpga_indvars_iv_next8_conv18_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next8_conv18_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next8_conv18_sel_x_b = i_fpga_indvars_iv_next8_conv18_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv7_push13_conv19(BLACKBOX,47)@1
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    conv1_i_llvm_fpga_push_i6_fpga_indvars_iv7_push13_0 thei_llvm_fpga_push_i6_fpga_indvars_iv7_push13_conv19 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next8_conv18_sel_x_b),
        .in_exitcond9(i_exitcond9_conv14_cmp_nsign_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop13_conv13_out_feedback_stall_out_13),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i6_fpga_indvars_iv7_push13_conv19_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i6_fpga_indvars_iv7_push13_conv19_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_2637(CONSTANT,29)
    assign c_i6_2637_q = $unsigned(6'b011010);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop13_conv13(BLACKBOX,40)@1
    // out out_feedback_stall_out_13@20000000
    conv1_i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop13_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv7_pop13_conv13 (
        .in_data_in(c_i6_2637_q),
        .in_dir(in_c0_eni5_1_tpl),
        .in_feedback_in_13(i_llvm_fpga_push_i6_fpga_indvars_iv7_push13_conv19_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i6_fpga_indvars_iv7_push13_conv19_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop13_conv13_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop13_conv13_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond9_conv14_cmp_nsign(LOGICAL,67)@1
    assign i_exitcond9_conv14_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv7_pop13_conv13_out_data_out[5:5]));

    // redist0_i_exitcond9_conv14_cmp_nsign_q_1(DELAY,68)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond9_conv14_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond9_conv14_cmp_nsign_q_1_q <= $unsigned(i_exitcond9_conv14_cmp_nsign_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,5)@2
    assign out_c0_exi12_0_tpl = GND_q;
    assign out_c0_exi12_1_tpl = redist0_i_exitcond9_conv14_cmp_nsign_q_1_q;
    assign out_c0_exi12_2_tpl = i_notcmp17_conv16_q;
    assign out_c0_exi12_3_tpl = i_llvm_fpga_pop_i32_row_028_pop14_conv110_out_data_out;
    assign out_c0_exi12_4_tpl = i_llvm_fpga_pop_i1_exitcond1233_pop16_conv113_out_data_out;
    assign out_c0_exi12_5_tpl = i_llvm_fpga_pop_i1_notcmp2235_pop17_conv115_out_data_out;
    assign out_c0_exi12_6_tpl = i_llvm_fpga_pop_i32_channel_029_pop1137_pop18_conv117_out_data_out;
    assign out_c0_exi12_7_tpl = i_llvm_fpga_pop_i1_memdep_phi2_pop1239_pop19_conv119_out_data_out;
    assign out_c0_exi12_8_tpl = redist1_sync_together59_aunroll_x_in_c0_eni5_1_tpl_1_q;
    assign out_c0_exi12_9_tpl = redist2_sync_together59_aunroll_x_in_c0_eni5_2_tpl_1_q;
    assign out_c0_exi12_10_tpl = redist3_sync_together59_aunroll_x_in_c0_eni5_3_tpl_1_q;
    assign out_c0_exi12_11_tpl = redist4_sync_together59_aunroll_x_in_c0_eni5_4_tpl_1_q;
    assign out_c0_exi12_12_tpl = redist5_sync_together59_aunroll_x_in_c0_eni5_5_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv11 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond20_conv17(BLACKBOX,44)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    conv1_i_llvm_fpga_push_i1_notexitcond20_0 thei_llvm_fpga_push_i1_notexitcond20_conv17 (
        .in_data_in(i_exitcond9_conv14_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going19_conv12_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond20_conv17_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond20_conv17_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going19_conv12(BLACKBOX,34)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv1_i_llvm_fpga_pipeline_keep_going19_0 thei_llvm_fpga_pipeline_keep_going19_conv12 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond20_conv17_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond20_conv17_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going19_conv12_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going19_conv12_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going19_conv12_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going19_conv12_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,30)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv12_exiting_valid_out = i_llvm_fpga_pipeline_keep_going19_conv12_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_conv12_exiting_stall_out = i_llvm_fpga_pipeline_keep_going19_conv12_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,51)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going19_conv12_out_pipeline_valid_out;

endmodule
