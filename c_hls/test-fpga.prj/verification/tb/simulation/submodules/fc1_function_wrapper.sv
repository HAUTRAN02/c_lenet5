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

// SystemVerilog created from fc1_function_wrapper
// Created for function/kernel fc1
// SystemVerilog created on Sat Apr  1 13:10:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fc1_function_wrapper (
    input wire [63:0] avm_memdep_fc1_readdata,
    input wire [0:0] avm_memdep_fc1_readdatavalid,
    input wire [0:0] avm_memdep_fc1_waitrequest,
    input wire [0:0] avm_memdep_fc1_writeack,
    input wire [63:0] avm_pn1_fc1_readdata,
    input wire [0:0] avm_pn1_fc1_readdatavalid,
    input wire [0:0] avm_pn1_fc1_waitrequest,
    input wire [0:0] avm_pn1_fc1_writeack,
    input wire [63:0] avm_unnamed_fc17_fc1_readdata,
    input wire [0:0] avm_unnamed_fc17_fc1_readdatavalid,
    input wire [0:0] avm_unnamed_fc17_fc1_waitrequest,
    input wire [0:0] avm_unnamed_fc17_fc1_writeack,
    input wire [63:0] avm_unnamed_fc18_fc1_readdata,
    input wire [0:0] avm_unnamed_fc18_fc1_readdatavalid,
    input wire [0:0] avm_unnamed_fc18_fc1_waitrequest,
    input wire [0:0] avm_unnamed_fc18_fc1_writeack,
    input wire [255:0] avst_iord_bl_call_fc1_data,
    input wire [0:0] avst_iord_bl_call_fc1_valid,
    input wire [0:0] avst_iowr_bl_return_fc1_almostfull,
    input wire [0:0] avst_iowr_bl_return_fc1_ready,
    input wire [63:0] bias,
    input wire [63:0] in0,
    input wire [63:0] out0,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    input wire [63:0] weights,
    output wire [63:0] avm_memdep_fc1_address,
    output wire [0:0] avm_memdep_fc1_burstcount,
    output wire [7:0] avm_memdep_fc1_byteenable,
    output wire [0:0] avm_memdep_fc1_enable,
    output wire [0:0] avm_memdep_fc1_read,
    output wire [0:0] avm_memdep_fc1_write,
    output wire [63:0] avm_memdep_fc1_writedata,
    output wire [63:0] avm_pn1_fc1_address,
    output wire [0:0] avm_pn1_fc1_burstcount,
    output wire [7:0] avm_pn1_fc1_byteenable,
    output wire [0:0] avm_pn1_fc1_enable,
    output wire [0:0] avm_pn1_fc1_read,
    output wire [0:0] avm_pn1_fc1_write,
    output wire [63:0] avm_pn1_fc1_writedata,
    output wire [63:0] avm_unnamed_fc17_fc1_address,
    output wire [0:0] avm_unnamed_fc17_fc1_burstcount,
    output wire [7:0] avm_unnamed_fc17_fc1_byteenable,
    output wire [0:0] avm_unnamed_fc17_fc1_enable,
    output wire [0:0] avm_unnamed_fc17_fc1_read,
    output wire [0:0] avm_unnamed_fc17_fc1_write,
    output wire [63:0] avm_unnamed_fc17_fc1_writedata,
    output wire [63:0] avm_unnamed_fc18_fc1_address,
    output wire [0:0] avm_unnamed_fc18_fc1_burstcount,
    output wire [7:0] avm_unnamed_fc18_fc1_byteenable,
    output wire [0:0] avm_unnamed_fc18_fc1_enable,
    output wire [0:0] avm_unnamed_fc18_fc1_read,
    output wire [0:0] avm_unnamed_fc18_fc1_write,
    output wire [63:0] avm_unnamed_fc18_fc1_writedata,
    output wire [0:0] avst_iord_bl_call_fc1_almost_full,
    output wire [0:0] avst_iord_bl_call_fc1_ready,
    output wire [0:0] avst_iowr_bl_return_fc1_data,
    output wire [0:0] avst_iowr_bl_return_fc1_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] bias_const_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [0:0] fc1_function_out_iord_bl_call_fc1_o_fifoalmost_full;
    wire [0:0] fc1_function_out_iord_bl_call_fc1_o_fifoready;
    wire [0:0] fc1_function_out_iowr_bl_return_fc1_o_fifodata;
    wire [0:0] fc1_function_out_iowr_bl_return_fc1_o_fifovalid;
    wire [63:0] fc1_function_out_memdep_fc1_avm_address;
    wire [0:0] fc1_function_out_memdep_fc1_avm_burstcount;
    wire [7:0] fc1_function_out_memdep_fc1_avm_byteenable;
    wire [0:0] fc1_function_out_memdep_fc1_avm_enable;
    wire [0:0] fc1_function_out_memdep_fc1_avm_read;
    wire [0:0] fc1_function_out_memdep_fc1_avm_write;
    wire [63:0] fc1_function_out_memdep_fc1_avm_writedata;
    wire [63:0] fc1_function_out_pn1_fc1_avm_address;
    wire [0:0] fc1_function_out_pn1_fc1_avm_burstcount;
    wire [7:0] fc1_function_out_pn1_fc1_avm_byteenable;
    wire [0:0] fc1_function_out_pn1_fc1_avm_enable;
    wire [0:0] fc1_function_out_pn1_fc1_avm_read;
    wire [0:0] fc1_function_out_pn1_fc1_avm_write;
    wire [63:0] fc1_function_out_pn1_fc1_avm_writedata;
    wire [63:0] fc1_function_out_unnamed_fc17_fc1_avm_address;
    wire [0:0] fc1_function_out_unnamed_fc17_fc1_avm_burstcount;
    wire [7:0] fc1_function_out_unnamed_fc17_fc1_avm_byteenable;
    wire [0:0] fc1_function_out_unnamed_fc17_fc1_avm_enable;
    wire [0:0] fc1_function_out_unnamed_fc17_fc1_avm_read;
    wire [0:0] fc1_function_out_unnamed_fc17_fc1_avm_write;
    wire [63:0] fc1_function_out_unnamed_fc17_fc1_avm_writedata;
    wire [63:0] fc1_function_out_unnamed_fc18_fc1_avm_address;
    wire [0:0] fc1_function_out_unnamed_fc18_fc1_avm_burstcount;
    wire [7:0] fc1_function_out_unnamed_fc18_fc1_avm_byteenable;
    wire [0:0] fc1_function_out_unnamed_fc18_fc1_avm_enable;
    wire [0:0] fc1_function_out_unnamed_fc18_fc1_avm_read;
    wire [0:0] fc1_function_out_unnamed_fc18_fc1_avm_write;
    wire [63:0] fc1_function_out_unnamed_fc18_fc1_avm_writedata;
    wire [255:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,40)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,9)
    assign implicit_input_q = {out0, bias, weights, in0};

    // bias_const(CONSTANT,2)
    assign bias_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // fc1_function(BLACKBOX,8)
    fc1_function thefc1_function (
        .in_arg_bias(bias_const_q),
        .in_arg_call(bias_const_q),
        .in_arg_in0(bias_const_q),
        .in_arg_out0(bias_const_q),
        .in_arg_return(bias_const_q),
        .in_arg_weights(bias_const_q),
        .in_iord_bl_call_fc1_i_fifodata(implicit_input_q),
        .in_iord_bl_call_fc1_i_fifovalid(start),
        .in_iowr_bl_return_fc1_i_fifoready(not_stall_q),
        .in_memdep_fc1_avm_readdata(avm_memdep_fc1_readdata),
        .in_memdep_fc1_avm_readdatavalid(avm_memdep_fc1_readdatavalid),
        .in_memdep_fc1_avm_waitrequest(avm_memdep_fc1_waitrequest),
        .in_memdep_fc1_avm_writeack(avm_memdep_fc1_writeack),
        .in_pn1_fc1_avm_readdata(avm_pn1_fc1_readdata),
        .in_pn1_fc1_avm_readdatavalid(avm_pn1_fc1_readdatavalid),
        .in_pn1_fc1_avm_waitrequest(avm_pn1_fc1_waitrequest),
        .in_pn1_fc1_avm_writeack(avm_pn1_fc1_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_fc17_fc1_avm_readdata(avm_unnamed_fc17_fc1_readdata),
        .in_unnamed_fc17_fc1_avm_readdatavalid(avm_unnamed_fc17_fc1_readdatavalid),
        .in_unnamed_fc17_fc1_avm_waitrequest(avm_unnamed_fc17_fc1_waitrequest),
        .in_unnamed_fc17_fc1_avm_writeack(avm_unnamed_fc17_fc1_writeack),
        .in_unnamed_fc18_fc1_avm_readdata(avm_unnamed_fc18_fc1_readdata),
        .in_unnamed_fc18_fc1_avm_readdatavalid(avm_unnamed_fc18_fc1_readdatavalid),
        .in_unnamed_fc18_fc1_avm_waitrequest(avm_unnamed_fc18_fc1_waitrequest),
        .in_unnamed_fc18_fc1_avm_writeack(avm_unnamed_fc18_fc1_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_fc1_o_fifoalmost_full(fc1_function_out_iord_bl_call_fc1_o_fifoalmost_full),
        .out_iord_bl_call_fc1_o_fifoready(fc1_function_out_iord_bl_call_fc1_o_fifoready),
        .out_iowr_bl_return_fc1_o_fifodata(fc1_function_out_iowr_bl_return_fc1_o_fifodata),
        .out_iowr_bl_return_fc1_o_fifovalid(fc1_function_out_iowr_bl_return_fc1_o_fifovalid),
        .out_memdep_fc1_avm_address(fc1_function_out_memdep_fc1_avm_address),
        .out_memdep_fc1_avm_burstcount(fc1_function_out_memdep_fc1_avm_burstcount),
        .out_memdep_fc1_avm_byteenable(fc1_function_out_memdep_fc1_avm_byteenable),
        .out_memdep_fc1_avm_enable(fc1_function_out_memdep_fc1_avm_enable),
        .out_memdep_fc1_avm_read(fc1_function_out_memdep_fc1_avm_read),
        .out_memdep_fc1_avm_write(fc1_function_out_memdep_fc1_avm_write),
        .out_memdep_fc1_avm_writedata(fc1_function_out_memdep_fc1_avm_writedata),
        .out_o_active_memdep(),
        .out_pn1_fc1_avm_address(fc1_function_out_pn1_fc1_avm_address),
        .out_pn1_fc1_avm_burstcount(fc1_function_out_pn1_fc1_avm_burstcount),
        .out_pn1_fc1_avm_byteenable(fc1_function_out_pn1_fc1_avm_byteenable),
        .out_pn1_fc1_avm_enable(fc1_function_out_pn1_fc1_avm_enable),
        .out_pn1_fc1_avm_read(fc1_function_out_pn1_fc1_avm_read),
        .out_pn1_fc1_avm_write(fc1_function_out_pn1_fc1_avm_write),
        .out_pn1_fc1_avm_writedata(fc1_function_out_pn1_fc1_avm_writedata),
        .out_stall_out(),
        .out_unnamed_fc17_fc1_avm_address(fc1_function_out_unnamed_fc17_fc1_avm_address),
        .out_unnamed_fc17_fc1_avm_burstcount(fc1_function_out_unnamed_fc17_fc1_avm_burstcount),
        .out_unnamed_fc17_fc1_avm_byteenable(fc1_function_out_unnamed_fc17_fc1_avm_byteenable),
        .out_unnamed_fc17_fc1_avm_enable(fc1_function_out_unnamed_fc17_fc1_avm_enable),
        .out_unnamed_fc17_fc1_avm_read(fc1_function_out_unnamed_fc17_fc1_avm_read),
        .out_unnamed_fc17_fc1_avm_write(fc1_function_out_unnamed_fc17_fc1_avm_write),
        .out_unnamed_fc17_fc1_avm_writedata(fc1_function_out_unnamed_fc17_fc1_avm_writedata),
        .out_unnamed_fc18_fc1_avm_address(fc1_function_out_unnamed_fc18_fc1_avm_address),
        .out_unnamed_fc18_fc1_avm_burstcount(fc1_function_out_unnamed_fc18_fc1_avm_burstcount),
        .out_unnamed_fc18_fc1_avm_byteenable(fc1_function_out_unnamed_fc18_fc1_avm_byteenable),
        .out_unnamed_fc18_fc1_avm_enable(fc1_function_out_unnamed_fc18_fc1_avm_enable),
        .out_unnamed_fc18_fc1_avm_read(fc1_function_out_unnamed_fc18_fc1_avm_read),
        .out_unnamed_fc18_fc1_avm_write(fc1_function_out_unnamed_fc18_fc1_avm_write),
        .out_unnamed_fc18_fc1_avm_writedata(fc1_function_out_unnamed_fc18_fc1_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_fc1_address(GPOUT,42)
    assign avm_memdep_fc1_address = fc1_function_out_memdep_fc1_avm_address;

    // avm_memdep_fc1_burstcount(GPOUT,43)
    assign avm_memdep_fc1_burstcount = fc1_function_out_memdep_fc1_avm_burstcount;

    // avm_memdep_fc1_byteenable(GPOUT,44)
    assign avm_memdep_fc1_byteenable = fc1_function_out_memdep_fc1_avm_byteenable;

    // avm_memdep_fc1_enable(GPOUT,45)
    assign avm_memdep_fc1_enable = fc1_function_out_memdep_fc1_avm_enable;

    // avm_memdep_fc1_read(GPOUT,46)
    assign avm_memdep_fc1_read = fc1_function_out_memdep_fc1_avm_read;

    // avm_memdep_fc1_write(GPOUT,47)
    assign avm_memdep_fc1_write = fc1_function_out_memdep_fc1_avm_write;

    // avm_memdep_fc1_writedata(GPOUT,48)
    assign avm_memdep_fc1_writedata = fc1_function_out_memdep_fc1_avm_writedata;

    // avm_pn1_fc1_address(GPOUT,49)
    assign avm_pn1_fc1_address = fc1_function_out_pn1_fc1_avm_address;

    // avm_pn1_fc1_burstcount(GPOUT,50)
    assign avm_pn1_fc1_burstcount = fc1_function_out_pn1_fc1_avm_burstcount;

    // avm_pn1_fc1_byteenable(GPOUT,51)
    assign avm_pn1_fc1_byteenable = fc1_function_out_pn1_fc1_avm_byteenable;

    // avm_pn1_fc1_enable(GPOUT,52)
    assign avm_pn1_fc1_enable = fc1_function_out_pn1_fc1_avm_enable;

    // avm_pn1_fc1_read(GPOUT,53)
    assign avm_pn1_fc1_read = fc1_function_out_pn1_fc1_avm_read;

    // avm_pn1_fc1_write(GPOUT,54)
    assign avm_pn1_fc1_write = fc1_function_out_pn1_fc1_avm_write;

    // avm_pn1_fc1_writedata(GPOUT,55)
    assign avm_pn1_fc1_writedata = fc1_function_out_pn1_fc1_avm_writedata;

    // avm_unnamed_fc17_fc1_address(GPOUT,56)
    assign avm_unnamed_fc17_fc1_address = fc1_function_out_unnamed_fc17_fc1_avm_address;

    // avm_unnamed_fc17_fc1_burstcount(GPOUT,57)
    assign avm_unnamed_fc17_fc1_burstcount = fc1_function_out_unnamed_fc17_fc1_avm_burstcount;

    // avm_unnamed_fc17_fc1_byteenable(GPOUT,58)
    assign avm_unnamed_fc17_fc1_byteenable = fc1_function_out_unnamed_fc17_fc1_avm_byteenable;

    // avm_unnamed_fc17_fc1_enable(GPOUT,59)
    assign avm_unnamed_fc17_fc1_enable = fc1_function_out_unnamed_fc17_fc1_avm_enable;

    // avm_unnamed_fc17_fc1_read(GPOUT,60)
    assign avm_unnamed_fc17_fc1_read = fc1_function_out_unnamed_fc17_fc1_avm_read;

    // avm_unnamed_fc17_fc1_write(GPOUT,61)
    assign avm_unnamed_fc17_fc1_write = fc1_function_out_unnamed_fc17_fc1_avm_write;

    // avm_unnamed_fc17_fc1_writedata(GPOUT,62)
    assign avm_unnamed_fc17_fc1_writedata = fc1_function_out_unnamed_fc17_fc1_avm_writedata;

    // avm_unnamed_fc18_fc1_address(GPOUT,63)
    assign avm_unnamed_fc18_fc1_address = fc1_function_out_unnamed_fc18_fc1_avm_address;

    // avm_unnamed_fc18_fc1_burstcount(GPOUT,64)
    assign avm_unnamed_fc18_fc1_burstcount = fc1_function_out_unnamed_fc18_fc1_avm_burstcount;

    // avm_unnamed_fc18_fc1_byteenable(GPOUT,65)
    assign avm_unnamed_fc18_fc1_byteenable = fc1_function_out_unnamed_fc18_fc1_avm_byteenable;

    // avm_unnamed_fc18_fc1_enable(GPOUT,66)
    assign avm_unnamed_fc18_fc1_enable = fc1_function_out_unnamed_fc18_fc1_avm_enable;

    // avm_unnamed_fc18_fc1_read(GPOUT,67)
    assign avm_unnamed_fc18_fc1_read = fc1_function_out_unnamed_fc18_fc1_avm_read;

    // avm_unnamed_fc18_fc1_write(GPOUT,68)
    assign avm_unnamed_fc18_fc1_write = fc1_function_out_unnamed_fc18_fc1_avm_write;

    // avm_unnamed_fc18_fc1_writedata(GPOUT,69)
    assign avm_unnamed_fc18_fc1_writedata = fc1_function_out_unnamed_fc18_fc1_avm_writedata;

    // avst_iord_bl_call_fc1_almost_full(GPOUT,70)
    assign avst_iord_bl_call_fc1_almost_full = fc1_function_out_iord_bl_call_fc1_o_fifoalmost_full;

    // avst_iord_bl_call_fc1_ready(GPOUT,71)
    assign avst_iord_bl_call_fc1_ready = fc1_function_out_iord_bl_call_fc1_o_fifoready;

    // avst_iowr_bl_return_fc1_data(GPOUT,72)
    assign avst_iowr_bl_return_fc1_data = fc1_function_out_iowr_bl_return_fc1_o_fifodata;

    // avst_iowr_bl_return_fc1_valid(GPOUT,73)
    assign avst_iowr_bl_return_fc1_valid = fc1_function_out_iowr_bl_return_fc1_o_fifovalid;

    // not_ready(LOGICAL,39)
    assign not_ready_q = ~ (fc1_function_out_iord_bl_call_fc1_o_fifoready);

    // busy_and(LOGICAL,3)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,77)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,76)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,4)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,74)
    assign busy = busy_or_q;

    // done(GPOUT,75)
    assign done = fc1_function_out_iowr_bl_return_fc1_o_fifovalid;

endmodule
