module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] avgpooling1_start
	, output logic [0:0] avgpooling1_busy
	, output logic [0:0] avgpooling1_done
	, input logic [0:0] avgpooling1_stall
	, input logic [63:0] avgpooling1_in0
	, input logic [63:0] avgpooling1_out0
	, output logic [63:0] avgpooling1_avmm_0_rw_address
	, output logic [7:0] avgpooling1_avmm_0_rw_byteenable
	, output logic [0:0] avgpooling1_avmm_0_rw_read
	, input logic [63:0] avgpooling1_avmm_0_rw_readdata
	, output logic [0:0] avgpooling1_avmm_0_rw_write
	, output logic [63:0] avgpooling1_avmm_0_rw_writedata
	, input logic [0:0] avgpooling2_start
	, output logic [0:0] avgpooling2_busy
	, output logic [0:0] avgpooling2_done
	, input logic [0:0] avgpooling2_stall
	, input logic [63:0] avgpooling2_in0
	, input logic [63:0] avgpooling2_out0
	, output logic [63:0] avgpooling2_avmm_0_rw_address
	, output logic [7:0] avgpooling2_avmm_0_rw_byteenable
	, output logic [0:0] avgpooling2_avmm_0_rw_read
	, input logic [63:0] avgpooling2_avmm_0_rw_readdata
	, output logic [0:0] avgpooling2_avmm_0_rw_write
	, output logic [63:0] avgpooling2_avmm_0_rw_writedata
	, input logic [0:0] conv1_start
	, output logic [0:0] conv1_busy
	, output logic [0:0] conv1_done
	, input logic [0:0] conv1_stall
	, input logic [63:0] conv1_in0
	, input logic [63:0] conv1_kernel
	, input logic [63:0] conv1_bias
	, input logic [63:0] conv1_out0
	, output logic [63:0] conv1_avmm_0_rw_address
	, output logic [7:0] conv1_avmm_0_rw_byteenable
	, output logic [0:0] conv1_avmm_0_rw_read
	, input logic [63:0] conv1_avmm_0_rw_readdata
	, output logic [0:0] conv1_avmm_0_rw_write
	, output logic [63:0] conv1_avmm_0_rw_writedata
	, input logic [0:0] conv2_start
	, output logic [0:0] conv2_busy
	, output logic [0:0] conv2_done
	, input logic [0:0] conv2_stall
	, input logic [63:0] conv2_in0
	, input logic [63:0] conv2_kernel
	, input logic [63:0] conv2_bias
	, input logic [63:0] conv2_out0
	, output logic [63:0] conv2_avmm_0_rw_address
	, output logic [7:0] conv2_avmm_0_rw_byteenable
	, output logic [0:0] conv2_avmm_0_rw_read
	, input logic [63:0] conv2_avmm_0_rw_readdata
	, output logic [0:0] conv2_avmm_0_rw_write
	, output logic [63:0] conv2_avmm_0_rw_writedata
	, input logic [0:0] fc1_start
	, output logic [0:0] fc1_busy
	, output logic [0:0] fc1_done
	, input logic [0:0] fc1_stall
	, input logic [63:0] fc1_in0
	, input logic [63:0] fc1_weights
	, input logic [63:0] fc1_bias
	, input logic [63:0] fc1_out0
	, output logic [63:0] fc1_avmm_0_rw_address
	, output logic [7:0] fc1_avmm_0_rw_byteenable
	, output logic [0:0] fc1_avmm_0_rw_read
	, input logic [63:0] fc1_avmm_0_rw_readdata
	, output logic [0:0] fc1_avmm_0_rw_write
	, output logic [63:0] fc1_avmm_0_rw_writedata
	, input logic [0:0] fc3_start
	, output logic [0:0] fc3_busy
	, output logic [0:0] fc3_done
	, input logic [0:0] fc3_stall
	, input logic [63:0] fc3_in0
	, input logic [63:0] fc3_weights
	, input logic [63:0] fc3_bias
	, input logic [63:0] fc3_out0
	, output logic [63:0] fc3_avmm_0_rw_address
	, output logic [7:0] fc3_avmm_0_rw_byteenable
	, output logic [0:0] fc3_avmm_0_rw_read
	, input logic [63:0] fc3_avmm_0_rw_readdata
	, output logic [0:0] fc3_avmm_0_rw_write
	, output logic [63:0] fc3_avmm_0_rw_writedata
	, input logic [0:0] relu1_start
	, output logic [0:0] relu1_busy
	, output logic [0:0] relu1_done
	, input logic [0:0] relu1_stall
	, input logic [63:0] relu1_in0
	, input logic [63:0] relu1_out0
	, output logic [63:0] relu1_avmm_0_rw_address
	, output logic [7:0] relu1_avmm_0_rw_byteenable
	, output logic [0:0] relu1_avmm_0_rw_read
	, input logic [63:0] relu1_avmm_0_rw_readdata
	, output logic [0:0] relu1_avmm_0_rw_write
	, output logic [63:0] relu1_avmm_0_rw_writedata
	, input logic [0:0] relu2_start
	, output logic [0:0] relu2_busy
	, output logic [0:0] relu2_done
	, input logic [0:0] relu2_stall
	, input logic [63:0] relu2_in0
	, input logic [63:0] relu2_out0
	, output logic [63:0] relu2_avmm_0_rw_address
	, output logic [7:0] relu2_avmm_0_rw_byteenable
	, output logic [0:0] relu2_avmm_0_rw_read
	, input logic [63:0] relu2_avmm_0_rw_readdata
	, output logic [0:0] relu2_avmm_0_rw_write
	, output logic [63:0] relu2_avmm_0_rw_writedata
	, input logic [0:0] relu3_start
	, output logic [0:0] relu3_busy
	, output logic [0:0] relu3_done
	, input logic [0:0] relu3_stall
	, input logic [63:0] relu3_in0
	, input logic [63:0] relu3_out0
	, output logic [63:0] relu3_avmm_0_rw_address
	, output logic [7:0] relu3_avmm_0_rw_byteenable
	, output logic [0:0] relu3_avmm_0_rw_read
	, input logic [63:0] relu3_avmm_0_rw_readdata
	, output logic [0:0] relu3_avmm_0_rw_write
	, output logic [63:0] relu3_avmm_0_rw_writedata
	, input logic [0:0] relu4_start
	, output logic [0:0] relu4_busy
	, output logic [0:0] relu4_done
	, input logic [0:0] relu4_stall
	, input logic [63:0] relu4_in0
	, input logic [63:0] relu4_out0
	, output logic [63:0] relu4_avmm_0_rw_address
	, output logic [7:0] relu4_avmm_0_rw_byteenable
	, output logic [0:0] relu4_avmm_0_rw_read
	, input logic [63:0] relu4_avmm_0_rw_readdata
	, output logic [0:0] relu4_avmm_0_rw_write
	, output logic [63:0] relu4_avmm_0_rw_writedata
	, input logic [0:0] softmax_start
	, output logic [0:0] softmax_busy
	, output logic [0:0] softmax_done
	, input logic [0:0] softmax_stall
	, input logic [63:0] softmax_in0
	, input logic [63:0] softmax_out0
	, output logic [63:0] softmax_avmm_0_rw_address
	, output logic [7:0] softmax_avmm_0_rw_byteenable
	, output logic [0:0] softmax_avmm_0_rw_read
	, input logic [63:0] softmax_avmm_0_rw_readdata
	, output logic [0:0] softmax_avmm_0_rw_write
	, output logic [63:0] softmax_avmm_0_rw_writedata
	);

	logic [0:0] avgpooling1_start_reg;
	logic [0:0] avgpooling1_busy_reg;
	logic [0:0] avgpooling1_done_reg;
	logic [0:0] avgpooling1_stall_reg;
	logic [63:0] avgpooling1_in0_reg;
	logic [63:0] avgpooling1_out0_reg;
	logic [63:0] avgpooling1_avmm_0_rw_address_reg;
	logic [7:0] avgpooling1_avmm_0_rw_byteenable_reg;
	logic [0:0] avgpooling1_avmm_0_rw_read_reg;
	logic [63:0] avgpooling1_avmm_0_rw_readdata_reg;
	logic [0:0] avgpooling1_avmm_0_rw_write_reg;
	logic [63:0] avgpooling1_avmm_0_rw_writedata_reg;
	logic [0:0] avgpooling2_start_reg;
	logic [0:0] avgpooling2_busy_reg;
	logic [0:0] avgpooling2_done_reg;
	logic [0:0] avgpooling2_stall_reg;
	logic [63:0] avgpooling2_in0_reg;
	logic [63:0] avgpooling2_out0_reg;
	logic [63:0] avgpooling2_avmm_0_rw_address_reg;
	logic [7:0] avgpooling2_avmm_0_rw_byteenable_reg;
	logic [0:0] avgpooling2_avmm_0_rw_read_reg;
	logic [63:0] avgpooling2_avmm_0_rw_readdata_reg;
	logic [0:0] avgpooling2_avmm_0_rw_write_reg;
	logic [63:0] avgpooling2_avmm_0_rw_writedata_reg;
	logic [0:0] conv1_start_reg;
	logic [0:0] conv1_busy_reg;
	logic [0:0] conv1_done_reg;
	logic [0:0] conv1_stall_reg;
	logic [63:0] conv1_in0_reg;
	logic [63:0] conv1_kernel_reg;
	logic [63:0] conv1_bias_reg;
	logic [63:0] conv1_out0_reg;
	logic [63:0] conv1_avmm_0_rw_address_reg;
	logic [7:0] conv1_avmm_0_rw_byteenable_reg;
	logic [0:0] conv1_avmm_0_rw_read_reg;
	logic [63:0] conv1_avmm_0_rw_readdata_reg;
	logic [0:0] conv1_avmm_0_rw_write_reg;
	logic [63:0] conv1_avmm_0_rw_writedata_reg;
	logic [0:0] conv2_start_reg;
	logic [0:0] conv2_busy_reg;
	logic [0:0] conv2_done_reg;
	logic [0:0] conv2_stall_reg;
	logic [63:0] conv2_in0_reg;
	logic [63:0] conv2_kernel_reg;
	logic [63:0] conv2_bias_reg;
	logic [63:0] conv2_out0_reg;
	logic [63:0] conv2_avmm_0_rw_address_reg;
	logic [7:0] conv2_avmm_0_rw_byteenable_reg;
	logic [0:0] conv2_avmm_0_rw_read_reg;
	logic [63:0] conv2_avmm_0_rw_readdata_reg;
	logic [0:0] conv2_avmm_0_rw_write_reg;
	logic [63:0] conv2_avmm_0_rw_writedata_reg;
	logic [0:0] fc1_start_reg;
	logic [0:0] fc1_busy_reg;
	logic [0:0] fc1_done_reg;
	logic [0:0] fc1_stall_reg;
	logic [63:0] fc1_in0_reg;
	logic [63:0] fc1_weights_reg;
	logic [63:0] fc1_bias_reg;
	logic [63:0] fc1_out0_reg;
	logic [63:0] fc1_avmm_0_rw_address_reg;
	logic [7:0] fc1_avmm_0_rw_byteenable_reg;
	logic [0:0] fc1_avmm_0_rw_read_reg;
	logic [63:0] fc1_avmm_0_rw_readdata_reg;
	logic [0:0] fc1_avmm_0_rw_write_reg;
	logic [63:0] fc1_avmm_0_rw_writedata_reg;
	logic [0:0] fc3_start_reg;
	logic [0:0] fc3_busy_reg;
	logic [0:0] fc3_done_reg;
	logic [0:0] fc3_stall_reg;
	logic [63:0] fc3_in0_reg;
	logic [63:0] fc3_weights_reg;
	logic [63:0] fc3_bias_reg;
	logic [63:0] fc3_out0_reg;
	logic [63:0] fc3_avmm_0_rw_address_reg;
	logic [7:0] fc3_avmm_0_rw_byteenable_reg;
	logic [0:0] fc3_avmm_0_rw_read_reg;
	logic [63:0] fc3_avmm_0_rw_readdata_reg;
	logic [0:0] fc3_avmm_0_rw_write_reg;
	logic [63:0] fc3_avmm_0_rw_writedata_reg;
	logic [0:0] relu1_start_reg;
	logic [0:0] relu1_busy_reg;
	logic [0:0] relu1_done_reg;
	logic [0:0] relu1_stall_reg;
	logic [63:0] relu1_in0_reg;
	logic [63:0] relu1_out0_reg;
	logic [63:0] relu1_avmm_0_rw_address_reg;
	logic [7:0] relu1_avmm_0_rw_byteenable_reg;
	logic [0:0] relu1_avmm_0_rw_read_reg;
	logic [63:0] relu1_avmm_0_rw_readdata_reg;
	logic [0:0] relu1_avmm_0_rw_write_reg;
	logic [63:0] relu1_avmm_0_rw_writedata_reg;
	logic [0:0] relu2_start_reg;
	logic [0:0] relu2_busy_reg;
	logic [0:0] relu2_done_reg;
	logic [0:0] relu2_stall_reg;
	logic [63:0] relu2_in0_reg;
	logic [63:0] relu2_out0_reg;
	logic [63:0] relu2_avmm_0_rw_address_reg;
	logic [7:0] relu2_avmm_0_rw_byteenable_reg;
	logic [0:0] relu2_avmm_0_rw_read_reg;
	logic [63:0] relu2_avmm_0_rw_readdata_reg;
	logic [0:0] relu2_avmm_0_rw_write_reg;
	logic [63:0] relu2_avmm_0_rw_writedata_reg;
	logic [0:0] relu3_start_reg;
	logic [0:0] relu3_busy_reg;
	logic [0:0] relu3_done_reg;
	logic [0:0] relu3_stall_reg;
	logic [63:0] relu3_in0_reg;
	logic [63:0] relu3_out0_reg;
	logic [63:0] relu3_avmm_0_rw_address_reg;
	logic [7:0] relu3_avmm_0_rw_byteenable_reg;
	logic [0:0] relu3_avmm_0_rw_read_reg;
	logic [63:0] relu3_avmm_0_rw_readdata_reg;
	logic [0:0] relu3_avmm_0_rw_write_reg;
	logic [63:0] relu3_avmm_0_rw_writedata_reg;
	logic [0:0] relu4_start_reg;
	logic [0:0] relu4_busy_reg;
	logic [0:0] relu4_done_reg;
	logic [0:0] relu4_stall_reg;
	logic [63:0] relu4_in0_reg;
	logic [63:0] relu4_out0_reg;
	logic [63:0] relu4_avmm_0_rw_address_reg;
	logic [7:0] relu4_avmm_0_rw_byteenable_reg;
	logic [0:0] relu4_avmm_0_rw_read_reg;
	logic [63:0] relu4_avmm_0_rw_readdata_reg;
	logic [0:0] relu4_avmm_0_rw_write_reg;
	logic [63:0] relu4_avmm_0_rw_writedata_reg;
	logic [0:0] softmax_start_reg;
	logic [0:0] softmax_busy_reg;
	logic [0:0] softmax_done_reg;
	logic [0:0] softmax_stall_reg;
	logic [63:0] softmax_in0_reg;
	logic [63:0] softmax_out0_reg;
	logic [63:0] softmax_avmm_0_rw_address_reg;
	logic [7:0] softmax_avmm_0_rw_byteenable_reg;
	logic [0:0] softmax_avmm_0_rw_read_reg;
	logic [63:0] softmax_avmm_0_rw_readdata_reg;
	logic [0:0] softmax_avmm_0_rw_write_reg;
	logic [63:0] softmax_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		avgpooling1_start_reg <= avgpooling1_start;
		avgpooling1_busy <= avgpooling1_busy_reg;
		avgpooling1_done <= avgpooling1_done_reg;
		avgpooling1_stall_reg <= avgpooling1_stall;
		avgpooling1_in0_reg <= avgpooling1_in0;
		avgpooling1_out0_reg <= avgpooling1_out0;
		avgpooling1_avmm_0_rw_address <= avgpooling1_avmm_0_rw_address_reg;
		avgpooling1_avmm_0_rw_byteenable <= avgpooling1_avmm_0_rw_byteenable_reg;
		avgpooling1_avmm_0_rw_read <= avgpooling1_avmm_0_rw_read_reg;
		avgpooling1_avmm_0_rw_readdata_reg <= avgpooling1_avmm_0_rw_readdata;
		avgpooling1_avmm_0_rw_write <= avgpooling1_avmm_0_rw_write_reg;
		avgpooling1_avmm_0_rw_writedata <= avgpooling1_avmm_0_rw_writedata_reg;
	end


	always @(posedge clock) begin
		avgpooling2_start_reg <= avgpooling2_start;
		avgpooling2_busy <= avgpooling2_busy_reg;
		avgpooling2_done <= avgpooling2_done_reg;
		avgpooling2_stall_reg <= avgpooling2_stall;
		avgpooling2_in0_reg <= avgpooling2_in0;
		avgpooling2_out0_reg <= avgpooling2_out0;
		avgpooling2_avmm_0_rw_address <= avgpooling2_avmm_0_rw_address_reg;
		avgpooling2_avmm_0_rw_byteenable <= avgpooling2_avmm_0_rw_byteenable_reg;
		avgpooling2_avmm_0_rw_read <= avgpooling2_avmm_0_rw_read_reg;
		avgpooling2_avmm_0_rw_readdata_reg <= avgpooling2_avmm_0_rw_readdata;
		avgpooling2_avmm_0_rw_write <= avgpooling2_avmm_0_rw_write_reg;
		avgpooling2_avmm_0_rw_writedata <= avgpooling2_avmm_0_rw_writedata_reg;
	end


	always @(posedge clock) begin
		conv1_start_reg <= conv1_start;
		conv1_busy <= conv1_busy_reg;
		conv1_done <= conv1_done_reg;
		conv1_stall_reg <= conv1_stall;
		conv1_in0_reg <= conv1_in0;
		conv1_kernel_reg <= conv1_kernel;
		conv1_bias_reg <= conv1_bias;
		conv1_out0_reg <= conv1_out0;
		conv1_avmm_0_rw_address <= conv1_avmm_0_rw_address_reg;
		conv1_avmm_0_rw_byteenable <= conv1_avmm_0_rw_byteenable_reg;
		conv1_avmm_0_rw_read <= conv1_avmm_0_rw_read_reg;
		conv1_avmm_0_rw_readdata_reg <= conv1_avmm_0_rw_readdata;
		conv1_avmm_0_rw_write <= conv1_avmm_0_rw_write_reg;
		conv1_avmm_0_rw_writedata <= conv1_avmm_0_rw_writedata_reg;
	end


	always @(posedge clock) begin
		conv2_start_reg <= conv2_start;
		conv2_busy <= conv2_busy_reg;
		conv2_done <= conv2_done_reg;
		conv2_stall_reg <= conv2_stall;
		conv2_in0_reg <= conv2_in0;
		conv2_kernel_reg <= conv2_kernel;
		conv2_bias_reg <= conv2_bias;
		conv2_out0_reg <= conv2_out0;
		conv2_avmm_0_rw_address <= conv2_avmm_0_rw_address_reg;
		conv2_avmm_0_rw_byteenable <= conv2_avmm_0_rw_byteenable_reg;
		conv2_avmm_0_rw_read <= conv2_avmm_0_rw_read_reg;
		conv2_avmm_0_rw_readdata_reg <= conv2_avmm_0_rw_readdata;
		conv2_avmm_0_rw_write <= conv2_avmm_0_rw_write_reg;
		conv2_avmm_0_rw_writedata <= conv2_avmm_0_rw_writedata_reg;
	end


	always @(posedge clock) begin
		fc1_start_reg <= fc1_start;
		fc1_busy <= fc1_busy_reg;
		fc1_done <= fc1_done_reg;
		fc1_stall_reg <= fc1_stall;
		fc1_in0_reg <= fc1_in0;
		fc1_weights_reg <= fc1_weights;
		fc1_bias_reg <= fc1_bias;
		fc1_out0_reg <= fc1_out0;
		fc1_avmm_0_rw_address <= fc1_avmm_0_rw_address_reg;
		fc1_avmm_0_rw_byteenable <= fc1_avmm_0_rw_byteenable_reg;
		fc1_avmm_0_rw_read <= fc1_avmm_0_rw_read_reg;
		fc1_avmm_0_rw_readdata_reg <= fc1_avmm_0_rw_readdata;
		fc1_avmm_0_rw_write <= fc1_avmm_0_rw_write_reg;
		fc1_avmm_0_rw_writedata <= fc1_avmm_0_rw_writedata_reg;
	end


	always @(posedge clock) begin
		fc3_start_reg <= fc3_start;
		fc3_busy <= fc3_busy_reg;
		fc3_done <= fc3_done_reg;
		fc3_stall_reg <= fc3_stall;
		fc3_in0_reg <= fc3_in0;
		fc3_weights_reg <= fc3_weights;
		fc3_bias_reg <= fc3_bias;
		fc3_out0_reg <= fc3_out0;
		fc3_avmm_0_rw_address <= fc3_avmm_0_rw_address_reg;
		fc3_avmm_0_rw_byteenable <= fc3_avmm_0_rw_byteenable_reg;
		fc3_avmm_0_rw_read <= fc3_avmm_0_rw_read_reg;
		fc3_avmm_0_rw_readdata_reg <= fc3_avmm_0_rw_readdata;
		fc3_avmm_0_rw_write <= fc3_avmm_0_rw_write_reg;
		fc3_avmm_0_rw_writedata <= fc3_avmm_0_rw_writedata_reg;
	end


	always @(posedge clock) begin
		relu1_start_reg <= relu1_start;
		relu1_busy <= relu1_busy_reg;
		relu1_done <= relu1_done_reg;
		relu1_stall_reg <= relu1_stall;
		relu1_in0_reg <= relu1_in0;
		relu1_out0_reg <= relu1_out0;
		relu1_avmm_0_rw_address <= relu1_avmm_0_rw_address_reg;
		relu1_avmm_0_rw_byteenable <= relu1_avmm_0_rw_byteenable_reg;
		relu1_avmm_0_rw_read <= relu1_avmm_0_rw_read_reg;
		relu1_avmm_0_rw_readdata_reg <= relu1_avmm_0_rw_readdata;
		relu1_avmm_0_rw_write <= relu1_avmm_0_rw_write_reg;
		relu1_avmm_0_rw_writedata <= relu1_avmm_0_rw_writedata_reg;
	end


	always @(posedge clock) begin
		relu2_start_reg <= relu2_start;
		relu2_busy <= relu2_busy_reg;
		relu2_done <= relu2_done_reg;
		relu2_stall_reg <= relu2_stall;
		relu2_in0_reg <= relu2_in0;
		relu2_out0_reg <= relu2_out0;
		relu2_avmm_0_rw_address <= relu2_avmm_0_rw_address_reg;
		relu2_avmm_0_rw_byteenable <= relu2_avmm_0_rw_byteenable_reg;
		relu2_avmm_0_rw_read <= relu2_avmm_0_rw_read_reg;
		relu2_avmm_0_rw_readdata_reg <= relu2_avmm_0_rw_readdata;
		relu2_avmm_0_rw_write <= relu2_avmm_0_rw_write_reg;
		relu2_avmm_0_rw_writedata <= relu2_avmm_0_rw_writedata_reg;
	end


	always @(posedge clock) begin
		relu3_start_reg <= relu3_start;
		relu3_busy <= relu3_busy_reg;
		relu3_done <= relu3_done_reg;
		relu3_stall_reg <= relu3_stall;
		relu3_in0_reg <= relu3_in0;
		relu3_out0_reg <= relu3_out0;
		relu3_avmm_0_rw_address <= relu3_avmm_0_rw_address_reg;
		relu3_avmm_0_rw_byteenable <= relu3_avmm_0_rw_byteenable_reg;
		relu3_avmm_0_rw_read <= relu3_avmm_0_rw_read_reg;
		relu3_avmm_0_rw_readdata_reg <= relu3_avmm_0_rw_readdata;
		relu3_avmm_0_rw_write <= relu3_avmm_0_rw_write_reg;
		relu3_avmm_0_rw_writedata <= relu3_avmm_0_rw_writedata_reg;
	end


	always @(posedge clock) begin
		relu4_start_reg <= relu4_start;
		relu4_busy <= relu4_busy_reg;
		relu4_done <= relu4_done_reg;
		relu4_stall_reg <= relu4_stall;
		relu4_in0_reg <= relu4_in0;
		relu4_out0_reg <= relu4_out0;
		relu4_avmm_0_rw_address <= relu4_avmm_0_rw_address_reg;
		relu4_avmm_0_rw_byteenable <= relu4_avmm_0_rw_byteenable_reg;
		relu4_avmm_0_rw_read <= relu4_avmm_0_rw_read_reg;
		relu4_avmm_0_rw_readdata_reg <= relu4_avmm_0_rw_readdata;
		relu4_avmm_0_rw_write <= relu4_avmm_0_rw_write_reg;
		relu4_avmm_0_rw_writedata <= relu4_avmm_0_rw_writedata_reg;
	end


	always @(posedge clock) begin
		softmax_start_reg <= softmax_start;
		softmax_busy <= softmax_busy_reg;
		softmax_done <= softmax_done_reg;
		softmax_stall_reg <= softmax_stall;
		softmax_in0_reg <= softmax_in0;
		softmax_out0_reg <= softmax_out0;
		softmax_avmm_0_rw_address <= softmax_avmm_0_rw_address_reg;
		softmax_avmm_0_rw_byteenable <= softmax_avmm_0_rw_byteenable_reg;
		softmax_avmm_0_rw_read <= softmax_avmm_0_rw_read_reg;
		softmax_avmm_0_rw_readdata_reg <= softmax_avmm_0_rw_readdata;
		softmax_avmm_0_rw_write <= softmax_avmm_0_rw_write_reg;
		softmax_avmm_0_rw_writedata <= softmax_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	avgpooling1 avgpooling1_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(avgpooling1_start_reg)
		, .busy(avgpooling1_busy_reg)
		, .done(avgpooling1_done_reg)
		, .stall(avgpooling1_stall_reg)
		, .in0(avgpooling1_in0_reg)
		, .out0(avgpooling1_out0_reg)
		, .avmm_0_rw_address(avgpooling1_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(avgpooling1_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(avgpooling1_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(avgpooling1_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(avgpooling1_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(avgpooling1_avmm_0_rw_writedata_reg)
	);



	avgpooling2 avgpooling2_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(avgpooling2_start_reg)
		, .busy(avgpooling2_busy_reg)
		, .done(avgpooling2_done_reg)
		, .stall(avgpooling2_stall_reg)
		, .in0(avgpooling2_in0_reg)
		, .out0(avgpooling2_out0_reg)
		, .avmm_0_rw_address(avgpooling2_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(avgpooling2_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(avgpooling2_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(avgpooling2_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(avgpooling2_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(avgpooling2_avmm_0_rw_writedata_reg)
	);



	conv1 conv1_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(conv1_start_reg)
		, .busy(conv1_busy_reg)
		, .done(conv1_done_reg)
		, .stall(conv1_stall_reg)
		, .in0(conv1_in0_reg)
		, .kernel(conv1_kernel_reg)
		, .bias(conv1_bias_reg)
		, .out0(conv1_out0_reg)
		, .avmm_0_rw_address(conv1_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(conv1_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(conv1_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(conv1_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(conv1_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(conv1_avmm_0_rw_writedata_reg)
	);



	conv2 conv2_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(conv2_start_reg)
		, .busy(conv2_busy_reg)
		, .done(conv2_done_reg)
		, .stall(conv2_stall_reg)
		, .in0(conv2_in0_reg)
		, .kernel(conv2_kernel_reg)
		, .bias(conv2_bias_reg)
		, .out0(conv2_out0_reg)
		, .avmm_0_rw_address(conv2_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(conv2_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(conv2_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(conv2_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(conv2_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(conv2_avmm_0_rw_writedata_reg)
	);



	fc1 fc1_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(fc1_start_reg)
		, .busy(fc1_busy_reg)
		, .done(fc1_done_reg)
		, .stall(fc1_stall_reg)
		, .in0(fc1_in0_reg)
		, .weights(fc1_weights_reg)
		, .bias(fc1_bias_reg)
		, .out0(fc1_out0_reg)
		, .avmm_0_rw_address(fc1_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(fc1_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(fc1_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(fc1_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(fc1_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(fc1_avmm_0_rw_writedata_reg)
	);



	fc3 fc3_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(fc3_start_reg)
		, .busy(fc3_busy_reg)
		, .done(fc3_done_reg)
		, .stall(fc3_stall_reg)
		, .in0(fc3_in0_reg)
		, .weights(fc3_weights_reg)
		, .bias(fc3_bias_reg)
		, .out0(fc3_out0_reg)
		, .avmm_0_rw_address(fc3_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(fc3_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(fc3_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(fc3_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(fc3_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(fc3_avmm_0_rw_writedata_reg)
	);



	relu1 relu1_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(relu1_start_reg)
		, .busy(relu1_busy_reg)
		, .done(relu1_done_reg)
		, .stall(relu1_stall_reg)
		, .in0(relu1_in0_reg)
		, .out0(relu1_out0_reg)
		, .avmm_0_rw_address(relu1_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(relu1_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(relu1_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(relu1_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(relu1_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(relu1_avmm_0_rw_writedata_reg)
	);



	relu2 relu2_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(relu2_start_reg)
		, .busy(relu2_busy_reg)
		, .done(relu2_done_reg)
		, .stall(relu2_stall_reg)
		, .in0(relu2_in0_reg)
		, .out0(relu2_out0_reg)
		, .avmm_0_rw_address(relu2_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(relu2_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(relu2_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(relu2_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(relu2_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(relu2_avmm_0_rw_writedata_reg)
	);



	relu3 relu3_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(relu3_start_reg)
		, .busy(relu3_busy_reg)
		, .done(relu3_done_reg)
		, .stall(relu3_stall_reg)
		, .in0(relu3_in0_reg)
		, .out0(relu3_out0_reg)
		, .avmm_0_rw_address(relu3_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(relu3_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(relu3_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(relu3_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(relu3_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(relu3_avmm_0_rw_writedata_reg)
	);



	relu4 relu4_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(relu4_start_reg)
		, .busy(relu4_busy_reg)
		, .done(relu4_done_reg)
		, .stall(relu4_stall_reg)
		, .in0(relu4_in0_reg)
		, .out0(relu4_out0_reg)
		, .avmm_0_rw_address(relu4_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(relu4_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(relu4_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(relu4_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(relu4_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(relu4_avmm_0_rw_writedata_reg)
	);



	softmax softmax_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(softmax_start_reg)
		, .busy(softmax_busy_reg)
		, .done(softmax_done_reg)
		, .stall(softmax_stall_reg)
		, .in0(softmax_in0_reg)
		, .out0(softmax_out0_reg)
		, .avmm_0_rw_address(softmax_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(softmax_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(softmax_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(softmax_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(softmax_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(softmax_avmm_0_rw_writedata_reg)
	);



endmodule
