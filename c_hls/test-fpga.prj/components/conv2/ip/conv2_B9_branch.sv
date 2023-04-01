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

// SystemVerilog created from conv2_B9_branch
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_B9_branch (
    input wire [0:0] in_exitcond25119_pop9422,
    input wire [0:0] in_exitcond2891_pop8615,
    input wire [0:0] in_exitcond3171_pop826,
    input wire [0:0] in_memdep_34,
    input wire [0:0] in_notcmp41130_pop9829,
    input wire [0:0] in_notcmp46122_pop9525,
    input wire [0:0] in_notcmp5195_pop8719,
    input wire [0:0] in_notcmp5676_pop8311,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_exitcond25119_pop9422,
    output wire [0:0] out_exitcond2891_pop8615,
    output wire [0:0] out_exitcond3171_pop826,
    output wire [0:0] out_memdep_34,
    output wire [0:0] out_notcmp46122_pop9525,
    output wire [0:0] out_notcmp5195_pop8719,
    output wire [0:0] out_notcmp5676_pop8311,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] conv2_B9_branch_enable_q;
    wire [0:0] conv2_B9_branch_enable_not_q;
    reg [0:0] exitcond25119_pop9422_reg_q;
    reg [0:0] exitcond2891_pop8615_reg_q;
    reg [0:0] exitcond3171_pop826_reg_q;
    reg [0:0] memdep_34_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    wire [0:0] notcmp41130_pop9829_cmp_q;
    reg [0:0] notcmp46122_pop9525_reg_q;
    reg [0:0] notcmp5195_pop8719_reg_q;
    reg [0:0] notcmp5676_pop8311_reg_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,20)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // notcmp41130_pop9829_cmp(LOGICAL,25)
    assign notcmp41130_pop9829_cmp_q = ~ (in_notcmp41130_pop9829);

    // valid_out_1_and(LOGICAL,42)
    assign valid_out_1_and_q = in_valid_in & notcmp41130_pop9829_cmp_q;

    // valid_1_reg(REG,40)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B9_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,22)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,24)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,19)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,41)
    assign valid_out_0_and_q = in_valid_in & in_notcmp41130_pop9829;

    // valid_0_reg(REG,39)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B9_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,21)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,23)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // conv2_B9_branch_enable(LOGICAL,2)
    assign conv2_B9_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // exitcond25119_pop9422_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            exitcond25119_pop9422_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B9_branch_enable_q == 1'b1)
        begin
            exitcond25119_pop9422_reg_q <= in_exitcond25119_pop9422;
        end
    end

    // out_exitcond25119_pop9422(GPOUT,29)
    assign out_exitcond25119_pop9422 = exitcond25119_pop9422_reg_q;

    // exitcond2891_pop8615_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            exitcond2891_pop8615_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B9_branch_enable_q == 1'b1)
        begin
            exitcond2891_pop8615_reg_q <= in_exitcond2891_pop8615;
        end
    end

    // out_exitcond2891_pop8615(GPOUT,30)
    assign out_exitcond2891_pop8615 = exitcond2891_pop8615_reg_q;

    // exitcond3171_pop826_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            exitcond3171_pop826_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B9_branch_enable_q == 1'b1)
        begin
            exitcond3171_pop826_reg_q <= in_exitcond3171_pop826;
        end
    end

    // out_exitcond3171_pop826(GPOUT,31)
    assign out_exitcond3171_pop826 = exitcond3171_pop826_reg_q;

    // memdep_34_reg(REG,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memdep_34_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B9_branch_enable_q == 1'b1)
        begin
            memdep_34_reg_q <= in_memdep_34;
        end
    end

    // out_memdep_34(GPOUT,32)
    assign out_memdep_34 = memdep_34_reg_q;

    // notcmp46122_pop9525_reg(REG,26)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            notcmp46122_pop9525_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B9_branch_enable_q == 1'b1)
        begin
            notcmp46122_pop9525_reg_q <= in_notcmp46122_pop9525;
        end
    end

    // out_notcmp46122_pop9525(GPOUT,33)
    assign out_notcmp46122_pop9525 = notcmp46122_pop9525_reg_q;

    // notcmp5195_pop8719_reg(REG,27)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            notcmp5195_pop8719_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B9_branch_enable_q == 1'b1)
        begin
            notcmp5195_pop8719_reg_q <= in_notcmp5195_pop8719;
        end
    end

    // out_notcmp5195_pop8719(GPOUT,34)
    assign out_notcmp5195_pop8719 = notcmp5195_pop8719_reg_q;

    // notcmp5676_pop8311_reg(REG,28)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            notcmp5676_pop8311_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B9_branch_enable_q == 1'b1)
        begin
            notcmp5676_pop8311_reg_q <= in_notcmp5676_pop8311;
        end
    end

    // out_notcmp5676_pop8311(GPOUT,35)
    assign out_notcmp5676_pop8311 = notcmp5676_pop8311_reg_q;

    // conv2_B9_branch_enable_not(LOGICAL,3)
    assign conv2_B9_branch_enable_not_q = ~ (conv2_B9_branch_enable_q);

    // out_stall_out(GPOUT,36)
    assign out_stall_out = conv2_B9_branch_enable_not_q;

    // out_valid_out_0(GPOUT,37)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,38)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
