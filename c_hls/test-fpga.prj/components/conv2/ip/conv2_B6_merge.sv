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

// SystemVerilog created from conv2_B6_merge
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:45 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_B6_merge (
    input wire [63:0] in_arrayidx34108_pop49346_0,
    input wire [63:0] in_arrayidx34108_pop49346_1,
    input wire [63:0] in_arrayidx34251_0,
    input wire [63:0] in_arrayidx34251_1,
    input wire [63:0] in_arrayidx64114_pop51352_0,
    input wire [63:0] in_arrayidx64114_pop51352_1,
    input wire [63:0] in_arrayidx64261_0,
    input wire [63:0] in_arrayidx64261_1,
    input wire [31:0] in_channel_039_pop17164_0,
    input wire [31:0] in_channel_039_pop17164_1,
    input wire [31:0] in_channel_039_pop1777_pop24223_0,
    input wire [31:0] in_channel_039_pop1777_pop24223_1,
    input wire [31:0] in_channel_039_pop1778_pop31241_0,
    input wire [31:0] in_channel_039_pop1778_pop31241_1,
    input wire [31:0] in_channel_039_pop1779_pop42325_0,
    input wire [31:0] in_channel_039_pop1779_pop42325_1,
    input wire [31:0] in_col_037_pop27111_pop50349_0,
    input wire [31:0] in_col_037_pop27111_pop50349_1,
    input wire [31:0] in_col_037_pop27256_0,
    input wire [31:0] in_col_037_pop27256_1,
    input wire [0:0] in_exitcond22307_0,
    input wire [0:0] in_exitcond22307_1,
    input wire [0:0] in_exitcond25117_pop52355_0,
    input wire [0:0] in_exitcond25117_pop52355_1,
    input wire [0:0] in_exitcond25266_0,
    input wire [0:0] in_exitcond25266_1,
    input wire [0:0] in_exitcond28181_0,
    input wire [0:0] in_exitcond28181_1,
    input wire [0:0] in_exitcond2888_pop33296_0,
    input wire [0:0] in_exitcond2888_pop33296_1,
    input wire [0:0] in_exitcond2889_pop44331_0,
    input wire [0:0] in_exitcond2889_pop44331_1,
    input wire [0:0] in_exitcond31146_0,
    input wire [0:0] in_exitcond31146_1,
    input wire [0:0] in_exitcond3167_pop22209_0,
    input wire [0:0] in_exitcond3167_pop22209_1,
    input wire [0:0] in_exitcond3168_pop29281_0,
    input wire [0:0] in_exitcond3168_pop29281_1,
    input wire [0:0] in_exitcond3169_pop40319_0,
    input wire [0:0] in_exitcond3169_pop40319_1,
    input wire [0:0] in_forked126_0,
    input wire [0:0] in_forked126_1,
    input wire [63:0] in_idxprom25105_pop48343_0,
    input wire [63:0] in_idxprom25105_pop48343_1,
    input wire [63:0] in_idxprom25246_0,
    input wire [63:0] in_idxprom25246_1,
    input wire [31:0] in_k_036_pop38313_0,
    input wire [31:0] in_k_036_pop38313_1,
    input wire [0:0] in_memdep_phi3_pop39316_0,
    input wire [0:0] in_memdep_phi3_pop39316_1,
    input wire [0:0] in_memdep_phi4_pop28123_pop54361_0,
    input wire [0:0] in_memdep_phi4_pop28123_pop54361_1,
    input wire [0:0] in_memdep_phi4_pop28276_0,
    input wire [0:0] in_memdep_phi4_pop28276_1,
    input wire [0:0] in_memdep_phi5_pop21100_pop36306_0,
    input wire [0:0] in_memdep_phi5_pop21100_pop36306_1,
    input wire [0:0] in_memdep_phi5_pop21101_pop47340_0,
    input wire [0:0] in_memdep_phi5_pop21101_pop47340_1,
    input wire [0:0] in_memdep_phi5_pop21202_0,
    input wire [0:0] in_memdep_phi5_pop21202_1,
    input wire [0:0] in_memdep_phi6_pop18173_0,
    input wire [0:0] in_memdep_phi6_pop18173_1,
    input wire [0:0] in_memdep_phi6_pop1882_pop25230_0,
    input wire [0:0] in_memdep_phi6_pop1882_pop25230_1,
    input wire [0:0] in_memdep_phi6_pop1883_pop32291_0,
    input wire [0:0] in_memdep_phi6_pop1883_pop32291_1,
    input wire [0:0] in_memdep_phi6_pop1884_pop43328_0,
    input wire [0:0] in_memdep_phi6_pop1884_pop43328_1,
    input wire [0:0] in_notcmp41310_0,
    input wire [0:0] in_notcmp41310_1,
    input wire [0:0] in_notcmp46120_pop53358_0,
    input wire [0:0] in_notcmp46120_pop53358_1,
    input wire [0:0] in_notcmp46271_0,
    input wire [0:0] in_notcmp46271_1,
    input wire [0:0] in_notcmp51188_0,
    input wire [0:0] in_notcmp51188_1,
    input wire [0:0] in_notcmp5192_pop34301_0,
    input wire [0:0] in_notcmp5192_pop34301_1,
    input wire [0:0] in_notcmp5193_pop45334_0,
    input wire [0:0] in_notcmp5193_pop45334_1,
    input wire [0:0] in_notcmp56155_0,
    input wire [0:0] in_notcmp56155_1,
    input wire [0:0] in_notcmp5672_pop23216_0,
    input wire [0:0] in_notcmp5672_pop23216_1,
    input wire [0:0] in_notcmp5673_pop30286_0,
    input wire [0:0] in_notcmp5673_pop30286_1,
    input wire [0:0] in_notcmp5674_pop41322_0,
    input wire [0:0] in_notcmp5674_pop41322_1,
    input wire [31:0] in_row_038_pop20195_0,
    input wire [31:0] in_row_038_pop20195_1,
    input wire [31:0] in_row_038_pop2096_pop35236_0,
    input wire [31:0] in_row_038_pop2096_pop35236_1,
    input wire [31:0] in_row_038_pop2097_pop46337_0,
    input wire [31:0] in_row_038_pop2097_pop46337_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx34108_pop49346,
    output wire [63:0] out_arrayidx34251,
    output wire [63:0] out_arrayidx64114_pop51352,
    output wire [63:0] out_arrayidx64261,
    output wire [31:0] out_channel_039_pop17164,
    output wire [31:0] out_channel_039_pop1777_pop24223,
    output wire [31:0] out_channel_039_pop1778_pop31241,
    output wire [31:0] out_channel_039_pop1779_pop42325,
    output wire [31:0] out_col_037_pop27111_pop50349,
    output wire [31:0] out_col_037_pop27256,
    output wire [0:0] out_exitcond22307,
    output wire [0:0] out_exitcond25117_pop52355,
    output wire [0:0] out_exitcond25266,
    output wire [0:0] out_exitcond28181,
    output wire [0:0] out_exitcond2888_pop33296,
    output wire [0:0] out_exitcond2889_pop44331,
    output wire [0:0] out_exitcond31146,
    output wire [0:0] out_exitcond3167_pop22209,
    output wire [0:0] out_exitcond3168_pop29281,
    output wire [0:0] out_exitcond3169_pop40319,
    output wire [0:0] out_forked126,
    output wire [63:0] out_idxprom25105_pop48343,
    output wire [63:0] out_idxprom25246,
    output wire [31:0] out_k_036_pop38313,
    output wire [0:0] out_memdep_phi3_pop39316,
    output wire [0:0] out_memdep_phi4_pop28123_pop54361,
    output wire [0:0] out_memdep_phi4_pop28276,
    output wire [0:0] out_memdep_phi5_pop21100_pop36306,
    output wire [0:0] out_memdep_phi5_pop21101_pop47340,
    output wire [0:0] out_memdep_phi5_pop21202,
    output wire [0:0] out_memdep_phi6_pop18173,
    output wire [0:0] out_memdep_phi6_pop1882_pop25230,
    output wire [0:0] out_memdep_phi6_pop1883_pop32291,
    output wire [0:0] out_memdep_phi6_pop1884_pop43328,
    output wire [0:0] out_notcmp41310,
    output wire [0:0] out_notcmp46120_pop53358,
    output wire [0:0] out_notcmp46271,
    output wire [0:0] out_notcmp51188,
    output wire [0:0] out_notcmp5192_pop34301,
    output wire [0:0] out_notcmp5193_pop45334,
    output wire [0:0] out_notcmp56155,
    output wire [0:0] out_notcmp5672_pop23216,
    output wire [0:0] out_notcmp5673_pop30286,
    output wire [0:0] out_notcmp5674_pop41322,
    output wire [31:0] out_row_038_pop20195,
    output wire [31:0] out_row_038_pop2096_pop35236,
    output wire [31:0] out_row_038_pop2097_pop46337,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx34108_pop49346_mux_s;
    reg [63:0] arrayidx34108_pop49346_mux_q;
    wire [0:0] arrayidx34251_mux_s;
    reg [63:0] arrayidx34251_mux_q;
    wire [0:0] arrayidx64114_pop51352_mux_s;
    reg [63:0] arrayidx64114_pop51352_mux_q;
    wire [0:0] arrayidx64261_mux_s;
    reg [63:0] arrayidx64261_mux_q;
    wire [0:0] channel_039_pop17164_mux_s;
    reg [31:0] channel_039_pop17164_mux_q;
    wire [0:0] channel_039_pop1777_pop24223_mux_s;
    reg [31:0] channel_039_pop1777_pop24223_mux_q;
    wire [0:0] channel_039_pop1778_pop31241_mux_s;
    reg [31:0] channel_039_pop1778_pop31241_mux_q;
    wire [0:0] channel_039_pop1779_pop42325_mux_s;
    reg [31:0] channel_039_pop1779_pop42325_mux_q;
    wire [0:0] col_037_pop27111_pop50349_mux_s;
    reg [31:0] col_037_pop27111_pop50349_mux_q;
    wire [0:0] col_037_pop27256_mux_s;
    reg [31:0] col_037_pop27256_mux_q;
    wire [0:0] exitcond22307_mux_s;
    reg [0:0] exitcond22307_mux_q;
    wire [0:0] exitcond25117_pop52355_mux_s;
    reg [0:0] exitcond25117_pop52355_mux_q;
    wire [0:0] exitcond25266_mux_s;
    reg [0:0] exitcond25266_mux_q;
    wire [0:0] exitcond28181_mux_s;
    reg [0:0] exitcond28181_mux_q;
    wire [0:0] exitcond2888_pop33296_mux_s;
    reg [0:0] exitcond2888_pop33296_mux_q;
    wire [0:0] exitcond2889_pop44331_mux_s;
    reg [0:0] exitcond2889_pop44331_mux_q;
    wire [0:0] exitcond31146_mux_s;
    reg [0:0] exitcond31146_mux_q;
    wire [0:0] exitcond3167_pop22209_mux_s;
    reg [0:0] exitcond3167_pop22209_mux_q;
    wire [0:0] exitcond3168_pop29281_mux_s;
    reg [0:0] exitcond3168_pop29281_mux_q;
    wire [0:0] exitcond3169_pop40319_mux_s;
    reg [0:0] exitcond3169_pop40319_mux_q;
    wire [0:0] forked126_mux_s;
    reg [0:0] forked126_mux_q;
    wire [0:0] idxprom25105_pop48343_mux_s;
    reg [63:0] idxprom25105_pop48343_mux_q;
    wire [0:0] idxprom25246_mux_s;
    reg [63:0] idxprom25246_mux_q;
    wire [0:0] k_036_pop38313_mux_s;
    reg [31:0] k_036_pop38313_mux_q;
    wire [0:0] memdep_phi3_pop39316_mux_s;
    reg [0:0] memdep_phi3_pop39316_mux_q;
    wire [0:0] memdep_phi4_pop28123_pop54361_mux_s;
    reg [0:0] memdep_phi4_pop28123_pop54361_mux_q;
    wire [0:0] memdep_phi4_pop28276_mux_s;
    reg [0:0] memdep_phi4_pop28276_mux_q;
    wire [0:0] memdep_phi5_pop21100_pop36306_mux_s;
    reg [0:0] memdep_phi5_pop21100_pop36306_mux_q;
    wire [0:0] memdep_phi5_pop21101_pop47340_mux_s;
    reg [0:0] memdep_phi5_pop21101_pop47340_mux_q;
    wire [0:0] memdep_phi5_pop21202_mux_s;
    reg [0:0] memdep_phi5_pop21202_mux_q;
    wire [0:0] memdep_phi6_pop18173_mux_s;
    reg [0:0] memdep_phi6_pop18173_mux_q;
    wire [0:0] memdep_phi6_pop1882_pop25230_mux_s;
    reg [0:0] memdep_phi6_pop1882_pop25230_mux_q;
    wire [0:0] memdep_phi6_pop1883_pop32291_mux_s;
    reg [0:0] memdep_phi6_pop1883_pop32291_mux_q;
    wire [0:0] memdep_phi6_pop1884_pop43328_mux_s;
    reg [0:0] memdep_phi6_pop1884_pop43328_mux_q;
    wire [0:0] notcmp41310_mux_s;
    reg [0:0] notcmp41310_mux_q;
    wire [0:0] notcmp46120_pop53358_mux_s;
    reg [0:0] notcmp46120_pop53358_mux_q;
    wire [0:0] notcmp46271_mux_s;
    reg [0:0] notcmp46271_mux_q;
    wire [0:0] notcmp51188_mux_s;
    reg [0:0] notcmp51188_mux_q;
    wire [0:0] notcmp5192_pop34301_mux_s;
    reg [0:0] notcmp5192_pop34301_mux_q;
    wire [0:0] notcmp5193_pop45334_mux_s;
    reg [0:0] notcmp5193_pop45334_mux_q;
    wire [0:0] notcmp56155_mux_s;
    reg [0:0] notcmp56155_mux_q;
    wire [0:0] notcmp5672_pop23216_mux_s;
    reg [0:0] notcmp5672_pop23216_mux_q;
    wire [0:0] notcmp5673_pop30286_mux_s;
    reg [0:0] notcmp5673_pop30286_mux_q;
    wire [0:0] notcmp5674_pop41322_mux_s;
    reg [0:0] notcmp5674_pop41322_mux_q;
    wire [0:0] row_038_pop20195_mux_s;
    reg [31:0] row_038_pop20195_mux_q;
    wire [0:0] row_038_pop2096_pop35236_mux_s;
    reg [31:0] row_038_pop2096_pop35236_mux_q;
    wire [0:0] row_038_pop2097_pop46337_mux_s;
    reg [31:0] row_038_pop2097_pop46337_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // arrayidx34108_pop49346_mux(MUX,2)
    assign arrayidx34108_pop49346_mux_s = in_valid_in_0;
    always @(arrayidx34108_pop49346_mux_s or in_arrayidx34108_pop49346_1 or in_arrayidx34108_pop49346_0)
    begin
        unique case (arrayidx34108_pop49346_mux_s)
            1'b0 : arrayidx34108_pop49346_mux_q = in_arrayidx34108_pop49346_1;
            1'b1 : arrayidx34108_pop49346_mux_q = in_arrayidx34108_pop49346_0;
            default : arrayidx34108_pop49346_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx34108_pop49346(GPOUT,143)
    assign out_arrayidx34108_pop49346 = arrayidx34108_pop49346_mux_q;

    // arrayidx34251_mux(MUX,3)
    assign arrayidx34251_mux_s = in_valid_in_0;
    always @(arrayidx34251_mux_s or in_arrayidx34251_1 or in_arrayidx34251_0)
    begin
        unique case (arrayidx34251_mux_s)
            1'b0 : arrayidx34251_mux_q = in_arrayidx34251_1;
            1'b1 : arrayidx34251_mux_q = in_arrayidx34251_0;
            default : arrayidx34251_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx34251(GPOUT,144)
    assign out_arrayidx34251 = arrayidx34251_mux_q;

    // arrayidx64114_pop51352_mux(MUX,4)
    assign arrayidx64114_pop51352_mux_s = in_valid_in_0;
    always @(arrayidx64114_pop51352_mux_s or in_arrayidx64114_pop51352_1 or in_arrayidx64114_pop51352_0)
    begin
        unique case (arrayidx64114_pop51352_mux_s)
            1'b0 : arrayidx64114_pop51352_mux_q = in_arrayidx64114_pop51352_1;
            1'b1 : arrayidx64114_pop51352_mux_q = in_arrayidx64114_pop51352_0;
            default : arrayidx64114_pop51352_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx64114_pop51352(GPOUT,145)
    assign out_arrayidx64114_pop51352 = arrayidx64114_pop51352_mux_q;

    // arrayidx64261_mux(MUX,5)
    assign arrayidx64261_mux_s = in_valid_in_0;
    always @(arrayidx64261_mux_s or in_arrayidx64261_1 or in_arrayidx64261_0)
    begin
        unique case (arrayidx64261_mux_s)
            1'b0 : arrayidx64261_mux_q = in_arrayidx64261_1;
            1'b1 : arrayidx64261_mux_q = in_arrayidx64261_0;
            default : arrayidx64261_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx64261(GPOUT,146)
    assign out_arrayidx64261 = arrayidx64261_mux_q;

    // channel_039_pop17164_mux(MUX,6)
    assign channel_039_pop17164_mux_s = in_valid_in_0;
    always @(channel_039_pop17164_mux_s or in_channel_039_pop17164_1 or in_channel_039_pop17164_0)
    begin
        unique case (channel_039_pop17164_mux_s)
            1'b0 : channel_039_pop17164_mux_q = in_channel_039_pop17164_1;
            1'b1 : channel_039_pop17164_mux_q = in_channel_039_pop17164_0;
            default : channel_039_pop17164_mux_q = 32'b0;
        endcase
    end

    // out_channel_039_pop17164(GPOUT,147)
    assign out_channel_039_pop17164 = channel_039_pop17164_mux_q;

    // channel_039_pop1777_pop24223_mux(MUX,7)
    assign channel_039_pop1777_pop24223_mux_s = in_valid_in_0;
    always @(channel_039_pop1777_pop24223_mux_s or in_channel_039_pop1777_pop24223_1 or in_channel_039_pop1777_pop24223_0)
    begin
        unique case (channel_039_pop1777_pop24223_mux_s)
            1'b0 : channel_039_pop1777_pop24223_mux_q = in_channel_039_pop1777_pop24223_1;
            1'b1 : channel_039_pop1777_pop24223_mux_q = in_channel_039_pop1777_pop24223_0;
            default : channel_039_pop1777_pop24223_mux_q = 32'b0;
        endcase
    end

    // out_channel_039_pop1777_pop24223(GPOUT,148)
    assign out_channel_039_pop1777_pop24223 = channel_039_pop1777_pop24223_mux_q;

    // channel_039_pop1778_pop31241_mux(MUX,8)
    assign channel_039_pop1778_pop31241_mux_s = in_valid_in_0;
    always @(channel_039_pop1778_pop31241_mux_s or in_channel_039_pop1778_pop31241_1 or in_channel_039_pop1778_pop31241_0)
    begin
        unique case (channel_039_pop1778_pop31241_mux_s)
            1'b0 : channel_039_pop1778_pop31241_mux_q = in_channel_039_pop1778_pop31241_1;
            1'b1 : channel_039_pop1778_pop31241_mux_q = in_channel_039_pop1778_pop31241_0;
            default : channel_039_pop1778_pop31241_mux_q = 32'b0;
        endcase
    end

    // out_channel_039_pop1778_pop31241(GPOUT,149)
    assign out_channel_039_pop1778_pop31241 = channel_039_pop1778_pop31241_mux_q;

    // channel_039_pop1779_pop42325_mux(MUX,9)
    assign channel_039_pop1779_pop42325_mux_s = in_valid_in_0;
    always @(channel_039_pop1779_pop42325_mux_s or in_channel_039_pop1779_pop42325_1 or in_channel_039_pop1779_pop42325_0)
    begin
        unique case (channel_039_pop1779_pop42325_mux_s)
            1'b0 : channel_039_pop1779_pop42325_mux_q = in_channel_039_pop1779_pop42325_1;
            1'b1 : channel_039_pop1779_pop42325_mux_q = in_channel_039_pop1779_pop42325_0;
            default : channel_039_pop1779_pop42325_mux_q = 32'b0;
        endcase
    end

    // out_channel_039_pop1779_pop42325(GPOUT,150)
    assign out_channel_039_pop1779_pop42325 = channel_039_pop1779_pop42325_mux_q;

    // col_037_pop27111_pop50349_mux(MUX,10)
    assign col_037_pop27111_pop50349_mux_s = in_valid_in_0;
    always @(col_037_pop27111_pop50349_mux_s or in_col_037_pop27111_pop50349_1 or in_col_037_pop27111_pop50349_0)
    begin
        unique case (col_037_pop27111_pop50349_mux_s)
            1'b0 : col_037_pop27111_pop50349_mux_q = in_col_037_pop27111_pop50349_1;
            1'b1 : col_037_pop27111_pop50349_mux_q = in_col_037_pop27111_pop50349_0;
            default : col_037_pop27111_pop50349_mux_q = 32'b0;
        endcase
    end

    // out_col_037_pop27111_pop50349(GPOUT,151)
    assign out_col_037_pop27111_pop50349 = col_037_pop27111_pop50349_mux_q;

    // col_037_pop27256_mux(MUX,11)
    assign col_037_pop27256_mux_s = in_valid_in_0;
    always @(col_037_pop27256_mux_s or in_col_037_pop27256_1 or in_col_037_pop27256_0)
    begin
        unique case (col_037_pop27256_mux_s)
            1'b0 : col_037_pop27256_mux_q = in_col_037_pop27256_1;
            1'b1 : col_037_pop27256_mux_q = in_col_037_pop27256_0;
            default : col_037_pop27256_mux_q = 32'b0;
        endcase
    end

    // out_col_037_pop27256(GPOUT,152)
    assign out_col_037_pop27256 = col_037_pop27256_mux_q;

    // exitcond22307_mux(MUX,12)
    assign exitcond22307_mux_s = in_valid_in_0;
    always @(exitcond22307_mux_s or in_exitcond22307_1 or in_exitcond22307_0)
    begin
        unique case (exitcond22307_mux_s)
            1'b0 : exitcond22307_mux_q = in_exitcond22307_1;
            1'b1 : exitcond22307_mux_q = in_exitcond22307_0;
            default : exitcond22307_mux_q = 1'b0;
        endcase
    end

    // out_exitcond22307(GPOUT,153)
    assign out_exitcond22307 = exitcond22307_mux_q;

    // exitcond25117_pop52355_mux(MUX,13)
    assign exitcond25117_pop52355_mux_s = in_valid_in_0;
    always @(exitcond25117_pop52355_mux_s or in_exitcond25117_pop52355_1 or in_exitcond25117_pop52355_0)
    begin
        unique case (exitcond25117_pop52355_mux_s)
            1'b0 : exitcond25117_pop52355_mux_q = in_exitcond25117_pop52355_1;
            1'b1 : exitcond25117_pop52355_mux_q = in_exitcond25117_pop52355_0;
            default : exitcond25117_pop52355_mux_q = 1'b0;
        endcase
    end

    // out_exitcond25117_pop52355(GPOUT,154)
    assign out_exitcond25117_pop52355 = exitcond25117_pop52355_mux_q;

    // exitcond25266_mux(MUX,14)
    assign exitcond25266_mux_s = in_valid_in_0;
    always @(exitcond25266_mux_s or in_exitcond25266_1 or in_exitcond25266_0)
    begin
        unique case (exitcond25266_mux_s)
            1'b0 : exitcond25266_mux_q = in_exitcond25266_1;
            1'b1 : exitcond25266_mux_q = in_exitcond25266_0;
            default : exitcond25266_mux_q = 1'b0;
        endcase
    end

    // out_exitcond25266(GPOUT,155)
    assign out_exitcond25266 = exitcond25266_mux_q;

    // exitcond28181_mux(MUX,15)
    assign exitcond28181_mux_s = in_valid_in_0;
    always @(exitcond28181_mux_s or in_exitcond28181_1 or in_exitcond28181_0)
    begin
        unique case (exitcond28181_mux_s)
            1'b0 : exitcond28181_mux_q = in_exitcond28181_1;
            1'b1 : exitcond28181_mux_q = in_exitcond28181_0;
            default : exitcond28181_mux_q = 1'b0;
        endcase
    end

    // out_exitcond28181(GPOUT,156)
    assign out_exitcond28181 = exitcond28181_mux_q;

    // exitcond2888_pop33296_mux(MUX,16)
    assign exitcond2888_pop33296_mux_s = in_valid_in_0;
    always @(exitcond2888_pop33296_mux_s or in_exitcond2888_pop33296_1 or in_exitcond2888_pop33296_0)
    begin
        unique case (exitcond2888_pop33296_mux_s)
            1'b0 : exitcond2888_pop33296_mux_q = in_exitcond2888_pop33296_1;
            1'b1 : exitcond2888_pop33296_mux_q = in_exitcond2888_pop33296_0;
            default : exitcond2888_pop33296_mux_q = 1'b0;
        endcase
    end

    // out_exitcond2888_pop33296(GPOUT,157)
    assign out_exitcond2888_pop33296 = exitcond2888_pop33296_mux_q;

    // exitcond2889_pop44331_mux(MUX,17)
    assign exitcond2889_pop44331_mux_s = in_valid_in_0;
    always @(exitcond2889_pop44331_mux_s or in_exitcond2889_pop44331_1 or in_exitcond2889_pop44331_0)
    begin
        unique case (exitcond2889_pop44331_mux_s)
            1'b0 : exitcond2889_pop44331_mux_q = in_exitcond2889_pop44331_1;
            1'b1 : exitcond2889_pop44331_mux_q = in_exitcond2889_pop44331_0;
            default : exitcond2889_pop44331_mux_q = 1'b0;
        endcase
    end

    // out_exitcond2889_pop44331(GPOUT,158)
    assign out_exitcond2889_pop44331 = exitcond2889_pop44331_mux_q;

    // exitcond31146_mux(MUX,18)
    assign exitcond31146_mux_s = in_valid_in_0;
    always @(exitcond31146_mux_s or in_exitcond31146_1 or in_exitcond31146_0)
    begin
        unique case (exitcond31146_mux_s)
            1'b0 : exitcond31146_mux_q = in_exitcond31146_1;
            1'b1 : exitcond31146_mux_q = in_exitcond31146_0;
            default : exitcond31146_mux_q = 1'b0;
        endcase
    end

    // out_exitcond31146(GPOUT,159)
    assign out_exitcond31146 = exitcond31146_mux_q;

    // exitcond3167_pop22209_mux(MUX,19)
    assign exitcond3167_pop22209_mux_s = in_valid_in_0;
    always @(exitcond3167_pop22209_mux_s or in_exitcond3167_pop22209_1 or in_exitcond3167_pop22209_0)
    begin
        unique case (exitcond3167_pop22209_mux_s)
            1'b0 : exitcond3167_pop22209_mux_q = in_exitcond3167_pop22209_1;
            1'b1 : exitcond3167_pop22209_mux_q = in_exitcond3167_pop22209_0;
            default : exitcond3167_pop22209_mux_q = 1'b0;
        endcase
    end

    // out_exitcond3167_pop22209(GPOUT,160)
    assign out_exitcond3167_pop22209 = exitcond3167_pop22209_mux_q;

    // exitcond3168_pop29281_mux(MUX,20)
    assign exitcond3168_pop29281_mux_s = in_valid_in_0;
    always @(exitcond3168_pop29281_mux_s or in_exitcond3168_pop29281_1 or in_exitcond3168_pop29281_0)
    begin
        unique case (exitcond3168_pop29281_mux_s)
            1'b0 : exitcond3168_pop29281_mux_q = in_exitcond3168_pop29281_1;
            1'b1 : exitcond3168_pop29281_mux_q = in_exitcond3168_pop29281_0;
            default : exitcond3168_pop29281_mux_q = 1'b0;
        endcase
    end

    // out_exitcond3168_pop29281(GPOUT,161)
    assign out_exitcond3168_pop29281 = exitcond3168_pop29281_mux_q;

    // exitcond3169_pop40319_mux(MUX,21)
    assign exitcond3169_pop40319_mux_s = in_valid_in_0;
    always @(exitcond3169_pop40319_mux_s or in_exitcond3169_pop40319_1 or in_exitcond3169_pop40319_0)
    begin
        unique case (exitcond3169_pop40319_mux_s)
            1'b0 : exitcond3169_pop40319_mux_q = in_exitcond3169_pop40319_1;
            1'b1 : exitcond3169_pop40319_mux_q = in_exitcond3169_pop40319_0;
            default : exitcond3169_pop40319_mux_q = 1'b0;
        endcase
    end

    // out_exitcond3169_pop40319(GPOUT,162)
    assign out_exitcond3169_pop40319 = exitcond3169_pop40319_mux_q;

    // forked126_mux(MUX,22)
    assign forked126_mux_s = in_valid_in_0;
    always @(forked126_mux_s or in_forked126_1 or in_forked126_0)
    begin
        unique case (forked126_mux_s)
            1'b0 : forked126_mux_q = in_forked126_1;
            1'b1 : forked126_mux_q = in_forked126_0;
            default : forked126_mux_q = 1'b0;
        endcase
    end

    // out_forked126(GPOUT,163)
    assign out_forked126 = forked126_mux_q;

    // idxprom25105_pop48343_mux(MUX,23)
    assign idxprom25105_pop48343_mux_s = in_valid_in_0;
    always @(idxprom25105_pop48343_mux_s or in_idxprom25105_pop48343_1 or in_idxprom25105_pop48343_0)
    begin
        unique case (idxprom25105_pop48343_mux_s)
            1'b0 : idxprom25105_pop48343_mux_q = in_idxprom25105_pop48343_1;
            1'b1 : idxprom25105_pop48343_mux_q = in_idxprom25105_pop48343_0;
            default : idxprom25105_pop48343_mux_q = 64'b0;
        endcase
    end

    // out_idxprom25105_pop48343(GPOUT,164)
    assign out_idxprom25105_pop48343 = idxprom25105_pop48343_mux_q;

    // idxprom25246_mux(MUX,24)
    assign idxprom25246_mux_s = in_valid_in_0;
    always @(idxprom25246_mux_s or in_idxprom25246_1 or in_idxprom25246_0)
    begin
        unique case (idxprom25246_mux_s)
            1'b0 : idxprom25246_mux_q = in_idxprom25246_1;
            1'b1 : idxprom25246_mux_q = in_idxprom25246_0;
            default : idxprom25246_mux_q = 64'b0;
        endcase
    end

    // out_idxprom25246(GPOUT,165)
    assign out_idxprom25246 = idxprom25246_mux_q;

    // k_036_pop38313_mux(MUX,122)
    assign k_036_pop38313_mux_s = in_valid_in_0;
    always @(k_036_pop38313_mux_s or in_k_036_pop38313_1 or in_k_036_pop38313_0)
    begin
        unique case (k_036_pop38313_mux_s)
            1'b0 : k_036_pop38313_mux_q = in_k_036_pop38313_1;
            1'b1 : k_036_pop38313_mux_q = in_k_036_pop38313_0;
            default : k_036_pop38313_mux_q = 32'b0;
        endcase
    end

    // out_k_036_pop38313(GPOUT,166)
    assign out_k_036_pop38313 = k_036_pop38313_mux_q;

    // memdep_phi3_pop39316_mux(MUX,123)
    assign memdep_phi3_pop39316_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop39316_mux_s or in_memdep_phi3_pop39316_1 or in_memdep_phi3_pop39316_0)
    begin
        unique case (memdep_phi3_pop39316_mux_s)
            1'b0 : memdep_phi3_pop39316_mux_q = in_memdep_phi3_pop39316_1;
            1'b1 : memdep_phi3_pop39316_mux_q = in_memdep_phi3_pop39316_0;
            default : memdep_phi3_pop39316_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop39316(GPOUT,167)
    assign out_memdep_phi3_pop39316 = memdep_phi3_pop39316_mux_q;

    // memdep_phi4_pop28123_pop54361_mux(MUX,124)
    assign memdep_phi4_pop28123_pop54361_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop28123_pop54361_mux_s or in_memdep_phi4_pop28123_pop54361_1 or in_memdep_phi4_pop28123_pop54361_0)
    begin
        unique case (memdep_phi4_pop28123_pop54361_mux_s)
            1'b0 : memdep_phi4_pop28123_pop54361_mux_q = in_memdep_phi4_pop28123_pop54361_1;
            1'b1 : memdep_phi4_pop28123_pop54361_mux_q = in_memdep_phi4_pop28123_pop54361_0;
            default : memdep_phi4_pop28123_pop54361_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop28123_pop54361(GPOUT,168)
    assign out_memdep_phi4_pop28123_pop54361 = memdep_phi4_pop28123_pop54361_mux_q;

    // memdep_phi4_pop28276_mux(MUX,125)
    assign memdep_phi4_pop28276_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop28276_mux_s or in_memdep_phi4_pop28276_1 or in_memdep_phi4_pop28276_0)
    begin
        unique case (memdep_phi4_pop28276_mux_s)
            1'b0 : memdep_phi4_pop28276_mux_q = in_memdep_phi4_pop28276_1;
            1'b1 : memdep_phi4_pop28276_mux_q = in_memdep_phi4_pop28276_0;
            default : memdep_phi4_pop28276_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop28276(GPOUT,169)
    assign out_memdep_phi4_pop28276 = memdep_phi4_pop28276_mux_q;

    // memdep_phi5_pop21100_pop36306_mux(MUX,126)
    assign memdep_phi5_pop21100_pop36306_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop21100_pop36306_mux_s or in_memdep_phi5_pop21100_pop36306_1 or in_memdep_phi5_pop21100_pop36306_0)
    begin
        unique case (memdep_phi5_pop21100_pop36306_mux_s)
            1'b0 : memdep_phi5_pop21100_pop36306_mux_q = in_memdep_phi5_pop21100_pop36306_1;
            1'b1 : memdep_phi5_pop21100_pop36306_mux_q = in_memdep_phi5_pop21100_pop36306_0;
            default : memdep_phi5_pop21100_pop36306_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop21100_pop36306(GPOUT,170)
    assign out_memdep_phi5_pop21100_pop36306 = memdep_phi5_pop21100_pop36306_mux_q;

    // memdep_phi5_pop21101_pop47340_mux(MUX,127)
    assign memdep_phi5_pop21101_pop47340_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop21101_pop47340_mux_s or in_memdep_phi5_pop21101_pop47340_1 or in_memdep_phi5_pop21101_pop47340_0)
    begin
        unique case (memdep_phi5_pop21101_pop47340_mux_s)
            1'b0 : memdep_phi5_pop21101_pop47340_mux_q = in_memdep_phi5_pop21101_pop47340_1;
            1'b1 : memdep_phi5_pop21101_pop47340_mux_q = in_memdep_phi5_pop21101_pop47340_0;
            default : memdep_phi5_pop21101_pop47340_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop21101_pop47340(GPOUT,171)
    assign out_memdep_phi5_pop21101_pop47340 = memdep_phi5_pop21101_pop47340_mux_q;

    // memdep_phi5_pop21202_mux(MUX,128)
    assign memdep_phi5_pop21202_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop21202_mux_s or in_memdep_phi5_pop21202_1 or in_memdep_phi5_pop21202_0)
    begin
        unique case (memdep_phi5_pop21202_mux_s)
            1'b0 : memdep_phi5_pop21202_mux_q = in_memdep_phi5_pop21202_1;
            1'b1 : memdep_phi5_pop21202_mux_q = in_memdep_phi5_pop21202_0;
            default : memdep_phi5_pop21202_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop21202(GPOUT,172)
    assign out_memdep_phi5_pop21202 = memdep_phi5_pop21202_mux_q;

    // memdep_phi6_pop18173_mux(MUX,129)
    assign memdep_phi6_pop18173_mux_s = in_valid_in_0;
    always @(memdep_phi6_pop18173_mux_s or in_memdep_phi6_pop18173_1 or in_memdep_phi6_pop18173_0)
    begin
        unique case (memdep_phi6_pop18173_mux_s)
            1'b0 : memdep_phi6_pop18173_mux_q = in_memdep_phi6_pop18173_1;
            1'b1 : memdep_phi6_pop18173_mux_q = in_memdep_phi6_pop18173_0;
            default : memdep_phi6_pop18173_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi6_pop18173(GPOUT,173)
    assign out_memdep_phi6_pop18173 = memdep_phi6_pop18173_mux_q;

    // memdep_phi6_pop1882_pop25230_mux(MUX,130)
    assign memdep_phi6_pop1882_pop25230_mux_s = in_valid_in_0;
    always @(memdep_phi6_pop1882_pop25230_mux_s or in_memdep_phi6_pop1882_pop25230_1 or in_memdep_phi6_pop1882_pop25230_0)
    begin
        unique case (memdep_phi6_pop1882_pop25230_mux_s)
            1'b0 : memdep_phi6_pop1882_pop25230_mux_q = in_memdep_phi6_pop1882_pop25230_1;
            1'b1 : memdep_phi6_pop1882_pop25230_mux_q = in_memdep_phi6_pop1882_pop25230_0;
            default : memdep_phi6_pop1882_pop25230_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi6_pop1882_pop25230(GPOUT,174)
    assign out_memdep_phi6_pop1882_pop25230 = memdep_phi6_pop1882_pop25230_mux_q;

    // memdep_phi6_pop1883_pop32291_mux(MUX,131)
    assign memdep_phi6_pop1883_pop32291_mux_s = in_valid_in_0;
    always @(memdep_phi6_pop1883_pop32291_mux_s or in_memdep_phi6_pop1883_pop32291_1 or in_memdep_phi6_pop1883_pop32291_0)
    begin
        unique case (memdep_phi6_pop1883_pop32291_mux_s)
            1'b0 : memdep_phi6_pop1883_pop32291_mux_q = in_memdep_phi6_pop1883_pop32291_1;
            1'b1 : memdep_phi6_pop1883_pop32291_mux_q = in_memdep_phi6_pop1883_pop32291_0;
            default : memdep_phi6_pop1883_pop32291_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi6_pop1883_pop32291(GPOUT,175)
    assign out_memdep_phi6_pop1883_pop32291 = memdep_phi6_pop1883_pop32291_mux_q;

    // memdep_phi6_pop1884_pop43328_mux(MUX,132)
    assign memdep_phi6_pop1884_pop43328_mux_s = in_valid_in_0;
    always @(memdep_phi6_pop1884_pop43328_mux_s or in_memdep_phi6_pop1884_pop43328_1 or in_memdep_phi6_pop1884_pop43328_0)
    begin
        unique case (memdep_phi6_pop1884_pop43328_mux_s)
            1'b0 : memdep_phi6_pop1884_pop43328_mux_q = in_memdep_phi6_pop1884_pop43328_1;
            1'b1 : memdep_phi6_pop1884_pop43328_mux_q = in_memdep_phi6_pop1884_pop43328_0;
            default : memdep_phi6_pop1884_pop43328_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi6_pop1884_pop43328(GPOUT,176)
    assign out_memdep_phi6_pop1884_pop43328 = memdep_phi6_pop1884_pop43328_mux_q;

    // notcmp41310_mux(MUX,133)
    assign notcmp41310_mux_s = in_valid_in_0;
    always @(notcmp41310_mux_s or in_notcmp41310_1 or in_notcmp41310_0)
    begin
        unique case (notcmp41310_mux_s)
            1'b0 : notcmp41310_mux_q = in_notcmp41310_1;
            1'b1 : notcmp41310_mux_q = in_notcmp41310_0;
            default : notcmp41310_mux_q = 1'b0;
        endcase
    end

    // out_notcmp41310(GPOUT,177)
    assign out_notcmp41310 = notcmp41310_mux_q;

    // notcmp46120_pop53358_mux(MUX,134)
    assign notcmp46120_pop53358_mux_s = in_valid_in_0;
    always @(notcmp46120_pop53358_mux_s or in_notcmp46120_pop53358_1 or in_notcmp46120_pop53358_0)
    begin
        unique case (notcmp46120_pop53358_mux_s)
            1'b0 : notcmp46120_pop53358_mux_q = in_notcmp46120_pop53358_1;
            1'b1 : notcmp46120_pop53358_mux_q = in_notcmp46120_pop53358_0;
            default : notcmp46120_pop53358_mux_q = 1'b0;
        endcase
    end

    // out_notcmp46120_pop53358(GPOUT,178)
    assign out_notcmp46120_pop53358 = notcmp46120_pop53358_mux_q;

    // notcmp46271_mux(MUX,135)
    assign notcmp46271_mux_s = in_valid_in_0;
    always @(notcmp46271_mux_s or in_notcmp46271_1 or in_notcmp46271_0)
    begin
        unique case (notcmp46271_mux_s)
            1'b0 : notcmp46271_mux_q = in_notcmp46271_1;
            1'b1 : notcmp46271_mux_q = in_notcmp46271_0;
            default : notcmp46271_mux_q = 1'b0;
        endcase
    end

    // out_notcmp46271(GPOUT,179)
    assign out_notcmp46271 = notcmp46271_mux_q;

    // notcmp51188_mux(MUX,136)
    assign notcmp51188_mux_s = in_valid_in_0;
    always @(notcmp51188_mux_s or in_notcmp51188_1 or in_notcmp51188_0)
    begin
        unique case (notcmp51188_mux_s)
            1'b0 : notcmp51188_mux_q = in_notcmp51188_1;
            1'b1 : notcmp51188_mux_q = in_notcmp51188_0;
            default : notcmp51188_mux_q = 1'b0;
        endcase
    end

    // out_notcmp51188(GPOUT,180)
    assign out_notcmp51188 = notcmp51188_mux_q;

    // notcmp5192_pop34301_mux(MUX,137)
    assign notcmp5192_pop34301_mux_s = in_valid_in_0;
    always @(notcmp5192_pop34301_mux_s or in_notcmp5192_pop34301_1 or in_notcmp5192_pop34301_0)
    begin
        unique case (notcmp5192_pop34301_mux_s)
            1'b0 : notcmp5192_pop34301_mux_q = in_notcmp5192_pop34301_1;
            1'b1 : notcmp5192_pop34301_mux_q = in_notcmp5192_pop34301_0;
            default : notcmp5192_pop34301_mux_q = 1'b0;
        endcase
    end

    // out_notcmp5192_pop34301(GPOUT,181)
    assign out_notcmp5192_pop34301 = notcmp5192_pop34301_mux_q;

    // notcmp5193_pop45334_mux(MUX,138)
    assign notcmp5193_pop45334_mux_s = in_valid_in_0;
    always @(notcmp5193_pop45334_mux_s or in_notcmp5193_pop45334_1 or in_notcmp5193_pop45334_0)
    begin
        unique case (notcmp5193_pop45334_mux_s)
            1'b0 : notcmp5193_pop45334_mux_q = in_notcmp5193_pop45334_1;
            1'b1 : notcmp5193_pop45334_mux_q = in_notcmp5193_pop45334_0;
            default : notcmp5193_pop45334_mux_q = 1'b0;
        endcase
    end

    // out_notcmp5193_pop45334(GPOUT,182)
    assign out_notcmp5193_pop45334 = notcmp5193_pop45334_mux_q;

    // notcmp56155_mux(MUX,139)
    assign notcmp56155_mux_s = in_valid_in_0;
    always @(notcmp56155_mux_s or in_notcmp56155_1 or in_notcmp56155_0)
    begin
        unique case (notcmp56155_mux_s)
            1'b0 : notcmp56155_mux_q = in_notcmp56155_1;
            1'b1 : notcmp56155_mux_q = in_notcmp56155_0;
            default : notcmp56155_mux_q = 1'b0;
        endcase
    end

    // out_notcmp56155(GPOUT,183)
    assign out_notcmp56155 = notcmp56155_mux_q;

    // notcmp5672_pop23216_mux(MUX,140)
    assign notcmp5672_pop23216_mux_s = in_valid_in_0;
    always @(notcmp5672_pop23216_mux_s or in_notcmp5672_pop23216_1 or in_notcmp5672_pop23216_0)
    begin
        unique case (notcmp5672_pop23216_mux_s)
            1'b0 : notcmp5672_pop23216_mux_q = in_notcmp5672_pop23216_1;
            1'b1 : notcmp5672_pop23216_mux_q = in_notcmp5672_pop23216_0;
            default : notcmp5672_pop23216_mux_q = 1'b0;
        endcase
    end

    // out_notcmp5672_pop23216(GPOUT,184)
    assign out_notcmp5672_pop23216 = notcmp5672_pop23216_mux_q;

    // notcmp5673_pop30286_mux(MUX,141)
    assign notcmp5673_pop30286_mux_s = in_valid_in_0;
    always @(notcmp5673_pop30286_mux_s or in_notcmp5673_pop30286_1 or in_notcmp5673_pop30286_0)
    begin
        unique case (notcmp5673_pop30286_mux_s)
            1'b0 : notcmp5673_pop30286_mux_q = in_notcmp5673_pop30286_1;
            1'b1 : notcmp5673_pop30286_mux_q = in_notcmp5673_pop30286_0;
            default : notcmp5673_pop30286_mux_q = 1'b0;
        endcase
    end

    // out_notcmp5673_pop30286(GPOUT,185)
    assign out_notcmp5673_pop30286 = notcmp5673_pop30286_mux_q;

    // notcmp5674_pop41322_mux(MUX,142)
    assign notcmp5674_pop41322_mux_s = in_valid_in_0;
    always @(notcmp5674_pop41322_mux_s or in_notcmp5674_pop41322_1 or in_notcmp5674_pop41322_0)
    begin
        unique case (notcmp5674_pop41322_mux_s)
            1'b0 : notcmp5674_pop41322_mux_q = in_notcmp5674_pop41322_1;
            1'b1 : notcmp5674_pop41322_mux_q = in_notcmp5674_pop41322_0;
            default : notcmp5674_pop41322_mux_q = 1'b0;
        endcase
    end

    // out_notcmp5674_pop41322(GPOUT,186)
    assign out_notcmp5674_pop41322 = notcmp5674_pop41322_mux_q;

    // row_038_pop20195_mux(MUX,193)
    assign row_038_pop20195_mux_s = in_valid_in_0;
    always @(row_038_pop20195_mux_s or in_row_038_pop20195_1 or in_row_038_pop20195_0)
    begin
        unique case (row_038_pop20195_mux_s)
            1'b0 : row_038_pop20195_mux_q = in_row_038_pop20195_1;
            1'b1 : row_038_pop20195_mux_q = in_row_038_pop20195_0;
            default : row_038_pop20195_mux_q = 32'b0;
        endcase
    end

    // out_row_038_pop20195(GPOUT,187)
    assign out_row_038_pop20195 = row_038_pop20195_mux_q;

    // row_038_pop2096_pop35236_mux(MUX,194)
    assign row_038_pop2096_pop35236_mux_s = in_valid_in_0;
    always @(row_038_pop2096_pop35236_mux_s or in_row_038_pop2096_pop35236_1 or in_row_038_pop2096_pop35236_0)
    begin
        unique case (row_038_pop2096_pop35236_mux_s)
            1'b0 : row_038_pop2096_pop35236_mux_q = in_row_038_pop2096_pop35236_1;
            1'b1 : row_038_pop2096_pop35236_mux_q = in_row_038_pop2096_pop35236_0;
            default : row_038_pop2096_pop35236_mux_q = 32'b0;
        endcase
    end

    // out_row_038_pop2096_pop35236(GPOUT,188)
    assign out_row_038_pop2096_pop35236 = row_038_pop2096_pop35236_mux_q;

    // row_038_pop2097_pop46337_mux(MUX,195)
    assign row_038_pop2097_pop46337_mux_s = in_valid_in_0;
    always @(row_038_pop2097_pop46337_mux_s or in_row_038_pop2097_pop46337_1 or in_row_038_pop2097_pop46337_0)
    begin
        unique case (row_038_pop2097_pop46337_mux_s)
            1'b0 : row_038_pop2097_pop46337_mux_q = in_row_038_pop2097_pop46337_1;
            1'b1 : row_038_pop2097_pop46337_mux_q = in_row_038_pop2097_pop46337_0;
            default : row_038_pop2097_pop46337_mux_q = 32'b0;
        endcase
    end

    // out_row_038_pop2097_pop46337(GPOUT,189)
    assign out_row_038_pop2097_pop46337 = row_038_pop2097_pop46337_mux_q;

    // valid_or(LOGICAL,198)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,196)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,190)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,197)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,191)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,192)
    assign out_valid_out = valid_or_q;

endmodule
