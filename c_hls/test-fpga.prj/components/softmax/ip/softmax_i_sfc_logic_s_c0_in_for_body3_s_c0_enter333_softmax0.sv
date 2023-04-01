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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body3_softmaxs_c0_enter333_softmax0
// Created for function/kernel softmax
// SystemVerilog created on Sat Apr  1 13:10:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module softmax_i_sfc_logic_s_c0_in_for_body3_s_c0_enter333_softmax0 (
    output wire [0:0] out_c0_exi236_0_tpl,
    output wire [31:0] out_c0_exi236_1_tpl,
    output wire [63:0] out_c0_exi236_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_softmax1,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [31:0] in_c0_eni2_1_tpl,
    input wire [63:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_017_recast_x_q;
    wire [31:0] c_i32_213909504016_q;
    wire [31:0] c_i32_214748364718_q;
    wire [31:0] i_acl_expf_call24_i17_softmax2_out_primWireOut;
    wire [31:0] i_and_i_i19_softmax4_q;
    wire [22:0] i_and_i_i19_softmax4_vt_const_22_q;
    wire [31:0] i_and_i_i19_softmax4_vt_join_q;
    wire [7:0] i_and_i_i19_softmax4_vt_select_30_b;
    wire [31:0] i_and_i_softmax12_q;
    wire [31:0] i_and_i_softmax12_vt_join_q;
    wire [30:0] i_and_i_softmax12_vt_select_30_b;
    wire [0:0] i_cmp_i_i20_softmax5_qi;
    reg [0:0] i_cmp_i_i20_softmax5_q;
    wire [31:0] i_div_softmax10_out_primWireOut;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_add7_softmax9_out_dest_data_out_2_0;
    wire [0:0] i_spec_store_select_i_i21_softmax7_s;
    reg [31:0] i_spec_store_select_i_i21_softmax7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    reg [0:0] redist0_valid_fanout_reg0_q_20_q;
    reg [31:0] redist1_i_acl_expf_call24_i17_softmax2_out_primWireOut_1_q;
    reg [31:0] redist2_i_acl_expf_call24_i17_softmax2_out_primWireOut_2_q;
    reg [63:0] redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_q;
    reg [63:0] redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_delay_0;
    reg [0:0] redist4_sync_together21_aunroll_x_in_i_valid_14_q;
    reg [63:0] redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_inputreg0_q;
    reg [63:0] redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_outputreg0_q;
    wire redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_reset0;
    wire [63:0] redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_ia;
    wire [4:0] redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_aa;
    wire [4:0] redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_ab;
    wire [63:0] redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_iq;
    wire [63:0] redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_q;
    wire [4:0] redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_rdcnt_i;
    (* preserve *) reg redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_rdcnt_eq;
    reg [4:0] redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_wraddr_q;
    wire [5:0] redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_last_q;
    wire [5:0] redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_cmp_b;
    wire [0:0] redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_cmpReg_q;
    wire [0:0] redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_notEnable_q;
    wire [0:0] redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_sticky_ena_q;
    wire [0:0] redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist4_sync_together21_aunroll_x_in_i_valid_14(DELAY,35)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist4_sync_together21_aunroll_x_in_i_valid_14 ( .xin(in_i_valid), .xout(redist4_sync_together21_aunroll_x_in_i_valid_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,29)@119 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist4_sync_together21_aunroll_x_in_i_valid_14_q);
        end
    end

    // redist0_valid_fanout_reg0_q_20(DELAY,31)
    dspba_delay_ver #( .width(1), .depth(20), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_valid_fanout_reg0_q_20 ( .xin(valid_fanout_reg0_q), .xout(redist0_valid_fanout_reg0_q_20_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_notEnable(LOGICAL,45)
    assign redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_nor(LOGICAL,46)
    assign redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_nor_q = ~ (redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_notEnable_q | redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_sticky_ena_q);

    // redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_last(CONSTANT,42)
    assign redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_last_q = $unsigned(6'b011100);

    // redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_cmp(LOGICAL,43)
    assign redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_cmp_b = {1'b0, redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_rdcnt_q};
    assign redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_cmp_q = $unsigned(redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_last_q == redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_cmpReg(REG,44)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_cmpReg_q <= $unsigned(redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_cmp_q);
        end
    end

    // redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_sticky_ena(REG,47)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_nor_q == 1'b1)
        begin
            redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_sticky_ena_q <= $unsigned(redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_cmpReg_q);
        end
    end

    // redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_enaAnd(LOGICAL,48)
    assign redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_enaAnd_q = redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_sticky_ena_q & VCC_q;

    // redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_rdcnt(COUNTER,40)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_rdcnt_i <= 5'd0;
            redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_rdcnt_i == 5'd28)
            begin
                redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_rdcnt_eq == 1'b1)
            begin
                redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_rdcnt_i <= $unsigned(redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_rdcnt_i <= $unsigned(redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_rdcnt_q = redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_rdcnt_i[4:0];

    // redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_inputreg0(DELAY,37)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_inputreg0_q <= $unsigned(in_c0_eni2_2_tpl);
        end
    end

    // redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_wraddr(REG,41)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_wraddr_q <= $unsigned(redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_rdcnt_q);
        end
    end

    // redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem(DUALMEM,39)
    assign redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_ia = $unsigned(redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_inputreg0_q);
    assign redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_aa = redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_wraddr_q;
    assign redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_ab = redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_rdcnt_q;
    assign redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(64),
        .widthad_b(5),
        .numwords_b(30),
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
    ) redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_dmem (
        .clocken1(redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_aa),
        .data_a(redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_ab),
        .q_b(redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_iq),
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
    assign redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_q = redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_iq[63:0];

    // redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_outputreg0(DELAY,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_outputreg0_q <= $unsigned(redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_mem_q);
        end
    end

    // redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35(DELAY,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_delay_0 <= '0;
            redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_q <= '0;
        end
        else
        begin
            redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_delay_0 <= $unsigned(redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_split_0_outputreg0_q);
            redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_q <= redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_delay_0;
        end
    end

    // c_i32_214748364718(CONSTANT,8)
    assign c_i32_214748364718_q = $unsigned(32'b01111111111111111111111111111111);

    // valid_fanout_reg1(REG,30)@119 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist4_sync_together21_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f32_add7_softmax9(BLACKBOX,24)@120
    softmax_i_llvm_fpga_ffwd_dest_f32_add7_0 thei_llvm_fpga_ffwd_dest_f32_add7_softmax9 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_f32_add7_softmax9_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_017_recast_x(CONSTANT,2)
    assign c_i32_017_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_acl_expf_call24_i17_softmax2(BLACKBOX,9)@105
    // out out_primWireOut@129
    softmax_flt_i_sfc_logic_s_c0_in_for_body000106uq0cp0ju20cp0jtj0u thei_acl_expf_call24_i17_softmax2 (
        .in_0(in_c0_eni2_1_tpl),
        .out_primWireOut(i_acl_expf_call24_i17_softmax2_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_i_acl_expf_call24_i17_softmax2_out_primWireOut_1(DELAY,32)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_acl_expf_call24_i17_softmax2_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist1_i_acl_expf_call24_i17_softmax2_out_primWireOut_1_q <= $unsigned(i_acl_expf_call24_i17_softmax2_out_primWireOut);
        end
    end

    // redist2_i_acl_expf_call24_i17_softmax2_out_primWireOut_2(DELAY,33)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_acl_expf_call24_i17_softmax2_out_primWireOut_2_q <= '0;
        end
        else
        begin
            redist2_i_acl_expf_call24_i17_softmax2_out_primWireOut_2_q <= $unsigned(redist1_i_acl_expf_call24_i17_softmax2_out_primWireOut_1_q);
        end
    end

    // c_i32_213909504016(CONSTANT,7)
    assign c_i32_213909504016_q = $unsigned(32'b01111111100000000000000000000000);

    // i_and_i_i19_softmax4(LOGICAL,10)@130
    assign i_and_i_i19_softmax4_q = redist1_i_acl_expf_call24_i17_softmax2_out_primWireOut_1_q & c_i32_213909504016_q;

    // i_and_i_i19_softmax4_vt_select_30(BITSELECT,14)@130
    assign i_and_i_i19_softmax4_vt_select_30_b = i_and_i_i19_softmax4_q[30:23];

    // i_and_i_i19_softmax4_vt_const_22(CONSTANT,11)
    assign i_and_i_i19_softmax4_vt_const_22_q = $unsigned(23'b00000000000000000000000);

    // i_and_i_i19_softmax4_vt_join(BITJOIN,13)@130
    assign i_and_i_i19_softmax4_vt_join_q = {GND_q, i_and_i_i19_softmax4_vt_select_30_b, i_and_i_i19_softmax4_vt_const_22_q};

    // i_cmp_i_i20_softmax5(LOGICAL,22)@130 + 1
    assign i_cmp_i_i20_softmax5_qi = $unsigned(i_and_i_i19_softmax4_vt_join_q == c_i32_017_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp_i_i20_softmax5_delay ( .xin(i_cmp_i_i20_softmax5_qi), .xout(i_cmp_i_i20_softmax5_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_store_select_i_i21_softmax7(MUX,25)@131 + 1
    assign i_spec_store_select_i_i21_softmax7_s = i_cmp_i_i20_softmax5_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_spec_store_select_i_i21_softmax7_q <= 32'b0;
        end
        else
        begin
            unique case (i_spec_store_select_i_i21_softmax7_s)
                1'b0 : i_spec_store_select_i_i21_softmax7_q <= redist2_i_acl_expf_call24_i17_softmax2_out_primWireOut_2_q;
                1'b1 : i_spec_store_select_i_i21_softmax7_q <= c_i32_017_recast_x_q;
                default : i_spec_store_select_i_i21_softmax7_q <= 32'b0;
            endcase
        end
    end

    // i_div_softmax10(BLACKBOX,23)@120
    // in in_0@132
    // out out_primWireOut@140
    softmax_flt_i_sfc_logic_s_c0_in_for_body0000b0c2463a0054c2a6355y thei_div_softmax10 (
        .in_0(i_spec_store_select_i_i21_softmax7_q),
        .in_1(i_llvm_fpga_ffwd_dest_f32_add7_softmax9_out_dest_data_out_2_0),
        .out_primWireOut(i_div_softmax10_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_and_i_softmax12(LOGICAL,15)@140
    assign i_and_i_softmax12_q = i_div_softmax10_out_primWireOut & c_i32_214748364718_q;

    // i_and_i_softmax12_vt_select_30(BITSELECT,18)@140
    assign i_and_i_softmax12_vt_select_30_b = i_and_i_softmax12_q[30:0];

    // i_and_i_softmax12_vt_join(BITJOIN,17)@140
    assign i_and_i_softmax12_vt_join_q = {GND_q, i_and_i_softmax12_vt_select_30_b};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,3)@140
    assign out_c0_exi236_0_tpl = GND_q;
    assign out_c0_exi236_1_tpl = i_and_i_softmax12_vt_join_q;
    assign out_c0_exi236_2_tpl = redist3_sync_together21_aunroll_x_in_c0_eni2_2_tpl_35_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_20_q;
    assign out_unnamed_softmax1 = GND_q;

endmodule
