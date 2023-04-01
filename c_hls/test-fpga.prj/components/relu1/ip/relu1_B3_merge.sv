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

// SystemVerilog created from relu1_B3_merge
// Created for function/kernel relu1
// SystemVerilog created on Sat Apr  1 13:10:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module relu1_B3_merge (
    input wire [0:0] in_exitcond839_0,
    input wire [0:0] in_exitcond839_1,
    input wire [0:0] in_forked26_0,
    input wire [0:0] in_forked26_1,
    input wire [31:0] in_k_019_pop1145_0,
    input wire [31:0] in_k_019_pop1145_1,
    input wire [0:0] in_memdep_phi2_pop1248_0,
    input wire [0:0] in_memdep_phi2_pop1248_1,
    input wire [0:0] in_notcmp1642_0,
    input wire [0:0] in_notcmp1642_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond839,
    output wire [0:0] out_forked26,
    output wire [31:0] out_k_019_pop1145,
    output wire [0:0] out_memdep_phi2_pop1248,
    output wire [0:0] out_notcmp1642,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond839_mux_s;
    reg [0:0] exitcond839_mux_q;
    wire [0:0] forked26_mux_s;
    reg [0:0] forked26_mux_q;
    wire [0:0] k_019_pop1145_mux_s;
    reg [31:0] k_019_pop1145_mux_q;
    wire [0:0] memdep_phi2_pop1248_mux_s;
    reg [0:0] memdep_phi2_pop1248_mux_q;
    wire [0:0] notcmp1642_mux_s;
    reg [0:0] notcmp1642_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond839_mux(MUX,2)
    assign exitcond839_mux_s = in_valid_in_0;
    always @(exitcond839_mux_s or in_exitcond839_1 or in_exitcond839_0)
    begin
        unique case (exitcond839_mux_s)
            1'b0 : exitcond839_mux_q = in_exitcond839_1;
            1'b1 : exitcond839_mux_q = in_exitcond839_0;
            default : exitcond839_mux_q = 1'b0;
        endcase
    end

    // out_exitcond839(GPOUT,20)
    assign out_exitcond839 = exitcond839_mux_q;

    // forked26_mux(MUX,3)
    assign forked26_mux_s = in_valid_in_0;
    always @(forked26_mux_s or in_forked26_1 or in_forked26_0)
    begin
        unique case (forked26_mux_s)
            1'b0 : forked26_mux_q = in_forked26_1;
            1'b1 : forked26_mux_q = in_forked26_0;
            default : forked26_mux_q = 1'b0;
        endcase
    end

    // out_forked26(GPOUT,21)
    assign out_forked26 = forked26_mux_q;

    // k_019_pop1145_mux(MUX,17)
    assign k_019_pop1145_mux_s = in_valid_in_0;
    always @(k_019_pop1145_mux_s or in_k_019_pop1145_1 or in_k_019_pop1145_0)
    begin
        unique case (k_019_pop1145_mux_s)
            1'b0 : k_019_pop1145_mux_q = in_k_019_pop1145_1;
            1'b1 : k_019_pop1145_mux_q = in_k_019_pop1145_0;
            default : k_019_pop1145_mux_q = 32'b0;
        endcase
    end

    // out_k_019_pop1145(GPOUT,22)
    assign out_k_019_pop1145 = k_019_pop1145_mux_q;

    // memdep_phi2_pop1248_mux(MUX,18)
    assign memdep_phi2_pop1248_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop1248_mux_s or in_memdep_phi2_pop1248_1 or in_memdep_phi2_pop1248_0)
    begin
        unique case (memdep_phi2_pop1248_mux_s)
            1'b0 : memdep_phi2_pop1248_mux_q = in_memdep_phi2_pop1248_1;
            1'b1 : memdep_phi2_pop1248_mux_q = in_memdep_phi2_pop1248_0;
            default : memdep_phi2_pop1248_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop1248(GPOUT,23)
    assign out_memdep_phi2_pop1248 = memdep_phi2_pop1248_mux_q;

    // notcmp1642_mux(MUX,19)
    assign notcmp1642_mux_s = in_valid_in_0;
    always @(notcmp1642_mux_s or in_notcmp1642_1 or in_notcmp1642_0)
    begin
        unique case (notcmp1642_mux_s)
            1'b0 : notcmp1642_mux_q = in_notcmp1642_1;
            1'b1 : notcmp1642_mux_q = in_notcmp1642_0;
            default : notcmp1642_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1642(GPOUT,24)
    assign out_notcmp1642 = notcmp1642_mux_q;

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
