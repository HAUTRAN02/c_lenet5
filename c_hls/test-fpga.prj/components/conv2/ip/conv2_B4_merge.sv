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

// SystemVerilog created from conv2_B4_merge
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_B4_merge (
    input wire [31:0] in_channel_039_pop17166_0,
    input wire [31:0] in_channel_039_pop17166_1,
    input wire [31:0] in_channel_039_pop1777_pop24218_0,
    input wire [31:0] in_channel_039_pop1777_pop24218_1,
    input wire [0:0] in_exitcond28176_0,
    input wire [0:0] in_exitcond28176_1,
    input wire [0:0] in_exitcond31148_0,
    input wire [0:0] in_exitcond31148_1,
    input wire [0:0] in_exitcond3167_pop22204_0,
    input wire [0:0] in_exitcond3167_pop22204_1,
    input wire [0:0] in_forked87_0,
    input wire [0:0] in_forked87_1,
    input wire [0:0] in_memdep_phi5_pop21197_0,
    input wire [0:0] in_memdep_phi5_pop21197_1,
    input wire [0:0] in_memdep_phi6_pop18175_0,
    input wire [0:0] in_memdep_phi6_pop18175_1,
    input wire [0:0] in_memdep_phi6_pop1882_pop25225_0,
    input wire [0:0] in_memdep_phi6_pop1882_pop25225_1,
    input wire [0:0] in_notcmp51183_0,
    input wire [0:0] in_notcmp51183_1,
    input wire [0:0] in_notcmp56157_0,
    input wire [0:0] in_notcmp56157_1,
    input wire [0:0] in_notcmp5672_pop23211_0,
    input wire [0:0] in_notcmp5672_pop23211_1,
    input wire [31:0] in_row_038_pop20190_0,
    input wire [31:0] in_row_038_pop20190_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_channel_039_pop17166,
    output wire [31:0] out_channel_039_pop1777_pop24218,
    output wire [0:0] out_exitcond28176,
    output wire [0:0] out_exitcond31148,
    output wire [0:0] out_exitcond3167_pop22204,
    output wire [0:0] out_forked87,
    output wire [0:0] out_memdep_phi5_pop21197,
    output wire [0:0] out_memdep_phi6_pop18175,
    output wire [0:0] out_memdep_phi6_pop1882_pop25225,
    output wire [0:0] out_notcmp51183,
    output wire [0:0] out_notcmp56157,
    output wire [0:0] out_notcmp5672_pop23211,
    output wire [31:0] out_row_038_pop20190,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] channel_039_pop17166_mux_s;
    reg [31:0] channel_039_pop17166_mux_q;
    wire [0:0] channel_039_pop1777_pop24218_mux_s;
    reg [31:0] channel_039_pop1777_pop24218_mux_q;
    wire [0:0] exitcond28176_mux_s;
    reg [0:0] exitcond28176_mux_q;
    wire [0:0] exitcond31148_mux_s;
    reg [0:0] exitcond31148_mux_q;
    wire [0:0] exitcond3167_pop22204_mux_s;
    reg [0:0] exitcond3167_pop22204_mux_q;
    wire [0:0] forked87_mux_s;
    reg [0:0] forked87_mux_q;
    wire [0:0] memdep_phi5_pop21197_mux_s;
    reg [0:0] memdep_phi5_pop21197_mux_q;
    wire [0:0] memdep_phi6_pop18175_mux_s;
    reg [0:0] memdep_phi6_pop18175_mux_q;
    wire [0:0] memdep_phi6_pop1882_pop25225_mux_s;
    reg [0:0] memdep_phi6_pop1882_pop25225_mux_q;
    wire [0:0] notcmp51183_mux_s;
    reg [0:0] notcmp51183_mux_q;
    wire [0:0] notcmp56157_mux_s;
    reg [0:0] notcmp56157_mux_q;
    wire [0:0] notcmp5672_pop23211_mux_s;
    reg [0:0] notcmp5672_pop23211_mux_q;
    wire [0:0] row_038_pop20190_mux_s;
    reg [31:0] row_038_pop20190_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // channel_039_pop17166_mux(MUX,2)
    assign channel_039_pop17166_mux_s = in_valid_in_0;
    always @(channel_039_pop17166_mux_s or in_channel_039_pop17166_1 or in_channel_039_pop17166_0)
    begin
        unique case (channel_039_pop17166_mux_s)
            1'b0 : channel_039_pop17166_mux_q = in_channel_039_pop17166_1;
            1'b1 : channel_039_pop17166_mux_q = in_channel_039_pop17166_0;
            default : channel_039_pop17166_mux_q = 32'b0;
        endcase
    end

    // out_channel_039_pop17166(GPOUT,43)
    assign out_channel_039_pop17166 = channel_039_pop17166_mux_q;

    // channel_039_pop1777_pop24218_mux(MUX,3)
    assign channel_039_pop1777_pop24218_mux_s = in_valid_in_0;
    always @(channel_039_pop1777_pop24218_mux_s or in_channel_039_pop1777_pop24218_1 or in_channel_039_pop1777_pop24218_0)
    begin
        unique case (channel_039_pop1777_pop24218_mux_s)
            1'b0 : channel_039_pop1777_pop24218_mux_q = in_channel_039_pop1777_pop24218_1;
            1'b1 : channel_039_pop1777_pop24218_mux_q = in_channel_039_pop1777_pop24218_0;
            default : channel_039_pop1777_pop24218_mux_q = 32'b0;
        endcase
    end

    // out_channel_039_pop1777_pop24218(GPOUT,44)
    assign out_channel_039_pop1777_pop24218 = channel_039_pop1777_pop24218_mux_q;

    // exitcond28176_mux(MUX,4)
    assign exitcond28176_mux_s = in_valid_in_0;
    always @(exitcond28176_mux_s or in_exitcond28176_1 or in_exitcond28176_0)
    begin
        unique case (exitcond28176_mux_s)
            1'b0 : exitcond28176_mux_q = in_exitcond28176_1;
            1'b1 : exitcond28176_mux_q = in_exitcond28176_0;
            default : exitcond28176_mux_q = 1'b0;
        endcase
    end

    // out_exitcond28176(GPOUT,45)
    assign out_exitcond28176 = exitcond28176_mux_q;

    // exitcond31148_mux(MUX,5)
    assign exitcond31148_mux_s = in_valid_in_0;
    always @(exitcond31148_mux_s or in_exitcond31148_1 or in_exitcond31148_0)
    begin
        unique case (exitcond31148_mux_s)
            1'b0 : exitcond31148_mux_q = in_exitcond31148_1;
            1'b1 : exitcond31148_mux_q = in_exitcond31148_0;
            default : exitcond31148_mux_q = 1'b0;
        endcase
    end

    // out_exitcond31148(GPOUT,46)
    assign out_exitcond31148 = exitcond31148_mux_q;

    // exitcond3167_pop22204_mux(MUX,6)
    assign exitcond3167_pop22204_mux_s = in_valid_in_0;
    always @(exitcond3167_pop22204_mux_s or in_exitcond3167_pop22204_1 or in_exitcond3167_pop22204_0)
    begin
        unique case (exitcond3167_pop22204_mux_s)
            1'b0 : exitcond3167_pop22204_mux_q = in_exitcond3167_pop22204_1;
            1'b1 : exitcond3167_pop22204_mux_q = in_exitcond3167_pop22204_0;
            default : exitcond3167_pop22204_mux_q = 1'b0;
        endcase
    end

    // out_exitcond3167_pop22204(GPOUT,47)
    assign out_exitcond3167_pop22204 = exitcond3167_pop22204_mux_q;

    // forked87_mux(MUX,7)
    assign forked87_mux_s = in_valid_in_0;
    always @(forked87_mux_s or in_forked87_1 or in_forked87_0)
    begin
        unique case (forked87_mux_s)
            1'b0 : forked87_mux_q = in_forked87_1;
            1'b1 : forked87_mux_q = in_forked87_0;
            default : forked87_mux_q = 1'b0;
        endcase
    end

    // out_forked87(GPOUT,48)
    assign out_forked87 = forked87_mux_q;

    // memdep_phi5_pop21197_mux(MUX,37)
    assign memdep_phi5_pop21197_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop21197_mux_s or in_memdep_phi5_pop21197_1 or in_memdep_phi5_pop21197_0)
    begin
        unique case (memdep_phi5_pop21197_mux_s)
            1'b0 : memdep_phi5_pop21197_mux_q = in_memdep_phi5_pop21197_1;
            1'b1 : memdep_phi5_pop21197_mux_q = in_memdep_phi5_pop21197_0;
            default : memdep_phi5_pop21197_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop21197(GPOUT,49)
    assign out_memdep_phi5_pop21197 = memdep_phi5_pop21197_mux_q;

    // memdep_phi6_pop18175_mux(MUX,38)
    assign memdep_phi6_pop18175_mux_s = in_valid_in_0;
    always @(memdep_phi6_pop18175_mux_s or in_memdep_phi6_pop18175_1 or in_memdep_phi6_pop18175_0)
    begin
        unique case (memdep_phi6_pop18175_mux_s)
            1'b0 : memdep_phi6_pop18175_mux_q = in_memdep_phi6_pop18175_1;
            1'b1 : memdep_phi6_pop18175_mux_q = in_memdep_phi6_pop18175_0;
            default : memdep_phi6_pop18175_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi6_pop18175(GPOUT,50)
    assign out_memdep_phi6_pop18175 = memdep_phi6_pop18175_mux_q;

    // memdep_phi6_pop1882_pop25225_mux(MUX,39)
    assign memdep_phi6_pop1882_pop25225_mux_s = in_valid_in_0;
    always @(memdep_phi6_pop1882_pop25225_mux_s or in_memdep_phi6_pop1882_pop25225_1 or in_memdep_phi6_pop1882_pop25225_0)
    begin
        unique case (memdep_phi6_pop1882_pop25225_mux_s)
            1'b0 : memdep_phi6_pop1882_pop25225_mux_q = in_memdep_phi6_pop1882_pop25225_1;
            1'b1 : memdep_phi6_pop1882_pop25225_mux_q = in_memdep_phi6_pop1882_pop25225_0;
            default : memdep_phi6_pop1882_pop25225_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi6_pop1882_pop25225(GPOUT,51)
    assign out_memdep_phi6_pop1882_pop25225 = memdep_phi6_pop1882_pop25225_mux_q;

    // notcmp51183_mux(MUX,40)
    assign notcmp51183_mux_s = in_valid_in_0;
    always @(notcmp51183_mux_s or in_notcmp51183_1 or in_notcmp51183_0)
    begin
        unique case (notcmp51183_mux_s)
            1'b0 : notcmp51183_mux_q = in_notcmp51183_1;
            1'b1 : notcmp51183_mux_q = in_notcmp51183_0;
            default : notcmp51183_mux_q = 1'b0;
        endcase
    end

    // out_notcmp51183(GPOUT,52)
    assign out_notcmp51183 = notcmp51183_mux_q;

    // notcmp56157_mux(MUX,41)
    assign notcmp56157_mux_s = in_valid_in_0;
    always @(notcmp56157_mux_s or in_notcmp56157_1 or in_notcmp56157_0)
    begin
        unique case (notcmp56157_mux_s)
            1'b0 : notcmp56157_mux_q = in_notcmp56157_1;
            1'b1 : notcmp56157_mux_q = in_notcmp56157_0;
            default : notcmp56157_mux_q = 1'b0;
        endcase
    end

    // out_notcmp56157(GPOUT,53)
    assign out_notcmp56157 = notcmp56157_mux_q;

    // notcmp5672_pop23211_mux(MUX,42)
    assign notcmp5672_pop23211_mux_s = in_valid_in_0;
    always @(notcmp5672_pop23211_mux_s or in_notcmp5672_pop23211_1 or in_notcmp5672_pop23211_0)
    begin
        unique case (notcmp5672_pop23211_mux_s)
            1'b0 : notcmp5672_pop23211_mux_q = in_notcmp5672_pop23211_1;
            1'b1 : notcmp5672_pop23211_mux_q = in_notcmp5672_pop23211_0;
            default : notcmp5672_pop23211_mux_q = 1'b0;
        endcase
    end

    // out_notcmp5672_pop23211(GPOUT,54)
    assign out_notcmp5672_pop23211 = notcmp5672_pop23211_mux_q;

    // row_038_pop20190_mux(MUX,59)
    assign row_038_pop20190_mux_s = in_valid_in_0;
    always @(row_038_pop20190_mux_s or in_row_038_pop20190_1 or in_row_038_pop20190_0)
    begin
        unique case (row_038_pop20190_mux_s)
            1'b0 : row_038_pop20190_mux_q = in_row_038_pop20190_1;
            1'b1 : row_038_pop20190_mux_q = in_row_038_pop20190_0;
            default : row_038_pop20190_mux_q = 32'b0;
        endcase
    end

    // out_row_038_pop20190(GPOUT,55)
    assign out_row_038_pop20190 = row_038_pop20190_mux_q;

    // valid_or(LOGICAL,62)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,60)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,56)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,61)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,57)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,58)
    assign out_valid_out = valid_or_q;

endmodule
