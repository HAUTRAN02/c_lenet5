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

// SystemVerilog created from relu2_function_wrapper
// Created for function/kernel relu2
// SystemVerilog created on Sat Apr  1 13:10:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module relu2_function_wrapper (
    input wire [63:0] avm_memdep_relu2_readdata,
    input wire [0:0] avm_memdep_relu2_readdatavalid,
    input wire [0:0] avm_memdep_relu2_waitrequest,
    input wire [0:0] avm_memdep_relu2_writeack,
    input wire [63:0] avm_unnamed_relu25_relu2_readdata,
    input wire [0:0] avm_unnamed_relu25_relu2_readdatavalid,
    input wire [0:0] avm_unnamed_relu25_relu2_waitrequest,
    input wire [0:0] avm_unnamed_relu25_relu2_writeack,
    input wire [127:0] avst_iord_bl_call_relu2_data,
    input wire [0:0] avst_iord_bl_call_relu2_valid,
    input wire [0:0] avst_iowr_bl_return_relu2_almostfull,
    input wire [0:0] avst_iowr_bl_return_relu2_ready,
    input wire [63:0] in0,
    input wire [63:0] out0,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_memdep_relu2_address,
    output wire [0:0] avm_memdep_relu2_burstcount,
    output wire [7:0] avm_memdep_relu2_byteenable,
    output wire [0:0] avm_memdep_relu2_enable,
    output wire [0:0] avm_memdep_relu2_read,
    output wire [0:0] avm_memdep_relu2_write,
    output wire [63:0] avm_memdep_relu2_writedata,
    output wire [63:0] avm_unnamed_relu25_relu2_address,
    output wire [0:0] avm_unnamed_relu25_relu2_burstcount,
    output wire [7:0] avm_unnamed_relu25_relu2_byteenable,
    output wire [0:0] avm_unnamed_relu25_relu2_enable,
    output wire [0:0] avm_unnamed_relu25_relu2_read,
    output wire [0:0] avm_unnamed_relu25_relu2_write,
    output wire [63:0] avm_unnamed_relu25_relu2_writedata,
    output wire [0:0] avst_iord_bl_call_relu2_almost_full,
    output wire [0:0] avst_iord_bl_call_relu2_ready,
    output wire [0:0] avst_iowr_bl_return_relu2_data,
    output wire [0:0] avst_iowr_bl_return_relu2_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [63:0] call_const_q;
    wire [127:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] relu2_function_out_iord_bl_call_relu2_o_fifoalmost_full;
    wire [0:0] relu2_function_out_iord_bl_call_relu2_o_fifoready;
    wire [0:0] relu2_function_out_iowr_bl_return_relu2_o_fifodata;
    wire [0:0] relu2_function_out_iowr_bl_return_relu2_o_fifovalid;
    wire [63:0] relu2_function_out_memdep_relu2_avm_address;
    wire [0:0] relu2_function_out_memdep_relu2_avm_burstcount;
    wire [7:0] relu2_function_out_memdep_relu2_avm_byteenable;
    wire [0:0] relu2_function_out_memdep_relu2_avm_enable;
    wire [0:0] relu2_function_out_memdep_relu2_avm_read;
    wire [0:0] relu2_function_out_memdep_relu2_avm_write;
    wire [63:0] relu2_function_out_memdep_relu2_avm_writedata;
    wire [63:0] relu2_function_out_unnamed_relu25_relu2_avm_address;
    wire [0:0] relu2_function_out_unnamed_relu25_relu2_avm_burstcount;
    wire [7:0] relu2_function_out_unnamed_relu25_relu2_avm_byteenable;
    wire [0:0] relu2_function_out_unnamed_relu25_relu2_avm_enable;
    wire [0:0] relu2_function_out_unnamed_relu25_relu2_avm_read;
    wire [0:0] relu2_function_out_unnamed_relu25_relu2_avm_write;
    wire [63:0] relu2_function_out_unnamed_relu25_relu2_avm_writedata;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,28)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,7)
    assign implicit_input_q = {out0, in0};

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // relu2_function(BLACKBOX,51)
    relu2_function therelu2_function (
        .in_arg_call(call_const_q),
        .in_arg_in0(call_const_q),
        .in_arg_out0(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_relu2_i_fifodata(implicit_input_q),
        .in_iord_bl_call_relu2_i_fifovalid(start),
        .in_iowr_bl_return_relu2_i_fifoready(not_stall_q),
        .in_memdep_relu2_avm_readdata(avm_memdep_relu2_readdata),
        .in_memdep_relu2_avm_readdatavalid(avm_memdep_relu2_readdatavalid),
        .in_memdep_relu2_avm_waitrequest(avm_memdep_relu2_waitrequest),
        .in_memdep_relu2_avm_writeack(avm_memdep_relu2_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_relu25_relu2_avm_readdata(avm_unnamed_relu25_relu2_readdata),
        .in_unnamed_relu25_relu2_avm_readdatavalid(avm_unnamed_relu25_relu2_readdatavalid),
        .in_unnamed_relu25_relu2_avm_waitrequest(avm_unnamed_relu25_relu2_waitrequest),
        .in_unnamed_relu25_relu2_avm_writeack(avm_unnamed_relu25_relu2_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_relu2_o_fifoalmost_full(relu2_function_out_iord_bl_call_relu2_o_fifoalmost_full),
        .out_iord_bl_call_relu2_o_fifoready(relu2_function_out_iord_bl_call_relu2_o_fifoready),
        .out_iowr_bl_return_relu2_o_fifodata(relu2_function_out_iowr_bl_return_relu2_o_fifodata),
        .out_iowr_bl_return_relu2_o_fifovalid(relu2_function_out_iowr_bl_return_relu2_o_fifovalid),
        .out_memdep_relu2_avm_address(relu2_function_out_memdep_relu2_avm_address),
        .out_memdep_relu2_avm_burstcount(relu2_function_out_memdep_relu2_avm_burstcount),
        .out_memdep_relu2_avm_byteenable(relu2_function_out_memdep_relu2_avm_byteenable),
        .out_memdep_relu2_avm_enable(relu2_function_out_memdep_relu2_avm_enable),
        .out_memdep_relu2_avm_read(relu2_function_out_memdep_relu2_avm_read),
        .out_memdep_relu2_avm_write(relu2_function_out_memdep_relu2_avm_write),
        .out_memdep_relu2_avm_writedata(relu2_function_out_memdep_relu2_avm_writedata),
        .out_o_active_memdep(),
        .out_stall_out(),
        .out_unnamed_relu25_relu2_avm_address(relu2_function_out_unnamed_relu25_relu2_avm_address),
        .out_unnamed_relu25_relu2_avm_burstcount(relu2_function_out_unnamed_relu25_relu2_avm_burstcount),
        .out_unnamed_relu25_relu2_avm_byteenable(relu2_function_out_unnamed_relu25_relu2_avm_byteenable),
        .out_unnamed_relu25_relu2_avm_enable(relu2_function_out_unnamed_relu25_relu2_avm_enable),
        .out_unnamed_relu25_relu2_avm_read(relu2_function_out_unnamed_relu25_relu2_avm_read),
        .out_unnamed_relu25_relu2_avm_write(relu2_function_out_unnamed_relu25_relu2_avm_write),
        .out_unnamed_relu25_relu2_avm_writedata(relu2_function_out_unnamed_relu25_relu2_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_relu2_address(GPOUT,30)
    assign avm_memdep_relu2_address = relu2_function_out_memdep_relu2_avm_address;

    // avm_memdep_relu2_burstcount(GPOUT,31)
    assign avm_memdep_relu2_burstcount = relu2_function_out_memdep_relu2_avm_burstcount;

    // avm_memdep_relu2_byteenable(GPOUT,32)
    assign avm_memdep_relu2_byteenable = relu2_function_out_memdep_relu2_avm_byteenable;

    // avm_memdep_relu2_enable(GPOUT,33)
    assign avm_memdep_relu2_enable = relu2_function_out_memdep_relu2_avm_enable;

    // avm_memdep_relu2_read(GPOUT,34)
    assign avm_memdep_relu2_read = relu2_function_out_memdep_relu2_avm_read;

    // avm_memdep_relu2_write(GPOUT,35)
    assign avm_memdep_relu2_write = relu2_function_out_memdep_relu2_avm_write;

    // avm_memdep_relu2_writedata(GPOUT,36)
    assign avm_memdep_relu2_writedata = relu2_function_out_memdep_relu2_avm_writedata;

    // avm_unnamed_relu25_relu2_address(GPOUT,37)
    assign avm_unnamed_relu25_relu2_address = relu2_function_out_unnamed_relu25_relu2_avm_address;

    // avm_unnamed_relu25_relu2_burstcount(GPOUT,38)
    assign avm_unnamed_relu25_relu2_burstcount = relu2_function_out_unnamed_relu25_relu2_avm_burstcount;

    // avm_unnamed_relu25_relu2_byteenable(GPOUT,39)
    assign avm_unnamed_relu25_relu2_byteenable = relu2_function_out_unnamed_relu25_relu2_avm_byteenable;

    // avm_unnamed_relu25_relu2_enable(GPOUT,40)
    assign avm_unnamed_relu25_relu2_enable = relu2_function_out_unnamed_relu25_relu2_avm_enable;

    // avm_unnamed_relu25_relu2_read(GPOUT,41)
    assign avm_unnamed_relu25_relu2_read = relu2_function_out_unnamed_relu25_relu2_avm_read;

    // avm_unnamed_relu25_relu2_write(GPOUT,42)
    assign avm_unnamed_relu25_relu2_write = relu2_function_out_unnamed_relu25_relu2_avm_write;

    // avm_unnamed_relu25_relu2_writedata(GPOUT,43)
    assign avm_unnamed_relu25_relu2_writedata = relu2_function_out_unnamed_relu25_relu2_avm_writedata;

    // avst_iord_bl_call_relu2_almost_full(GPOUT,44)
    assign avst_iord_bl_call_relu2_almost_full = relu2_function_out_iord_bl_call_relu2_o_fifoalmost_full;

    // avst_iord_bl_call_relu2_ready(GPOUT,45)
    assign avst_iord_bl_call_relu2_ready = relu2_function_out_iord_bl_call_relu2_o_fifoready;

    // avst_iowr_bl_return_relu2_data(GPOUT,46)
    assign avst_iowr_bl_return_relu2_data = relu2_function_out_iowr_bl_return_relu2_o_fifodata;

    // avst_iowr_bl_return_relu2_valid(GPOUT,47)
    assign avst_iowr_bl_return_relu2_valid = relu2_function_out_iowr_bl_return_relu2_o_fifovalid;

    // not_ready(LOGICAL,27)
    assign not_ready_q = ~ (relu2_function_out_iord_bl_call_relu2_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,52)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,50)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,48)
    assign busy = busy_or_q;

    // done(GPOUT,49)
    assign done = relu2_function_out_iowr_bl_return_relu2_o_fifovalid;

endmodule
