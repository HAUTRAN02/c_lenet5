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

// SystemVerilog created from conv2_B5_merge
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_B5_merge (
    input wire [63:0] in_arrayidx34247_0,
    input wire [63:0] in_arrayidx34247_1,
    input wire [63:0] in_arrayidx64257_0,
    input wire [63:0] in_arrayidx64257_1,
    input wire [31:0] in_channel_039_pop17165_0,
    input wire [31:0] in_channel_039_pop17165_1,
    input wire [31:0] in_channel_039_pop1777_pop24224_0,
    input wire [31:0] in_channel_039_pop1777_pop24224_1,
    input wire [31:0] in_channel_039_pop1778_pop31237_0,
    input wire [31:0] in_channel_039_pop1778_pop31237_1,
    input wire [31:0] in_col_037_pop27252_0,
    input wire [31:0] in_col_037_pop27252_1,
    input wire [0:0] in_exitcond25262_0,
    input wire [0:0] in_exitcond25262_1,
    input wire [0:0] in_exitcond28182_0,
    input wire [0:0] in_exitcond28182_1,
    input wire [0:0] in_exitcond2888_pop33292_0,
    input wire [0:0] in_exitcond2888_pop33292_1,
    input wire [0:0] in_exitcond31147_0,
    input wire [0:0] in_exitcond31147_1,
    input wire [0:0] in_exitcond3167_pop22210_0,
    input wire [0:0] in_exitcond3167_pop22210_1,
    input wire [0:0] in_exitcond3168_pop29277_0,
    input wire [0:0] in_exitcond3168_pop29277_1,
    input wire [0:0] in_forked104_0,
    input wire [0:0] in_forked104_1,
    input wire [63:0] in_idxprom25242_0,
    input wire [63:0] in_idxprom25242_1,
    input wire [0:0] in_memdep_phi4_pop28272_0,
    input wire [0:0] in_memdep_phi4_pop28272_1,
    input wire [0:0] in_memdep_phi5_pop21100_pop36302_0,
    input wire [0:0] in_memdep_phi5_pop21100_pop36302_1,
    input wire [0:0] in_memdep_phi5_pop21203_0,
    input wire [0:0] in_memdep_phi5_pop21203_1,
    input wire [0:0] in_memdep_phi6_pop18174_0,
    input wire [0:0] in_memdep_phi6_pop18174_1,
    input wire [0:0] in_memdep_phi6_pop1882_pop25231_0,
    input wire [0:0] in_memdep_phi6_pop1882_pop25231_1,
    input wire [0:0] in_memdep_phi6_pop1883_pop32287_0,
    input wire [0:0] in_memdep_phi6_pop1883_pop32287_1,
    input wire [0:0] in_notcmp46267_0,
    input wire [0:0] in_notcmp46267_1,
    input wire [0:0] in_notcmp51189_0,
    input wire [0:0] in_notcmp51189_1,
    input wire [0:0] in_notcmp5192_pop34297_0,
    input wire [0:0] in_notcmp5192_pop34297_1,
    input wire [0:0] in_notcmp56156_0,
    input wire [0:0] in_notcmp56156_1,
    input wire [0:0] in_notcmp5672_pop23217_0,
    input wire [0:0] in_notcmp5672_pop23217_1,
    input wire [0:0] in_notcmp5673_pop30282_0,
    input wire [0:0] in_notcmp5673_pop30282_1,
    input wire [31:0] in_row_038_pop20196_0,
    input wire [31:0] in_row_038_pop20196_1,
    input wire [31:0] in_row_038_pop2096_pop35232_0,
    input wire [31:0] in_row_038_pop2096_pop35232_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx34247,
    output wire [63:0] out_arrayidx64257,
    output wire [31:0] out_channel_039_pop17165,
    output wire [31:0] out_channel_039_pop1777_pop24224,
    output wire [31:0] out_channel_039_pop1778_pop31237,
    output wire [31:0] out_col_037_pop27252,
    output wire [0:0] out_exitcond25262,
    output wire [0:0] out_exitcond28182,
    output wire [0:0] out_exitcond2888_pop33292,
    output wire [0:0] out_exitcond31147,
    output wire [0:0] out_exitcond3167_pop22210,
    output wire [0:0] out_exitcond3168_pop29277,
    output wire [0:0] out_forked104,
    output wire [63:0] out_idxprom25242,
    output wire [0:0] out_memdep_phi4_pop28272,
    output wire [0:0] out_memdep_phi5_pop21100_pop36302,
    output wire [0:0] out_memdep_phi5_pop21203,
    output wire [0:0] out_memdep_phi6_pop18174,
    output wire [0:0] out_memdep_phi6_pop1882_pop25231,
    output wire [0:0] out_memdep_phi6_pop1883_pop32287,
    output wire [0:0] out_notcmp46267,
    output wire [0:0] out_notcmp51189,
    output wire [0:0] out_notcmp5192_pop34297,
    output wire [0:0] out_notcmp56156,
    output wire [0:0] out_notcmp5672_pop23217,
    output wire [0:0] out_notcmp5673_pop30282,
    output wire [31:0] out_row_038_pop20196,
    output wire [31:0] out_row_038_pop2096_pop35232,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx34247_mux_s;
    reg [63:0] arrayidx34247_mux_q;
    wire [0:0] arrayidx64257_mux_s;
    reg [63:0] arrayidx64257_mux_q;
    wire [0:0] channel_039_pop17165_mux_s;
    reg [31:0] channel_039_pop17165_mux_q;
    wire [0:0] channel_039_pop1777_pop24224_mux_s;
    reg [31:0] channel_039_pop1777_pop24224_mux_q;
    wire [0:0] channel_039_pop1778_pop31237_mux_s;
    reg [31:0] channel_039_pop1778_pop31237_mux_q;
    wire [0:0] col_037_pop27252_mux_s;
    reg [31:0] col_037_pop27252_mux_q;
    wire [0:0] exitcond25262_mux_s;
    reg [0:0] exitcond25262_mux_q;
    wire [0:0] exitcond28182_mux_s;
    reg [0:0] exitcond28182_mux_q;
    wire [0:0] exitcond2888_pop33292_mux_s;
    reg [0:0] exitcond2888_pop33292_mux_q;
    wire [0:0] exitcond31147_mux_s;
    reg [0:0] exitcond31147_mux_q;
    wire [0:0] exitcond3167_pop22210_mux_s;
    reg [0:0] exitcond3167_pop22210_mux_q;
    wire [0:0] exitcond3168_pop29277_mux_s;
    reg [0:0] exitcond3168_pop29277_mux_q;
    wire [0:0] forked104_mux_s;
    reg [0:0] forked104_mux_q;
    wire [0:0] idxprom25242_mux_s;
    reg [63:0] idxprom25242_mux_q;
    wire [0:0] memdep_phi4_pop28272_mux_s;
    reg [0:0] memdep_phi4_pop28272_mux_q;
    wire [0:0] memdep_phi5_pop21100_pop36302_mux_s;
    reg [0:0] memdep_phi5_pop21100_pop36302_mux_q;
    wire [0:0] memdep_phi5_pop21203_mux_s;
    reg [0:0] memdep_phi5_pop21203_mux_q;
    wire [0:0] memdep_phi6_pop18174_mux_s;
    reg [0:0] memdep_phi6_pop18174_mux_q;
    wire [0:0] memdep_phi6_pop1882_pop25231_mux_s;
    reg [0:0] memdep_phi6_pop1882_pop25231_mux_q;
    wire [0:0] memdep_phi6_pop1883_pop32287_mux_s;
    reg [0:0] memdep_phi6_pop1883_pop32287_mux_q;
    wire [0:0] notcmp46267_mux_s;
    reg [0:0] notcmp46267_mux_q;
    wire [0:0] notcmp51189_mux_s;
    reg [0:0] notcmp51189_mux_q;
    wire [0:0] notcmp5192_pop34297_mux_s;
    reg [0:0] notcmp5192_pop34297_mux_q;
    wire [0:0] notcmp56156_mux_s;
    reg [0:0] notcmp56156_mux_q;
    wire [0:0] notcmp5672_pop23217_mux_s;
    reg [0:0] notcmp5672_pop23217_mux_q;
    wire [0:0] notcmp5673_pop30282_mux_s;
    reg [0:0] notcmp5673_pop30282_mux_q;
    wire [0:0] row_038_pop20196_mux_s;
    reg [31:0] row_038_pop20196_mux_q;
    wire [0:0] row_038_pop2096_pop35232_mux_s;
    reg [31:0] row_038_pop2096_pop35232_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // arrayidx34247_mux(MUX,2)
    assign arrayidx34247_mux_s = in_valid_in_0;
    always @(arrayidx34247_mux_s or in_arrayidx34247_1 or in_arrayidx34247_0)
    begin
        unique case (arrayidx34247_mux_s)
            1'b0 : arrayidx34247_mux_q = in_arrayidx34247_1;
            1'b1 : arrayidx34247_mux_q = in_arrayidx34247_0;
            default : arrayidx34247_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx34247(GPOUT,87)
    assign out_arrayidx34247 = arrayidx34247_mux_q;

    // arrayidx64257_mux(MUX,3)
    assign arrayidx64257_mux_s = in_valid_in_0;
    always @(arrayidx64257_mux_s or in_arrayidx64257_1 or in_arrayidx64257_0)
    begin
        unique case (arrayidx64257_mux_s)
            1'b0 : arrayidx64257_mux_q = in_arrayidx64257_1;
            1'b1 : arrayidx64257_mux_q = in_arrayidx64257_0;
            default : arrayidx64257_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx64257(GPOUT,88)
    assign out_arrayidx64257 = arrayidx64257_mux_q;

    // channel_039_pop17165_mux(MUX,4)
    assign channel_039_pop17165_mux_s = in_valid_in_0;
    always @(channel_039_pop17165_mux_s or in_channel_039_pop17165_1 or in_channel_039_pop17165_0)
    begin
        unique case (channel_039_pop17165_mux_s)
            1'b0 : channel_039_pop17165_mux_q = in_channel_039_pop17165_1;
            1'b1 : channel_039_pop17165_mux_q = in_channel_039_pop17165_0;
            default : channel_039_pop17165_mux_q = 32'b0;
        endcase
    end

    // out_channel_039_pop17165(GPOUT,89)
    assign out_channel_039_pop17165 = channel_039_pop17165_mux_q;

    // channel_039_pop1777_pop24224_mux(MUX,5)
    assign channel_039_pop1777_pop24224_mux_s = in_valid_in_0;
    always @(channel_039_pop1777_pop24224_mux_s or in_channel_039_pop1777_pop24224_1 or in_channel_039_pop1777_pop24224_0)
    begin
        unique case (channel_039_pop1777_pop24224_mux_s)
            1'b0 : channel_039_pop1777_pop24224_mux_q = in_channel_039_pop1777_pop24224_1;
            1'b1 : channel_039_pop1777_pop24224_mux_q = in_channel_039_pop1777_pop24224_0;
            default : channel_039_pop1777_pop24224_mux_q = 32'b0;
        endcase
    end

    // out_channel_039_pop1777_pop24224(GPOUT,90)
    assign out_channel_039_pop1777_pop24224 = channel_039_pop1777_pop24224_mux_q;

    // channel_039_pop1778_pop31237_mux(MUX,6)
    assign channel_039_pop1778_pop31237_mux_s = in_valid_in_0;
    always @(channel_039_pop1778_pop31237_mux_s or in_channel_039_pop1778_pop31237_1 or in_channel_039_pop1778_pop31237_0)
    begin
        unique case (channel_039_pop1778_pop31237_mux_s)
            1'b0 : channel_039_pop1778_pop31237_mux_q = in_channel_039_pop1778_pop31237_1;
            1'b1 : channel_039_pop1778_pop31237_mux_q = in_channel_039_pop1778_pop31237_0;
            default : channel_039_pop1778_pop31237_mux_q = 32'b0;
        endcase
    end

    // out_channel_039_pop1778_pop31237(GPOUT,91)
    assign out_channel_039_pop1778_pop31237 = channel_039_pop1778_pop31237_mux_q;

    // col_037_pop27252_mux(MUX,7)
    assign col_037_pop27252_mux_s = in_valid_in_0;
    always @(col_037_pop27252_mux_s or in_col_037_pop27252_1 or in_col_037_pop27252_0)
    begin
        unique case (col_037_pop27252_mux_s)
            1'b0 : col_037_pop27252_mux_q = in_col_037_pop27252_1;
            1'b1 : col_037_pop27252_mux_q = in_col_037_pop27252_0;
            default : col_037_pop27252_mux_q = 32'b0;
        endcase
    end

    // out_col_037_pop27252(GPOUT,92)
    assign out_col_037_pop27252 = col_037_pop27252_mux_q;

    // exitcond25262_mux(MUX,8)
    assign exitcond25262_mux_s = in_valid_in_0;
    always @(exitcond25262_mux_s or in_exitcond25262_1 or in_exitcond25262_0)
    begin
        unique case (exitcond25262_mux_s)
            1'b0 : exitcond25262_mux_q = in_exitcond25262_1;
            1'b1 : exitcond25262_mux_q = in_exitcond25262_0;
            default : exitcond25262_mux_q = 1'b0;
        endcase
    end

    // out_exitcond25262(GPOUT,93)
    assign out_exitcond25262 = exitcond25262_mux_q;

    // exitcond28182_mux(MUX,9)
    assign exitcond28182_mux_s = in_valid_in_0;
    always @(exitcond28182_mux_s or in_exitcond28182_1 or in_exitcond28182_0)
    begin
        unique case (exitcond28182_mux_s)
            1'b0 : exitcond28182_mux_q = in_exitcond28182_1;
            1'b1 : exitcond28182_mux_q = in_exitcond28182_0;
            default : exitcond28182_mux_q = 1'b0;
        endcase
    end

    // out_exitcond28182(GPOUT,94)
    assign out_exitcond28182 = exitcond28182_mux_q;

    // exitcond2888_pop33292_mux(MUX,10)
    assign exitcond2888_pop33292_mux_s = in_valid_in_0;
    always @(exitcond2888_pop33292_mux_s or in_exitcond2888_pop33292_1 or in_exitcond2888_pop33292_0)
    begin
        unique case (exitcond2888_pop33292_mux_s)
            1'b0 : exitcond2888_pop33292_mux_q = in_exitcond2888_pop33292_1;
            1'b1 : exitcond2888_pop33292_mux_q = in_exitcond2888_pop33292_0;
            default : exitcond2888_pop33292_mux_q = 1'b0;
        endcase
    end

    // out_exitcond2888_pop33292(GPOUT,95)
    assign out_exitcond2888_pop33292 = exitcond2888_pop33292_mux_q;

    // exitcond31147_mux(MUX,11)
    assign exitcond31147_mux_s = in_valid_in_0;
    always @(exitcond31147_mux_s or in_exitcond31147_1 or in_exitcond31147_0)
    begin
        unique case (exitcond31147_mux_s)
            1'b0 : exitcond31147_mux_q = in_exitcond31147_1;
            1'b1 : exitcond31147_mux_q = in_exitcond31147_0;
            default : exitcond31147_mux_q = 1'b0;
        endcase
    end

    // out_exitcond31147(GPOUT,96)
    assign out_exitcond31147 = exitcond31147_mux_q;

    // exitcond3167_pop22210_mux(MUX,12)
    assign exitcond3167_pop22210_mux_s = in_valid_in_0;
    always @(exitcond3167_pop22210_mux_s or in_exitcond3167_pop22210_1 or in_exitcond3167_pop22210_0)
    begin
        unique case (exitcond3167_pop22210_mux_s)
            1'b0 : exitcond3167_pop22210_mux_q = in_exitcond3167_pop22210_1;
            1'b1 : exitcond3167_pop22210_mux_q = in_exitcond3167_pop22210_0;
            default : exitcond3167_pop22210_mux_q = 1'b0;
        endcase
    end

    // out_exitcond3167_pop22210(GPOUT,97)
    assign out_exitcond3167_pop22210 = exitcond3167_pop22210_mux_q;

    // exitcond3168_pop29277_mux(MUX,13)
    assign exitcond3168_pop29277_mux_s = in_valid_in_0;
    always @(exitcond3168_pop29277_mux_s or in_exitcond3168_pop29277_1 or in_exitcond3168_pop29277_0)
    begin
        unique case (exitcond3168_pop29277_mux_s)
            1'b0 : exitcond3168_pop29277_mux_q = in_exitcond3168_pop29277_1;
            1'b1 : exitcond3168_pop29277_mux_q = in_exitcond3168_pop29277_0;
            default : exitcond3168_pop29277_mux_q = 1'b0;
        endcase
    end

    // out_exitcond3168_pop29277(GPOUT,98)
    assign out_exitcond3168_pop29277 = exitcond3168_pop29277_mux_q;

    // forked104_mux(MUX,14)
    assign forked104_mux_s = in_valid_in_0;
    always @(forked104_mux_s or in_forked104_1 or in_forked104_0)
    begin
        unique case (forked104_mux_s)
            1'b0 : forked104_mux_q = in_forked104_1;
            1'b1 : forked104_mux_q = in_forked104_0;
            default : forked104_mux_q = 1'b0;
        endcase
    end

    // out_forked104(GPOUT,99)
    assign out_forked104 = forked104_mux_q;

    // idxprom25242_mux(MUX,15)
    assign idxprom25242_mux_s = in_valid_in_0;
    always @(idxprom25242_mux_s or in_idxprom25242_1 or in_idxprom25242_0)
    begin
        unique case (idxprom25242_mux_s)
            1'b0 : idxprom25242_mux_q = in_idxprom25242_1;
            1'b1 : idxprom25242_mux_q = in_idxprom25242_0;
            default : idxprom25242_mux_q = 64'b0;
        endcase
    end

    // out_idxprom25242(GPOUT,100)
    assign out_idxprom25242 = idxprom25242_mux_q;

    // memdep_phi4_pop28272_mux(MUX,75)
    assign memdep_phi4_pop28272_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop28272_mux_s or in_memdep_phi4_pop28272_1 or in_memdep_phi4_pop28272_0)
    begin
        unique case (memdep_phi4_pop28272_mux_s)
            1'b0 : memdep_phi4_pop28272_mux_q = in_memdep_phi4_pop28272_1;
            1'b1 : memdep_phi4_pop28272_mux_q = in_memdep_phi4_pop28272_0;
            default : memdep_phi4_pop28272_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop28272(GPOUT,101)
    assign out_memdep_phi4_pop28272 = memdep_phi4_pop28272_mux_q;

    // memdep_phi5_pop21100_pop36302_mux(MUX,76)
    assign memdep_phi5_pop21100_pop36302_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop21100_pop36302_mux_s or in_memdep_phi5_pop21100_pop36302_1 or in_memdep_phi5_pop21100_pop36302_0)
    begin
        unique case (memdep_phi5_pop21100_pop36302_mux_s)
            1'b0 : memdep_phi5_pop21100_pop36302_mux_q = in_memdep_phi5_pop21100_pop36302_1;
            1'b1 : memdep_phi5_pop21100_pop36302_mux_q = in_memdep_phi5_pop21100_pop36302_0;
            default : memdep_phi5_pop21100_pop36302_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop21100_pop36302(GPOUT,102)
    assign out_memdep_phi5_pop21100_pop36302 = memdep_phi5_pop21100_pop36302_mux_q;

    // memdep_phi5_pop21203_mux(MUX,77)
    assign memdep_phi5_pop21203_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop21203_mux_s or in_memdep_phi5_pop21203_1 or in_memdep_phi5_pop21203_0)
    begin
        unique case (memdep_phi5_pop21203_mux_s)
            1'b0 : memdep_phi5_pop21203_mux_q = in_memdep_phi5_pop21203_1;
            1'b1 : memdep_phi5_pop21203_mux_q = in_memdep_phi5_pop21203_0;
            default : memdep_phi5_pop21203_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop21203(GPOUT,103)
    assign out_memdep_phi5_pop21203 = memdep_phi5_pop21203_mux_q;

    // memdep_phi6_pop18174_mux(MUX,78)
    assign memdep_phi6_pop18174_mux_s = in_valid_in_0;
    always @(memdep_phi6_pop18174_mux_s or in_memdep_phi6_pop18174_1 or in_memdep_phi6_pop18174_0)
    begin
        unique case (memdep_phi6_pop18174_mux_s)
            1'b0 : memdep_phi6_pop18174_mux_q = in_memdep_phi6_pop18174_1;
            1'b1 : memdep_phi6_pop18174_mux_q = in_memdep_phi6_pop18174_0;
            default : memdep_phi6_pop18174_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi6_pop18174(GPOUT,104)
    assign out_memdep_phi6_pop18174 = memdep_phi6_pop18174_mux_q;

    // memdep_phi6_pop1882_pop25231_mux(MUX,79)
    assign memdep_phi6_pop1882_pop25231_mux_s = in_valid_in_0;
    always @(memdep_phi6_pop1882_pop25231_mux_s or in_memdep_phi6_pop1882_pop25231_1 or in_memdep_phi6_pop1882_pop25231_0)
    begin
        unique case (memdep_phi6_pop1882_pop25231_mux_s)
            1'b0 : memdep_phi6_pop1882_pop25231_mux_q = in_memdep_phi6_pop1882_pop25231_1;
            1'b1 : memdep_phi6_pop1882_pop25231_mux_q = in_memdep_phi6_pop1882_pop25231_0;
            default : memdep_phi6_pop1882_pop25231_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi6_pop1882_pop25231(GPOUT,105)
    assign out_memdep_phi6_pop1882_pop25231 = memdep_phi6_pop1882_pop25231_mux_q;

    // memdep_phi6_pop1883_pop32287_mux(MUX,80)
    assign memdep_phi6_pop1883_pop32287_mux_s = in_valid_in_0;
    always @(memdep_phi6_pop1883_pop32287_mux_s or in_memdep_phi6_pop1883_pop32287_1 or in_memdep_phi6_pop1883_pop32287_0)
    begin
        unique case (memdep_phi6_pop1883_pop32287_mux_s)
            1'b0 : memdep_phi6_pop1883_pop32287_mux_q = in_memdep_phi6_pop1883_pop32287_1;
            1'b1 : memdep_phi6_pop1883_pop32287_mux_q = in_memdep_phi6_pop1883_pop32287_0;
            default : memdep_phi6_pop1883_pop32287_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi6_pop1883_pop32287(GPOUT,106)
    assign out_memdep_phi6_pop1883_pop32287 = memdep_phi6_pop1883_pop32287_mux_q;

    // notcmp46267_mux(MUX,81)
    assign notcmp46267_mux_s = in_valid_in_0;
    always @(notcmp46267_mux_s or in_notcmp46267_1 or in_notcmp46267_0)
    begin
        unique case (notcmp46267_mux_s)
            1'b0 : notcmp46267_mux_q = in_notcmp46267_1;
            1'b1 : notcmp46267_mux_q = in_notcmp46267_0;
            default : notcmp46267_mux_q = 1'b0;
        endcase
    end

    // out_notcmp46267(GPOUT,107)
    assign out_notcmp46267 = notcmp46267_mux_q;

    // notcmp51189_mux(MUX,82)
    assign notcmp51189_mux_s = in_valid_in_0;
    always @(notcmp51189_mux_s or in_notcmp51189_1 or in_notcmp51189_0)
    begin
        unique case (notcmp51189_mux_s)
            1'b0 : notcmp51189_mux_q = in_notcmp51189_1;
            1'b1 : notcmp51189_mux_q = in_notcmp51189_0;
            default : notcmp51189_mux_q = 1'b0;
        endcase
    end

    // out_notcmp51189(GPOUT,108)
    assign out_notcmp51189 = notcmp51189_mux_q;

    // notcmp5192_pop34297_mux(MUX,83)
    assign notcmp5192_pop34297_mux_s = in_valid_in_0;
    always @(notcmp5192_pop34297_mux_s or in_notcmp5192_pop34297_1 or in_notcmp5192_pop34297_0)
    begin
        unique case (notcmp5192_pop34297_mux_s)
            1'b0 : notcmp5192_pop34297_mux_q = in_notcmp5192_pop34297_1;
            1'b1 : notcmp5192_pop34297_mux_q = in_notcmp5192_pop34297_0;
            default : notcmp5192_pop34297_mux_q = 1'b0;
        endcase
    end

    // out_notcmp5192_pop34297(GPOUT,109)
    assign out_notcmp5192_pop34297 = notcmp5192_pop34297_mux_q;

    // notcmp56156_mux(MUX,84)
    assign notcmp56156_mux_s = in_valid_in_0;
    always @(notcmp56156_mux_s or in_notcmp56156_1 or in_notcmp56156_0)
    begin
        unique case (notcmp56156_mux_s)
            1'b0 : notcmp56156_mux_q = in_notcmp56156_1;
            1'b1 : notcmp56156_mux_q = in_notcmp56156_0;
            default : notcmp56156_mux_q = 1'b0;
        endcase
    end

    // out_notcmp56156(GPOUT,110)
    assign out_notcmp56156 = notcmp56156_mux_q;

    // notcmp5672_pop23217_mux(MUX,85)
    assign notcmp5672_pop23217_mux_s = in_valid_in_0;
    always @(notcmp5672_pop23217_mux_s or in_notcmp5672_pop23217_1 or in_notcmp5672_pop23217_0)
    begin
        unique case (notcmp5672_pop23217_mux_s)
            1'b0 : notcmp5672_pop23217_mux_q = in_notcmp5672_pop23217_1;
            1'b1 : notcmp5672_pop23217_mux_q = in_notcmp5672_pop23217_0;
            default : notcmp5672_pop23217_mux_q = 1'b0;
        endcase
    end

    // out_notcmp5672_pop23217(GPOUT,111)
    assign out_notcmp5672_pop23217 = notcmp5672_pop23217_mux_q;

    // notcmp5673_pop30282_mux(MUX,86)
    assign notcmp5673_pop30282_mux_s = in_valid_in_0;
    always @(notcmp5673_pop30282_mux_s or in_notcmp5673_pop30282_1 or in_notcmp5673_pop30282_0)
    begin
        unique case (notcmp5673_pop30282_mux_s)
            1'b0 : notcmp5673_pop30282_mux_q = in_notcmp5673_pop30282_1;
            1'b1 : notcmp5673_pop30282_mux_q = in_notcmp5673_pop30282_0;
            default : notcmp5673_pop30282_mux_q = 1'b0;
        endcase
    end

    // out_notcmp5673_pop30282(GPOUT,112)
    assign out_notcmp5673_pop30282 = notcmp5673_pop30282_mux_q;

    // row_038_pop20196_mux(MUX,118)
    assign row_038_pop20196_mux_s = in_valid_in_0;
    always @(row_038_pop20196_mux_s or in_row_038_pop20196_1 or in_row_038_pop20196_0)
    begin
        unique case (row_038_pop20196_mux_s)
            1'b0 : row_038_pop20196_mux_q = in_row_038_pop20196_1;
            1'b1 : row_038_pop20196_mux_q = in_row_038_pop20196_0;
            default : row_038_pop20196_mux_q = 32'b0;
        endcase
    end

    // out_row_038_pop20196(GPOUT,113)
    assign out_row_038_pop20196 = row_038_pop20196_mux_q;

    // row_038_pop2096_pop35232_mux(MUX,119)
    assign row_038_pop2096_pop35232_mux_s = in_valid_in_0;
    always @(row_038_pop2096_pop35232_mux_s or in_row_038_pop2096_pop35232_1 or in_row_038_pop2096_pop35232_0)
    begin
        unique case (row_038_pop2096_pop35232_mux_s)
            1'b0 : row_038_pop2096_pop35232_mux_q = in_row_038_pop2096_pop35232_1;
            1'b1 : row_038_pop2096_pop35232_mux_q = in_row_038_pop2096_pop35232_0;
            default : row_038_pop2096_pop35232_mux_q = 32'b0;
        endcase
    end

    // out_row_038_pop2096_pop35232(GPOUT,114)
    assign out_row_038_pop2096_pop35232 = row_038_pop2096_pop35232_mux_q;

    // valid_or(LOGICAL,122)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,120)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,115)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,121)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,116)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,117)
    assign out_valid_out = valid_or_q;

endmodule
