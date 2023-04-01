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

// SystemVerilog created from conv2_B7_merge
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_B7_merge (
    input wire [31:0] in_add367_0,
    input wire [31:0] in_add367_1,
    input wire [63:0] in_arrayidx34109_pop67379_0,
    input wire [63:0] in_arrayidx34109_pop67379_1,
    input wire [63:0] in_arrayidx64115_pop69381_0,
    input wire [63:0] in_arrayidx64115_pop69381_1,
    input wire [31:0] in_channel_039_pop1780_pop60373_0,
    input wire [31:0] in_channel_039_pop1780_pop60373_1,
    input wire [31:0] in_col_037_pop27112_pop68380_0,
    input wire [31:0] in_col_037_pop27112_pop68380_1,
    input wire [0:0] in_exitcond19368_0,
    input wire [0:0] in_exitcond19368_1,
    input wire [0:0] in_exitcond22127_pop73385_0,
    input wire [0:0] in_exitcond22127_pop73385_1,
    input wire [0:0] in_exitcond25118_pop70382_0,
    input wire [0:0] in_exitcond25118_pop70382_1,
    input wire [0:0] in_exitcond2890_pop62375_0,
    input wire [0:0] in_exitcond2890_pop62375_1,
    input wire [0:0] in_exitcond3170_pop58371_0,
    input wire [0:0] in_exitcond3170_pop58371_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_i_035_pop56364_0,
    input wire [31:0] in_i_035_pop56364_1,
    input wire [63:0] in_idxprom25106_pop66378_0,
    input wire [63:0] in_idxprom25106_pop66378_1,
    input wire [31:0] in_k_036_pop38131_pop75365_0,
    input wire [31:0] in_k_036_pop38131_pop75365_1,
    input wire [0:0] in_memdep_phi2_pop57370_0,
    input wire [0:0] in_memdep_phi2_pop57370_1,
    input wire [0:0] in_memdep_phi3_pop39133_pop76387_0,
    input wire [0:0] in_memdep_phi3_pop39133_pop76387_1,
    input wire [0:0] in_memdep_phi4_pop28124_pop72384_0,
    input wire [0:0] in_memdep_phi4_pop28124_pop72384_1,
    input wire [0:0] in_memdep_phi5_pop21102_pop65377_0,
    input wire [0:0] in_memdep_phi5_pop21102_pop65377_1,
    input wire [0:0] in_memdep_phi6_pop1885_pop61374_0,
    input wire [0:0] in_memdep_phi6_pop1885_pop61374_1,
    input wire [0:0] in_notcmp36369_0,
    input wire [0:0] in_notcmp36369_1,
    input wire [0:0] in_notcmp41129_pop74386_0,
    input wire [0:0] in_notcmp41129_pop74386_1,
    input wire [0:0] in_notcmp46121_pop71383_0,
    input wire [0:0] in_notcmp46121_pop71383_1,
    input wire [0:0] in_notcmp5194_pop63376_0,
    input wire [0:0] in_notcmp5194_pop63376_1,
    input wire [0:0] in_notcmp5675_pop59372_0,
    input wire [0:0] in_notcmp5675_pop59372_1,
    input wire [31:0] in_row_038_pop2098_pop64366_0,
    input wire [31:0] in_row_038_pop2098_pop64366_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_conv27_0,
    input wire [31:0] in_unnamed_conv27_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add367,
    output wire [63:0] out_arrayidx34109_pop67379,
    output wire [63:0] out_arrayidx64115_pop69381,
    output wire [31:0] out_channel_039_pop1780_pop60373,
    output wire [31:0] out_col_037_pop27112_pop68380,
    output wire [0:0] out_exitcond19368,
    output wire [0:0] out_exitcond22127_pop73385,
    output wire [0:0] out_exitcond25118_pop70382,
    output wire [0:0] out_exitcond2890_pop62375,
    output wire [0:0] out_exitcond3170_pop58371,
    output wire [0:0] out_forked,
    output wire [31:0] out_i_035_pop56364,
    output wire [63:0] out_idxprom25106_pop66378,
    output wire [31:0] out_k_036_pop38131_pop75365,
    output wire [0:0] out_memdep_phi2_pop57370,
    output wire [0:0] out_memdep_phi3_pop39133_pop76387,
    output wire [0:0] out_memdep_phi4_pop28124_pop72384,
    output wire [0:0] out_memdep_phi5_pop21102_pop65377,
    output wire [0:0] out_memdep_phi6_pop1885_pop61374,
    output wire [0:0] out_notcmp36369,
    output wire [0:0] out_notcmp41129_pop74386,
    output wire [0:0] out_notcmp46121_pop71383,
    output wire [0:0] out_notcmp5194_pop63376,
    output wire [0:0] out_notcmp5675_pop59372,
    output wire [31:0] out_row_038_pop2098_pop64366,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_conv27,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add367_mux_s;
    reg [31:0] add367_mux_q;
    wire [0:0] arrayidx34109_pop67379_mux_s;
    reg [63:0] arrayidx34109_pop67379_mux_q;
    wire [0:0] arrayidx64115_pop69381_mux_s;
    reg [63:0] arrayidx64115_pop69381_mux_q;
    wire [0:0] channel_039_pop1780_pop60373_mux_s;
    reg [31:0] channel_039_pop1780_pop60373_mux_q;
    wire [0:0] col_037_pop27112_pop68380_mux_s;
    reg [31:0] col_037_pop27112_pop68380_mux_q;
    wire [0:0] exitcond19368_mux_s;
    reg [0:0] exitcond19368_mux_q;
    wire [0:0] exitcond22127_pop73385_mux_s;
    reg [0:0] exitcond22127_pop73385_mux_q;
    wire [0:0] exitcond25118_pop70382_mux_s;
    reg [0:0] exitcond25118_pop70382_mux_q;
    wire [0:0] exitcond2890_pop62375_mux_s;
    reg [0:0] exitcond2890_pop62375_mux_q;
    wire [0:0] exitcond3170_pop58371_mux_s;
    reg [0:0] exitcond3170_pop58371_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] i_035_pop56364_mux_s;
    reg [31:0] i_035_pop56364_mux_q;
    wire [0:0] idxprom25106_pop66378_mux_s;
    reg [63:0] idxprom25106_pop66378_mux_q;
    wire [0:0] k_036_pop38131_pop75365_mux_s;
    reg [31:0] k_036_pop38131_pop75365_mux_q;
    wire [0:0] memdep_phi2_pop57370_mux_s;
    reg [0:0] memdep_phi2_pop57370_mux_q;
    wire [0:0] memdep_phi3_pop39133_pop76387_mux_s;
    reg [0:0] memdep_phi3_pop39133_pop76387_mux_q;
    wire [0:0] memdep_phi4_pop28124_pop72384_mux_s;
    reg [0:0] memdep_phi4_pop28124_pop72384_mux_q;
    wire [0:0] memdep_phi5_pop21102_pop65377_mux_s;
    reg [0:0] memdep_phi5_pop21102_pop65377_mux_q;
    wire [0:0] memdep_phi6_pop1885_pop61374_mux_s;
    reg [0:0] memdep_phi6_pop1885_pop61374_mux_q;
    wire [0:0] notcmp36369_mux_s;
    reg [0:0] notcmp36369_mux_q;
    wire [0:0] notcmp41129_pop74386_mux_s;
    reg [0:0] notcmp41129_pop74386_mux_q;
    wire [0:0] notcmp46121_pop71383_mux_s;
    reg [0:0] notcmp46121_pop71383_mux_q;
    wire [0:0] notcmp5194_pop63376_mux_s;
    reg [0:0] notcmp5194_pop63376_mux_q;
    wire [0:0] notcmp5675_pop59372_mux_s;
    reg [0:0] notcmp5675_pop59372_mux_q;
    wire [0:0] row_038_pop2098_pop64366_mux_s;
    reg [31:0] row_038_pop2098_pop64366_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_conv27_mux_s;
    reg [31:0] unnamed_conv27_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add367_mux(MUX,2)
    assign add367_mux_s = in_valid_in_0;
    always @(add367_mux_s or in_add367_1 or in_add367_0)
    begin
        unique case (add367_mux_s)
            1'b0 : add367_mux_q = in_add367_1;
            1'b1 : add367_mux_q = in_add367_0;
            default : add367_mux_q = 32'b0;
        endcase
    end

    // out_add367(GPOUT,81)
    assign out_add367 = add367_mux_q;

    // arrayidx34109_pop67379_mux(MUX,3)
    assign arrayidx34109_pop67379_mux_s = in_valid_in_0;
    always @(arrayidx34109_pop67379_mux_s or in_arrayidx34109_pop67379_1 or in_arrayidx34109_pop67379_0)
    begin
        unique case (arrayidx34109_pop67379_mux_s)
            1'b0 : arrayidx34109_pop67379_mux_q = in_arrayidx34109_pop67379_1;
            1'b1 : arrayidx34109_pop67379_mux_q = in_arrayidx34109_pop67379_0;
            default : arrayidx34109_pop67379_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx34109_pop67379(GPOUT,82)
    assign out_arrayidx34109_pop67379 = arrayidx34109_pop67379_mux_q;

    // arrayidx64115_pop69381_mux(MUX,4)
    assign arrayidx64115_pop69381_mux_s = in_valid_in_0;
    always @(arrayidx64115_pop69381_mux_s or in_arrayidx64115_pop69381_1 or in_arrayidx64115_pop69381_0)
    begin
        unique case (arrayidx64115_pop69381_mux_s)
            1'b0 : arrayidx64115_pop69381_mux_q = in_arrayidx64115_pop69381_1;
            1'b1 : arrayidx64115_pop69381_mux_q = in_arrayidx64115_pop69381_0;
            default : arrayidx64115_pop69381_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx64115_pop69381(GPOUT,83)
    assign out_arrayidx64115_pop69381 = arrayidx64115_pop69381_mux_q;

    // channel_039_pop1780_pop60373_mux(MUX,5)
    assign channel_039_pop1780_pop60373_mux_s = in_valid_in_0;
    always @(channel_039_pop1780_pop60373_mux_s or in_channel_039_pop1780_pop60373_1 or in_channel_039_pop1780_pop60373_0)
    begin
        unique case (channel_039_pop1780_pop60373_mux_s)
            1'b0 : channel_039_pop1780_pop60373_mux_q = in_channel_039_pop1780_pop60373_1;
            1'b1 : channel_039_pop1780_pop60373_mux_q = in_channel_039_pop1780_pop60373_0;
            default : channel_039_pop1780_pop60373_mux_q = 32'b0;
        endcase
    end

    // out_channel_039_pop1780_pop60373(GPOUT,84)
    assign out_channel_039_pop1780_pop60373 = channel_039_pop1780_pop60373_mux_q;

    // col_037_pop27112_pop68380_mux(MUX,6)
    assign col_037_pop27112_pop68380_mux_s = in_valid_in_0;
    always @(col_037_pop27112_pop68380_mux_s or in_col_037_pop27112_pop68380_1 or in_col_037_pop27112_pop68380_0)
    begin
        unique case (col_037_pop27112_pop68380_mux_s)
            1'b0 : col_037_pop27112_pop68380_mux_q = in_col_037_pop27112_pop68380_1;
            1'b1 : col_037_pop27112_pop68380_mux_q = in_col_037_pop27112_pop68380_0;
            default : col_037_pop27112_pop68380_mux_q = 32'b0;
        endcase
    end

    // out_col_037_pop27112_pop68380(GPOUT,85)
    assign out_col_037_pop27112_pop68380 = col_037_pop27112_pop68380_mux_q;

    // exitcond19368_mux(MUX,7)
    assign exitcond19368_mux_s = in_valid_in_0;
    always @(exitcond19368_mux_s or in_exitcond19368_1 or in_exitcond19368_0)
    begin
        unique case (exitcond19368_mux_s)
            1'b0 : exitcond19368_mux_q = in_exitcond19368_1;
            1'b1 : exitcond19368_mux_q = in_exitcond19368_0;
            default : exitcond19368_mux_q = 1'b0;
        endcase
    end

    // out_exitcond19368(GPOUT,86)
    assign out_exitcond19368 = exitcond19368_mux_q;

    // exitcond22127_pop73385_mux(MUX,8)
    assign exitcond22127_pop73385_mux_s = in_valid_in_0;
    always @(exitcond22127_pop73385_mux_s or in_exitcond22127_pop73385_1 or in_exitcond22127_pop73385_0)
    begin
        unique case (exitcond22127_pop73385_mux_s)
            1'b0 : exitcond22127_pop73385_mux_q = in_exitcond22127_pop73385_1;
            1'b1 : exitcond22127_pop73385_mux_q = in_exitcond22127_pop73385_0;
            default : exitcond22127_pop73385_mux_q = 1'b0;
        endcase
    end

    // out_exitcond22127_pop73385(GPOUT,87)
    assign out_exitcond22127_pop73385 = exitcond22127_pop73385_mux_q;

    // exitcond25118_pop70382_mux(MUX,9)
    assign exitcond25118_pop70382_mux_s = in_valid_in_0;
    always @(exitcond25118_pop70382_mux_s or in_exitcond25118_pop70382_1 or in_exitcond25118_pop70382_0)
    begin
        unique case (exitcond25118_pop70382_mux_s)
            1'b0 : exitcond25118_pop70382_mux_q = in_exitcond25118_pop70382_1;
            1'b1 : exitcond25118_pop70382_mux_q = in_exitcond25118_pop70382_0;
            default : exitcond25118_pop70382_mux_q = 1'b0;
        endcase
    end

    // out_exitcond25118_pop70382(GPOUT,88)
    assign out_exitcond25118_pop70382 = exitcond25118_pop70382_mux_q;

    // exitcond2890_pop62375_mux(MUX,10)
    assign exitcond2890_pop62375_mux_s = in_valid_in_0;
    always @(exitcond2890_pop62375_mux_s or in_exitcond2890_pop62375_1 or in_exitcond2890_pop62375_0)
    begin
        unique case (exitcond2890_pop62375_mux_s)
            1'b0 : exitcond2890_pop62375_mux_q = in_exitcond2890_pop62375_1;
            1'b1 : exitcond2890_pop62375_mux_q = in_exitcond2890_pop62375_0;
            default : exitcond2890_pop62375_mux_q = 1'b0;
        endcase
    end

    // out_exitcond2890_pop62375(GPOUT,89)
    assign out_exitcond2890_pop62375 = exitcond2890_pop62375_mux_q;

    // exitcond3170_pop58371_mux(MUX,11)
    assign exitcond3170_pop58371_mux_s = in_valid_in_0;
    always @(exitcond3170_pop58371_mux_s or in_exitcond3170_pop58371_1 or in_exitcond3170_pop58371_0)
    begin
        unique case (exitcond3170_pop58371_mux_s)
            1'b0 : exitcond3170_pop58371_mux_q = in_exitcond3170_pop58371_1;
            1'b1 : exitcond3170_pop58371_mux_q = in_exitcond3170_pop58371_0;
            default : exitcond3170_pop58371_mux_q = 1'b0;
        endcase
    end

    // out_exitcond3170_pop58371(GPOUT,90)
    assign out_exitcond3170_pop58371 = exitcond3170_pop58371_mux_q;

    // forked_mux(MUX,12)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,91)
    assign out_forked = forked_mux_q;

    // i_035_pop56364_mux(MUX,13)
    assign i_035_pop56364_mux_s = in_valid_in_0;
    always @(i_035_pop56364_mux_s or in_i_035_pop56364_1 or in_i_035_pop56364_0)
    begin
        unique case (i_035_pop56364_mux_s)
            1'b0 : i_035_pop56364_mux_q = in_i_035_pop56364_1;
            1'b1 : i_035_pop56364_mux_q = in_i_035_pop56364_0;
            default : i_035_pop56364_mux_q = 32'b0;
        endcase
    end

    // out_i_035_pop56364(GPOUT,92)
    assign out_i_035_pop56364 = i_035_pop56364_mux_q;

    // idxprom25106_pop66378_mux(MUX,14)
    assign idxprom25106_pop66378_mux_s = in_valid_in_0;
    always @(idxprom25106_pop66378_mux_s or in_idxprom25106_pop66378_1 or in_idxprom25106_pop66378_0)
    begin
        unique case (idxprom25106_pop66378_mux_s)
            1'b0 : idxprom25106_pop66378_mux_q = in_idxprom25106_pop66378_1;
            1'b1 : idxprom25106_pop66378_mux_q = in_idxprom25106_pop66378_0;
            default : idxprom25106_pop66378_mux_q = 64'b0;
        endcase
    end

    // out_idxprom25106_pop66378(GPOUT,93)
    assign out_idxprom25106_pop66378 = idxprom25106_pop66378_mux_q;

    // k_036_pop38131_pop75365_mux(MUX,70)
    assign k_036_pop38131_pop75365_mux_s = in_valid_in_0;
    always @(k_036_pop38131_pop75365_mux_s or in_k_036_pop38131_pop75365_1 or in_k_036_pop38131_pop75365_0)
    begin
        unique case (k_036_pop38131_pop75365_mux_s)
            1'b0 : k_036_pop38131_pop75365_mux_q = in_k_036_pop38131_pop75365_1;
            1'b1 : k_036_pop38131_pop75365_mux_q = in_k_036_pop38131_pop75365_0;
            default : k_036_pop38131_pop75365_mux_q = 32'b0;
        endcase
    end

    // out_k_036_pop38131_pop75365(GPOUT,94)
    assign out_k_036_pop38131_pop75365 = k_036_pop38131_pop75365_mux_q;

    // memdep_phi2_pop57370_mux(MUX,71)
    assign memdep_phi2_pop57370_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop57370_mux_s or in_memdep_phi2_pop57370_1 or in_memdep_phi2_pop57370_0)
    begin
        unique case (memdep_phi2_pop57370_mux_s)
            1'b0 : memdep_phi2_pop57370_mux_q = in_memdep_phi2_pop57370_1;
            1'b1 : memdep_phi2_pop57370_mux_q = in_memdep_phi2_pop57370_0;
            default : memdep_phi2_pop57370_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop57370(GPOUT,95)
    assign out_memdep_phi2_pop57370 = memdep_phi2_pop57370_mux_q;

    // memdep_phi3_pop39133_pop76387_mux(MUX,72)
    assign memdep_phi3_pop39133_pop76387_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop39133_pop76387_mux_s or in_memdep_phi3_pop39133_pop76387_1 or in_memdep_phi3_pop39133_pop76387_0)
    begin
        unique case (memdep_phi3_pop39133_pop76387_mux_s)
            1'b0 : memdep_phi3_pop39133_pop76387_mux_q = in_memdep_phi3_pop39133_pop76387_1;
            1'b1 : memdep_phi3_pop39133_pop76387_mux_q = in_memdep_phi3_pop39133_pop76387_0;
            default : memdep_phi3_pop39133_pop76387_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop39133_pop76387(GPOUT,96)
    assign out_memdep_phi3_pop39133_pop76387 = memdep_phi3_pop39133_pop76387_mux_q;

    // memdep_phi4_pop28124_pop72384_mux(MUX,73)
    assign memdep_phi4_pop28124_pop72384_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop28124_pop72384_mux_s or in_memdep_phi4_pop28124_pop72384_1 or in_memdep_phi4_pop28124_pop72384_0)
    begin
        unique case (memdep_phi4_pop28124_pop72384_mux_s)
            1'b0 : memdep_phi4_pop28124_pop72384_mux_q = in_memdep_phi4_pop28124_pop72384_1;
            1'b1 : memdep_phi4_pop28124_pop72384_mux_q = in_memdep_phi4_pop28124_pop72384_0;
            default : memdep_phi4_pop28124_pop72384_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop28124_pop72384(GPOUT,97)
    assign out_memdep_phi4_pop28124_pop72384 = memdep_phi4_pop28124_pop72384_mux_q;

    // memdep_phi5_pop21102_pop65377_mux(MUX,74)
    assign memdep_phi5_pop21102_pop65377_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop21102_pop65377_mux_s or in_memdep_phi5_pop21102_pop65377_1 or in_memdep_phi5_pop21102_pop65377_0)
    begin
        unique case (memdep_phi5_pop21102_pop65377_mux_s)
            1'b0 : memdep_phi5_pop21102_pop65377_mux_q = in_memdep_phi5_pop21102_pop65377_1;
            1'b1 : memdep_phi5_pop21102_pop65377_mux_q = in_memdep_phi5_pop21102_pop65377_0;
            default : memdep_phi5_pop21102_pop65377_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop21102_pop65377(GPOUT,98)
    assign out_memdep_phi5_pop21102_pop65377 = memdep_phi5_pop21102_pop65377_mux_q;

    // memdep_phi6_pop1885_pop61374_mux(MUX,75)
    assign memdep_phi6_pop1885_pop61374_mux_s = in_valid_in_0;
    always @(memdep_phi6_pop1885_pop61374_mux_s or in_memdep_phi6_pop1885_pop61374_1 or in_memdep_phi6_pop1885_pop61374_0)
    begin
        unique case (memdep_phi6_pop1885_pop61374_mux_s)
            1'b0 : memdep_phi6_pop1885_pop61374_mux_q = in_memdep_phi6_pop1885_pop61374_1;
            1'b1 : memdep_phi6_pop1885_pop61374_mux_q = in_memdep_phi6_pop1885_pop61374_0;
            default : memdep_phi6_pop1885_pop61374_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi6_pop1885_pop61374(GPOUT,99)
    assign out_memdep_phi6_pop1885_pop61374 = memdep_phi6_pop1885_pop61374_mux_q;

    // notcmp36369_mux(MUX,76)
    assign notcmp36369_mux_s = in_valid_in_0;
    always @(notcmp36369_mux_s or in_notcmp36369_1 or in_notcmp36369_0)
    begin
        unique case (notcmp36369_mux_s)
            1'b0 : notcmp36369_mux_q = in_notcmp36369_1;
            1'b1 : notcmp36369_mux_q = in_notcmp36369_0;
            default : notcmp36369_mux_q = 1'b0;
        endcase
    end

    // out_notcmp36369(GPOUT,100)
    assign out_notcmp36369 = notcmp36369_mux_q;

    // notcmp41129_pop74386_mux(MUX,77)
    assign notcmp41129_pop74386_mux_s = in_valid_in_0;
    always @(notcmp41129_pop74386_mux_s or in_notcmp41129_pop74386_1 or in_notcmp41129_pop74386_0)
    begin
        unique case (notcmp41129_pop74386_mux_s)
            1'b0 : notcmp41129_pop74386_mux_q = in_notcmp41129_pop74386_1;
            1'b1 : notcmp41129_pop74386_mux_q = in_notcmp41129_pop74386_0;
            default : notcmp41129_pop74386_mux_q = 1'b0;
        endcase
    end

    // out_notcmp41129_pop74386(GPOUT,101)
    assign out_notcmp41129_pop74386 = notcmp41129_pop74386_mux_q;

    // notcmp46121_pop71383_mux(MUX,78)
    assign notcmp46121_pop71383_mux_s = in_valid_in_0;
    always @(notcmp46121_pop71383_mux_s or in_notcmp46121_pop71383_1 or in_notcmp46121_pop71383_0)
    begin
        unique case (notcmp46121_pop71383_mux_s)
            1'b0 : notcmp46121_pop71383_mux_q = in_notcmp46121_pop71383_1;
            1'b1 : notcmp46121_pop71383_mux_q = in_notcmp46121_pop71383_0;
            default : notcmp46121_pop71383_mux_q = 1'b0;
        endcase
    end

    // out_notcmp46121_pop71383(GPOUT,102)
    assign out_notcmp46121_pop71383 = notcmp46121_pop71383_mux_q;

    // notcmp5194_pop63376_mux(MUX,79)
    assign notcmp5194_pop63376_mux_s = in_valid_in_0;
    always @(notcmp5194_pop63376_mux_s or in_notcmp5194_pop63376_1 or in_notcmp5194_pop63376_0)
    begin
        unique case (notcmp5194_pop63376_mux_s)
            1'b0 : notcmp5194_pop63376_mux_q = in_notcmp5194_pop63376_1;
            1'b1 : notcmp5194_pop63376_mux_q = in_notcmp5194_pop63376_0;
            default : notcmp5194_pop63376_mux_q = 1'b0;
        endcase
    end

    // out_notcmp5194_pop63376(GPOUT,103)
    assign out_notcmp5194_pop63376 = notcmp5194_pop63376_mux_q;

    // notcmp5675_pop59372_mux(MUX,80)
    assign notcmp5675_pop59372_mux_s = in_valid_in_0;
    always @(notcmp5675_pop59372_mux_s or in_notcmp5675_pop59372_1 or in_notcmp5675_pop59372_0)
    begin
        unique case (notcmp5675_pop59372_mux_s)
            1'b0 : notcmp5675_pop59372_mux_q = in_notcmp5675_pop59372_1;
            1'b1 : notcmp5675_pop59372_mux_q = in_notcmp5675_pop59372_0;
            default : notcmp5675_pop59372_mux_q = 1'b0;
        endcase
    end

    // out_notcmp5675_pop59372(GPOUT,104)
    assign out_notcmp5675_pop59372 = notcmp5675_pop59372_mux_q;

    // row_038_pop2098_pop64366_mux(MUX,110)
    assign row_038_pop2098_pop64366_mux_s = in_valid_in_0;
    always @(row_038_pop2098_pop64366_mux_s or in_row_038_pop2098_pop64366_1 or in_row_038_pop2098_pop64366_0)
    begin
        unique case (row_038_pop2098_pop64366_mux_s)
            1'b0 : row_038_pop2098_pop64366_mux_q = in_row_038_pop2098_pop64366_1;
            1'b1 : row_038_pop2098_pop64366_mux_q = in_row_038_pop2098_pop64366_0;
            default : row_038_pop2098_pop64366_mux_q = 32'b0;
        endcase
    end

    // out_row_038_pop2098_pop64366(GPOUT,105)
    assign out_row_038_pop2098_pop64366 = row_038_pop2098_pop64366_mux_q;

    // valid_or(LOGICAL,114)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,111)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,106)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,112)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,107)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_conv27_mux(MUX,113)
    assign unnamed_conv27_mux_s = in_valid_in_0;
    always @(unnamed_conv27_mux_s or in_unnamed_conv27_1 or in_unnamed_conv27_0)
    begin
        unique case (unnamed_conv27_mux_s)
            1'b0 : unnamed_conv27_mux_q = in_unnamed_conv27_1;
            1'b1 : unnamed_conv27_mux_q = in_unnamed_conv27_0;
            default : unnamed_conv27_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_conv27(GPOUT,108)
    assign out_unnamed_conv27 = unnamed_conv27_mux_q;

    // out_valid_out(GPOUT,109)
    assign out_valid_out = valid_or_q;

endmodule
