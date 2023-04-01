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

// SystemVerilog created from fc3_B3_branch
// Created for function/kernel fc3
// SystemVerilog created on Sat Apr  1 13:10:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fc3_B3_branch (
    input wire [0:0] in_exitcond722_pop16,
    input wire [0:0] in_masked,
    input wire [0:0] in_memdep,
    input wire [0:0] in_notcmp1223_pop17,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_exitcond722_pop16,
    output wire [0:0] out_memdep,
    output wire [0:0] out_notcmp1223_pop17,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] exitcond722_pop16_reg_q;
    wire [0:0] fc3_B3_branch_enable_q;
    wire [0:0] fc3_B3_branch_enable_not_q;
    wire [0:0] masked_cmp_q;
    reg [0:0] memdep_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [0:0] notcmp1223_pop17_reg_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,15)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // masked_cmp(LOGICAL,12)
    assign masked_cmp_q = ~ (in_masked);

    // valid_out_1_and(LOGICAL,30)
    assign valid_out_1_and_q = in_valid_in & masked_cmp_q;

    // valid_1_reg(REG,28)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (fc3_B3_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,17)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,19)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,14)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,29)
    assign valid_out_0_and_q = in_valid_in & in_masked;

    // valid_0_reg(REG,27)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (fc3_B3_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,16)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,18)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // fc3_B3_branch_enable(LOGICAL,3)
    assign fc3_B3_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // exitcond722_pop16_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            exitcond722_pop16_reg_q <= $unsigned(1'b0);
        end
        else if (fc3_B3_branch_enable_q == 1'b1)
        begin
            exitcond722_pop16_reg_q <= in_exitcond722_pop16;
        end
    end

    // out_exitcond722_pop16(GPOUT,21)
    assign out_exitcond722_pop16 = exitcond722_pop16_reg_q;

    // memdep_reg(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memdep_reg_q <= $unsigned(1'b0);
        end
        else if (fc3_B3_branch_enable_q == 1'b1)
        begin
            memdep_reg_q <= in_memdep;
        end
    end

    // out_memdep(GPOUT,22)
    assign out_memdep = memdep_reg_q;

    // notcmp1223_pop17_reg(REG,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            notcmp1223_pop17_reg_q <= $unsigned(1'b0);
        end
        else if (fc3_B3_branch_enable_q == 1'b1)
        begin
            notcmp1223_pop17_reg_q <= in_notcmp1223_pop17;
        end
    end

    // out_notcmp1223_pop17(GPOUT,23)
    assign out_notcmp1223_pop17 = notcmp1223_pop17_reg_q;

    // fc3_B3_branch_enable_not(LOGICAL,4)
    assign fc3_B3_branch_enable_not_q = ~ (fc3_B3_branch_enable_q);

    // out_stall_out(GPOUT,24)
    assign out_stall_out = fc3_B3_branch_enable_not_q;

    // out_valid_out_0(GPOUT,25)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,26)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
