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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_softmaxs_c0_enter282_softmax0
// Created for function/kernel softmax
// SystemVerilog created on Sat Apr  1 13:10:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module softmax_i_sfc_logic_s_c0_in_for_body_s_c0_enter282_softmax0 (
    output wire [63:0] out_unnamed_softmax5_softmax_avm_address,
    output wire [0:0] out_unnamed_softmax5_softmax_avm_enable,
    output wire [0:0] out_unnamed_softmax5_softmax_avm_read,
    output wire [0:0] out_unnamed_softmax5_softmax_avm_write,
    output wire [63:0] out_unnamed_softmax5_softmax_avm_writedata,
    output wire [7:0] out_unnamed_softmax5_softmax_avm_byteenable,
    output wire [0:0] out_unnamed_softmax5_softmax_avm_burstcount,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_softmax1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire [63:0] in_unnamed_softmax5_softmax_avm_readdata,
    input wire [0:0] in_unnamed_softmax5_softmax_avm_writeack,
    input wire [0:0] in_unnamed_softmax5_softmax_avm_waitrequest,
    input wire [0:0] in_unnamed_softmax5_softmax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_softmax6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_softmax6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next_softmax37_sel_x_b;
    wire [31:0] bgTrunc_i_inc_softmax27_sel_x_b;
    wire [31:0] c_i32_061_recast_x_q;
    wire [63:0] i_arrayidx_softmax0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_arrayidx_softmax0_c_i2_01_x_q;
    wire [0:0] i_first_cleanup17_softmax3_sel_x_b;
    wire [0:0] i_last_initeration13_softmax10_sel_x_b;
    wire [31:0] c_float_0_000000e_0063_q;
    wire [31:0] c_i32_164_q;
    wire [31:0] c_i32_213909504062_q;
    wire [3:0] c_i4_758_q;
    wire [4:0] c_i5_167_q;
    wire [4:0] c_i5_865_q;
    wire [31:0] i_acl_expf_call24_i_softmax17_out_primWireOut;
    wire [31:0] i_add_softmax25_out_primWireOut;
    wire [31:0] i_and_i_i_softmax19_q;
    wire [22:0] i_and_i_i_softmax19_vt_const_22_q;
    wire [31:0] i_and_i_i_softmax19_vt_join_q;
    wire [7:0] i_and_i_i_softmax19_vt_select_30_b;
    wire [3:0] i_cleanups_shl16_softmax5_vt_join_q;
    wire [2:0] i_cleanups_shl16_softmax5_vt_select_3_b;
    wire [0:0] i_cmp_i_i_softmax20_qi;
    reg [0:0] i_cmp_i_i_softmax20_q;
    wire [0:0] i_first_cleanup_xor18_softmax4_q;
    wire [5:0] i_fpga_indvars_iv_next_softmax37_a;
    wire [5:0] i_fpga_indvars_iv_next_softmax37_b;
    logic [5:0] i_fpga_indvars_iv_next_softmax37_o;
    wire [5:0] i_fpga_indvars_iv_next_softmax37_q;
    wire [32:0] i_inc_softmax27_a;
    wire [32:0] i_inc_softmax27_b;
    logic [32:0] i_inc_softmax27_o;
    wire [32:0] i_inc_softmax27_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_in0265_softmax14_out_dest_data_out_0_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_softmax6_softmax39_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_o_readdata;
    wire [63:0] i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going12_softmax6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going12_softmax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going12_softmax6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going12_softmax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going12_softmax6_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_f32_sum_025_pop9_softmax24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_sum_025_pop9_softmax24_out_feedback_stall_out_9;
    wire [31:0] i_llvm_fpga_pop_i32_i_024_pop10_softmax12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_024_pop10_softmax12_out_feedback_stall_out_10;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups15_pop12_softmax2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups15_pop12_softmax2_out_feedback_stall_out_12;
    wire [3:0] i_llvm_fpga_pop_i4_initerations10_pop11_softmax7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations10_pop11_softmax7_out_feedback_stall_out_11;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_softmax29_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_softmax29_out_feedback_stall_out_8;
    wire [31:0] i_llvm_fpga_push_f32_sum_025_push9_softmax26_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_f32_sum_025_push9_softmax26_out_feedback_valid_out_9;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration14_softmax11_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration14_softmax11_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond22_softmax33_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond22_softmax33_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_i_024_push10_softmax28_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i32_i_024_push10_softmax28_out_feedback_valid_out_10;
    wire [7:0] i_llvm_fpga_push_i4_cleanups15_push12_softmax36_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i4_cleanups15_push12_softmax36_out_feedback_valid_out_12;
    wire [7:0] i_llvm_fpga_push_i4_initerations10_push11_softmax9_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i4_initerations10_push11_softmax9_out_feedback_valid_out_11;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push8_softmax38_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push8_softmax38_out_feedback_valid_out_8;
    wire [0:0] i_masked21_softmax40_qi;
    reg [0:0] i_masked21_softmax40_q;
    wire [0:0] i_next_cleanups20_softmax35_s;
    reg [3:0] i_next_cleanups20_softmax35_q;
    wire [3:0] i_next_initerations11_softmax8_vt_join_q;
    wire [2:0] i_next_initerations11_softmax8_vt_select_2_b;
    wire [0:0] i_notcmp8_softmax32_q;
    wire [0:0] i_or19_softmax34_q;
    wire [0:0] i_spec_store_select_i_i_softmax22_s;
    reg [31:0] i_spec_store_select_i_i_softmax22_q;
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
    wire [2:0] leftShiftStage0Idx1Rng1_uid132_i_cleanups_shl16_softmax0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid132_i_cleanups_shl16_softmax0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid133_i_cleanups_shl16_softmax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid135_i_cleanups_shl16_softmax0_shift_x_s;
    reg [3:0] leftShiftStage0_uid135_i_cleanups_shl16_softmax0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid139_i_next_initerations11_softmax0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid141_i_next_initerations11_softmax0_shift_x_q;
    wire [0:0] rightShiftStage0_uid143_i_next_initerations11_softmax0_shift_x_s;
    reg [3:0] rightShiftStage0_uid143_i_next_initerations11_softmax0_shift_x_q;
    wire [0:0] i_exitcond_softmax30_cmp_nsign_q;
    wire [52:0] i_arrayidx_softmax0_add_x_p1_of_2_a;
    wire [52:0] i_arrayidx_softmax0_add_x_p1_of_2_b;
    logic [52:0] i_arrayidx_softmax0_add_x_p1_of_2_o;
    wire [0:0] i_arrayidx_softmax0_add_x_p1_of_2_c;
    wire [51:0] i_arrayidx_softmax0_add_x_p1_of_2_q;
    wire [14:0] i_arrayidx_softmax0_add_x_p2_of_2_a;
    wire [14:0] i_arrayidx_softmax0_add_x_p2_of_2_b;
    logic [14:0] i_arrayidx_softmax0_add_x_p2_of_2_o;
    wire [0:0] i_arrayidx_softmax0_add_x_p2_of_2_cin;
    wire [12:0] i_arrayidx_softmax0_add_x_p2_of_2_q;
    wire [64:0] i_arrayidx_softmax0_add_x_BitJoin_for_q_q;
    wire [12:0] i_arrayidx_softmax0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_arrayidx_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [12:0] i_arrayidx_softmax0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [29:0] i_arrayidx_softmax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in;
    wire [17:0] i_arrayidx_softmax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b;
    wire [11:0] i_arrayidx_softmax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c;
    wire [51:0] i_arrayidx_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [11:0] i_arrayidx_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    reg [11:0] redist0_i_arrayidx_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [51:0] redist1_i_arrayidx_softmax0_add_x_p1_of_2_q_1_q;
    reg [0:0] redist2_i_masked21_softmax40_q_53_q;
    reg [4:0] redist3_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_softmax29_out_data_out_1_q;
    reg [3:0] redist4_i_llvm_fpga_pop_i4_cleanups15_pop12_softmax2_out_data_out_1_q;
    reg [31:0] redist5_i_llvm_fpga_pop_i32_i_024_pop10_softmax12_out_data_out_1_q;
    reg [31:0] redist6_i_llvm_fpga_pop_f32_sum_025_pop9_softmax24_out_data_out_1_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out_2_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out_2_delay_0;
    reg [0:0] redist8_i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out_55_q;
    reg [0:0] redist9_i_first_cleanup_xor18_softmax4_q_53_q;
    reg [31:0] redist10_i_acl_expf_call24_i_softmax17_out_primWireOut_1_q;
    reg [31:0] redist11_i_acl_expf_call24_i_softmax17_out_primWireOut_2_q;
    reg [0:0] redist12_sync_together85_aunroll_x_in_c0_eni1_1_tpl_21_q;
    reg [0:0] redist13_sync_together85_aunroll_x_in_c0_eni1_1_tpl_22_q;
    reg [0:0] redist14_sync_together85_aunroll_x_in_c0_eni1_1_tpl_23_q;
    reg [0:0] redist15_sync_together85_aunroll_x_in_c0_eni1_1_tpl_55_q;
    reg [0:0] redist16_sync_together85_aunroll_x_in_i_valid_20_q;
    reg [0:0] redist17_sync_together85_aunroll_x_in_i_valid_21_q;
    reg [0:0] redist18_sync_together85_aunroll_x_in_i_valid_22_q;
    reg [0:0] redist19_sync_together85_aunroll_x_in_i_valid_23_q;
    reg [0:0] redist20_sync_together85_aunroll_x_in_i_valid_24_q;
    reg [0:0] redist21_sync_together85_aunroll_x_in_i_valid_54_q;
    reg [0:0] redist22_sync_together85_aunroll_x_in_i_valid_76_q;
    reg [0:0] redist15_sync_together85_aunroll_x_in_c0_eni1_1_tpl_55_inputreg0_q;
    reg [0:0] redist15_sync_together85_aunroll_x_in_c0_eni1_1_tpl_55_outputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist16_sync_together85_aunroll_x_in_i_valid_20(DELAY,185)
    dspba_delay_ver #( .width(1), .depth(20), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist16_sync_together85_aunroll_x_in_i_valid_20 ( .xin(in_i_valid), .xout(redist16_sync_together85_aunroll_x_in_i_valid_20_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_sync_together85_aunroll_x_in_i_valid_21(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together85_aunroll_x_in_i_valid_21_q <= '0;
        end
        else
        begin
            redist17_sync_together85_aunroll_x_in_i_valid_21_q <= $unsigned(redist16_sync_together85_aunroll_x_in_i_valid_20_q);
        end
    end

    // redist18_sync_together85_aunroll_x_in_i_valid_22(DELAY,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together85_aunroll_x_in_i_valid_22_q <= '0;
        end
        else
        begin
            redist18_sync_together85_aunroll_x_in_i_valid_22_q <= $unsigned(redist17_sync_together85_aunroll_x_in_i_valid_21_q);
        end
    end

    // redist19_sync_together85_aunroll_x_in_i_valid_23(DELAY,188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together85_aunroll_x_in_i_valid_23_q <= '0;
        end
        else
        begin
            redist19_sync_together85_aunroll_x_in_i_valid_23_q <= $unsigned(redist18_sync_together85_aunroll_x_in_i_valid_22_q);
        end
    end

    // valid_fanout_reg6(REG,116)@24 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist19_sync_together85_aunroll_x_in_i_valid_23_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist20_sync_together85_aunroll_x_in_i_valid_24(DELAY,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together85_aunroll_x_in_i_valid_24_q <= '0;
        end
        else
        begin
            redist20_sync_together85_aunroll_x_in_i_valid_24_q <= $unsigned(redist19_sync_together85_aunroll_x_in_i_valid_23_q);
        end
    end

    // c_i5_167(CONSTANT,51)
    assign c_i5_167_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next_softmax37(ADD,71)@25
    assign i_fpga_indvars_iv_next_softmax37_a = {1'b0, redist3_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_softmax29_out_data_out_1_q};
    assign i_fpga_indvars_iv_next_softmax37_b = {1'b0, c_i5_167_q};
    assign i_fpga_indvars_iv_next_softmax37_o = $unsigned(i_fpga_indvars_iv_next_softmax37_a) + $unsigned(i_fpga_indvars_iv_next_softmax37_b);
    assign i_fpga_indvars_iv_next_softmax37_q = i_fpga_indvars_iv_next_softmax37_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next_softmax37_sel_x(BITSELECT,2)@25
    assign bgTrunc_i_fpga_indvars_iv_next_softmax37_sel_x_b = i_fpga_indvars_iv_next_softmax37_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push8_softmax38(BLACKBOX,93)@25
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    softmax_i_llvm_fpga_push_i5_fpga_indvars_iv_push8_0 thei_llvm_fpga_push_i5_fpga_indvars_iv_push8_softmax38 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_softmax37_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_softmax29_out_feedback_stall_out_8),
        .in_keep_going12(redist7_i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist20_sync_together85_aunroll_x_in_i_valid_24_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i5_fpga_indvars_iv_push8_softmax38_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i5_fpga_indvars_iv_push8_softmax38_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_865(CONSTANT,52)
    assign c_i5_865_q = $unsigned(5'b01000);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_softmax29(BLACKBOX,86)@24
    // out out_feedback_stall_out_8@20000000
    softmax_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_softmax29 (
        .in_data_in(c_i5_865_q),
        .in_dir(redist14_sync_together85_aunroll_x_in_c0_eni1_1_tpl_23_q),
        .in_feedback_in_8(i_llvm_fpga_push_i5_fpga_indvars_iv_push8_softmax38_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i5_fpga_indvars_iv_push8_softmax38_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist19_sync_together85_aunroll_x_in_i_valid_23_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_softmax29_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_softmax29_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_softmax29_out_data_out_1(DELAY,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_softmax29_out_data_out_1_q <= '0;
        end
        else
        begin
            redist3_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_softmax29_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_softmax29_out_data_out);
        end
    end

    // i_exitcond_softmax30_cmp_nsign(LOGICAL,145)@25
    assign i_exitcond_softmax30_cmp_nsign_q = $unsigned(~ (redist3_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_softmax29_out_data_out_1_q[4:4]));

    // i_llvm_fpga_push_i1_notexitcond22_softmax33(BLACKBOX,89)@25
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    softmax_i_llvm_fpga_push_i1_notexitcond22_0 thei_llvm_fpga_push_i1_notexitcond22_softmax33 (
        .in_data_in(i_exitcond_softmax30_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going12_softmax6_out_not_exitcond_stall_out),
        .in_first_cleanup17(i_first_cleanup17_softmax3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist20_sync_together85_aunroll_x_in_i_valid_24_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond22_softmax33_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond22_softmax33_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,113)@22 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist17_sync_together85_aunroll_x_in_i_valid_21_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid139_i_next_initerations11_softmax0_shift_x(BITSELECT,138)@23
    assign rightShiftStage0Idx1Rng1_uid139_i_next_initerations11_softmax0_shift_x_b = i_llvm_fpga_pop_i4_initerations10_pop11_softmax7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid141_i_next_initerations11_softmax0_shift_x(BITJOIN,140)@23
    assign rightShiftStage0Idx1_uid141_i_next_initerations11_softmax0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid139_i_next_initerations11_softmax0_shift_x_b};

    // valid_fanout_reg1(REG,111)@22 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist17_sync_together85_aunroll_x_in_i_valid_21_q);
        end
    end

    // valid_fanout_reg2(REG,112)@22 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist17_sync_together85_aunroll_x_in_i_valid_21_q);
        end
    end

    // i_llvm_fpga_push_i4_initerations10_push11_softmax9(BLACKBOX,92)@23
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    softmax_i_llvm_fpga_push_i4_initerations10_push11_0 thei_llvm_fpga_push_i4_initerations10_push11_softmax9 (
        .in_data_in(i_next_initerations11_softmax8_vt_join_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i4_initerations10_pop11_softmax7_out_feedback_stall_out_11),
        .in_keep_going12(i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i4_initerations10_push11_softmax9_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i4_initerations10_push11_softmax9_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations10_pop11_softmax7(BLACKBOX,85)@23
    // out out_feedback_stall_out_11@20000000
    softmax_i_llvm_fpga_pop_i4_initerations10_pop11_0 thei_llvm_fpga_pop_i4_initerations10_pop11_softmax7 (
        .in_data_in(c_i4_758_q),
        .in_dir(redist13_sync_together85_aunroll_x_in_c0_eni1_1_tpl_22_q),
        .in_feedback_in_11(i_llvm_fpga_push_i4_initerations10_push11_softmax9_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i4_initerations10_push11_softmax9_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations10_pop11_softmax7_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i4_initerations10_pop11_softmax7_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid143_i_next_initerations11_softmax0_shift_x(MUX,142)@23
    assign rightShiftStage0_uid143_i_next_initerations11_softmax0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid143_i_next_initerations11_softmax0_shift_x_s or i_llvm_fpga_pop_i4_initerations10_pop11_softmax7_out_data_out or rightShiftStage0Idx1_uid141_i_next_initerations11_softmax0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid143_i_next_initerations11_softmax0_shift_x_s)
            1'b0 : rightShiftStage0_uid143_i_next_initerations11_softmax0_shift_x_q = i_llvm_fpga_pop_i4_initerations10_pop11_softmax7_out_data_out;
            1'b1 : rightShiftStage0_uid143_i_next_initerations11_softmax0_shift_x_q = rightShiftStage0Idx1_uid141_i_next_initerations11_softmax0_shift_x_q;
            default : rightShiftStage0_uid143_i_next_initerations11_softmax0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations11_softmax8_vt_select_2(BITSELECT,98)@23
    assign i_next_initerations11_softmax8_vt_select_2_b = rightShiftStage0_uid143_i_next_initerations11_softmax0_shift_x_q[2:0];

    // i_next_initerations11_softmax8_vt_join(BITJOIN,97)@23
    assign i_next_initerations11_softmax8_vt_join_q = {GND_q, i_next_initerations11_softmax8_vt_select_2_b};

    // i_last_initeration13_softmax10_sel_x(BITSELECT,19)@23
    assign i_last_initeration13_softmax10_sel_x_b = i_next_initerations11_softmax8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration14_softmax11(BLACKBOX,88)@23
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    softmax_i_llvm_fpga_push_i1_lastiniteration14_0 thei_llvm_fpga_push_i1_lastiniteration14_softmax11 (
        .in_data_in(i_last_initeration13_softmax10_sel_x_b),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going12_softmax6_out_initeration_stall_out),
        .in_keep_going12(i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_lastiniteration14_softmax11_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_lastiniteration14_softmax11_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together85_aunroll_x_in_c0_eni1_1_tpl_21(DELAY,181)
    dspba_delay_ver #( .width(1), .depth(21), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_sync_together85_aunroll_x_in_c0_eni1_1_tpl_21 ( .xin(in_c0_eni1_1_tpl), .xout(redist12_sync_together85_aunroll_x_in_c0_eni1_1_tpl_21_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_sync_together85_aunroll_x_in_c0_eni1_1_tpl_22(DELAY,182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together85_aunroll_x_in_c0_eni1_1_tpl_22_q <= '0;
        end
        else
        begin
            redist13_sync_together85_aunroll_x_in_c0_eni1_1_tpl_22_q <= $unsigned(redist12_sync_together85_aunroll_x_in_c0_eni1_1_tpl_21_q);
        end
    end

    // i_llvm_fpga_pipeline_keep_going12_softmax6(BLACKBOX,81)@23
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    softmax_i_llvm_fpga_pipeline_keep_going12_0 thei_llvm_fpga_pipeline_keep_going12_softmax6 (
        .in_data_in(redist13_sync_together85_aunroll_x_in_c0_eni1_1_tpl_22_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration14_softmax11_out_feedback_out_4),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration14_softmax11_out_feedback_valid_out_4),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond22_softmax33_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond22_softmax33_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist18_sync_together85_aunroll_x_in_i_valid_22_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going12_softmax6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going12_softmax6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going12_softmax6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going12_softmax6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going12_softmax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out_2(DELAY,176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out_2_delay_0 <= '0;
            redist7_i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out);
            redist7_i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out_2_q <= redist7_i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out_2_delay_0;
        end
    end

    // leftShiftStage0Idx1Rng1_uid132_i_cleanups_shl16_softmax0_shift_x(BITSELECT,131)@25
    assign leftShiftStage0Idx1Rng1_uid132_i_cleanups_shl16_softmax0_shift_x_in = redist4_i_llvm_fpga_pop_i4_cleanups15_pop12_softmax2_out_data_out_1_q[2:0];
    assign leftShiftStage0Idx1Rng1_uid132_i_cleanups_shl16_softmax0_shift_x_b = leftShiftStage0Idx1Rng1_uid132_i_cleanups_shl16_softmax0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid133_i_cleanups_shl16_softmax0_shift_x(BITJOIN,132)@25
    assign leftShiftStage0Idx1_uid133_i_cleanups_shl16_softmax0_shift_x_q = {leftShiftStage0Idx1Rng1_uid132_i_cleanups_shl16_softmax0_shift_x_b, GND_q};

    // leftShiftStage0_uid135_i_cleanups_shl16_softmax0_shift_x(MUX,134)@25
    assign leftShiftStage0_uid135_i_cleanups_shl16_softmax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid135_i_cleanups_shl16_softmax0_shift_x_s or redist4_i_llvm_fpga_pop_i4_cleanups15_pop12_softmax2_out_data_out_1_q or leftShiftStage0Idx1_uid133_i_cleanups_shl16_softmax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid135_i_cleanups_shl16_softmax0_shift_x_s)
            1'b0 : leftShiftStage0_uid135_i_cleanups_shl16_softmax0_shift_x_q = redist4_i_llvm_fpga_pop_i4_cleanups15_pop12_softmax2_out_data_out_1_q;
            1'b1 : leftShiftStage0_uid135_i_cleanups_shl16_softmax0_shift_x_q = leftShiftStage0Idx1_uid133_i_cleanups_shl16_softmax0_shift_x_q;
            default : leftShiftStage0_uid135_i_cleanups_shl16_softmax0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl16_softmax5_vt_select_3(BITSELECT,66)@25
    assign i_cleanups_shl16_softmax5_vt_select_3_b = leftShiftStage0_uid135_i_cleanups_shl16_softmax0_shift_x_q[3:1];

    // i_cleanups_shl16_softmax5_vt_join(BITJOIN,65)@25
    assign i_cleanups_shl16_softmax5_vt_join_q = {i_cleanups_shl16_softmax5_vt_select_3_b, GND_q};

    // i_notcmp8_softmax32(LOGICAL,99)@25
    assign i_notcmp8_softmax32_q = i_exitcond_softmax30_cmp_nsign_q ^ VCC_q;

    // i_or19_softmax34(LOGICAL,100)@25
    assign i_or19_softmax34_q = i_notcmp8_softmax32_q | i_first_cleanup_xor18_softmax4_q;

    // i_next_cleanups20_softmax35(MUX,95)@25
    assign i_next_cleanups20_softmax35_s = i_or19_softmax34_q;
    always @(i_next_cleanups20_softmax35_s or redist4_i_llvm_fpga_pop_i4_cleanups15_pop12_softmax2_out_data_out_1_q or i_cleanups_shl16_softmax5_vt_join_q)
    begin
        unique case (i_next_cleanups20_softmax35_s)
            1'b0 : i_next_cleanups20_softmax35_q = redist4_i_llvm_fpga_pop_i4_cleanups15_pop12_softmax2_out_data_out_1_q;
            1'b1 : i_next_cleanups20_softmax35_q = i_cleanups_shl16_softmax5_vt_join_q;
            default : i_next_cleanups20_softmax35_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups15_push12_softmax36(BLACKBOX,91)@25
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    softmax_i_llvm_fpga_push_i4_cleanups15_push12_0 thei_llvm_fpga_push_i4_cleanups15_push12_softmax36 (
        .in_data_in(i_next_cleanups20_softmax35_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i4_cleanups15_pop12_softmax2_out_feedback_stall_out_12),
        .in_keep_going12(redist7_i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist20_sync_together85_aunroll_x_in_i_valid_24_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i4_cleanups15_push12_softmax36_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i4_cleanups15_push12_softmax36_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_sync_together85_aunroll_x_in_c0_eni1_1_tpl_23(DELAY,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together85_aunroll_x_in_c0_eni1_1_tpl_23_q <= '0;
        end
        else
        begin
            redist14_sync_together85_aunroll_x_in_c0_eni1_1_tpl_23_q <= $unsigned(redist13_sync_together85_aunroll_x_in_c0_eni1_1_tpl_22_q);
        end
    end

    // c_i4_758(CONSTANT,50)
    assign c_i4_758_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups15_pop12_softmax2(BLACKBOX,84)@24
    // out out_feedback_stall_out_12@20000000
    softmax_i_llvm_fpga_pop_i4_cleanups15_pop12_0 thei_llvm_fpga_pop_i4_cleanups15_pop12_softmax2 (
        .in_data_in(c_i4_758_q),
        .in_dir(redist14_sync_together85_aunroll_x_in_c0_eni1_1_tpl_23_q),
        .in_feedback_in_12(i_llvm_fpga_push_i4_cleanups15_push12_softmax36_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i4_cleanups15_push12_softmax36_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist19_sync_together85_aunroll_x_in_i_valid_23_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups15_pop12_softmax2_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i4_cleanups15_pop12_softmax2_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_pop_i4_cleanups15_pop12_softmax2_out_data_out_1(DELAY,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i4_cleanups15_pop12_softmax2_out_data_out_1_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pop_i4_cleanups15_pop12_softmax2_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i4_cleanups15_pop12_softmax2_out_data_out);
        end
    end

    // i_first_cleanup17_softmax3_sel_x(BITSELECT,17)@25
    assign i_first_cleanup17_softmax3_sel_x_b = redist4_i_llvm_fpga_pop_i4_cleanups15_pop12_softmax2_out_data_out_1_q[0:0];

    // i_first_cleanup_xor18_softmax4(LOGICAL,70)@25
    assign i_first_cleanup_xor18_softmax4_q = i_first_cleanup17_softmax3_sel_x_b ^ VCC_q;

    // c_i32_061_recast_x(CONSTANT,4)
    assign c_i32_061_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_arrayidx_softmax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(BITSELECT,167)
    assign i_arrayidx_softmax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in = $unsigned(c_i32_061_recast_x_q[29:0]);
    assign i_arrayidx_softmax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b = $unsigned(i_arrayidx_softmax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[17:0]);
    assign i_arrayidx_softmax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c = $unsigned(i_arrayidx_softmax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[29:18]);

    // valid_fanout_reg4(REG,114)@21 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist16_sync_together85_aunroll_x_in_i_valid_20_q);
        end
    end

    // valid_fanout_reg9(REG,119)@22 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist17_sync_together85_aunroll_x_in_i_valid_21_q);
        end
    end

    // c_i32_164(CONSTANT,47)
    assign c_i32_164_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_softmax27(ADD,76)@23
    assign i_inc_softmax27_a = {1'b0, redist5_i_llvm_fpga_pop_i32_i_024_pop10_softmax12_out_data_out_1_q};
    assign i_inc_softmax27_b = {1'b0, c_i32_164_q};
    assign i_inc_softmax27_o = $unsigned(i_inc_softmax27_a) + $unsigned(i_inc_softmax27_b);
    assign i_inc_softmax27_q = i_inc_softmax27_o[32:0];

    // bgTrunc_i_inc_softmax27_sel_x(BITSELECT,3)@23
    assign bgTrunc_i_inc_softmax27_sel_x_b = i_inc_softmax27_q[31:0];

    // i_llvm_fpga_push_i32_i_024_push10_softmax28(BLACKBOX,90)@23
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    softmax_i_llvm_fpga_push_i32_i_024_push10_0 thei_llvm_fpga_push_i32_i_024_push10_softmax28 (
        .in_data_in(bgTrunc_i_inc_softmax27_sel_x_b),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i32_i_024_pop10_softmax12_out_feedback_stall_out_10),
        .in_keep_going12(i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i32_i_024_push10_softmax28_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i32_i_024_push10_softmax28_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_024_pop10_softmax12(BLACKBOX,83)@22
    // out out_feedback_stall_out_10@20000000
    softmax_i_llvm_fpga_pop_i32_i_024_pop10_0 thei_llvm_fpga_pop_i32_i_024_pop10_softmax12 (
        .in_data_in(c_i32_061_recast_x_q),
        .in_dir(redist12_sync_together85_aunroll_x_in_c0_eni1_1_tpl_21_q),
        .in_feedback_in_10(i_llvm_fpga_push_i32_i_024_push10_softmax28_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i32_i_024_push10_softmax28_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_024_pop10_softmax12_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i32_i_024_pop10_softmax12_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_llvm_fpga_pop_i32_i_024_pop10_softmax12_out_data_out_1(DELAY,174)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pop_i32_i_024_pop10_softmax12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pop_i32_i_024_pop10_softmax12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_024_pop10_softmax12_out_data_out);
        end
    end

    // i_arrayidx_softmax0_c_i2_01_x(CONSTANT,10)
    assign i_arrayidx_softmax0_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx_softmax0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,163)@23
    assign i_arrayidx_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_arrayidx_softmax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b, redist5_i_llvm_fpga_pop_i32_i_024_pop10_softmax12_out_data_out_1_q, i_arrayidx_softmax0_c_i2_01_x_q};

    // valid_fanout_reg5(REG,115)@22 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist17_sync_together85_aunroll_x_in_i_valid_21_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024f32_in0265_softmax14(BLACKBOX,78)@23
    softmax_i_llvm_fpga_ffwd_dest_p1024f32_in0265_0 thei_llvm_fpga_ffwd_dest_p1024f32_in0265_softmax14 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024f32_in0265_softmax14_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,168)@23
    assign i_arrayidx_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1024f32_in0265_softmax14_out_dest_data_out_0_0[51:0]);
    assign i_arrayidx_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1024f32_in0265_softmax14_out_dest_data_out_0_0[63:52]);

    // i_arrayidx_softmax0_add_x_p1_of_2(ADD,152)@23 + 1
    assign i_arrayidx_softmax0_add_x_p1_of_2_a = {1'b0, i_arrayidx_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_arrayidx_softmax0_add_x_p1_of_2_b = {1'b0, i_arrayidx_softmax0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx_softmax0_add_x_p1_of_2_o <= 53'b0;
        end
        else
        begin
            i_arrayidx_softmax0_add_x_p1_of_2_o <= $unsigned(i_arrayidx_softmax0_add_x_p1_of_2_a) + $unsigned(i_arrayidx_softmax0_add_x_p1_of_2_b);
        end
    end
    assign i_arrayidx_softmax0_add_x_p1_of_2_c[0] = i_arrayidx_softmax0_add_x_p1_of_2_o[52];
    assign i_arrayidx_softmax0_add_x_p1_of_2_q = i_arrayidx_softmax0_add_x_p1_of_2_o[51:0];

    // i_arrayidx_softmax0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,166)@24
    assign i_arrayidx_softmax0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_arrayidx_softmax0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c};

    // redist0_i_arrayidx_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_arrayidx_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_i_arrayidx_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_arrayidx_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_arrayidx_softmax0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,159)@24
    assign i_arrayidx_softmax0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_arrayidx_softmax0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_arrayidx_softmax0_add_x_p2_of_2(ADD,153)@24 + 1
    assign i_arrayidx_softmax0_add_x_p2_of_2_cin = i_arrayidx_softmax0_add_x_p1_of_2_c;
    assign i_arrayidx_softmax0_add_x_p2_of_2_a = { {1'b0, i_arrayidx_softmax0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_arrayidx_softmax0_add_x_p2_of_2_b = { {1'b0, i_arrayidx_softmax0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_arrayidx_softmax0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_arrayidx_softmax0_add_x_p2_of_2_o <= 15'b0;
        end
        else
        begin
            i_arrayidx_softmax0_add_x_p2_of_2_o <= $unsigned(i_arrayidx_softmax0_add_x_p2_of_2_a) + $unsigned(i_arrayidx_softmax0_add_x_p2_of_2_b);
        end
    end
    assign i_arrayidx_softmax0_add_x_p2_of_2_q = i_arrayidx_softmax0_add_x_p2_of_2_o[13:1];

    // redist1_i_arrayidx_softmax0_add_x_p1_of_2_q_1(DELAY,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx_softmax0_add_x_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist1_i_arrayidx_softmax0_add_x_p1_of_2_q_1_q <= $unsigned(i_arrayidx_softmax0_add_x_p1_of_2_q);
        end
    end

    // i_arrayidx_softmax0_add_x_BitJoin_for_q(BITJOIN,154)@25
    assign i_arrayidx_softmax0_add_x_BitJoin_for_q_q = {i_arrayidx_softmax0_add_x_p2_of_2_q, redist1_i_arrayidx_softmax0_add_x_p1_of_2_q_1_q};

    // i_arrayidx_softmax0_dupName_0_trunc_sel_x(BITSELECT,7)@25
    assign i_arrayidx_softmax0_dupName_0_trunc_sel_x_b = i_arrayidx_softmax0_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_unnamed_softmax5_softmax16(BLACKBOX,80)@25
    // in in_i_stall@20000000
    // out out_o_readdata@30
    // out out_o_stall@29
    // out out_o_valid@30
    // out out_unnamed_softmax5_softmax_avm_address@20000000
    // out out_unnamed_softmax5_softmax_avm_burstcount@20000000
    // out out_unnamed_softmax5_softmax_avm_byteenable@20000000
    // out out_unnamed_softmax5_softmax_avm_enable@20000000
    // out out_unnamed_softmax5_softmax_avm_read@20000000
    // out out_unnamed_softmax5_softmax_avm_write@20000000
    // out out_unnamed_softmax5_softmax_avm_writedata@20000000
    softmax_i_llvm_fpga_mem_unnamed_5_softmax0 thei_llvm_fpga_mem_unnamed_softmax5_softmax16 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx_softmax0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(i_first_cleanup_xor18_softmax4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_unnamed_softmax5_softmax_avm_readdata(in_unnamed_softmax5_softmax_avm_readdata),
        .in_unnamed_softmax5_softmax_avm_readdatavalid(in_unnamed_softmax5_softmax_avm_readdatavalid),
        .in_unnamed_softmax5_softmax_avm_waitrequest(in_unnamed_softmax5_softmax_avm_waitrequest),
        .in_unnamed_softmax5_softmax_avm_writeack(in_unnamed_softmax5_softmax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_softmax5_softmax_avm_address(i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_address),
        .out_unnamed_softmax5_softmax_avm_burstcount(i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_burstcount),
        .out_unnamed_softmax5_softmax_avm_byteenable(i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_byteenable),
        .out_unnamed_softmax5_softmax_avm_enable(i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_enable),
        .out_unnamed_softmax5_softmax_avm_read(i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_read),
        .out_unnamed_softmax5_softmax_avm_write(i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_write),
        .out_unnamed_softmax5_softmax_avm_writedata(i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,6)
    assign out_unnamed_softmax5_softmax_avm_address = i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_address;
    assign out_unnamed_softmax5_softmax_avm_enable = i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_enable;
    assign out_unnamed_softmax5_softmax_avm_read = i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_read;
    assign out_unnamed_softmax5_softmax_avm_write = i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_write;
    assign out_unnamed_softmax5_softmax_avm_writedata = i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_writedata;
    assign out_unnamed_softmax5_softmax_avm_byteenable = i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_byteenable;
    assign out_unnamed_softmax5_softmax_avm_burstcount = i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_unnamed_softmax5_softmax_avm_burstcount;

    // redist21_sync_together85_aunroll_x_in_i_valid_54(DELAY,190)
    dspba_delay_ver #( .width(1), .depth(30), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist21_sync_together85_aunroll_x_in_i_valid_54 ( .xin(redist20_sync_together85_aunroll_x_in_i_valid_24_q), .xout(redist21_sync_together85_aunroll_x_in_i_valid_54_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_sync_together85_aunroll_x_in_i_valid_76(DELAY,191)
    dspba_delay_ver #( .width(1), .depth(22), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist22_sync_together85_aunroll_x_in_i_valid_76 ( .xin(redist21_sync_together85_aunroll_x_in_i_valid_54_q), .xout(redist22_sync_together85_aunroll_x_in_i_valid_76_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,110)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist22_sync_together85_aunroll_x_in_i_valid_76_q);
        end
    end

    // i_masked21_softmax40(LOGICAL,94)@25 + 1
    assign i_masked21_softmax40_qi = i_notcmp8_softmax32_q & i_first_cleanup17_softmax3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked21_softmax40_delay ( .xin(i_masked21_softmax40_qi), .xout(i_masked21_softmax40_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist2_i_masked21_softmax40_q_53(DELAY,171)
    dspba_delay_ver #( .width(1), .depth(52), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_i_masked21_softmax40_q_53 ( .xin(i_masked21_softmax40_q), .xout(redist2_i_masked21_softmax40_q_53_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out_55(DELAY,177)
    dspba_delay_ver #( .width(1), .depth(53), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out_55 ( .xin(redist7_i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out_2_q), .xout(redist8_i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out_55_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,24)@78
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist8_i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out_55_q;
    assign out_c0_exi2_2_tpl = redist2_i_masked21_softmax40_q_53_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_softmax1 = GND_q;

    // ext_sig_sync_out(GPOUT,54)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_softmax6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going12_softmax6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_softmax6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going12_softmax6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,105)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going12_softmax6_out_pipeline_valid_out;

    // valid_fanout_reg10(REG,120)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist22_sync_together85_aunroll_x_in_i_valid_76_q);
        end
    end

    // i_acl_expf_call24_i_softmax17(BLACKBOX,55)@30
    // out out_primWireOut@54
    softmax_flt_i_sfc_logic_s_c0_in_for_body000006uq0cp0ju20cp0jtj0u thei_acl_expf_call24_i_softmax17 (
        .in_0(i_llvm_fpga_mem_unnamed_softmax5_softmax16_out_o_readdata),
        .out_primWireOut(i_acl_expf_call24_i_softmax17_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_acl_expf_call24_i_softmax17_out_primWireOut_1(DELAY,179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_acl_expf_call24_i_softmax17_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist10_i_acl_expf_call24_i_softmax17_out_primWireOut_1_q <= $unsigned(i_acl_expf_call24_i_softmax17_out_primWireOut);
        end
    end

    // redist11_i_acl_expf_call24_i_softmax17_out_primWireOut_2(DELAY,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_acl_expf_call24_i_softmax17_out_primWireOut_2_q <= '0;
        end
        else
        begin
            redist11_i_acl_expf_call24_i_softmax17_out_primWireOut_2_q <= $unsigned(redist10_i_acl_expf_call24_i_softmax17_out_primWireOut_1_q);
        end
    end

    // c_i32_213909504062(CONSTANT,48)
    assign c_i32_213909504062_q = $unsigned(32'b01111111100000000000000000000000);

    // i_and_i_i_softmax19(LOGICAL,57)@55
    assign i_and_i_i_softmax19_q = redist10_i_acl_expf_call24_i_softmax17_out_primWireOut_1_q & c_i32_213909504062_q;

    // i_and_i_i_softmax19_vt_select_30(BITSELECT,61)@55
    assign i_and_i_i_softmax19_vt_select_30_b = i_and_i_i_softmax19_q[30:23];

    // i_and_i_i_softmax19_vt_const_22(CONSTANT,58)
    assign i_and_i_i_softmax19_vt_const_22_q = $unsigned(23'b00000000000000000000000);

    // i_and_i_i_softmax19_vt_join(BITJOIN,60)@55
    assign i_and_i_i_softmax19_vt_join_q = {GND_q, i_and_i_i_softmax19_vt_select_30_b, i_and_i_i_softmax19_vt_const_22_q};

    // i_cmp_i_i_softmax20(LOGICAL,67)@55 + 1
    assign i_cmp_i_i_softmax20_qi = $unsigned(i_and_i_i_softmax19_vt_join_q == c_i32_061_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp_i_i_softmax20_delay ( .xin(i_cmp_i_i_softmax20_qi), .xout(i_cmp_i_i_softmax20_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_store_select_i_i_softmax22(MUX,101)@56 + 1
    assign i_spec_store_select_i_i_softmax22_s = i_cmp_i_i_softmax20_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_spec_store_select_i_i_softmax22_q <= 32'b0;
        end
        else
        begin
            unique case (i_spec_store_select_i_i_softmax22_s)
                1'b0 : i_spec_store_select_i_i_softmax22_q <= redist11_i_acl_expf_call24_i_softmax17_out_primWireOut_2_q;
                1'b1 : i_spec_store_select_i_i_softmax22_q <= c_i32_061_recast_x_q;
                default : i_spec_store_select_i_i_softmax22_q <= 32'b0;
            endcase
        end
    end

    // valid_fanout_reg7(REG,117)@55 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist21_sync_together85_aunroll_x_in_i_valid_54_q);
        end
    end

    // valid_fanout_reg8(REG,118)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist22_sync_together85_aunroll_x_in_i_valid_76_q);
        end
    end

    // i_llvm_fpga_push_f32_sum_025_push9_softmax26(BLACKBOX,87)@78
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    softmax_i_llvm_fpga_push_f32_sum_025_push9_0 thei_llvm_fpga_push_f32_sum_025_push9_softmax26 (
        .in_data_in(i_add_softmax25_out_primWireOut),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_f32_sum_025_pop9_softmax24_out_feedback_stall_out_9),
        .in_keep_going12(redist8_i_llvm_fpga_pipeline_keep_going12_softmax6_out_data_out_55_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_f32_sum_025_push9_softmax26_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_f32_sum_025_push9_softmax26_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_sync_together85_aunroll_x_in_c0_eni1_1_tpl_55_inputreg0(DELAY,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together85_aunroll_x_in_c0_eni1_1_tpl_55_inputreg0_q <= '0;
        end
        else
        begin
            redist15_sync_together85_aunroll_x_in_c0_eni1_1_tpl_55_inputreg0_q <= $unsigned(redist14_sync_together85_aunroll_x_in_c0_eni1_1_tpl_23_q);
        end
    end

    // redist15_sync_together85_aunroll_x_in_c0_eni1_1_tpl_55(DELAY,184)
    dspba_delay_ver #( .width(1), .depth(30), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist15_sync_together85_aunroll_x_in_c0_eni1_1_tpl_55 ( .xin(redist15_sync_together85_aunroll_x_in_c0_eni1_1_tpl_55_inputreg0_q), .xout(redist15_sync_together85_aunroll_x_in_c0_eni1_1_tpl_55_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_sync_together85_aunroll_x_in_c0_eni1_1_tpl_55_outputreg0(DELAY,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together85_aunroll_x_in_c0_eni1_1_tpl_55_outputreg0_q <= '0;
        end
        else
        begin
            redist15_sync_together85_aunroll_x_in_c0_eni1_1_tpl_55_outputreg0_q <= $unsigned(redist15_sync_together85_aunroll_x_in_c0_eni1_1_tpl_55_q);
        end
    end

    // c_float_0_000000e_0063(FLOATCONSTANT,28)
    assign c_float_0_000000e_0063_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_f32_sum_025_pop9_softmax24(BLACKBOX,82)@56
    // out out_feedback_stall_out_9@20000000
    softmax_i_llvm_fpga_pop_f32_sum_025_pop9_0 thei_llvm_fpga_pop_f32_sum_025_pop9_softmax24 (
        .in_data_in(c_float_0_000000e_0063_q),
        .in_dir(redist15_sync_together85_aunroll_x_in_c0_eni1_1_tpl_55_outputreg0_q),
        .in_feedback_in_9(i_llvm_fpga_push_f32_sum_025_push9_softmax26_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_f32_sum_025_push9_softmax26_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_f32_sum_025_pop9_softmax24_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_f32_sum_025_pop9_softmax24_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_i_llvm_fpga_pop_f32_sum_025_pop9_softmax24_out_data_out_1(DELAY,175)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_025_pop9_softmax24_out_data_out_1_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pop_f32_sum_025_pop9_softmax24_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_sum_025_pop9_softmax24_out_data_out);
        end
    end

    // i_add_softmax25(BLACKBOX,56)@57
    // out out_primWireOut@78
    softmax_flt_i_sfc_logic_s_c0_in_for_body00003a0054c2a6344c246w65 thei_add_softmax25 (
        .in_0(redist6_i_llvm_fpga_pop_f32_sum_025_pop9_softmax24_out_data_out_1_q),
        .in_1(i_spec_store_select_i_i_softmax22_q),
        .out_primWireOut(i_add_softmax25_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_first_cleanup_xor18_softmax4_q_53(DELAY,178)
    dspba_delay_ver #( .width(1), .depth(53), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_i_first_cleanup_xor18_softmax4_q_53 ( .xin(i_first_cleanup_xor18_softmax4_q), .xout(redist9_i_first_cleanup_xor18_softmax4_q_53_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_f32_unnamed_softmax6_softmax39(BLACKBOX,79)@78
    // out out_intel_reserved_ffwd_2_0@20000000
    softmax_i_llvm_fpga_ffwd_source_f32_unnamed_6_softmax0 thei_llvm_fpga_ffwd_source_f32_unnamed_softmax6_softmax39 (
        .in_predicate_in(redist9_i_first_cleanup_xor18_softmax4_q_53_q),
        .in_src_data_in_2_0(i_add_softmax25_out_primWireOut),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_f32_unnamed_softmax6_softmax39_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,108)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_f32_unnamed_softmax6_softmax39_out_intel_reserved_ffwd_2_0;

endmodule
