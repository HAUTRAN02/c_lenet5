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

// SystemVerilog created from conv2_B6_branch
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:45 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_B6_branch (
    input wire [31:0] in_c0_exe10670,
    input wire [0:0] in_c0_exe11671,
    input wire [0:0] in_c0_exe12672,
    input wire [0:0] in_c0_exe13673,
    input wire [0:0] in_c0_exe14674,
    input wire [63:0] in_c0_exe15675,
    input wire [31:0] in_c0_exe1661,
    input wire [63:0] in_c0_exe16676,
    input wire [31:0] in_c0_exe17677,
    input wire [63:0] in_c0_exe18678,
    input wire [0:0] in_c0_exe19679,
    input wire [0:0] in_c0_exe20680,
    input wire [0:0] in_c0_exe21681,
    input wire [0:0] in_c0_exe22682,
    input wire [0:0] in_c0_exe23683,
    input wire [0:0] in_c0_exe24684,
    input wire [31:0] in_c0_exe2662,
    input wire [31:0] in_c0_exe3663,
    input wire [31:0] in_c0_exe4664,
    input wire [31:0] in_c0_exe5665,
    input wire [0:0] in_c0_exe6666,
    input wire [0:0] in_c0_exe7667,
    input wire [0:0] in_c0_exe8668,
    input wire [0:0] in_c0_exe9669,
    input wire [0:0] in_memdep_phi2_pop57,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10670,
    output wire [0:0] out_c0_exe11671,
    output wire [0:0] out_c0_exe12672,
    output wire [0:0] out_c0_exe13673,
    output wire [0:0] out_c0_exe14674,
    output wire [63:0] out_c0_exe15675,
    output wire [31:0] out_c0_exe1661,
    output wire [63:0] out_c0_exe16676,
    output wire [31:0] out_c0_exe17677,
    output wire [63:0] out_c0_exe18678,
    output wire [0:0] out_c0_exe19679,
    output wire [0:0] out_c0_exe20680,
    output wire [0:0] out_c0_exe21681,
    output wire [0:0] out_c0_exe22682,
    output wire [0:0] out_c0_exe23683,
    output wire [0:0] out_c0_exe24684,
    output wire [31:0] out_c0_exe2662,
    output wire [31:0] out_c0_exe3663,
    output wire [31:0] out_c0_exe4664,
    output wire [31:0] out_c0_exe5665,
    output wire [0:0] out_c0_exe6666,
    output wire [0:0] out_c0_exe7667,
    output wire [0:0] out_c0_exe8668,
    output wire [0:0] out_c0_exe9669,
    output wire [0:0] out_memdep_phi2_pop57,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10670(GPOUT,29)
    assign out_c0_exe10670 = in_c0_exe10670;

    // out_c0_exe11671(GPOUT,30)
    assign out_c0_exe11671 = in_c0_exe11671;

    // out_c0_exe12672(GPOUT,31)
    assign out_c0_exe12672 = in_c0_exe12672;

    // out_c0_exe13673(GPOUT,32)
    assign out_c0_exe13673 = in_c0_exe13673;

    // out_c0_exe14674(GPOUT,33)
    assign out_c0_exe14674 = in_c0_exe14674;

    // out_c0_exe15675(GPOUT,34)
    assign out_c0_exe15675 = in_c0_exe15675;

    // out_c0_exe1661(GPOUT,35)
    assign out_c0_exe1661 = in_c0_exe1661;

    // out_c0_exe16676(GPOUT,36)
    assign out_c0_exe16676 = in_c0_exe16676;

    // out_c0_exe17677(GPOUT,37)
    assign out_c0_exe17677 = in_c0_exe17677;

    // out_c0_exe18678(GPOUT,38)
    assign out_c0_exe18678 = in_c0_exe18678;

    // out_c0_exe19679(GPOUT,39)
    assign out_c0_exe19679 = in_c0_exe19679;

    // out_c0_exe20680(GPOUT,40)
    assign out_c0_exe20680 = in_c0_exe20680;

    // out_c0_exe21681(GPOUT,41)
    assign out_c0_exe21681 = in_c0_exe21681;

    // out_c0_exe22682(GPOUT,42)
    assign out_c0_exe22682 = in_c0_exe22682;

    // out_c0_exe23683(GPOUT,43)
    assign out_c0_exe23683 = in_c0_exe23683;

    // out_c0_exe24684(GPOUT,44)
    assign out_c0_exe24684 = in_c0_exe24684;

    // out_c0_exe2662(GPOUT,45)
    assign out_c0_exe2662 = in_c0_exe2662;

    // out_c0_exe3663(GPOUT,46)
    assign out_c0_exe3663 = in_c0_exe3663;

    // out_c0_exe4664(GPOUT,47)
    assign out_c0_exe4664 = in_c0_exe4664;

    // out_c0_exe5665(GPOUT,48)
    assign out_c0_exe5665 = in_c0_exe5665;

    // out_c0_exe6666(GPOUT,49)
    assign out_c0_exe6666 = in_c0_exe6666;

    // out_c0_exe7667(GPOUT,50)
    assign out_c0_exe7667 = in_c0_exe7667;

    // out_c0_exe8668(GPOUT,51)
    assign out_c0_exe8668 = in_c0_exe8668;

    // out_c0_exe9669(GPOUT,52)
    assign out_c0_exe9669 = in_c0_exe9669;

    // out_memdep_phi2_pop57(GPOUT,53)
    assign out_memdep_phi2_pop57 = in_memdep_phi2_pop57;

    // stall_out(LOGICAL,56)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,54)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,55)
    assign out_valid_out_0 = in_valid_in;

endmodule
