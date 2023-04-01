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

// SystemVerilog created from conv1_B3_merge
// Created for function/kernel conv1
// SystemVerilog created on Sat Apr  1 13:10:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv1_B3_merge (
    input wire [31:0] in_channel_029_pop1151_0,
    input wire [31:0] in_channel_029_pop1151_1,
    input wire [0:0] in_exitcond1245_0,
    input wire [0:0] in_exitcond1245_1,
    input wire [0:0] in_forked32_0,
    input wire [0:0] in_forked32_1,
    input wire [0:0] in_memdep_phi2_pop1254_0,
    input wire [0:0] in_memdep_phi2_pop1254_1,
    input wire [0:0] in_notcmp2248_0,
    input wire [0:0] in_notcmp2248_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_channel_029_pop1151,
    output wire [0:0] out_exitcond1245,
    output wire [0:0] out_forked32,
    output wire [0:0] out_memdep_phi2_pop1254,
    output wire [0:0] out_notcmp2248,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] channel_029_pop1151_mux_s;
    reg [31:0] channel_029_pop1151_mux_q;
    wire [0:0] exitcond1245_mux_s;
    reg [0:0] exitcond1245_mux_q;
    wire [0:0] forked32_mux_s;
    reg [0:0] forked32_mux_q;
    wire [0:0] memdep_phi2_pop1254_mux_s;
    reg [0:0] memdep_phi2_pop1254_mux_q;
    wire [0:0] notcmp2248_mux_s;
    reg [0:0] notcmp2248_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // channel_029_pop1151_mux(MUX,2)
    assign channel_029_pop1151_mux_s = in_valid_in_0;
    always @(channel_029_pop1151_mux_s or in_channel_029_pop1151_1 or in_channel_029_pop1151_0)
    begin
        unique case (channel_029_pop1151_mux_s)
            1'b0 : channel_029_pop1151_mux_q = in_channel_029_pop1151_1;
            1'b1 : channel_029_pop1151_mux_q = in_channel_029_pop1151_0;
            default : channel_029_pop1151_mux_q = 32'b0;
        endcase
    end

    // out_channel_029_pop1151(GPOUT,20)
    assign out_channel_029_pop1151 = channel_029_pop1151_mux_q;

    // exitcond1245_mux(MUX,3)
    assign exitcond1245_mux_s = in_valid_in_0;
    always @(exitcond1245_mux_s or in_exitcond1245_1 or in_exitcond1245_0)
    begin
        unique case (exitcond1245_mux_s)
            1'b0 : exitcond1245_mux_q = in_exitcond1245_1;
            1'b1 : exitcond1245_mux_q = in_exitcond1245_0;
            default : exitcond1245_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1245(GPOUT,21)
    assign out_exitcond1245 = exitcond1245_mux_q;

    // forked32_mux(MUX,4)
    assign forked32_mux_s = in_valid_in_0;
    always @(forked32_mux_s or in_forked32_1 or in_forked32_0)
    begin
        unique case (forked32_mux_s)
            1'b0 : forked32_mux_q = in_forked32_1;
            1'b1 : forked32_mux_q = in_forked32_0;
            default : forked32_mux_q = 1'b0;
        endcase
    end

    // out_forked32(GPOUT,22)
    assign out_forked32 = forked32_mux_q;

    // memdep_phi2_pop1254_mux(MUX,18)
    assign memdep_phi2_pop1254_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop1254_mux_s or in_memdep_phi2_pop1254_1 or in_memdep_phi2_pop1254_0)
    begin
        unique case (memdep_phi2_pop1254_mux_s)
            1'b0 : memdep_phi2_pop1254_mux_q = in_memdep_phi2_pop1254_1;
            1'b1 : memdep_phi2_pop1254_mux_q = in_memdep_phi2_pop1254_0;
            default : memdep_phi2_pop1254_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop1254(GPOUT,23)
    assign out_memdep_phi2_pop1254 = memdep_phi2_pop1254_mux_q;

    // notcmp2248_mux(MUX,19)
    assign notcmp2248_mux_s = in_valid_in_0;
    always @(notcmp2248_mux_s or in_notcmp2248_1 or in_notcmp2248_0)
    begin
        unique case (notcmp2248_mux_s)
            1'b0 : notcmp2248_mux_q = in_notcmp2248_1;
            1'b1 : notcmp2248_mux_q = in_notcmp2248_0;
            default : notcmp2248_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2248(GPOUT,24)
    assign out_notcmp2248 = notcmp2248_mux_q;

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
