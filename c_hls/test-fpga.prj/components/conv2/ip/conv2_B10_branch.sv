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

// SystemVerilog created from conv2_B10_branch
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_B10_branch (
    input wire [0:0] in_exitcond2891_pop8614,
    input wire [0:0] in_exitcond3171_pop825,
    input wire [0:0] in_memdep_33,
    input wire [0:0] in_notcmp46122_pop9524,
    input wire [0:0] in_notcmp5195_pop8718,
    input wire [0:0] in_notcmp5676_pop8310,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_exitcond2891_pop8614,
    output wire [0:0] out_exitcond3171_pop825,
    output wire [0:0] out_memdep_33,
    output wire [0:0] out_notcmp5195_pop8718,
    output wire [0:0] out_notcmp5676_pop8310,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] conv2_B10_branch_enable_q;
    wire [0:0] conv2_B10_branch_enable_not_q;
    reg [0:0] exitcond2891_pop8614_reg_q;
    reg [0:0] exitcond3171_pop825_reg_q;
    reg [0:0] memdep_33_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    wire [0:0] notcmp46122_pop9524_cmp_q;
    reg [0:0] notcmp5195_pop8718_reg_q;
    reg [0:0] notcmp5676_pop8310_reg_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,17)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // notcmp46122_pop9524_cmp(LOGICAL,22)
    assign notcmp46122_pop9524_cmp_q = ~ (in_notcmp46122_pop9524);

    // valid_out_1_and(LOGICAL,36)
    assign valid_out_1_and_q = in_valid_in & notcmp46122_pop9524_cmp_q;

    // valid_1_reg(REG,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B10_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,19)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,21)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,16)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,35)
    assign valid_out_0_and_q = in_valid_in & in_notcmp46122_pop9524;

    // valid_0_reg(REG,33)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B10_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,18)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,20)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // conv2_B10_branch_enable(LOGICAL,2)
    assign conv2_B10_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // exitcond2891_pop8614_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            exitcond2891_pop8614_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B10_branch_enable_q == 1'b1)
        begin
            exitcond2891_pop8614_reg_q <= in_exitcond2891_pop8614;
        end
    end

    // out_exitcond2891_pop8614(GPOUT,25)
    assign out_exitcond2891_pop8614 = exitcond2891_pop8614_reg_q;

    // exitcond3171_pop825_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            exitcond3171_pop825_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B10_branch_enable_q == 1'b1)
        begin
            exitcond3171_pop825_reg_q <= in_exitcond3171_pop825;
        end
    end

    // out_exitcond3171_pop825(GPOUT,26)
    assign out_exitcond3171_pop825 = exitcond3171_pop825_reg_q;

    // memdep_33_reg(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memdep_33_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B10_branch_enable_q == 1'b1)
        begin
            memdep_33_reg_q <= in_memdep_33;
        end
    end

    // out_memdep_33(GPOUT,27)
    assign out_memdep_33 = memdep_33_reg_q;

    // notcmp5195_pop8718_reg(REG,23)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            notcmp5195_pop8718_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B10_branch_enable_q == 1'b1)
        begin
            notcmp5195_pop8718_reg_q <= in_notcmp5195_pop8718;
        end
    end

    // out_notcmp5195_pop8718(GPOUT,28)
    assign out_notcmp5195_pop8718 = notcmp5195_pop8718_reg_q;

    // notcmp5676_pop8310_reg(REG,24)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            notcmp5676_pop8310_reg_q <= $unsigned(1'b0);
        end
        else if (conv2_B10_branch_enable_q == 1'b1)
        begin
            notcmp5676_pop8310_reg_q <= in_notcmp5676_pop8310;
        end
    end

    // out_notcmp5676_pop8310(GPOUT,29)
    assign out_notcmp5676_pop8310 = notcmp5676_pop8310_reg_q;

    // conv2_B10_branch_enable_not(LOGICAL,3)
    assign conv2_B10_branch_enable_not_q = ~ (conv2_B10_branch_enable_q);

    // out_stall_out(GPOUT,30)
    assign out_stall_out = conv2_B10_branch_enable_not_q;

    // out_valid_out_0(GPOUT,31)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,32)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
