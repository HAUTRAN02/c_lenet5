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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body15_conv2s_c0_enter71042_conv20
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:45 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_i_sfc_logic_s_c0_in_for_body15_s_c0_enter71042_conv20 (
    output wire [0:0] out_c0_exi1714_0_tpl,
    output wire [31:0] out_c0_exi1714_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv21,
    input wire [0:0] in_c0_eni3709_0_tpl,
    input wire [31:0] in_c0_eni3709_1_tpl,
    input wire [31:0] in_c0_eni3709_2_tpl,
    input wire [31:0] in_c0_eni3709_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_mul_conv22_out_primWireOut;
    wire [31:0] i_storemerge_conv23_out_primWireOut;
    reg [31:0] redist0_i_mul_conv22_out_primWireOut_1_q;
    reg [0:0] redist2_sync_together8_aunroll_x_in_i_valid_32_q;
    reg [31:0] redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_inputreg0_q;
    reg [31:0] redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_outputreg0_q;
    wire redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_reset0;
    wire [31:0] redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_ia;
    wire [2:0] redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_aa;
    wire [2:0] redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_ab;
    wire [31:0] redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_iq;
    wire [31:0] redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_q;
    wire [2:0] redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_rdcnt_q;
    (* preserve *) reg [2:0] redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_rdcnt_i;
    reg [2:0] redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_wraddr_q;
    wire [3:0] redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_last_q;
    wire [3:0] redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_cmp_b;
    wire [0:0] redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_cmp_q;
    (* dont_merge *) reg [0:0] redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_cmpReg_q;
    wire [0:0] redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_notEnable_q;
    wire [0:0] redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_nor_q;
    (* dont_merge *) reg [0:0] redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_sticky_ena_q;
    wire [0:0] redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_enaAnd_q;
    reg [0:0] redist2_sync_together8_aunroll_x_in_i_valid_32_inputreg0_q;
    reg [0:0] redist2_sync_together8_aunroll_x_in_i_valid_32_outputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together8_aunroll_x_in_i_valid_32_inputreg0(DELAY,23)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together8_aunroll_x_in_i_valid_32_inputreg0_q <= '0;
        end
        else
        begin
            redist2_sync_together8_aunroll_x_in_i_valid_32_inputreg0_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_sync_together8_aunroll_x_in_i_valid_32(DELAY,10)
    dspba_delay_ver #( .width(1), .depth(30), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together8_aunroll_x_in_i_valid_32 ( .xin(redist2_sync_together8_aunroll_x_in_i_valid_32_inputreg0_q), .xout(redist2_sync_together8_aunroll_x_in_i_valid_32_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist2_sync_together8_aunroll_x_in_i_valid_32_outputreg0(DELAY,24)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together8_aunroll_x_in_i_valid_32_outputreg0_q <= '0;
        end
        else
        begin
            redist2_sync_together8_aunroll_x_in_i_valid_32_outputreg0_q <= $unsigned(redist2_sync_together8_aunroll_x_in_i_valid_32_q);
        end
    end

    // redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_notEnable(LOGICAL,19)
    assign redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_notEnable_q = $unsigned(~ (VCC_q));

    // redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_nor(LOGICAL,20)
    assign redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_nor_q = ~ (redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_notEnable_q | redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_sticky_ena_q);

    // redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_last(CONSTANT,16)
    assign redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_last_q = $unsigned(4'b0110);

    // redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_cmp(LOGICAL,17)
    assign redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_cmp_b = {1'b0, redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_rdcnt_q};
    assign redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_cmp_q = $unsigned(redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_last_q == redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_cmp_b ? 1'b1 : 1'b0);

    // redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_cmpReg(REG,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_cmpReg_q <= $unsigned(redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_cmp_q);
        end
    end

    // redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_sticky_ena(REG,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_nor_q == 1'b1)
        begin
            redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_sticky_ena_q <= $unsigned(redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_cmpReg_q);
        end
    end

    // redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_enaAnd(LOGICAL,22)
    assign redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_enaAnd_q = redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_sticky_ena_q & VCC_q;

    // redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_rdcnt(COUNTER,14)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_rdcnt_i <= $unsigned(redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_rdcnt_q = redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_rdcnt_i[2:0];

    // redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_inputreg0(DELAY,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_inputreg0_q <= '0;
        end
        else
        begin
            redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_inputreg0_q <= $unsigned(in_c0_eni3709_3_tpl);
        end
    end

    // redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_wraddr(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_wraddr_q <= $unsigned(redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_rdcnt_q);
        end
    end

    // redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem(DUALMEM,13)
    assign redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_ia = $unsigned(redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_inputreg0_q);
    assign redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_aa = redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_wraddr_q;
    assign redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_ab = redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_rdcnt_q;
    assign redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(8),
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
    ) redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_dmem (
        .clocken1(redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_reset0),
        .clock1(clock),
        .address_a(redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_aa),
        .data_a(redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_ab),
        .q_b(redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_iq),
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
    assign redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_q = redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_iq[31:0];

    // redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_outputreg0(DELAY,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_outputreg0_q <= '0;
        end
        else
        begin
            redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_outputreg0_q <= $unsigned(redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_mem_q);
        end
    end

    // i_mul_conv22(BLACKBOX,5)@65
    // out out_primWireOut@75
    conv2_flt_i_sfc_logic_s_c0_in_for_body150000b0c2463a0054c2a6355y thei_mul_conv22 (
        .in_0(in_c0_eni3709_1_tpl),
        .in_1(in_c0_eni3709_2_tpl),
        .out_primWireOut(i_mul_conv22_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_i_mul_conv22_out_primWireOut_1(DELAY,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mul_conv22_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist0_i_mul_conv22_out_primWireOut_1_q <= $unsigned(i_mul_conv22_out_primWireOut);
        end
    end

    // i_storemerge_conv23(BLACKBOX,6)@76
    // out out_primWireOut@97
    conv2_flt_i_sfc_logic_s_c0_in_for_body1500003a0054c2a6344c246w65 thei_storemerge_conv23 (
        .in_0(redist0_i_mul_conv22_out_primWireOut_1_q),
        .in_1(redist1_sync_together8_aunroll_x_in_c0_eni3709_3_tpl_11_outputreg0_q),
        .out_primWireOut(i_storemerge_conv23_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,2)@97
    assign out_c0_exi1714_0_tpl = GND_q;
    assign out_c0_exi1714_1_tpl = i_storemerge_conv23_out_primWireOut;
    assign out_o_valid = redist2_sync_together8_aunroll_x_in_i_valid_32_outputreg0_q;
    assign out_unnamed_conv21 = GND_q;

endmodule
