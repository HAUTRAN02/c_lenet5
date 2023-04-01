// tb_softmax_inst.v

// Generated using ACDS version 21.1 842

`timescale 1 ps / 1 ps
module tb_softmax_inst (
		output wire [63:0] avmm_0_rw_address,    // avmm_0_rw.address
		output wire [7:0]  avmm_0_rw_byteenable, //          .byteenable
		output wire        avmm_0_rw_read,       //          .read
		input  wire [63:0] avmm_0_rw_readdata,   //          .readdata
		output wire        avmm_0_rw_write,      //          .write
		output wire [63:0] avmm_0_rw_writedata,  //          .writedata
		input  wire        start,                //      call.valid
		output wire        busy,                 //          .stall
		input  wire        clock,                //     clock.clk
		input  wire [63:0] in0,                  //       in0.data
		input  wire [63:0] out0,                 //      out0.data
		input  wire        resetn,               //     reset.reset_n
		output wire        done,                 //    return.valid
		input  wire        stall                 //          .stall
	);

	softmax_internal softmax_internal_inst (
		.clock                (clock),                //     clock.clk
		.resetn               (resetn),               //     reset.reset_n
		.start                (start),                //      call.valid
		.busy                 (busy),                 //          .stall
		.done                 (done),                 //    return.valid
		.stall                (stall),                //          .stall
		.in0                  (in0),                  //       in0.data
		.out0                 (out0),                 //      out0.data
		.avmm_0_rw_address    (avmm_0_rw_address),    // avmm_0_rw.address
		.avmm_0_rw_byteenable (avmm_0_rw_byteenable), //          .byteenable
		.avmm_0_rw_read       (avmm_0_rw_read),       //          .read
		.avmm_0_rw_readdata   (avmm_0_rw_readdata),   //          .readdata
		.avmm_0_rw_write      (avmm_0_rw_write),      //          .write
		.avmm_0_rw_writedata  (avmm_0_rw_writedata)   //          .writedata
	);

endmodule