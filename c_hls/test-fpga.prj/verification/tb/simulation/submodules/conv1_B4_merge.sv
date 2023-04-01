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

// SystemVerilog created from conv1_B4_merge
// Created for function/kernel conv1
// SystemVerilog created on Sat Apr  1 13:10:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv1_B4_merge (
    input wire [31:0] in_channel_029_pop1137_pop1863_0,
    input wire [31:0] in_channel_029_pop1137_pop1863_1,
    input wire [0:0] in_exitcond1233_pop1661_0,
    input wire [0:0] in_exitcond1233_pop1661_1,
    input wire [0:0] in_exitcond957_0,
    input wire [0:0] in_exitcond957_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [0:0] in_memdep_phi1_pop1560_0,
    input wire [0:0] in_memdep_phi1_pop1560_1,
    input wire [0:0] in_memdep_phi2_pop1239_pop1964_0,
    input wire [0:0] in_memdep_phi2_pop1239_pop1964_1,
    input wire [0:0] in_notcmp1758_0,
    input wire [0:0] in_notcmp1758_1,
    input wire [0:0] in_notcmp2235_pop1762_0,
    input wire [0:0] in_notcmp2235_pop1762_1,
    input wire [31:0] in_row_028_pop1459_0,
    input wire [31:0] in_row_028_pop1459_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_channel_029_pop1137_pop1863,
    output wire [0:0] out_exitcond1233_pop1661,
    output wire [0:0] out_exitcond957,
    output wire [0:0] out_forked,
    output wire [0:0] out_memdep_phi1_pop1560,
    output wire [0:0] out_memdep_phi2_pop1239_pop1964,
    output wire [0:0] out_notcmp1758,
    output wire [0:0] out_notcmp2235_pop1762,
    output wire [31:0] out_row_028_pop1459,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] channel_029_pop1137_pop1863_mux_s;
    reg [31:0] channel_029_pop1137_pop1863_mux_q;
    wire [0:0] exitcond1233_pop1661_mux_s;
    reg [0:0] exitcond1233_pop1661_mux_q;
    wire [0:0] exitcond957_mux_s;
    reg [0:0] exitcond957_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] memdep_phi1_pop1560_mux_s;
    reg [0:0] memdep_phi1_pop1560_mux_q;
    wire [0:0] memdep_phi2_pop1239_pop1964_mux_s;
    reg [0:0] memdep_phi2_pop1239_pop1964_mux_q;
    wire [0:0] notcmp1758_mux_s;
    reg [0:0] notcmp1758_mux_q;
    wire [0:0] notcmp2235_pop1762_mux_s;
    reg [0:0] notcmp2235_pop1762_mux_q;
    wire [0:0] row_028_pop1459_mux_s;
    reg [31:0] row_028_pop1459_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // channel_029_pop1137_pop1863_mux(MUX,2)
    assign channel_029_pop1137_pop1863_mux_s = in_valid_in_0;
    always @(channel_029_pop1137_pop1863_mux_s or in_channel_029_pop1137_pop1863_1 or in_channel_029_pop1137_pop1863_0)
    begin
        unique case (channel_029_pop1137_pop1863_mux_s)
            1'b0 : channel_029_pop1137_pop1863_mux_q = in_channel_029_pop1137_pop1863_1;
            1'b1 : channel_029_pop1137_pop1863_mux_q = in_channel_029_pop1137_pop1863_0;
            default : channel_029_pop1137_pop1863_mux_q = 32'b0;
        endcase
    end

    // out_channel_029_pop1137_pop1863(GPOUT,31)
    assign out_channel_029_pop1137_pop1863 = channel_029_pop1137_pop1863_mux_q;

    // exitcond1233_pop1661_mux(MUX,3)
    assign exitcond1233_pop1661_mux_s = in_valid_in_0;
    always @(exitcond1233_pop1661_mux_s or in_exitcond1233_pop1661_1 or in_exitcond1233_pop1661_0)
    begin
        unique case (exitcond1233_pop1661_mux_s)
            1'b0 : exitcond1233_pop1661_mux_q = in_exitcond1233_pop1661_1;
            1'b1 : exitcond1233_pop1661_mux_q = in_exitcond1233_pop1661_0;
            default : exitcond1233_pop1661_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1233_pop1661(GPOUT,32)
    assign out_exitcond1233_pop1661 = exitcond1233_pop1661_mux_q;

    // exitcond957_mux(MUX,4)
    assign exitcond957_mux_s = in_valid_in_0;
    always @(exitcond957_mux_s or in_exitcond957_1 or in_exitcond957_0)
    begin
        unique case (exitcond957_mux_s)
            1'b0 : exitcond957_mux_q = in_exitcond957_1;
            1'b1 : exitcond957_mux_q = in_exitcond957_0;
            default : exitcond957_mux_q = 1'b0;
        endcase
    end

    // out_exitcond957(GPOUT,33)
    assign out_exitcond957 = exitcond957_mux_q;

    // forked_mux(MUX,5)
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

    // memdep_phi1_pop1560_mux(MUX,27)
    assign memdep_phi1_pop1560_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1560_mux_s or in_memdep_phi1_pop1560_1 or in_memdep_phi1_pop1560_0)
    begin
        unique case (memdep_phi1_pop1560_mux_s)
            1'b0 : memdep_phi1_pop1560_mux_q = in_memdep_phi1_pop1560_1;
            1'b1 : memdep_phi1_pop1560_mux_q = in_memdep_phi1_pop1560_0;
            default : memdep_phi1_pop1560_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1560(GPOUT,35)
    assign out_memdep_phi1_pop1560 = memdep_phi1_pop1560_mux_q;

    // memdep_phi2_pop1239_pop1964_mux(MUX,28)
    assign memdep_phi2_pop1239_pop1964_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop1239_pop1964_mux_s or in_memdep_phi2_pop1239_pop1964_1 or in_memdep_phi2_pop1239_pop1964_0)
    begin
        unique case (memdep_phi2_pop1239_pop1964_mux_s)
            1'b0 : memdep_phi2_pop1239_pop1964_mux_q = in_memdep_phi2_pop1239_pop1964_1;
            1'b1 : memdep_phi2_pop1239_pop1964_mux_q = in_memdep_phi2_pop1239_pop1964_0;
            default : memdep_phi2_pop1239_pop1964_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop1239_pop1964(GPOUT,36)
    assign out_memdep_phi2_pop1239_pop1964 = memdep_phi2_pop1239_pop1964_mux_q;

    // notcmp1758_mux(MUX,29)
    assign notcmp1758_mux_s = in_valid_in_0;
    always @(notcmp1758_mux_s or in_notcmp1758_1 or in_notcmp1758_0)
    begin
        unique case (notcmp1758_mux_s)
            1'b0 : notcmp1758_mux_q = in_notcmp1758_1;
            1'b1 : notcmp1758_mux_q = in_notcmp1758_0;
            default : notcmp1758_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1758(GPOUT,37)
    assign out_notcmp1758 = notcmp1758_mux_q;

    // notcmp2235_pop1762_mux(MUX,30)
    assign notcmp2235_pop1762_mux_s = in_valid_in_0;
    always @(notcmp2235_pop1762_mux_s or in_notcmp2235_pop1762_1 or in_notcmp2235_pop1762_0)
    begin
        unique case (notcmp2235_pop1762_mux_s)
            1'b0 : notcmp2235_pop1762_mux_q = in_notcmp2235_pop1762_1;
            1'b1 : notcmp2235_pop1762_mux_q = in_notcmp2235_pop1762_0;
            default : notcmp2235_pop1762_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2235_pop1762(GPOUT,38)
    assign out_notcmp2235_pop1762 = notcmp2235_pop1762_mux_q;

    // row_028_pop1459_mux(MUX,43)
    assign row_028_pop1459_mux_s = in_valid_in_0;
    always @(row_028_pop1459_mux_s or in_row_028_pop1459_1 or in_row_028_pop1459_0)
    begin
        unique case (row_028_pop1459_mux_s)
            1'b0 : row_028_pop1459_mux_q = in_row_028_pop1459_1;
            1'b1 : row_028_pop1459_mux_q = in_row_028_pop1459_0;
            default : row_028_pop1459_mux_q = 32'b0;
        endcase
    end

    // out_row_028_pop1459(GPOUT,39)
    assign out_row_028_pop1459 = row_028_pop1459_mux_q;

    // valid_or(LOGICAL,46)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,44)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,40)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,45)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,41)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,42)
    assign out_valid_out = valid_or_q;

endmodule
