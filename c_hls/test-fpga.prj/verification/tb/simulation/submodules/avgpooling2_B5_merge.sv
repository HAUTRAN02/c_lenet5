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

// SystemVerilog created from avgpooling2_B5_merge
// Created for function/kernel avgpooling2
// SystemVerilog created on Sat Apr  1 13:10:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpooling2_B5_merge (
    input wire [0:0] in_exitcond1139_pop291_0,
    input wire [0:0] in_exitcond1432_pop254_0,
    input wire [0:0] in_memdep_8_0,
    input wire [0:0] in_notcmp1540_pop302_0,
    input wire [0:0] in_notcmp2034_pop266_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_exitcond1139_pop291,
    output wire [0:0] out_exitcond1432_pop254,
    output wire [0:0] out_memdep_8,
    output wire [0:0] out_notcmp1540_pop302,
    output wire [0:0] out_notcmp2034_pop266,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_exitcond1139_pop291(GPOUT,9)
    assign out_exitcond1139_pop291 = in_exitcond1139_pop291_0;

    // out_exitcond1432_pop254(GPOUT,10)
    assign out_exitcond1432_pop254 = in_exitcond1432_pop254_0;

    // out_memdep_8(GPOUT,11)
    assign out_memdep_8 = in_memdep_8_0;

    // out_notcmp1540_pop302(GPOUT,12)
    assign out_notcmp1540_pop302 = in_notcmp1540_pop302_0;

    // out_notcmp2034_pop266(GPOUT,13)
    assign out_notcmp2034_pop266 = in_notcmp2034_pop266_0;

    // stall_out(LOGICAL,16)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,14)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,15)
    assign out_valid_out = in_valid_in_0;

endmodule
