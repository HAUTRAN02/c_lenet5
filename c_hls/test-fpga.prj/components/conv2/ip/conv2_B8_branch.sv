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

// SystemVerilog created from conv2_B8_branch
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_B8_branch (
    input wire [0:0] in_exitcond22128_pop9728,
    input wire [0:0] in_exitcond25119_pop9423,
    input wire [0:0] in_exitcond2891_pop8616,
    input wire [0:0] in_exitcond3171_pop827,
    input wire [0:0] in_memdep_35,
    input wire [0:0] in_notcmp36138_pop1052,
    input wire [0:0] in_notcmp41130_pop9830,
    input wire [0:0] in_notcmp46122_pop9526,
    input wire [0:0] in_notcmp5195_pop8720,
    input wire [0:0] in_notcmp5676_pop8312,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_exitcond22128_pop9728,
    output wire [0:0] out_exitcond25119_pop9423,
    output wire [0:0] out_exitcond2891_pop8616,
    output wire [0:0] out_exitcond3171_pop827,
    output wire [0:0] out_memdep_35,
    output wire [0:0] out_notcmp41130_pop9830,
    output wire [0:0] out_notcmp46122_pop9526,
    output wire [0:0] out_notcmp5195_pop8720,
    output wire [0:0] out_notcmp5676_pop8312,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] conv2_B8_branch_enable_q;
    wire [0:0] conv2_B8_branch_enable_not_q;
    reg [0:0] exitcond22128_pop9728_reg_q;
    reg [0:0] exitcond25119_pop9423_reg_q;
    reg [0:0] exitcond2891_pop8616_reg_q;
    reg [0:0] exitcond3171_pop827_reg_q;
    reg [0:0] memdep_35_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    wire [0:0] notcmp36138_pop1052_cmp_q;
    reg [0:0] notcmp41130_pop9830_reg_q;
    reg [0:0] notcmp46122_pop9526_reg_q;
    reg [0:0] notcmp5195_pop8720_reg_q;
    reg [0:0] notcmp5676_pop8312_reg_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,23)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // notcmp36138_pop1052_cmp(LOGICAL,28)
    assign notcmp36138_pop1052_cmp_q = ~ (in_notcmp36138_pop1052);

    // valid_out_1_and(LOGICAL,48)
    assign valid_out_1_and_q = in_valid_in & notcmp36138_pop1052_cmp_q;

    // valid_1_reg(REG,46)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B8_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,25)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,27)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,22)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,47)
    assign valid_out_0_and_q = in_valid_in & in_notcmp36138_pop1052;

    // valid_0_reg(REG,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B8_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,24)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,26)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // conv2_B8_branch_enable(LOGICAL,2)
    assign conv2_B8_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // exitcond22128_pop9728_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            exitcond22128_pop9728_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B8_branch_enable_q == 1'b1)
        begin
            exitcond22128_pop9728_reg_q <= in_exitcond22128_pop9728;
        end
    end

    // out_exitcond22128_pop9728(GPOUT,33)
    assign out_exitcond22128_pop9728 = exitcond22128_pop9728_reg_q;

    // exitcond25119_pop9423_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            exitcond25119_pop9423_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B8_branch_enable_q == 1'b1)
        begin
            exitcond25119_pop9423_reg_q <= in_exitcond25119_pop9423;
        end
    end

    // out_exitcond25119_pop9423(GPOUT,34)
    assign out_exitcond25119_pop9423 = exitcond25119_pop9423_reg_q;

    // exitcond2891_pop8616_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            exitcond2891_pop8616_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B8_branch_enable_q == 1'b1)
        begin
            exitcond2891_pop8616_reg_q <= in_exitcond2891_pop8616;
        end
    end

    // out_exitcond2891_pop8616(GPOUT,35)
    assign out_exitcond2891_pop8616 = exitcond2891_pop8616_reg_q;

    // exitcond3171_pop827_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            exitcond3171_pop827_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B8_branch_enable_q == 1'b1)
        begin
            exitcond3171_pop827_reg_q <= in_exitcond3171_pop827;
        end
    end

    // out_exitcond3171_pop827(GPOUT,36)
    assign out_exitcond3171_pop827 = exitcond3171_pop827_reg_q;

    // memdep_35_reg(REG,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memdep_35_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B8_branch_enable_q == 1'b1)
        begin
            memdep_35_reg_q <= in_memdep_35;
        end
    end

    // out_memdep_35(GPOUT,37)
    assign out_memdep_35 = memdep_35_reg_q;

    // notcmp41130_pop9830_reg(REG,29)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            notcmp41130_pop9830_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B8_branch_enable_q == 1'b1)
        begin
            notcmp41130_pop9830_reg_q <= in_notcmp41130_pop9830;
        end
    end

    // out_notcmp41130_pop9830(GPOUT,38)
    assign out_notcmp41130_pop9830 = notcmp41130_pop9830_reg_q;

    // notcmp46122_pop9526_reg(REG,30)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            notcmp46122_pop9526_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B8_branch_enable_q == 1'b1)
        begin
            notcmp46122_pop9526_reg_q <= in_notcmp46122_pop9526;
        end
    end

    // out_notcmp46122_pop9526(GPOUT,39)
    assign out_notcmp46122_pop9526 = notcmp46122_pop9526_reg_q;

    // notcmp5195_pop8720_reg(REG,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            notcmp5195_pop8720_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B8_branch_enable_q == 1'b1)
        begin
            notcmp5195_pop8720_reg_q <= in_notcmp5195_pop8720;
        end
    end

    // out_notcmp5195_pop8720(GPOUT,40)
    assign out_notcmp5195_pop8720 = notcmp5195_pop8720_reg_q;

    // notcmp5676_pop8312_reg(REG,32)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            notcmp5676_pop8312_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B8_branch_enable_q == 1'b1)
        begin
            notcmp5676_pop8312_reg_q <= in_notcmp5676_pop8312;
        end
    end

    // out_notcmp5676_pop8312(GPOUT,41)
    assign out_notcmp5676_pop8312 = notcmp5676_pop8312_reg_q;

    // conv2_B8_branch_enable_not(LOGICAL,3)
    assign conv2_B8_branch_enable_not_q = ~ (conv2_B8_branch_enable_q);

    // out_stall_out(GPOUT,42)
    assign out_stall_out = conv2_B8_branch_enable_not_q;

    // out_valid_out_0(GPOUT,43)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,44)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
