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

// SystemVerilog created from conv2_B3_merge
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_B3_merge (
    input wire [31:0] in_channel_039_pop17158_0,
    input wire [31:0] in_channel_039_pop17158_1,
    input wire [0:0] in_exitcond31140_0,
    input wire [0:0] in_exitcond31140_1,
    input wire [0:0] in_forked66_0,
    input wire [0:0] in_forked66_1,
    input wire [0:0] in_memdep_phi6_pop18167_0,
    input wire [0:0] in_memdep_phi6_pop18167_1,
    input wire [0:0] in_notcmp56149_0,
    input wire [0:0] in_notcmp56149_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_channel_039_pop17158,
    output wire [0:0] out_exitcond31140,
    output wire [0:0] out_forked66,
    output wire [0:0] out_memdep_phi6_pop18167,
    output wire [0:0] out_notcmp56149,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] channel_039_pop17158_mux_s;
    reg [31:0] channel_039_pop17158_mux_q;
    wire [0:0] exitcond31140_mux_s;
    reg [0:0] exitcond31140_mux_q;
    wire [0:0] forked66_mux_s;
    reg [0:0] forked66_mux_q;
    wire [0:0] memdep_phi6_pop18167_mux_s;
    reg [0:0] memdep_phi6_pop18167_mux_q;
    wire [0:0] notcmp56149_mux_s;
    reg [0:0] notcmp56149_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // channel_039_pop17158_mux(MUX,2)
    assign channel_039_pop17158_mux_s = in_valid_in_0;
    always @(channel_039_pop17158_mux_s or in_channel_039_pop17158_1 or in_channel_039_pop17158_0)
    begin
        unique case (channel_039_pop17158_mux_s)
            1'b0 : channel_039_pop17158_mux_q = in_channel_039_pop17158_1;
            1'b1 : channel_039_pop17158_mux_q = in_channel_039_pop17158_0;
            default : channel_039_pop17158_mux_q = 32'b0;
        endcase
    end

    // out_channel_039_pop17158(GPOUT,20)
    assign out_channel_039_pop17158 = channel_039_pop17158_mux_q;

    // exitcond31140_mux(MUX,3)
    assign exitcond31140_mux_s = in_valid_in_0;
    always @(exitcond31140_mux_s or in_exitcond31140_1 or in_exitcond31140_0)
    begin
        unique case (exitcond31140_mux_s)
            1'b0 : exitcond31140_mux_q = in_exitcond31140_1;
            1'b1 : exitcond31140_mux_q = in_exitcond31140_0;
            default : exitcond31140_mux_q = 1'b0;
        endcase
    end

    // out_exitcond31140(GPOUT,21)
    assign out_exitcond31140 = exitcond31140_mux_q;

    // forked66_mux(MUX,4)
    assign forked66_mux_s = in_valid_in_0;
    always @(forked66_mux_s or in_forked66_1 or in_forked66_0)
    begin
        unique case (forked66_mux_s)
            1'b0 : forked66_mux_q = in_forked66_1;
            1'b1 : forked66_mux_q = in_forked66_0;
            default : forked66_mux_q = 1'b0;
        endcase
    end

    // out_forked66(GPOUT,22)
    assign out_forked66 = forked66_mux_q;

    // memdep_phi6_pop18167_mux(MUX,18)
    assign memdep_phi6_pop18167_mux_s = in_valid_in_0;
    always @(memdep_phi6_pop18167_mux_s or in_memdep_phi6_pop18167_1 or in_memdep_phi6_pop18167_0)
    begin
        unique case (memdep_phi6_pop18167_mux_s)
            1'b0 : memdep_phi6_pop18167_mux_q = in_memdep_phi6_pop18167_1;
            1'b1 : memdep_phi6_pop18167_mux_q = in_memdep_phi6_pop18167_0;
            default : memdep_phi6_pop18167_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi6_pop18167(GPOUT,23)
    assign out_memdep_phi6_pop18167 = memdep_phi6_pop18167_mux_q;

    // notcmp56149_mux(MUX,19)
    assign notcmp56149_mux_s = in_valid_in_0;
    always @(notcmp56149_mux_s or in_notcmp56149_1 or in_notcmp56149_0)
    begin
        unique case (notcmp56149_mux_s)
            1'b0 : notcmp56149_mux_q = in_notcmp56149_1;
            1'b1 : notcmp56149_mux_q = in_notcmp56149_0;
            default : notcmp56149_mux_q = 1'b0;
        endcase
    end

    // out_notcmp56149(GPOUT,24)
    assign out_notcmp56149 = notcmp56149_mux_q;

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
