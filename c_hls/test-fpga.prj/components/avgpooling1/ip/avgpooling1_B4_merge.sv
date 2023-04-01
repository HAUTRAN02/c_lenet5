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

// SystemVerilog created from avgpooling1_B4_merge
// Created for function/kernel avgpooling1
// SystemVerilog created on Sat Apr  1 13:10:38 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpooling1_B4_merge (
    input wire [0:0] in_exitcond1155_0,
    input wire [0:0] in_exitcond1155_1,
    input wire [0:0] in_exitcond1431_pop1659_0,
    input wire [0:0] in_exitcond1431_pop1659_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_i_026_pop1457_0,
    input wire [31:0] in_i_026_pop1457_1,
    input wire [0:0] in_memdep_phi1_pop1558_0,
    input wire [0:0] in_memdep_phi1_pop1558_1,
    input wire [0:0] in_memdep_phi2_pop1237_pop1962_0,
    input wire [0:0] in_memdep_phi2_pop1237_pop1962_1,
    input wire [31:0] in_n_channel_027_pop1135_pop1861_0,
    input wire [31:0] in_n_channel_027_pop1135_pop1861_1,
    input wire [0:0] in_notcmp1556_0,
    input wire [0:0] in_notcmp1556_1,
    input wire [0:0] in_notcmp2033_pop1760_0,
    input wire [0:0] in_notcmp2033_pop1760_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond1155,
    output wire [0:0] out_exitcond1431_pop1659,
    output wire [0:0] out_forked,
    output wire [31:0] out_i_026_pop1457,
    output wire [0:0] out_memdep_phi1_pop1558,
    output wire [0:0] out_memdep_phi2_pop1237_pop1962,
    output wire [31:0] out_n_channel_027_pop1135_pop1861,
    output wire [0:0] out_notcmp1556,
    output wire [0:0] out_notcmp2033_pop1760,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond1155_mux_s;
    reg [0:0] exitcond1155_mux_q;
    wire [0:0] exitcond1431_pop1659_mux_s;
    reg [0:0] exitcond1431_pop1659_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] i_026_pop1457_mux_s;
    reg [31:0] i_026_pop1457_mux_q;
    wire [0:0] memdep_phi1_pop1558_mux_s;
    reg [0:0] memdep_phi1_pop1558_mux_q;
    wire [0:0] memdep_phi2_pop1237_pop1962_mux_s;
    reg [0:0] memdep_phi2_pop1237_pop1962_mux_q;
    wire [0:0] n_channel_027_pop1135_pop1861_mux_s;
    reg [31:0] n_channel_027_pop1135_pop1861_mux_q;
    wire [0:0] notcmp1556_mux_s;
    reg [0:0] notcmp1556_mux_q;
    wire [0:0] notcmp2033_pop1760_mux_s;
    reg [0:0] notcmp2033_pop1760_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond1155_mux(MUX,2)
    assign exitcond1155_mux_s = in_valid_in_0;
    always @(exitcond1155_mux_s or in_exitcond1155_1 or in_exitcond1155_0)
    begin
        unique case (exitcond1155_mux_s)
            1'b0 : exitcond1155_mux_q = in_exitcond1155_1;
            1'b1 : exitcond1155_mux_q = in_exitcond1155_0;
            default : exitcond1155_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1155(GPOUT,32)
    assign out_exitcond1155 = exitcond1155_mux_q;

    // exitcond1431_pop1659_mux(MUX,3)
    assign exitcond1431_pop1659_mux_s = in_valid_in_0;
    always @(exitcond1431_pop1659_mux_s or in_exitcond1431_pop1659_1 or in_exitcond1431_pop1659_0)
    begin
        unique case (exitcond1431_pop1659_mux_s)
            1'b0 : exitcond1431_pop1659_mux_q = in_exitcond1431_pop1659_1;
            1'b1 : exitcond1431_pop1659_mux_q = in_exitcond1431_pop1659_0;
            default : exitcond1431_pop1659_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1431_pop1659(GPOUT,33)
    assign out_exitcond1431_pop1659 = exitcond1431_pop1659_mux_q;

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

    // i_026_pop1457_mux(MUX,5)
    assign i_026_pop1457_mux_s = in_valid_in_0;
    always @(i_026_pop1457_mux_s or in_i_026_pop1457_1 or in_i_026_pop1457_0)
    begin
        unique case (i_026_pop1457_mux_s)
            1'b0 : i_026_pop1457_mux_q = in_i_026_pop1457_1;
            1'b1 : i_026_pop1457_mux_q = in_i_026_pop1457_0;
            default : i_026_pop1457_mux_q = 32'b0;
        endcase
    end

    // out_i_026_pop1457(GPOUT,35)
    assign out_i_026_pop1457 = i_026_pop1457_mux_q;

    // memdep_phi1_pop1558_mux(MUX,27)
    assign memdep_phi1_pop1558_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1558_mux_s or in_memdep_phi1_pop1558_1 or in_memdep_phi1_pop1558_0)
    begin
        unique case (memdep_phi1_pop1558_mux_s)
            1'b0 : memdep_phi1_pop1558_mux_q = in_memdep_phi1_pop1558_1;
            1'b1 : memdep_phi1_pop1558_mux_q = in_memdep_phi1_pop1558_0;
            default : memdep_phi1_pop1558_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1558(GPOUT,36)
    assign out_memdep_phi1_pop1558 = memdep_phi1_pop1558_mux_q;

    // memdep_phi2_pop1237_pop1962_mux(MUX,28)
    assign memdep_phi2_pop1237_pop1962_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop1237_pop1962_mux_s or in_memdep_phi2_pop1237_pop1962_1 or in_memdep_phi2_pop1237_pop1962_0)
    begin
        unique case (memdep_phi2_pop1237_pop1962_mux_s)
            1'b0 : memdep_phi2_pop1237_pop1962_mux_q = in_memdep_phi2_pop1237_pop1962_1;
            1'b1 : memdep_phi2_pop1237_pop1962_mux_q = in_memdep_phi2_pop1237_pop1962_0;
            default : memdep_phi2_pop1237_pop1962_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop1237_pop1962(GPOUT,37)
    assign out_memdep_phi2_pop1237_pop1962 = memdep_phi2_pop1237_pop1962_mux_q;

    // n_channel_027_pop1135_pop1861_mux(MUX,29)
    assign n_channel_027_pop1135_pop1861_mux_s = in_valid_in_0;
    always @(n_channel_027_pop1135_pop1861_mux_s or in_n_channel_027_pop1135_pop1861_1 or in_n_channel_027_pop1135_pop1861_0)
    begin
        unique case (n_channel_027_pop1135_pop1861_mux_s)
            1'b0 : n_channel_027_pop1135_pop1861_mux_q = in_n_channel_027_pop1135_pop1861_1;
            1'b1 : n_channel_027_pop1135_pop1861_mux_q = in_n_channel_027_pop1135_pop1861_0;
            default : n_channel_027_pop1135_pop1861_mux_q = 32'b0;
        endcase
    end

    // out_n_channel_027_pop1135_pop1861(GPOUT,38)
    assign out_n_channel_027_pop1135_pop1861 = n_channel_027_pop1135_pop1861_mux_q;

    // notcmp1556_mux(MUX,30)
    assign notcmp1556_mux_s = in_valid_in_0;
    always @(notcmp1556_mux_s or in_notcmp1556_1 or in_notcmp1556_0)
    begin
        unique case (notcmp1556_mux_s)
            1'b0 : notcmp1556_mux_q = in_notcmp1556_1;
            1'b1 : notcmp1556_mux_q = in_notcmp1556_0;
            default : notcmp1556_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1556(GPOUT,39)
    assign out_notcmp1556 = notcmp1556_mux_q;

    // notcmp2033_pop1760_mux(MUX,31)
    assign notcmp2033_pop1760_mux_s = in_valid_in_0;
    always @(notcmp2033_pop1760_mux_s or in_notcmp2033_pop1760_1 or in_notcmp2033_pop1760_0)
    begin
        unique case (notcmp2033_pop1760_mux_s)
            1'b0 : notcmp2033_pop1760_mux_q = in_notcmp2033_pop1760_1;
            1'b1 : notcmp2033_pop1760_mux_q = in_notcmp2033_pop1760_0;
            default : notcmp2033_pop1760_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2033_pop1760(GPOUT,40)
    assign out_notcmp2033_pop1760 = notcmp2033_pop1760_mux_q;

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
