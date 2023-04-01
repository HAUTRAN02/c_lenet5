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

// SystemVerilog created from avgpooling1_B3_merge
// Created for function/kernel avgpooling1
// SystemVerilog created on Sat Apr  1 13:10:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpooling1_B3_merge (
    input wire [0:0] in_exitcond1443_0,
    input wire [0:0] in_exitcond1443_1,
    input wire [0:0] in_forked30_0,
    input wire [0:0] in_forked30_1,
    input wire [0:0] in_memdep_phi2_pop1252_0,
    input wire [0:0] in_memdep_phi2_pop1252_1,
    input wire [31:0] in_n_channel_027_pop1149_0,
    input wire [31:0] in_n_channel_027_pop1149_1,
    input wire [0:0] in_notcmp2046_0,
    input wire [0:0] in_notcmp2046_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond1443,
    output wire [0:0] out_forked30,
    output wire [0:0] out_memdep_phi2_pop1252,
    output wire [31:0] out_n_channel_027_pop1149,
    output wire [0:0] out_notcmp2046,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond1443_mux_s;
    reg [0:0] exitcond1443_mux_q;
    wire [0:0] forked30_mux_s;
    reg [0:0] forked30_mux_q;
    wire [0:0] memdep_phi2_pop1252_mux_s;
    reg [0:0] memdep_phi2_pop1252_mux_q;
    wire [0:0] n_channel_027_pop1149_mux_s;
    reg [31:0] n_channel_027_pop1149_mux_q;
    wire [0:0] notcmp2046_mux_s;
    reg [0:0] notcmp2046_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond1443_mux(MUX,2)
    assign exitcond1443_mux_s = in_valid_in_0;
    always @(exitcond1443_mux_s or in_exitcond1443_1 or in_exitcond1443_0)
    begin
        unique case (exitcond1443_mux_s)
            1'b0 : exitcond1443_mux_q = in_exitcond1443_1;
            1'b1 : exitcond1443_mux_q = in_exitcond1443_0;
            default : exitcond1443_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1443(GPOUT,20)
    assign out_exitcond1443 = exitcond1443_mux_q;

    // forked30_mux(MUX,3)
    assign forked30_mux_s = in_valid_in_0;
    always @(forked30_mux_s or in_forked30_1 or in_forked30_0)
    begin
        unique case (forked30_mux_s)
            1'b0 : forked30_mux_q = in_forked30_1;
            1'b1 : forked30_mux_q = in_forked30_0;
            default : forked30_mux_q = 1'b0;
        endcase
    end

    // out_forked30(GPOUT,21)
    assign out_forked30 = forked30_mux_q;

    // memdep_phi2_pop1252_mux(MUX,17)
    assign memdep_phi2_pop1252_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop1252_mux_s or in_memdep_phi2_pop1252_1 or in_memdep_phi2_pop1252_0)
    begin
        unique case (memdep_phi2_pop1252_mux_s)
            1'b0 : memdep_phi2_pop1252_mux_q = in_memdep_phi2_pop1252_1;
            1'b1 : memdep_phi2_pop1252_mux_q = in_memdep_phi2_pop1252_0;
            default : memdep_phi2_pop1252_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop1252(GPOUT,22)
    assign out_memdep_phi2_pop1252 = memdep_phi2_pop1252_mux_q;

    // n_channel_027_pop1149_mux(MUX,18)
    assign n_channel_027_pop1149_mux_s = in_valid_in_0;
    always @(n_channel_027_pop1149_mux_s or in_n_channel_027_pop1149_1 or in_n_channel_027_pop1149_0)
    begin
        unique case (n_channel_027_pop1149_mux_s)
            1'b0 : n_channel_027_pop1149_mux_q = in_n_channel_027_pop1149_1;
            1'b1 : n_channel_027_pop1149_mux_q = in_n_channel_027_pop1149_0;
            default : n_channel_027_pop1149_mux_q = 32'b0;
        endcase
    end

    // out_n_channel_027_pop1149(GPOUT,23)
    assign out_n_channel_027_pop1149 = n_channel_027_pop1149_mux_q;

    // notcmp2046_mux(MUX,19)
    assign notcmp2046_mux_s = in_valid_in_0;
    always @(notcmp2046_mux_s or in_notcmp2046_1 or in_notcmp2046_0)
    begin
        unique case (notcmp2046_mux_s)
            1'b0 : notcmp2046_mux_q = in_notcmp2046_1;
            1'b1 : notcmp2046_mux_q = in_notcmp2046_0;
            default : notcmp2046_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2046(GPOUT,24)
    assign out_notcmp2046 = notcmp2046_mux_q;

    // valid_or(LOGICAL,30)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,28)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,25)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,29)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,26)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,27)
    assign out_valid_out = valid_or_q;

endmodule
