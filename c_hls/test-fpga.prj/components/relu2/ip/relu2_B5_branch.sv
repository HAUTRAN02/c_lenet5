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

// SystemVerilog created from relu2_B5_branch
// Created for function/kernel relu2
// SystemVerilog created on Sat Apr  1 13:10:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module relu2_B5_branch (
    input wire [0:0] in_exitcond828_pop254,
    input wire [0:0] in_memdep_8,
    input wire [0:0] in_notcmp1136_pop302,
    input wire [0:0] in_notcmp1630_pop266,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_exitcond828_pop254,
    output wire [0:0] out_memdep_8,
    output wire [0:0] out_notcmp1630_pop266,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] exitcond828_pop254_reg_q;
    reg [0:0] memdep_8_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    wire [0:0] notcmp1136_pop302_cmp_q;
    reg [0:0] notcmp1630_pop266_reg_q;
    wire [0:0] relu2_B5_branch_enable_q;
    wire [0:0] relu2_B5_branch_enable_not_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,12)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // notcmp1136_pop302_cmp(LOGICAL,17)
    assign notcmp1136_pop302_cmp_q = ~ (in_notcmp1136_pop302);

    // valid_out_1_and(LOGICAL,30)
    assign valid_out_1_and_q = in_valid_in & notcmp1136_pop302_cmp_q;

    // valid_1_reg(REG,28)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (relu2_B5_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,14)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,16)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,11)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,29)
    assign valid_out_0_and_q = in_valid_in & in_notcmp1136_pop302;

    // valid_0_reg(REG,27)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (relu2_B5_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,13)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,15)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // relu2_B5_branch_enable(LOGICAL,25)
    assign relu2_B5_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // exitcond828_pop254_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            exitcond828_pop254_reg_q <= $unsigned(1'b0);
        end
        else if (relu2_B5_branch_enable_q == 1'b1)
        begin
            exitcond828_pop254_reg_q <= in_exitcond828_pop254;
        end
    end

    // out_exitcond828_pop254(GPOUT,19)
    assign out_exitcond828_pop254 = exitcond828_pop254_reg_q;

    // memdep_8_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memdep_8_reg_q <= $unsigned(1'b0);
        end
        else if (relu2_B5_branch_enable_q == 1'b1)
        begin
            memdep_8_reg_q <= in_memdep_8;
        end
    end

    // out_memdep_8(GPOUT,20)
    assign out_memdep_8 = memdep_8_reg_q;

    // notcmp1630_pop266_reg(REG,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            notcmp1630_pop266_reg_q <= $unsigned(1'b0);
        end
        else if (relu2_B5_branch_enable_q == 1'b1)
        begin
            notcmp1630_pop266_reg_q <= in_notcmp1630_pop266;
        end
    end

    // out_notcmp1630_pop266(GPOUT,21)
    assign out_notcmp1630_pop266 = notcmp1630_pop266_reg_q;

    // relu2_B5_branch_enable_not(LOGICAL,26)
    assign relu2_B5_branch_enable_not_q = ~ (relu2_B5_branch_enable_q);

    // out_stall_out(GPOUT,22)
    assign out_stall_out = relu2_B5_branch_enable_not_q;

    // out_valid_out_0(GPOUT,23)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,24)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
