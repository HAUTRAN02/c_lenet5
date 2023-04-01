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

// SystemVerilog created from relu1_B4_merge
// Created for function/kernel relu1
// SystemVerilog created on Sat Apr  1 13:10:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module relu1_B4_merge (
    input wire [0:0] in_exitcond551_0,
    input wire [0:0] in_exitcond551_1,
    input wire [0:0] in_exitcond827_pop1655_0,
    input wire [0:0] in_exitcond827_pop1655_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_i_018_pop1453_0,
    input wire [31:0] in_i_018_pop1453_1,
    input wire [31:0] in_k_019_pop1131_pop1857_0,
    input wire [31:0] in_k_019_pop1131_pop1857_1,
    input wire [0:0] in_memdep_phi1_pop1554_0,
    input wire [0:0] in_memdep_phi1_pop1554_1,
    input wire [0:0] in_memdep_phi2_pop1233_pop1958_0,
    input wire [0:0] in_memdep_phi2_pop1233_pop1958_1,
    input wire [0:0] in_notcmp1152_0,
    input wire [0:0] in_notcmp1152_1,
    input wire [0:0] in_notcmp1629_pop1756_0,
    input wire [0:0] in_notcmp1629_pop1756_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond551,
    output wire [0:0] out_exitcond827_pop1655,
    output wire [0:0] out_forked,
    output wire [31:0] out_i_018_pop1453,
    output wire [31:0] out_k_019_pop1131_pop1857,
    output wire [0:0] out_memdep_phi1_pop1554,
    output wire [0:0] out_memdep_phi2_pop1233_pop1958,
    output wire [0:0] out_notcmp1152,
    output wire [0:0] out_notcmp1629_pop1756,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond551_mux_s;
    reg [0:0] exitcond551_mux_q;
    wire [0:0] exitcond827_pop1655_mux_s;
    reg [0:0] exitcond827_pop1655_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] i_018_pop1453_mux_s;
    reg [31:0] i_018_pop1453_mux_q;
    wire [0:0] k_019_pop1131_pop1857_mux_s;
    reg [31:0] k_019_pop1131_pop1857_mux_q;
    wire [0:0] memdep_phi1_pop1554_mux_s;
    reg [0:0] memdep_phi1_pop1554_mux_q;
    wire [0:0] memdep_phi2_pop1233_pop1958_mux_s;
    reg [0:0] memdep_phi2_pop1233_pop1958_mux_q;
    wire [0:0] notcmp1152_mux_s;
    reg [0:0] notcmp1152_mux_q;
    wire [0:0] notcmp1629_pop1756_mux_s;
    reg [0:0] notcmp1629_pop1756_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond551_mux(MUX,2)
    assign exitcond551_mux_s = in_valid_in_0;
    always @(exitcond551_mux_s or in_exitcond551_1 or in_exitcond551_0)
    begin
        unique case (exitcond551_mux_s)
            1'b0 : exitcond551_mux_q = in_exitcond551_1;
            1'b1 : exitcond551_mux_q = in_exitcond551_0;
            default : exitcond551_mux_q = 1'b0;
        endcase
    end

    // out_exitcond551(GPOUT,32)
    assign out_exitcond551 = exitcond551_mux_q;

    // exitcond827_pop1655_mux(MUX,3)
    assign exitcond827_pop1655_mux_s = in_valid_in_0;
    always @(exitcond827_pop1655_mux_s or in_exitcond827_pop1655_1 or in_exitcond827_pop1655_0)
    begin
        unique case (exitcond827_pop1655_mux_s)
            1'b0 : exitcond827_pop1655_mux_q = in_exitcond827_pop1655_1;
            1'b1 : exitcond827_pop1655_mux_q = in_exitcond827_pop1655_0;
            default : exitcond827_pop1655_mux_q = 1'b0;
        endcase
    end

    // out_exitcond827_pop1655(GPOUT,33)
    assign out_exitcond827_pop1655 = exitcond827_pop1655_mux_q;

    // forked_mux(MUX,4)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,34)
    assign out_forked = forked_mux_q;

    // i_018_pop1453_mux(MUX,5)
    assign i_018_pop1453_mux_s = in_valid_in_0;
    always @(i_018_pop1453_mux_s or in_i_018_pop1453_1 or in_i_018_pop1453_0)
    begin
        unique case (i_018_pop1453_mux_s)
            1'b0 : i_018_pop1453_mux_q = in_i_018_pop1453_1;
            1'b1 : i_018_pop1453_mux_q = in_i_018_pop1453_0;
            default : i_018_pop1453_mux_q = 32'b0;
        endcase
    end

    // out_i_018_pop1453(GPOUT,35)
    assign out_i_018_pop1453 = i_018_pop1453_mux_q;

    // k_019_pop1131_pop1857_mux(MUX,27)
    assign k_019_pop1131_pop1857_mux_s = in_valid_in_0;
    always @(k_019_pop1131_pop1857_mux_s or in_k_019_pop1131_pop1857_1 or in_k_019_pop1131_pop1857_0)
    begin
        unique case (k_019_pop1131_pop1857_mux_s)
            1'b0 : k_019_pop1131_pop1857_mux_q = in_k_019_pop1131_pop1857_1;
            1'b1 : k_019_pop1131_pop1857_mux_q = in_k_019_pop1131_pop1857_0;
            default : k_019_pop1131_pop1857_mux_q = 32'b0;
        endcase
    end

    // out_k_019_pop1131_pop1857(GPOUT,36)
    assign out_k_019_pop1131_pop1857 = k_019_pop1131_pop1857_mux_q;

    // memdep_phi1_pop1554_mux(MUX,28)
    assign memdep_phi1_pop1554_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1554_mux_s or in_memdep_phi1_pop1554_1 or in_memdep_phi1_pop1554_0)
    begin
        unique case (memdep_phi1_pop1554_mux_s)
            1'b0 : memdep_phi1_pop1554_mux_q = in_memdep_phi1_pop1554_1;
            1'b1 : memdep_phi1_pop1554_mux_q = in_memdep_phi1_pop1554_0;
            default : memdep_phi1_pop1554_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1554(GPOUT,37)
    assign out_memdep_phi1_pop1554 = memdep_phi1_pop1554_mux_q;

    // memdep_phi2_pop1233_pop1958_mux(MUX,29)
    assign memdep_phi2_pop1233_pop1958_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop1233_pop1958_mux_s or in_memdep_phi2_pop1233_pop1958_1 or in_memdep_phi2_pop1233_pop1958_0)
    begin
        unique case (memdep_phi2_pop1233_pop1958_mux_s)
            1'b0 : memdep_phi2_pop1233_pop1958_mux_q = in_memdep_phi2_pop1233_pop1958_1;
            1'b1 : memdep_phi2_pop1233_pop1958_mux_q = in_memdep_phi2_pop1233_pop1958_0;
            default : memdep_phi2_pop1233_pop1958_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop1233_pop1958(GPOUT,38)
    assign out_memdep_phi2_pop1233_pop1958 = memdep_phi2_pop1233_pop1958_mux_q;

    // notcmp1152_mux(MUX,30)
    assign notcmp1152_mux_s = in_valid_in_0;
    always @(notcmp1152_mux_s or in_notcmp1152_1 or in_notcmp1152_0)
    begin
        unique case (notcmp1152_mux_s)
            1'b0 : notcmp1152_mux_q = in_notcmp1152_1;
            1'b1 : notcmp1152_mux_q = in_notcmp1152_0;
            default : notcmp1152_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1152(GPOUT,39)
    assign out_notcmp1152 = notcmp1152_mux_q;

    // notcmp1629_pop1756_mux(MUX,31)
    assign notcmp1629_pop1756_mux_s = in_valid_in_0;
    always @(notcmp1629_pop1756_mux_s or in_notcmp1629_pop1756_1 or in_notcmp1629_pop1756_0)
    begin
        unique case (notcmp1629_pop1756_mux_s)
            1'b0 : notcmp1629_pop1756_mux_q = in_notcmp1629_pop1756_1;
            1'b1 : notcmp1629_pop1756_mux_q = in_notcmp1629_pop1756_0;
            default : notcmp1629_pop1756_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1629_pop1756(GPOUT,40)
    assign out_notcmp1629_pop1756 = notcmp1629_pop1756_mux_q;

    // valid_or(LOGICAL,46)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,44)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,41)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,45)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,42)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,43)
    assign out_valid_out = valid_or_q;

endmodule
