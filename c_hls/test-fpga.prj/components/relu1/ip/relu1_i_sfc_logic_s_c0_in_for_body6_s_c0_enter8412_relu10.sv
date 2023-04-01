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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body6_relu1s_c0_enter8412_relu10
// Created for function/kernel relu1
// SystemVerilog created on Sat Apr  1 13:10:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module relu1_i_sfc_logic_s_c0_in_for_body6_s_c0_enter8412_relu10 (
    output wire [0:0] out_c0_exi186_0_tpl,
    output wire [31:0] out_c0_exi186_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_relu11,
    input wire [0:0] in_c0_eni183_0_tpl,
    input wire [31:0] in_c0_eni183_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_float_0_000000e_006_q;
    wire [0:0] i_unnamed_relu13_s;
    reg [31:0] i_unnamed_relu13_q;
    wire [7:0] cstAllOWE_uid10_i_cmp11_relu12_q;
    wire [22:0] cstZeroWF_uid11_i_cmp11_relu12_q;
    wire [7:0] cstAllZWE_uid12_i_cmp11_relu12_q;
    wire [7:0] exp_x_uid13_i_cmp11_relu12_b;
    wire [22:0] frac_x_uid14_i_cmp11_relu12_b;
    wire [0:0] expXIsZero_uid15_i_cmp11_relu12_qi;
    reg [0:0] expXIsZero_uid15_i_cmp11_relu12_q;
    wire [0:0] expXIsMax_uid16_i_cmp11_relu12_qi;
    reg [0:0] expXIsMax_uid16_i_cmp11_relu12_q;
    wire [0:0] fracXIsZero_uid17_i_cmp11_relu12_qi;
    reg [0:0] fracXIsZero_uid17_i_cmp11_relu12_q;
    wire [0:0] fracXIsNotZero_uid18_i_cmp11_relu12_q;
    wire [0:0] excZ_x_uid19_i_cmp11_relu12_q;
    wire [0:0] excN_x_uid21_i_cmp11_relu12_q;
    wire [7:0] exp_y_uid30_i_cmp11_relu12_b;
    wire [22:0] frac_y_uid31_i_cmp11_relu12_b;
    wire [0:0] expXIsZero_uid32_i_cmp11_relu12_qi;
    reg [0:0] expXIsZero_uid32_i_cmp11_relu12_q;
    wire [0:0] expXIsMax_uid33_i_cmp11_relu12_qi;
    reg [0:0] expXIsMax_uid33_i_cmp11_relu12_q;
    wire [0:0] fracXIsZero_uid34_i_cmp11_relu12_qi;
    reg [0:0] fracXIsZero_uid34_i_cmp11_relu12_q;
    wire [0:0] fracXIsNotZero_uid35_i_cmp11_relu12_q;
    wire [0:0] excZ_y_uid36_i_cmp11_relu12_q;
    wire [0:0] excN_y_uid38_i_cmp11_relu12_q;
    wire [0:0] oneIsNaN_uid44_i_cmp11_relu12_qi;
    reg [0:0] oneIsNaN_uid44_i_cmp11_relu12_q;
    wire [30:0] expFracX_uid49_i_cmp11_relu12_q;
    wire [30:0] expFracY_uid51_i_cmp11_relu12_q;
    wire [32:0] efxGTefy_uid53_i_cmp11_relu12_a;
    wire [32:0] efxGTefy_uid53_i_cmp11_relu12_b;
    logic [32:0] efxGTefy_uid53_i_cmp11_relu12_o;
    wire [0:0] efxGTefy_uid53_i_cmp11_relu12_c;
    wire [32:0] efxLTefy_uid54_i_cmp11_relu12_a;
    wire [32:0] efxLTefy_uid54_i_cmp11_relu12_b;
    logic [32:0] efxLTefy_uid54_i_cmp11_relu12_o;
    wire [0:0] efxLTefy_uid54_i_cmp11_relu12_c;
    wire [0:0] signX_uid58_i_cmp11_relu12_b;
    wire [0:0] signY_uid59_i_cmp11_relu12_b;
    wire [1:0] two_uid60_i_cmp11_relu12_q;
    wire [1:0] concSXSY_uid61_i_cmp11_relu12_q;
    wire [0:0] sxLTsy_uid62_i_cmp11_relu12_qi;
    reg [0:0] sxLTsy_uid62_i_cmp11_relu12_q;
    wire [0:0] xorSigns_uid63_i_cmp11_relu12_q;
    wire [0:0] sxEQsy_uid64_i_cmp11_relu12_q;
    wire [0:0] expFracCompMux_uid65_i_cmp11_relu12_s;
    reg [0:0] expFracCompMux_uid65_i_cmp11_relu12_q;
    wire [0:0] invExcYZ_uid66_i_cmp11_relu12_q;
    wire [0:0] invExcXZ_uid67_i_cmp11_relu12_q;
    wire [0:0] oneNonZero_uid68_i_cmp11_relu12_qi;
    reg [0:0] oneNonZero_uid68_i_cmp11_relu12_q;
    wire [0:0] rc2_uid69_i_cmp11_relu12_q;
    wire [0:0] sxEQsyExpFracCompMux_uid70_i_cmp11_relu12_qi;
    reg [0:0] sxEQsyExpFracCompMux_uid70_i_cmp11_relu12_q;
    wire [0:0] r_uid71_i_cmp11_relu12_qi;
    reg [0:0] r_uid71_i_cmp11_relu12_q;
    wire [0:0] rPostExc_uid72_i_cmp11_relu12_s;
    reg [0:0] rPostExc_uid72_i_cmp11_relu12_q;
    reg [0:0] redist0_oneIsNaN_uid44_i_cmp11_relu12_q_2_q;
    reg [31:0] redist1_sync_together8_aunroll_x_in_c0_eni183_1_tpl_1_q;
    reg [31:0] redist2_sync_together8_aunroll_x_in_c0_eni183_1_tpl_3_q;
    reg [31:0] redist2_sync_together8_aunroll_x_in_c0_eni183_1_tpl_3_delay_0;
    reg [0:0] redist3_sync_together8_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist3_sync_together8_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist3_sync_together8_aunroll_x_in_i_valid_3_delay_1;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist3_sync_together8_aunroll_x_in_i_valid_3(DELAY,76)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together8_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist3_sync_together8_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist3_sync_together8_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist3_sync_together8_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist3_sync_together8_aunroll_x_in_i_valid_3_delay_1 <= redist3_sync_together8_aunroll_x_in_i_valid_3_delay_0;
            redist3_sync_together8_aunroll_x_in_i_valid_3_q <= redist3_sync_together8_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // c_float_0_000000e_006(FLOATCONSTANT,4)
    assign c_float_0_000000e_006_q = $unsigned(32'b00000000000000000000000000000000);

    // redist1_sync_together8_aunroll_x_in_c0_eni183_1_tpl_1(DELAY,74)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together8_aunroll_x_in_c0_eni183_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together8_aunroll_x_in_c0_eni183_1_tpl_1_q <= $unsigned(in_c0_eni183_1_tpl);
        end
    end

    // redist2_sync_together8_aunroll_x_in_c0_eni183_1_tpl_3(DELAY,75)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together8_aunroll_x_in_c0_eni183_1_tpl_3_delay_0 <= '0;
            redist2_sync_together8_aunroll_x_in_c0_eni183_1_tpl_3_q <= '0;
        end
        else
        begin
            redist2_sync_together8_aunroll_x_in_c0_eni183_1_tpl_3_delay_0 <= $unsigned(redist1_sync_together8_aunroll_x_in_c0_eni183_1_tpl_1_q);
            redist2_sync_together8_aunroll_x_in_c0_eni183_1_tpl_3_q <= redist2_sync_together8_aunroll_x_in_c0_eni183_1_tpl_3_delay_0;
        end
    end

    // frac_y_uid31_i_cmp11_relu12(BITSELECT,30)@105
    assign frac_y_uid31_i_cmp11_relu12_b = c_float_0_000000e_006_q[22:0];

    // cstZeroWF_uid11_i_cmp11_relu12(CONSTANT,10)
    assign cstZeroWF_uid11_i_cmp11_relu12_q = $unsigned(23'b00000000000000000000000);

    // fracXIsZero_uid34_i_cmp11_relu12(LOGICAL,33)@105 + 1
    assign fracXIsZero_uid34_i_cmp11_relu12_qi = $unsigned(cstZeroWF_uid11_i_cmp11_relu12_q == frac_y_uid31_i_cmp11_relu12_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid34_i_cmp11_relu12_delay ( .xin(fracXIsZero_uid34_i_cmp11_relu12_qi), .xout(fracXIsZero_uid34_i_cmp11_relu12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstAllZWE_uid12_i_cmp11_relu12(CONSTANT,11)
    assign cstAllZWE_uid12_i_cmp11_relu12_q = $unsigned(8'b00000000);

    // exp_y_uid30_i_cmp11_relu12(BITSELECT,29)@105
    assign exp_y_uid30_i_cmp11_relu12_b = c_float_0_000000e_006_q[30:23];

    // expXIsZero_uid32_i_cmp11_relu12(LOGICAL,31)@105 + 1
    assign expXIsZero_uid32_i_cmp11_relu12_qi = $unsigned(exp_y_uid30_i_cmp11_relu12_b == cstAllZWE_uid12_i_cmp11_relu12_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsZero_uid32_i_cmp11_relu12_delay ( .xin(expXIsZero_uid32_i_cmp11_relu12_qi), .xout(expXIsZero_uid32_i_cmp11_relu12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excZ_y_uid36_i_cmp11_relu12(LOGICAL,35)@106
    assign excZ_y_uid36_i_cmp11_relu12_q = expXIsZero_uid32_i_cmp11_relu12_q & fracXIsZero_uid34_i_cmp11_relu12_q;

    // invExcYZ_uid66_i_cmp11_relu12(LOGICAL,65)@106
    assign invExcYZ_uid66_i_cmp11_relu12_q = ~ (excZ_y_uid36_i_cmp11_relu12_q);

    // frac_x_uid14_i_cmp11_relu12(BITSELECT,13)@105
    assign frac_x_uid14_i_cmp11_relu12_b = in_c0_eni183_1_tpl[22:0];

    // fracXIsZero_uid17_i_cmp11_relu12(LOGICAL,16)@105 + 1
    assign fracXIsZero_uid17_i_cmp11_relu12_qi = $unsigned(cstZeroWF_uid11_i_cmp11_relu12_q == frac_x_uid14_i_cmp11_relu12_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid17_i_cmp11_relu12_delay ( .xin(fracXIsZero_uid17_i_cmp11_relu12_qi), .xout(fracXIsZero_uid17_i_cmp11_relu12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // exp_x_uid13_i_cmp11_relu12(BITSELECT,12)@105
    assign exp_x_uid13_i_cmp11_relu12_b = in_c0_eni183_1_tpl[30:23];

    // expXIsZero_uid15_i_cmp11_relu12(LOGICAL,14)@105 + 1
    assign expXIsZero_uid15_i_cmp11_relu12_qi = $unsigned(exp_x_uid13_i_cmp11_relu12_b == cstAllZWE_uid12_i_cmp11_relu12_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsZero_uid15_i_cmp11_relu12_delay ( .xin(expXIsZero_uid15_i_cmp11_relu12_qi), .xout(expXIsZero_uid15_i_cmp11_relu12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excZ_x_uid19_i_cmp11_relu12(LOGICAL,18)@106
    assign excZ_x_uid19_i_cmp11_relu12_q = expXIsZero_uid15_i_cmp11_relu12_q & fracXIsZero_uid17_i_cmp11_relu12_q;

    // invExcXZ_uid67_i_cmp11_relu12(LOGICAL,66)@106
    assign invExcXZ_uid67_i_cmp11_relu12_q = ~ (excZ_x_uid19_i_cmp11_relu12_q);

    // oneNonZero_uid68_i_cmp11_relu12(LOGICAL,67)@106 + 1
    assign oneNonZero_uid68_i_cmp11_relu12_qi = invExcXZ_uid67_i_cmp11_relu12_q | invExcYZ_uid66_i_cmp11_relu12_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneNonZero_uid68_i_cmp11_relu12_delay ( .xin(oneNonZero_uid68_i_cmp11_relu12_qi), .xout(oneNonZero_uid68_i_cmp11_relu12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // two_uid60_i_cmp11_relu12(CONSTANT,59)
    assign two_uid60_i_cmp11_relu12_q = $unsigned(2'b10);

    // signX_uid58_i_cmp11_relu12(BITSELECT,57)@106
    assign signX_uid58_i_cmp11_relu12_b = $unsigned(redist1_sync_together8_aunroll_x_in_c0_eni183_1_tpl_1_q[31:31]);

    // signY_uid59_i_cmp11_relu12(BITSELECT,58)@106
    assign signY_uid59_i_cmp11_relu12_b = $unsigned(c_float_0_000000e_006_q[31:31]);

    // concSXSY_uid61_i_cmp11_relu12(BITJOIN,60)@106
    assign concSXSY_uid61_i_cmp11_relu12_q = {signX_uid58_i_cmp11_relu12_b, signY_uid59_i_cmp11_relu12_b};

    // sxLTsy_uid62_i_cmp11_relu12(LOGICAL,61)@106 + 1
    assign sxLTsy_uid62_i_cmp11_relu12_qi = $unsigned(concSXSY_uid61_i_cmp11_relu12_q == two_uid60_i_cmp11_relu12_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sxLTsy_uid62_i_cmp11_relu12_delay ( .xin(sxLTsy_uid62_i_cmp11_relu12_qi), .xout(sxLTsy_uid62_i_cmp11_relu12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rc2_uid69_i_cmp11_relu12(LOGICAL,68)@107
    assign rc2_uid69_i_cmp11_relu12_q = sxLTsy_uid62_i_cmp11_relu12_q & oneNonZero_uid68_i_cmp11_relu12_q;

    // expFracX_uid49_i_cmp11_relu12(BITJOIN,48)@105
    assign expFracX_uid49_i_cmp11_relu12_q = {exp_x_uid13_i_cmp11_relu12_b, frac_x_uid14_i_cmp11_relu12_b};

    // expFracY_uid51_i_cmp11_relu12(BITJOIN,50)@105
    assign expFracY_uid51_i_cmp11_relu12_q = {exp_y_uid30_i_cmp11_relu12_b, frac_y_uid31_i_cmp11_relu12_b};

    // efxGTefy_uid53_i_cmp11_relu12(COMPARE,52)@105 + 1
    assign efxGTefy_uid53_i_cmp11_relu12_a = {2'b00, expFracY_uid51_i_cmp11_relu12_q};
    assign efxGTefy_uid53_i_cmp11_relu12_b = {2'b00, expFracX_uid49_i_cmp11_relu12_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            efxGTefy_uid53_i_cmp11_relu12_o <= 33'b0;
        end
        else
        begin
            efxGTefy_uid53_i_cmp11_relu12_o <= $unsigned(efxGTefy_uid53_i_cmp11_relu12_a) - $unsigned(efxGTefy_uid53_i_cmp11_relu12_b);
        end
    end
    assign efxGTefy_uid53_i_cmp11_relu12_c[0] = efxGTefy_uid53_i_cmp11_relu12_o[32];

    // efxLTefy_uid54_i_cmp11_relu12(COMPARE,53)@105 + 1
    assign efxLTefy_uid54_i_cmp11_relu12_a = {2'b00, expFracX_uid49_i_cmp11_relu12_q};
    assign efxLTefy_uid54_i_cmp11_relu12_b = {2'b00, expFracY_uid51_i_cmp11_relu12_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            efxLTefy_uid54_i_cmp11_relu12_o <= 33'b0;
        end
        else
        begin
            efxLTefy_uid54_i_cmp11_relu12_o <= $unsigned(efxLTefy_uid54_i_cmp11_relu12_a) - $unsigned(efxLTefy_uid54_i_cmp11_relu12_b);
        end
    end
    assign efxLTefy_uid54_i_cmp11_relu12_c[0] = efxLTefy_uid54_i_cmp11_relu12_o[32];

    // expFracCompMux_uid65_i_cmp11_relu12(MUX,64)@106
    assign expFracCompMux_uid65_i_cmp11_relu12_s = signX_uid58_i_cmp11_relu12_b;
    always @(expFracCompMux_uid65_i_cmp11_relu12_s or efxLTefy_uid54_i_cmp11_relu12_c or efxGTefy_uid53_i_cmp11_relu12_c)
    begin
        unique case (expFracCompMux_uid65_i_cmp11_relu12_s)
            1'b0 : expFracCompMux_uid65_i_cmp11_relu12_q = efxLTefy_uid54_i_cmp11_relu12_c;
            1'b1 : expFracCompMux_uid65_i_cmp11_relu12_q = efxGTefy_uid53_i_cmp11_relu12_c;
            default : expFracCompMux_uid65_i_cmp11_relu12_q = 1'b0;
        endcase
    end

    // xorSigns_uid63_i_cmp11_relu12(LOGICAL,62)@106
    assign xorSigns_uid63_i_cmp11_relu12_q = signX_uid58_i_cmp11_relu12_b ^ signY_uid59_i_cmp11_relu12_b;

    // sxEQsy_uid64_i_cmp11_relu12(LOGICAL,63)@106
    assign sxEQsy_uid64_i_cmp11_relu12_q = ~ (xorSigns_uid63_i_cmp11_relu12_q);

    // sxEQsyExpFracCompMux_uid70_i_cmp11_relu12(LOGICAL,69)@106 + 1
    assign sxEQsyExpFracCompMux_uid70_i_cmp11_relu12_qi = sxEQsy_uid64_i_cmp11_relu12_q & expFracCompMux_uid65_i_cmp11_relu12_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sxEQsyExpFracCompMux_uid70_i_cmp11_relu12_delay ( .xin(sxEQsyExpFracCompMux_uid70_i_cmp11_relu12_qi), .xout(sxEQsyExpFracCompMux_uid70_i_cmp11_relu12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // r_uid71_i_cmp11_relu12(LOGICAL,70)@107 + 1
    assign r_uid71_i_cmp11_relu12_qi = sxEQsyExpFracCompMux_uid70_i_cmp11_relu12_q | rc2_uid69_i_cmp11_relu12_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid71_i_cmp11_relu12_delay ( .xin(r_uid71_i_cmp11_relu12_qi), .xout(r_uid71_i_cmp11_relu12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid35_i_cmp11_relu12(LOGICAL,34)@106
    assign fracXIsNotZero_uid35_i_cmp11_relu12_q = ~ (fracXIsZero_uid34_i_cmp11_relu12_q);

    // cstAllOWE_uid10_i_cmp11_relu12(CONSTANT,9)
    assign cstAllOWE_uid10_i_cmp11_relu12_q = $unsigned(8'b11111111);

    // expXIsMax_uid33_i_cmp11_relu12(LOGICAL,32)@105 + 1
    assign expXIsMax_uid33_i_cmp11_relu12_qi = $unsigned(exp_y_uid30_i_cmp11_relu12_b == cstAllOWE_uid10_i_cmp11_relu12_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid33_i_cmp11_relu12_delay ( .xin(expXIsMax_uid33_i_cmp11_relu12_qi), .xout(expXIsMax_uid33_i_cmp11_relu12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excN_y_uid38_i_cmp11_relu12(LOGICAL,37)@106
    assign excN_y_uid38_i_cmp11_relu12_q = expXIsMax_uid33_i_cmp11_relu12_q & fracXIsNotZero_uid35_i_cmp11_relu12_q;

    // fracXIsNotZero_uid18_i_cmp11_relu12(LOGICAL,17)@106
    assign fracXIsNotZero_uid18_i_cmp11_relu12_q = ~ (fracXIsZero_uid17_i_cmp11_relu12_q);

    // expXIsMax_uid16_i_cmp11_relu12(LOGICAL,15)@105 + 1
    assign expXIsMax_uid16_i_cmp11_relu12_qi = $unsigned(exp_x_uid13_i_cmp11_relu12_b == cstAllOWE_uid10_i_cmp11_relu12_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid16_i_cmp11_relu12_delay ( .xin(expXIsMax_uid16_i_cmp11_relu12_qi), .xout(expXIsMax_uid16_i_cmp11_relu12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excN_x_uid21_i_cmp11_relu12(LOGICAL,20)@106
    assign excN_x_uid21_i_cmp11_relu12_q = expXIsMax_uid16_i_cmp11_relu12_q & fracXIsNotZero_uid18_i_cmp11_relu12_q;

    // oneIsNaN_uid44_i_cmp11_relu12(LOGICAL,43)@106 + 1
    assign oneIsNaN_uid44_i_cmp11_relu12_qi = excN_x_uid21_i_cmp11_relu12_q | excN_y_uid38_i_cmp11_relu12_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid44_i_cmp11_relu12_delay ( .xin(oneIsNaN_uid44_i_cmp11_relu12_qi), .xout(oneIsNaN_uid44_i_cmp11_relu12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist0_oneIsNaN_uid44_i_cmp11_relu12_q_2(DELAY,73)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_oneIsNaN_uid44_i_cmp11_relu12_q_2_q <= '0;
        end
        else
        begin
            redist0_oneIsNaN_uid44_i_cmp11_relu12_q_2_q <= $unsigned(oneIsNaN_uid44_i_cmp11_relu12_q);
        end
    end

    // rPostExc_uid72_i_cmp11_relu12(MUX,71)@108
    assign rPostExc_uid72_i_cmp11_relu12_s = redist0_oneIsNaN_uid44_i_cmp11_relu12_q_2_q;
    always @(rPostExc_uid72_i_cmp11_relu12_s or r_uid71_i_cmp11_relu12_q or GND_q)
    begin
        unique case (rPostExc_uid72_i_cmp11_relu12_s)
            1'b0 : rPostExc_uid72_i_cmp11_relu12_q = r_uid71_i_cmp11_relu12_q;
            1'b1 : rPostExc_uid72_i_cmp11_relu12_q = GND_q;
            default : rPostExc_uid72_i_cmp11_relu12_q = 1'b0;
        endcase
    end

    // i_unnamed_relu13(MUX,7)@108
    assign i_unnamed_relu13_s = rPostExc_uid72_i_cmp11_relu12_q;
    always @(i_unnamed_relu13_s or redist2_sync_together8_aunroll_x_in_c0_eni183_1_tpl_3_q or c_float_0_000000e_006_q)
    begin
        unique case (i_unnamed_relu13_s)
            1'b0 : i_unnamed_relu13_q = redist2_sync_together8_aunroll_x_in_c0_eni183_1_tpl_3_q;
            1'b1 : i_unnamed_relu13_q = c_float_0_000000e_006_q;
            default : i_unnamed_relu13_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,2)@108
    assign out_c0_exi186_0_tpl = GND_q;
    assign out_c0_exi186_1_tpl = i_unnamed_relu13_q;
    assign out_o_valid = redist3_sync_together8_aunroll_x_in_i_valid_3_q;
    assign out_unnamed_relu11 = GND_q;

endmodule
