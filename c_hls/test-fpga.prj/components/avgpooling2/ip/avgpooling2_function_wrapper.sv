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

// SystemVerilog created from avgpooling2_function_wrapper
// Created for function/kernel avgpooling2
// SystemVerilog created on Sat Apr  1 13:10:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpooling2_function_wrapper (
    input wire [63:0] avm_memdep_avgpooling2_readdata,
    input wire [0:0] avm_memdep_avgpooling2_readdatavalid,
    input wire [0:0] avm_memdep_avgpooling2_waitrequest,
    input wire [0:0] avm_memdep_avgpooling2_writeack,
    input wire [63:0] avm_unnamed_avgpooling26_avgpooling2_readdata,
    input wire [0:0] avm_unnamed_avgpooling26_avgpooling2_readdatavalid,
    input wire [0:0] avm_unnamed_avgpooling26_avgpooling2_waitrequest,
    input wire [0:0] avm_unnamed_avgpooling26_avgpooling2_writeack,
    input wire [63:0] avm_unnamed_avgpooling27_avgpooling2_readdata,
    input wire [0:0] avm_unnamed_avgpooling27_avgpooling2_readdatavalid,
    input wire [0:0] avm_unnamed_avgpooling27_avgpooling2_waitrequest,
    input wire [0:0] avm_unnamed_avgpooling27_avgpooling2_writeack,
    input wire [63:0] avm_unnamed_avgpooling28_avgpooling2_readdata,
    input wire [0:0] avm_unnamed_avgpooling28_avgpooling2_readdatavalid,
    input wire [0:0] avm_unnamed_avgpooling28_avgpooling2_waitrequest,
    input wire [0:0] avm_unnamed_avgpooling28_avgpooling2_writeack,
    input wire [63:0] avm_unnamed_avgpooling29_avgpooling2_readdata,
    input wire [0:0] avm_unnamed_avgpooling29_avgpooling2_readdatavalid,
    input wire [0:0] avm_unnamed_avgpooling29_avgpooling2_waitrequest,
    input wire [0:0] avm_unnamed_avgpooling29_avgpooling2_writeack,
    input wire [127:0] avst_iord_bl_call_avgpooling2_data,
    input wire [0:0] avst_iord_bl_call_avgpooling2_valid,
    input wire [0:0] avst_iowr_bl_return_avgpooling2_almostfull,
    input wire [0:0] avst_iowr_bl_return_avgpooling2_ready,
    input wire [63:0] in0,
    input wire [63:0] out0,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_memdep_avgpooling2_address,
    output wire [0:0] avm_memdep_avgpooling2_burstcount,
    output wire [7:0] avm_memdep_avgpooling2_byteenable,
    output wire [0:0] avm_memdep_avgpooling2_enable,
    output wire [0:0] avm_memdep_avgpooling2_read,
    output wire [0:0] avm_memdep_avgpooling2_write,
    output wire [63:0] avm_memdep_avgpooling2_writedata,
    output wire [63:0] avm_unnamed_avgpooling26_avgpooling2_address,
    output wire [0:0] avm_unnamed_avgpooling26_avgpooling2_burstcount,
    output wire [7:0] avm_unnamed_avgpooling26_avgpooling2_byteenable,
    output wire [0:0] avm_unnamed_avgpooling26_avgpooling2_enable,
    output wire [0:0] avm_unnamed_avgpooling26_avgpooling2_read,
    output wire [0:0] avm_unnamed_avgpooling26_avgpooling2_write,
    output wire [63:0] avm_unnamed_avgpooling26_avgpooling2_writedata,
    output wire [63:0] avm_unnamed_avgpooling27_avgpooling2_address,
    output wire [0:0] avm_unnamed_avgpooling27_avgpooling2_burstcount,
    output wire [7:0] avm_unnamed_avgpooling27_avgpooling2_byteenable,
    output wire [0:0] avm_unnamed_avgpooling27_avgpooling2_enable,
    output wire [0:0] avm_unnamed_avgpooling27_avgpooling2_read,
    output wire [0:0] avm_unnamed_avgpooling27_avgpooling2_write,
    output wire [63:0] avm_unnamed_avgpooling27_avgpooling2_writedata,
    output wire [63:0] avm_unnamed_avgpooling28_avgpooling2_address,
    output wire [0:0] avm_unnamed_avgpooling28_avgpooling2_burstcount,
    output wire [7:0] avm_unnamed_avgpooling28_avgpooling2_byteenable,
    output wire [0:0] avm_unnamed_avgpooling28_avgpooling2_enable,
    output wire [0:0] avm_unnamed_avgpooling28_avgpooling2_read,
    output wire [0:0] avm_unnamed_avgpooling28_avgpooling2_write,
    output wire [63:0] avm_unnamed_avgpooling28_avgpooling2_writedata,
    output wire [63:0] avm_unnamed_avgpooling29_avgpooling2_address,
    output wire [0:0] avm_unnamed_avgpooling29_avgpooling2_burstcount,
    output wire [7:0] avm_unnamed_avgpooling29_avgpooling2_byteenable,
    output wire [0:0] avm_unnamed_avgpooling29_avgpooling2_enable,
    output wire [0:0] avm_unnamed_avgpooling29_avgpooling2_read,
    output wire [0:0] avm_unnamed_avgpooling29_avgpooling2_write,
    output wire [63:0] avm_unnamed_avgpooling29_avgpooling2_writedata,
    output wire [0:0] avst_iord_bl_call_avgpooling2_almost_full,
    output wire [0:0] avst_iord_bl_call_avgpooling2_ready,
    output wire [0:0] avst_iowr_bl_return_avgpooling2_data,
    output wire [0:0] avst_iowr_bl_return_avgpooling2_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] avgpooling2_function_out_iord_bl_call_avgpooling2_o_fifoalmost_full;
    wire [0:0] avgpooling2_function_out_iord_bl_call_avgpooling2_o_fifoready;
    wire [0:0] avgpooling2_function_out_iowr_bl_return_avgpooling2_o_fifodata;
    wire [0:0] avgpooling2_function_out_iowr_bl_return_avgpooling2_o_fifovalid;
    wire [63:0] avgpooling2_function_out_memdep_avgpooling2_avm_address;
    wire [0:0] avgpooling2_function_out_memdep_avgpooling2_avm_burstcount;
    wire [7:0] avgpooling2_function_out_memdep_avgpooling2_avm_byteenable;
    wire [0:0] avgpooling2_function_out_memdep_avgpooling2_avm_enable;
    wire [0:0] avgpooling2_function_out_memdep_avgpooling2_avm_read;
    wire [0:0] avgpooling2_function_out_memdep_avgpooling2_avm_write;
    wire [63:0] avgpooling2_function_out_memdep_avgpooling2_avm_writedata;
    wire [63:0] avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_address;
    wire [0:0] avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_burstcount;
    wire [7:0] avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_byteenable;
    wire [0:0] avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_enable;
    wire [0:0] avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_read;
    wire [0:0] avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_write;
    wire [63:0] avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_writedata;
    wire [63:0] avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_address;
    wire [0:0] avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_burstcount;
    wire [7:0] avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_byteenable;
    wire [0:0] avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_enable;
    wire [0:0] avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_read;
    wire [0:0] avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_write;
    wire [63:0] avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_writedata;
    wire [63:0] avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_address;
    wire [0:0] avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_burstcount;
    wire [7:0] avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_byteenable;
    wire [0:0] avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_enable;
    wire [0:0] avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_read;
    wire [0:0] avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_write;
    wire [63:0] avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_writedata;
    wire [63:0] avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_address;
    wire [0:0] avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_burstcount;
    wire [7:0] avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_byteenable;
    wire [0:0] avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_enable;
    wire [0:0] avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_read;
    wire [0:0] avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_write;
    wire [63:0] avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_writedata;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [63:0] call_const_q;
    wire [127:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,41)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,8)
    assign implicit_input_q = {out0, in0};

    // call_const(CONSTANT,5)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // avgpooling2_function(BLACKBOX,2)
    avgpooling2_function theavgpooling2_function (
        .in_arg_call(call_const_q),
        .in_arg_in0(call_const_q),
        .in_arg_out0(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_avgpooling2_i_fifodata(implicit_input_q),
        .in_iord_bl_call_avgpooling2_i_fifovalid(start),
        .in_iowr_bl_return_avgpooling2_i_fifoready(not_stall_q),
        .in_memdep_avgpooling2_avm_readdata(avm_memdep_avgpooling2_readdata),
        .in_memdep_avgpooling2_avm_readdatavalid(avm_memdep_avgpooling2_readdatavalid),
        .in_memdep_avgpooling2_avm_waitrequest(avm_memdep_avgpooling2_waitrequest),
        .in_memdep_avgpooling2_avm_writeack(avm_memdep_avgpooling2_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_avgpooling26_avgpooling2_avm_readdata(avm_unnamed_avgpooling26_avgpooling2_readdata),
        .in_unnamed_avgpooling26_avgpooling2_avm_readdatavalid(avm_unnamed_avgpooling26_avgpooling2_readdatavalid),
        .in_unnamed_avgpooling26_avgpooling2_avm_waitrequest(avm_unnamed_avgpooling26_avgpooling2_waitrequest),
        .in_unnamed_avgpooling26_avgpooling2_avm_writeack(avm_unnamed_avgpooling26_avgpooling2_writeack),
        .in_unnamed_avgpooling27_avgpooling2_avm_readdata(avm_unnamed_avgpooling27_avgpooling2_readdata),
        .in_unnamed_avgpooling27_avgpooling2_avm_readdatavalid(avm_unnamed_avgpooling27_avgpooling2_readdatavalid),
        .in_unnamed_avgpooling27_avgpooling2_avm_waitrequest(avm_unnamed_avgpooling27_avgpooling2_waitrequest),
        .in_unnamed_avgpooling27_avgpooling2_avm_writeack(avm_unnamed_avgpooling27_avgpooling2_writeack),
        .in_unnamed_avgpooling28_avgpooling2_avm_readdata(avm_unnamed_avgpooling28_avgpooling2_readdata),
        .in_unnamed_avgpooling28_avgpooling2_avm_readdatavalid(avm_unnamed_avgpooling28_avgpooling2_readdatavalid),
        .in_unnamed_avgpooling28_avgpooling2_avm_waitrequest(avm_unnamed_avgpooling28_avgpooling2_waitrequest),
        .in_unnamed_avgpooling28_avgpooling2_avm_writeack(avm_unnamed_avgpooling28_avgpooling2_writeack),
        .in_unnamed_avgpooling29_avgpooling2_avm_readdata(avm_unnamed_avgpooling29_avgpooling2_readdata),
        .in_unnamed_avgpooling29_avgpooling2_avm_readdatavalid(avm_unnamed_avgpooling29_avgpooling2_readdatavalid),
        .in_unnamed_avgpooling29_avgpooling2_avm_waitrequest(avm_unnamed_avgpooling29_avgpooling2_waitrequest),
        .in_unnamed_avgpooling29_avgpooling2_avm_writeack(avm_unnamed_avgpooling29_avgpooling2_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_avgpooling2_o_fifoalmost_full(avgpooling2_function_out_iord_bl_call_avgpooling2_o_fifoalmost_full),
        .out_iord_bl_call_avgpooling2_o_fifoready(avgpooling2_function_out_iord_bl_call_avgpooling2_o_fifoready),
        .out_iowr_bl_return_avgpooling2_o_fifodata(avgpooling2_function_out_iowr_bl_return_avgpooling2_o_fifodata),
        .out_iowr_bl_return_avgpooling2_o_fifovalid(avgpooling2_function_out_iowr_bl_return_avgpooling2_o_fifovalid),
        .out_memdep_avgpooling2_avm_address(avgpooling2_function_out_memdep_avgpooling2_avm_address),
        .out_memdep_avgpooling2_avm_burstcount(avgpooling2_function_out_memdep_avgpooling2_avm_burstcount),
        .out_memdep_avgpooling2_avm_byteenable(avgpooling2_function_out_memdep_avgpooling2_avm_byteenable),
        .out_memdep_avgpooling2_avm_enable(avgpooling2_function_out_memdep_avgpooling2_avm_enable),
        .out_memdep_avgpooling2_avm_read(avgpooling2_function_out_memdep_avgpooling2_avm_read),
        .out_memdep_avgpooling2_avm_write(avgpooling2_function_out_memdep_avgpooling2_avm_write),
        .out_memdep_avgpooling2_avm_writedata(avgpooling2_function_out_memdep_avgpooling2_avm_writedata),
        .out_o_active_memdep(),
        .out_stall_out(),
        .out_unnamed_avgpooling26_avgpooling2_avm_address(avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_address),
        .out_unnamed_avgpooling26_avgpooling2_avm_burstcount(avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_burstcount),
        .out_unnamed_avgpooling26_avgpooling2_avm_byteenable(avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_byteenable),
        .out_unnamed_avgpooling26_avgpooling2_avm_enable(avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_enable),
        .out_unnamed_avgpooling26_avgpooling2_avm_read(avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_read),
        .out_unnamed_avgpooling26_avgpooling2_avm_write(avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_write),
        .out_unnamed_avgpooling26_avgpooling2_avm_writedata(avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_writedata),
        .out_unnamed_avgpooling27_avgpooling2_avm_address(avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_address),
        .out_unnamed_avgpooling27_avgpooling2_avm_burstcount(avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_burstcount),
        .out_unnamed_avgpooling27_avgpooling2_avm_byteenable(avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_byteenable),
        .out_unnamed_avgpooling27_avgpooling2_avm_enable(avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_enable),
        .out_unnamed_avgpooling27_avgpooling2_avm_read(avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_read),
        .out_unnamed_avgpooling27_avgpooling2_avm_write(avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_write),
        .out_unnamed_avgpooling27_avgpooling2_avm_writedata(avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_writedata),
        .out_unnamed_avgpooling28_avgpooling2_avm_address(avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_address),
        .out_unnamed_avgpooling28_avgpooling2_avm_burstcount(avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_burstcount),
        .out_unnamed_avgpooling28_avgpooling2_avm_byteenable(avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_byteenable),
        .out_unnamed_avgpooling28_avgpooling2_avm_enable(avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_enable),
        .out_unnamed_avgpooling28_avgpooling2_avm_read(avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_read),
        .out_unnamed_avgpooling28_avgpooling2_avm_write(avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_write),
        .out_unnamed_avgpooling28_avgpooling2_avm_writedata(avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_writedata),
        .out_unnamed_avgpooling29_avgpooling2_avm_address(avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_address),
        .out_unnamed_avgpooling29_avgpooling2_avm_burstcount(avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_burstcount),
        .out_unnamed_avgpooling29_avgpooling2_avm_byteenable(avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_byteenable),
        .out_unnamed_avgpooling29_avgpooling2_avm_enable(avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_enable),
        .out_unnamed_avgpooling29_avgpooling2_avm_read(avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_read),
        .out_unnamed_avgpooling29_avgpooling2_avm_write(avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_write),
        .out_unnamed_avgpooling29_avgpooling2_avm_writedata(avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_avgpooling2_address(GPOUT,43)
    assign avm_memdep_avgpooling2_address = avgpooling2_function_out_memdep_avgpooling2_avm_address;

    // avm_memdep_avgpooling2_burstcount(GPOUT,44)
    assign avm_memdep_avgpooling2_burstcount = avgpooling2_function_out_memdep_avgpooling2_avm_burstcount;

    // avm_memdep_avgpooling2_byteenable(GPOUT,45)
    assign avm_memdep_avgpooling2_byteenable = avgpooling2_function_out_memdep_avgpooling2_avm_byteenable;

    // avm_memdep_avgpooling2_enable(GPOUT,46)
    assign avm_memdep_avgpooling2_enable = avgpooling2_function_out_memdep_avgpooling2_avm_enable;

    // avm_memdep_avgpooling2_read(GPOUT,47)
    assign avm_memdep_avgpooling2_read = avgpooling2_function_out_memdep_avgpooling2_avm_read;

    // avm_memdep_avgpooling2_write(GPOUT,48)
    assign avm_memdep_avgpooling2_write = avgpooling2_function_out_memdep_avgpooling2_avm_write;

    // avm_memdep_avgpooling2_writedata(GPOUT,49)
    assign avm_memdep_avgpooling2_writedata = avgpooling2_function_out_memdep_avgpooling2_avm_writedata;

    // avm_unnamed_avgpooling26_avgpooling2_address(GPOUT,50)
    assign avm_unnamed_avgpooling26_avgpooling2_address = avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_address;

    // avm_unnamed_avgpooling26_avgpooling2_burstcount(GPOUT,51)
    assign avm_unnamed_avgpooling26_avgpooling2_burstcount = avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_burstcount;

    // avm_unnamed_avgpooling26_avgpooling2_byteenable(GPOUT,52)
    assign avm_unnamed_avgpooling26_avgpooling2_byteenable = avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_byteenable;

    // avm_unnamed_avgpooling26_avgpooling2_enable(GPOUT,53)
    assign avm_unnamed_avgpooling26_avgpooling2_enable = avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_enable;

    // avm_unnamed_avgpooling26_avgpooling2_read(GPOUT,54)
    assign avm_unnamed_avgpooling26_avgpooling2_read = avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_read;

    // avm_unnamed_avgpooling26_avgpooling2_write(GPOUT,55)
    assign avm_unnamed_avgpooling26_avgpooling2_write = avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_write;

    // avm_unnamed_avgpooling26_avgpooling2_writedata(GPOUT,56)
    assign avm_unnamed_avgpooling26_avgpooling2_writedata = avgpooling2_function_out_unnamed_avgpooling26_avgpooling2_avm_writedata;

    // avm_unnamed_avgpooling27_avgpooling2_address(GPOUT,57)
    assign avm_unnamed_avgpooling27_avgpooling2_address = avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_address;

    // avm_unnamed_avgpooling27_avgpooling2_burstcount(GPOUT,58)
    assign avm_unnamed_avgpooling27_avgpooling2_burstcount = avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_burstcount;

    // avm_unnamed_avgpooling27_avgpooling2_byteenable(GPOUT,59)
    assign avm_unnamed_avgpooling27_avgpooling2_byteenable = avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_byteenable;

    // avm_unnamed_avgpooling27_avgpooling2_enable(GPOUT,60)
    assign avm_unnamed_avgpooling27_avgpooling2_enable = avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_enable;

    // avm_unnamed_avgpooling27_avgpooling2_read(GPOUT,61)
    assign avm_unnamed_avgpooling27_avgpooling2_read = avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_read;

    // avm_unnamed_avgpooling27_avgpooling2_write(GPOUT,62)
    assign avm_unnamed_avgpooling27_avgpooling2_write = avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_write;

    // avm_unnamed_avgpooling27_avgpooling2_writedata(GPOUT,63)
    assign avm_unnamed_avgpooling27_avgpooling2_writedata = avgpooling2_function_out_unnamed_avgpooling27_avgpooling2_avm_writedata;

    // avm_unnamed_avgpooling28_avgpooling2_address(GPOUT,64)
    assign avm_unnamed_avgpooling28_avgpooling2_address = avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_address;

    // avm_unnamed_avgpooling28_avgpooling2_burstcount(GPOUT,65)
    assign avm_unnamed_avgpooling28_avgpooling2_burstcount = avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_burstcount;

    // avm_unnamed_avgpooling28_avgpooling2_byteenable(GPOUT,66)
    assign avm_unnamed_avgpooling28_avgpooling2_byteenable = avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_byteenable;

    // avm_unnamed_avgpooling28_avgpooling2_enable(GPOUT,67)
    assign avm_unnamed_avgpooling28_avgpooling2_enable = avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_enable;

    // avm_unnamed_avgpooling28_avgpooling2_read(GPOUT,68)
    assign avm_unnamed_avgpooling28_avgpooling2_read = avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_read;

    // avm_unnamed_avgpooling28_avgpooling2_write(GPOUT,69)
    assign avm_unnamed_avgpooling28_avgpooling2_write = avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_write;

    // avm_unnamed_avgpooling28_avgpooling2_writedata(GPOUT,70)
    assign avm_unnamed_avgpooling28_avgpooling2_writedata = avgpooling2_function_out_unnamed_avgpooling28_avgpooling2_avm_writedata;

    // avm_unnamed_avgpooling29_avgpooling2_address(GPOUT,71)
    assign avm_unnamed_avgpooling29_avgpooling2_address = avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_address;

    // avm_unnamed_avgpooling29_avgpooling2_burstcount(GPOUT,72)
    assign avm_unnamed_avgpooling29_avgpooling2_burstcount = avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_burstcount;

    // avm_unnamed_avgpooling29_avgpooling2_byteenable(GPOUT,73)
    assign avm_unnamed_avgpooling29_avgpooling2_byteenable = avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_byteenable;

    // avm_unnamed_avgpooling29_avgpooling2_enable(GPOUT,74)
    assign avm_unnamed_avgpooling29_avgpooling2_enable = avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_enable;

    // avm_unnamed_avgpooling29_avgpooling2_read(GPOUT,75)
    assign avm_unnamed_avgpooling29_avgpooling2_read = avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_read;

    // avm_unnamed_avgpooling29_avgpooling2_write(GPOUT,76)
    assign avm_unnamed_avgpooling29_avgpooling2_write = avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_write;

    // avm_unnamed_avgpooling29_avgpooling2_writedata(GPOUT,77)
    assign avm_unnamed_avgpooling29_avgpooling2_writedata = avgpooling2_function_out_unnamed_avgpooling29_avgpooling2_avm_writedata;

    // avst_iord_bl_call_avgpooling2_almost_full(GPOUT,78)
    assign avst_iord_bl_call_avgpooling2_almost_full = avgpooling2_function_out_iord_bl_call_avgpooling2_o_fifoalmost_full;

    // avst_iord_bl_call_avgpooling2_ready(GPOUT,79)
    assign avst_iord_bl_call_avgpooling2_ready = avgpooling2_function_out_iord_bl_call_avgpooling2_o_fifoready;

    // avst_iowr_bl_return_avgpooling2_data(GPOUT,80)
    assign avst_iowr_bl_return_avgpooling2_data = avgpooling2_function_out_iowr_bl_return_avgpooling2_o_fifodata;

    // avst_iowr_bl_return_avgpooling2_valid(GPOUT,81)
    assign avst_iowr_bl_return_avgpooling2_valid = avgpooling2_function_out_iowr_bl_return_avgpooling2_o_fifovalid;

    // not_ready(LOGICAL,40)
    assign not_ready_q = ~ (avgpooling2_function_out_iord_bl_call_avgpooling2_o_fifoready);

    // busy_and(LOGICAL,3)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,85)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,84)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,4)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,82)
    assign busy = busy_or_q;

    // done(GPOUT,83)
    assign done = avgpooling2_function_out_iowr_bl_return_avgpooling2_o_fifovalid;

endmodule
