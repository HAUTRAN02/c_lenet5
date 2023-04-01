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

// SystemVerilog created from bb_conv2_B7
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_bb_B7 (
    input wire [31:0] in_add367_0,
    input wire [31:0] in_add367_1,
    input wire [63:0] in_arrayidx34109_pop67379_0,
    input wire [63:0] in_arrayidx34109_pop67379_1,
    input wire [63:0] in_arrayidx64115_pop69381_0,
    input wire [63:0] in_arrayidx64115_pop69381_1,
    input wire [31:0] in_channel_039_pop1780_pop60373_0,
    input wire [31:0] in_channel_039_pop1780_pop60373_1,
    input wire [31:0] in_col_037_pop27112_pop68380_0,
    input wire [31:0] in_col_037_pop27112_pop68380_1,
    input wire [0:0] in_exitcond19368_0,
    input wire [0:0] in_exitcond19368_1,
    input wire [0:0] in_exitcond22127_pop73385_0,
    input wire [0:0] in_exitcond22127_pop73385_1,
    input wire [0:0] in_exitcond25118_pop70382_0,
    input wire [0:0] in_exitcond25118_pop70382_1,
    input wire [0:0] in_exitcond2890_pop62375_0,
    input wire [0:0] in_exitcond2890_pop62375_1,
    input wire [0:0] in_exitcond3170_pop58371_0,
    input wire [0:0] in_exitcond3170_pop58371_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_i_035_pop56364_0,
    input wire [31:0] in_i_035_pop56364_1,
    input wire [63:0] in_idxprom25106_pop66378_0,
    input wire [63:0] in_idxprom25106_pop66378_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_k_036_pop38131_pop75365_0,
    input wire [31:0] in_k_036_pop38131_pop75365_1,
    input wire [63:0] in_memdep_conv2_avm_readdata,
    input wire [0:0] in_memdep_conv2_avm_readdatavalid,
    input wire [0:0] in_memdep_conv2_avm_waitrequest,
    input wire [0:0] in_memdep_conv2_avm_writeack,
    input wire [0:0] in_memdep_phi2_pop57370_0,
    input wire [0:0] in_memdep_phi2_pop57370_1,
    input wire [0:0] in_memdep_phi3_pop39133_pop76387_0,
    input wire [0:0] in_memdep_phi3_pop39133_pop76387_1,
    input wire [0:0] in_memdep_phi4_pop28124_pop72384_0,
    input wire [0:0] in_memdep_phi4_pop28124_pop72384_1,
    input wire [0:0] in_memdep_phi5_pop21102_pop65377_0,
    input wire [0:0] in_memdep_phi5_pop21102_pop65377_1,
    input wire [0:0] in_memdep_phi6_pop1885_pop61374_0,
    input wire [0:0] in_memdep_phi6_pop1885_pop61374_1,
    input wire [0:0] in_notcmp36369_0,
    input wire [0:0] in_notcmp36369_1,
    input wire [0:0] in_notcmp41129_pop74386_0,
    input wire [0:0] in_notcmp41129_pop74386_1,
    input wire [0:0] in_notcmp46121_pop71383_0,
    input wire [0:0] in_notcmp46121_pop71383_1,
    input wire [0:0] in_notcmp5194_pop63376_0,
    input wire [0:0] in_notcmp5194_pop63376_1,
    input wire [0:0] in_notcmp5675_pop59372_0,
    input wire [0:0] in_notcmp5675_pop59372_1,
    input wire [63:0] in_pn1_conv2_avm_readdata,
    input wire [0:0] in_pn1_conv2_avm_readdatavalid,
    input wire [0:0] in_pn1_conv2_avm_waitrequest,
    input wire [0:0] in_pn1_conv2_avm_writeack,
    input wire [31:0] in_row_038_pop2098_pop64366_0,
    input wire [31:0] in_row_038_pop2098_pop64366_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_conv27_0,
    input wire [31:0] in_unnamed_conv27_1,
    input wire [63:0] in_unnamed_conv28_conv2_avm_readdata,
    input wire [0:0] in_unnamed_conv28_conv2_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv28_conv2_avm_waitrequest,
    input wire [0:0] in_unnamed_conv28_conv2_avm_writeack,
    input wire [63:0] in_unnamed_conv29_conv2_avm_readdata,
    input wire [0:0] in_unnamed_conv29_conv2_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv29_conv2_avm_waitrequest,
    input wire [0:0] in_unnamed_conv29_conv2_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond19137_pop104,
    output wire [0:0] out_exitcond22128_pop97,
    output wire [0:0] out_exitcond25119_pop94,
    output wire [0:0] out_exitcond2891_pop86,
    output wire [0:0] out_exitcond3171_pop82,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_memdep,
    output wire [63:0] out_memdep_conv2_avm_address,
    output wire [0:0] out_memdep_conv2_avm_burstcount,
    output wire [7:0] out_memdep_conv2_avm_byteenable,
    output wire [0:0] out_memdep_conv2_avm_enable,
    output wire [0:0] out_memdep_conv2_avm_read,
    output wire [0:0] out_memdep_conv2_avm_write,
    output wire [63:0] out_memdep_conv2_avm_writedata,
    output wire [0:0] out_notcmp36138_pop105,
    output wire [0:0] out_notcmp41130_pop98,
    output wire [0:0] out_notcmp46122_pop95,
    output wire [0:0] out_notcmp5195_pop87,
    output wire [0:0] out_notcmp5676_pop83,
    output wire [63:0] out_pn1_conv2_avm_address,
    output wire [0:0] out_pn1_conv2_avm_burstcount,
    output wire [7:0] out_pn1_conv2_avm_byteenable,
    output wire [0:0] out_pn1_conv2_avm_enable,
    output wire [0:0] out_pn1_conv2_avm_read,
    output wire [0:0] out_pn1_conv2_avm_write,
    output wire [63:0] out_pn1_conv2_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [63:0] out_unnamed_conv28_conv2_avm_address,
    output wire [0:0] out_unnamed_conv28_conv2_avm_burstcount,
    output wire [7:0] out_unnamed_conv28_conv2_avm_byteenable,
    output wire [0:0] out_unnamed_conv28_conv2_avm_enable,
    output wire [0:0] out_unnamed_conv28_conv2_avm_read,
    output wire [0:0] out_unnamed_conv28_conv2_avm_write,
    output wire [63:0] out_unnamed_conv28_conv2_avm_writedata,
    output wire [63:0] out_unnamed_conv29_conv2_avm_address,
    output wire [0:0] out_unnamed_conv29_conv2_avm_burstcount,
    output wire [7:0] out_unnamed_conv29_conv2_avm_byteenable,
    output wire [0:0] out_unnamed_conv29_conv2_avm_enable,
    output wire [0:0] out_unnamed_conv29_conv2_avm_read,
    output wire [0:0] out_unnamed_conv29_conv2_avm_write,
    output wire [63:0] out_unnamed_conv29_conv2_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv23_exiting_stall_out;
    wire [0:0] bb_conv2_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv23_exiting_valid_out;
    wire [0:0] bb_conv2_B7_stall_region_out_exitcond19137_pop104;
    wire [0:0] bb_conv2_B7_stall_region_out_exitcond22128_pop97;
    wire [0:0] bb_conv2_B7_stall_region_out_exitcond25119_pop94;
    wire [0:0] bb_conv2_B7_stall_region_out_exitcond2891_pop86;
    wire [0:0] bb_conv2_B7_stall_region_out_exitcond3171_pop82;
    wire [0:0] bb_conv2_B7_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_conv2_B7_stall_region_out_masked;
    wire [0:0] bb_conv2_B7_stall_region_out_memdep;
    wire [63:0] bb_conv2_B7_stall_region_out_memdep_conv2_avm_address;
    wire [0:0] bb_conv2_B7_stall_region_out_memdep_conv2_avm_burstcount;
    wire [7:0] bb_conv2_B7_stall_region_out_memdep_conv2_avm_byteenable;
    wire [0:0] bb_conv2_B7_stall_region_out_memdep_conv2_avm_enable;
    wire [0:0] bb_conv2_B7_stall_region_out_memdep_conv2_avm_read;
    wire [0:0] bb_conv2_B7_stall_region_out_memdep_conv2_avm_write;
    wire [63:0] bb_conv2_B7_stall_region_out_memdep_conv2_avm_writedata;
    wire [0:0] bb_conv2_B7_stall_region_out_notcmp36138_pop105;
    wire [0:0] bb_conv2_B7_stall_region_out_notcmp41130_pop98;
    wire [0:0] bb_conv2_B7_stall_region_out_notcmp46122_pop95;
    wire [0:0] bb_conv2_B7_stall_region_out_notcmp5195_pop87;
    wire [0:0] bb_conv2_B7_stall_region_out_notcmp5676_pop83;
    wire [0:0] bb_conv2_B7_stall_region_out_pipeline_valid_out;
    wire [63:0] bb_conv2_B7_stall_region_out_pn1_conv2_avm_address;
    wire [0:0] bb_conv2_B7_stall_region_out_pn1_conv2_avm_burstcount;
    wire [7:0] bb_conv2_B7_stall_region_out_pn1_conv2_avm_byteenable;
    wire [0:0] bb_conv2_B7_stall_region_out_pn1_conv2_avm_enable;
    wire [0:0] bb_conv2_B7_stall_region_out_pn1_conv2_avm_read;
    wire [0:0] bb_conv2_B7_stall_region_out_pn1_conv2_avm_write;
    wire [63:0] bb_conv2_B7_stall_region_out_pn1_conv2_avm_writedata;
    wire [0:0] bb_conv2_B7_stall_region_out_stall_out;
    wire [63:0] bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_address;
    wire [0:0] bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_burstcount;
    wire [7:0] bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_byteenable;
    wire [0:0] bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_enable;
    wire [0:0] bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_read;
    wire [0:0] bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_write;
    wire [63:0] bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_writedata;
    wire [63:0] bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_address;
    wire [0:0] bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_burstcount;
    wire [7:0] bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_byteenable;
    wire [0:0] bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_enable;
    wire [0:0] bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_read;
    wire [0:0] bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_write;
    wire [63:0] bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_writedata;
    wire [0:0] bb_conv2_B7_stall_region_out_valid_out;
    wire [0:0] conv2_B7_branch_out_exitcond19137_pop104;
    wire [0:0] conv2_B7_branch_out_exitcond22128_pop97;
    wire [0:0] conv2_B7_branch_out_exitcond25119_pop94;
    wire [0:0] conv2_B7_branch_out_exitcond2891_pop86;
    wire [0:0] conv2_B7_branch_out_exitcond3171_pop82;
    wire [0:0] conv2_B7_branch_out_memdep;
    wire [0:0] conv2_B7_branch_out_notcmp36138_pop105;
    wire [0:0] conv2_B7_branch_out_notcmp41130_pop98;
    wire [0:0] conv2_B7_branch_out_notcmp46122_pop95;
    wire [0:0] conv2_B7_branch_out_notcmp5195_pop87;
    wire [0:0] conv2_B7_branch_out_notcmp5676_pop83;
    wire [0:0] conv2_B7_branch_out_stall_out;
    wire [0:0] conv2_B7_branch_out_valid_out_0;
    wire [0:0] conv2_B7_branch_out_valid_out_1;
    wire [31:0] conv2_B7_merge_out_add367;
    wire [63:0] conv2_B7_merge_out_arrayidx34109_pop67379;
    wire [63:0] conv2_B7_merge_out_arrayidx64115_pop69381;
    wire [31:0] conv2_B7_merge_out_channel_039_pop1780_pop60373;
    wire [31:0] conv2_B7_merge_out_col_037_pop27112_pop68380;
    wire [0:0] conv2_B7_merge_out_exitcond19368;
    wire [0:0] conv2_B7_merge_out_exitcond22127_pop73385;
    wire [0:0] conv2_B7_merge_out_exitcond25118_pop70382;
    wire [0:0] conv2_B7_merge_out_exitcond2890_pop62375;
    wire [0:0] conv2_B7_merge_out_exitcond3170_pop58371;
    wire [0:0] conv2_B7_merge_out_forked;
    wire [31:0] conv2_B7_merge_out_i_035_pop56364;
    wire [63:0] conv2_B7_merge_out_idxprom25106_pop66378;
    wire [31:0] conv2_B7_merge_out_k_036_pop38131_pop75365;
    wire [0:0] conv2_B7_merge_out_memdep_phi2_pop57370;
    wire [0:0] conv2_B7_merge_out_memdep_phi3_pop39133_pop76387;
    wire [0:0] conv2_B7_merge_out_memdep_phi4_pop28124_pop72384;
    wire [0:0] conv2_B7_merge_out_memdep_phi5_pop21102_pop65377;
    wire [0:0] conv2_B7_merge_out_memdep_phi6_pop1885_pop61374;
    wire [0:0] conv2_B7_merge_out_notcmp36369;
    wire [0:0] conv2_B7_merge_out_notcmp41129_pop74386;
    wire [0:0] conv2_B7_merge_out_notcmp46121_pop71383;
    wire [0:0] conv2_B7_merge_out_notcmp5194_pop63376;
    wire [0:0] conv2_B7_merge_out_notcmp5675_pop59372;
    wire [31:0] conv2_B7_merge_out_row_038_pop2098_pop64366;
    wire [0:0] conv2_B7_merge_out_stall_out_0;
    wire [0:0] conv2_B7_merge_out_stall_out_1;
    wire [31:0] conv2_B7_merge_out_unnamed_conv27;
    wire [0:0] conv2_B7_merge_out_valid_out;


    // conv2_B7_merge(BLACKBOX,4)
    conv2_B7_merge theconv2_B7_merge (
        .in_add367_0(in_add367_0),
        .in_add367_1(in_add367_1),
        .in_arrayidx34109_pop67379_0(in_arrayidx34109_pop67379_0),
        .in_arrayidx34109_pop67379_1(in_arrayidx34109_pop67379_1),
        .in_arrayidx64115_pop69381_0(in_arrayidx64115_pop69381_0),
        .in_arrayidx64115_pop69381_1(in_arrayidx64115_pop69381_1),
        .in_channel_039_pop1780_pop60373_0(in_channel_039_pop1780_pop60373_0),
        .in_channel_039_pop1780_pop60373_1(in_channel_039_pop1780_pop60373_1),
        .in_col_037_pop27112_pop68380_0(in_col_037_pop27112_pop68380_0),
        .in_col_037_pop27112_pop68380_1(in_col_037_pop27112_pop68380_1),
        .in_exitcond19368_0(in_exitcond19368_0),
        .in_exitcond19368_1(in_exitcond19368_1),
        .in_exitcond22127_pop73385_0(in_exitcond22127_pop73385_0),
        .in_exitcond22127_pop73385_1(in_exitcond22127_pop73385_1),
        .in_exitcond25118_pop70382_0(in_exitcond25118_pop70382_0),
        .in_exitcond25118_pop70382_1(in_exitcond25118_pop70382_1),
        .in_exitcond2890_pop62375_0(in_exitcond2890_pop62375_0),
        .in_exitcond2890_pop62375_1(in_exitcond2890_pop62375_1),
        .in_exitcond3170_pop58371_0(in_exitcond3170_pop58371_0),
        .in_exitcond3170_pop58371_1(in_exitcond3170_pop58371_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_i_035_pop56364_0(in_i_035_pop56364_0),
        .in_i_035_pop56364_1(in_i_035_pop56364_1),
        .in_idxprom25106_pop66378_0(in_idxprom25106_pop66378_0),
        .in_idxprom25106_pop66378_1(in_idxprom25106_pop66378_1),
        .in_k_036_pop38131_pop75365_0(in_k_036_pop38131_pop75365_0),
        .in_k_036_pop38131_pop75365_1(in_k_036_pop38131_pop75365_1),
        .in_memdep_phi2_pop57370_0(in_memdep_phi2_pop57370_0),
        .in_memdep_phi2_pop57370_1(in_memdep_phi2_pop57370_1),
        .in_memdep_phi3_pop39133_pop76387_0(in_memdep_phi3_pop39133_pop76387_0),
        .in_memdep_phi3_pop39133_pop76387_1(in_memdep_phi3_pop39133_pop76387_1),
        .in_memdep_phi4_pop28124_pop72384_0(in_memdep_phi4_pop28124_pop72384_0),
        .in_memdep_phi4_pop28124_pop72384_1(in_memdep_phi4_pop28124_pop72384_1),
        .in_memdep_phi5_pop21102_pop65377_0(in_memdep_phi5_pop21102_pop65377_0),
        .in_memdep_phi5_pop21102_pop65377_1(in_memdep_phi5_pop21102_pop65377_1),
        .in_memdep_phi6_pop1885_pop61374_0(in_memdep_phi6_pop1885_pop61374_0),
        .in_memdep_phi6_pop1885_pop61374_1(in_memdep_phi6_pop1885_pop61374_1),
        .in_notcmp36369_0(in_notcmp36369_0),
        .in_notcmp36369_1(in_notcmp36369_1),
        .in_notcmp41129_pop74386_0(in_notcmp41129_pop74386_0),
        .in_notcmp41129_pop74386_1(in_notcmp41129_pop74386_1),
        .in_notcmp46121_pop71383_0(in_notcmp46121_pop71383_0),
        .in_notcmp46121_pop71383_1(in_notcmp46121_pop71383_1),
        .in_notcmp5194_pop63376_0(in_notcmp5194_pop63376_0),
        .in_notcmp5194_pop63376_1(in_notcmp5194_pop63376_1),
        .in_notcmp5675_pop59372_0(in_notcmp5675_pop59372_0),
        .in_notcmp5675_pop59372_1(in_notcmp5675_pop59372_1),
        .in_row_038_pop2098_pop64366_0(in_row_038_pop2098_pop64366_0),
        .in_row_038_pop2098_pop64366_1(in_row_038_pop2098_pop64366_1),
        .in_stall_in(bb_conv2_B7_stall_region_out_stall_out),
        .in_unnamed_conv27_0(in_unnamed_conv27_0),
        .in_unnamed_conv27_1(in_unnamed_conv27_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add367(conv2_B7_merge_out_add367),
        .out_arrayidx34109_pop67379(conv2_B7_merge_out_arrayidx34109_pop67379),
        .out_arrayidx64115_pop69381(conv2_B7_merge_out_arrayidx64115_pop69381),
        .out_channel_039_pop1780_pop60373(conv2_B7_merge_out_channel_039_pop1780_pop60373),
        .out_col_037_pop27112_pop68380(conv2_B7_merge_out_col_037_pop27112_pop68380),
        .out_exitcond19368(conv2_B7_merge_out_exitcond19368),
        .out_exitcond22127_pop73385(conv2_B7_merge_out_exitcond22127_pop73385),
        .out_exitcond25118_pop70382(conv2_B7_merge_out_exitcond25118_pop70382),
        .out_exitcond2890_pop62375(conv2_B7_merge_out_exitcond2890_pop62375),
        .out_exitcond3170_pop58371(conv2_B7_merge_out_exitcond3170_pop58371),
        .out_forked(conv2_B7_merge_out_forked),
        .out_i_035_pop56364(conv2_B7_merge_out_i_035_pop56364),
        .out_idxprom25106_pop66378(conv2_B7_merge_out_idxprom25106_pop66378),
        .out_k_036_pop38131_pop75365(conv2_B7_merge_out_k_036_pop38131_pop75365),
        .out_memdep_phi2_pop57370(conv2_B7_merge_out_memdep_phi2_pop57370),
        .out_memdep_phi3_pop39133_pop76387(conv2_B7_merge_out_memdep_phi3_pop39133_pop76387),
        .out_memdep_phi4_pop28124_pop72384(conv2_B7_merge_out_memdep_phi4_pop28124_pop72384),
        .out_memdep_phi5_pop21102_pop65377(conv2_B7_merge_out_memdep_phi5_pop21102_pop65377),
        .out_memdep_phi6_pop1885_pop61374(conv2_B7_merge_out_memdep_phi6_pop1885_pop61374),
        .out_notcmp36369(conv2_B7_merge_out_notcmp36369),
        .out_notcmp41129_pop74386(conv2_B7_merge_out_notcmp41129_pop74386),
        .out_notcmp46121_pop71383(conv2_B7_merge_out_notcmp46121_pop71383),
        .out_notcmp5194_pop63376(conv2_B7_merge_out_notcmp5194_pop63376),
        .out_notcmp5675_pop59372(conv2_B7_merge_out_notcmp5675_pop59372),
        .out_row_038_pop2098_pop64366(conv2_B7_merge_out_row_038_pop2098_pop64366),
        .out_stall_out_0(conv2_B7_merge_out_stall_out_0),
        .out_stall_out_1(conv2_B7_merge_out_stall_out_1),
        .out_unnamed_conv27(conv2_B7_merge_out_unnamed_conv27),
        .out_valid_out(conv2_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B7_stall_region(BLACKBOX,2)
    conv2_bb_B7_stall_region thebb_conv2_B7_stall_region (
        .in_add367(conv2_B7_merge_out_add367),
        .in_arrayidx34109_pop67379(conv2_B7_merge_out_arrayidx34109_pop67379),
        .in_arrayidx64115_pop69381(conv2_B7_merge_out_arrayidx64115_pop69381),
        .in_channel_039_pop1780_pop60373(conv2_B7_merge_out_channel_039_pop1780_pop60373),
        .in_col_037_pop27112_pop68380(conv2_B7_merge_out_col_037_pop27112_pop68380),
        .in_exitcond19368(conv2_B7_merge_out_exitcond19368),
        .in_exitcond22127_pop73385(conv2_B7_merge_out_exitcond22127_pop73385),
        .in_exitcond25118_pop70382(conv2_B7_merge_out_exitcond25118_pop70382),
        .in_exitcond2890_pop62375(conv2_B7_merge_out_exitcond2890_pop62375),
        .in_exitcond3170_pop58371(conv2_B7_merge_out_exitcond3170_pop58371),
        .in_flush(in_flush),
        .in_forked(conv2_B7_merge_out_forked),
        .in_i_035_pop56364(conv2_B7_merge_out_i_035_pop56364),
        .in_idxprom25106_pop66378(conv2_B7_merge_out_idxprom25106_pop66378),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_k_036_pop38131_pop75365(conv2_B7_merge_out_k_036_pop38131_pop75365),
        .in_memdep_conv2_avm_readdata(in_memdep_conv2_avm_readdata),
        .in_memdep_conv2_avm_readdatavalid(in_memdep_conv2_avm_readdatavalid),
        .in_memdep_conv2_avm_waitrequest(in_memdep_conv2_avm_waitrequest),
        .in_memdep_conv2_avm_writeack(in_memdep_conv2_avm_writeack),
        .in_memdep_phi2_pop57370(conv2_B7_merge_out_memdep_phi2_pop57370),
        .in_memdep_phi3_pop39133_pop76387(conv2_B7_merge_out_memdep_phi3_pop39133_pop76387),
        .in_memdep_phi4_pop28124_pop72384(conv2_B7_merge_out_memdep_phi4_pop28124_pop72384),
        .in_memdep_phi5_pop21102_pop65377(conv2_B7_merge_out_memdep_phi5_pop21102_pop65377),
        .in_memdep_phi6_pop1885_pop61374(conv2_B7_merge_out_memdep_phi6_pop1885_pop61374),
        .in_notcmp36369(conv2_B7_merge_out_notcmp36369),
        .in_notcmp41129_pop74386(conv2_B7_merge_out_notcmp41129_pop74386),
        .in_notcmp46121_pop71383(conv2_B7_merge_out_notcmp46121_pop71383),
        .in_notcmp5194_pop63376(conv2_B7_merge_out_notcmp5194_pop63376),
        .in_notcmp5675_pop59372(conv2_B7_merge_out_notcmp5675_pop59372),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pn1_conv2_avm_readdata(in_pn1_conv2_avm_readdata),
        .in_pn1_conv2_avm_readdatavalid(in_pn1_conv2_avm_readdatavalid),
        .in_pn1_conv2_avm_waitrequest(in_pn1_conv2_avm_waitrequest),
        .in_pn1_conv2_avm_writeack(in_pn1_conv2_avm_writeack),
        .in_row_038_pop2098_pop64366(conv2_B7_merge_out_row_038_pop2098_pop64366),
        .in_stall_in(conv2_B7_branch_out_stall_out),
        .in_unnamed_conv27(conv2_B7_merge_out_unnamed_conv27),
        .in_unnamed_conv28_conv2_avm_readdata(in_unnamed_conv28_conv2_avm_readdata),
        .in_unnamed_conv28_conv2_avm_readdatavalid(in_unnamed_conv28_conv2_avm_readdatavalid),
        .in_unnamed_conv28_conv2_avm_waitrequest(in_unnamed_conv28_conv2_avm_waitrequest),
        .in_unnamed_conv28_conv2_avm_writeack(in_unnamed_conv28_conv2_avm_writeack),
        .in_unnamed_conv29_conv2_avm_readdata(in_unnamed_conv29_conv2_avm_readdata),
        .in_unnamed_conv29_conv2_avm_readdatavalid(in_unnamed_conv29_conv2_avm_readdatavalid),
        .in_unnamed_conv29_conv2_avm_waitrequest(in_unnamed_conv29_conv2_avm_waitrequest),
        .in_unnamed_conv29_conv2_avm_writeack(in_unnamed_conv29_conv2_avm_writeack),
        .in_valid_in(conv2_B7_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv23_exiting_stall_out(bb_conv2_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv23_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv23_exiting_valid_out(bb_conv2_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv23_exiting_valid_out),
        .out_exitcond19137_pop104(bb_conv2_B7_stall_region_out_exitcond19137_pop104),
        .out_exitcond22128_pop97(bb_conv2_B7_stall_region_out_exitcond22128_pop97),
        .out_exitcond25119_pop94(bb_conv2_B7_stall_region_out_exitcond25119_pop94),
        .out_exitcond2891_pop86(bb_conv2_B7_stall_region_out_exitcond2891_pop86),
        .out_exitcond3171_pop82(bb_conv2_B7_stall_region_out_exitcond3171_pop82),
        .out_lsu_memdep_o_active(bb_conv2_B7_stall_region_out_lsu_memdep_o_active),
        .out_masked(bb_conv2_B7_stall_region_out_masked),
        .out_memdep(bb_conv2_B7_stall_region_out_memdep),
        .out_memdep_conv2_avm_address(bb_conv2_B7_stall_region_out_memdep_conv2_avm_address),
        .out_memdep_conv2_avm_burstcount(bb_conv2_B7_stall_region_out_memdep_conv2_avm_burstcount),
        .out_memdep_conv2_avm_byteenable(bb_conv2_B7_stall_region_out_memdep_conv2_avm_byteenable),
        .out_memdep_conv2_avm_enable(bb_conv2_B7_stall_region_out_memdep_conv2_avm_enable),
        .out_memdep_conv2_avm_read(bb_conv2_B7_stall_region_out_memdep_conv2_avm_read),
        .out_memdep_conv2_avm_write(bb_conv2_B7_stall_region_out_memdep_conv2_avm_write),
        .out_memdep_conv2_avm_writedata(bb_conv2_B7_stall_region_out_memdep_conv2_avm_writedata),
        .out_notcmp36138_pop105(bb_conv2_B7_stall_region_out_notcmp36138_pop105),
        .out_notcmp41130_pop98(bb_conv2_B7_stall_region_out_notcmp41130_pop98),
        .out_notcmp46122_pop95(bb_conv2_B7_stall_region_out_notcmp46122_pop95),
        .out_notcmp5195_pop87(bb_conv2_B7_stall_region_out_notcmp5195_pop87),
        .out_notcmp5676_pop83(bb_conv2_B7_stall_region_out_notcmp5676_pop83),
        .out_pipeline_valid_out(bb_conv2_B7_stall_region_out_pipeline_valid_out),
        .out_pn1_conv2_avm_address(bb_conv2_B7_stall_region_out_pn1_conv2_avm_address),
        .out_pn1_conv2_avm_burstcount(bb_conv2_B7_stall_region_out_pn1_conv2_avm_burstcount),
        .out_pn1_conv2_avm_byteenable(bb_conv2_B7_stall_region_out_pn1_conv2_avm_byteenable),
        .out_pn1_conv2_avm_enable(bb_conv2_B7_stall_region_out_pn1_conv2_avm_enable),
        .out_pn1_conv2_avm_read(bb_conv2_B7_stall_region_out_pn1_conv2_avm_read),
        .out_pn1_conv2_avm_write(bb_conv2_B7_stall_region_out_pn1_conv2_avm_write),
        .out_pn1_conv2_avm_writedata(bb_conv2_B7_stall_region_out_pn1_conv2_avm_writedata),
        .out_stall_out(bb_conv2_B7_stall_region_out_stall_out),
        .out_unnamed_conv28_conv2_avm_address(bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_address),
        .out_unnamed_conv28_conv2_avm_burstcount(bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_burstcount),
        .out_unnamed_conv28_conv2_avm_byteenable(bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_byteenable),
        .out_unnamed_conv28_conv2_avm_enable(bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_enable),
        .out_unnamed_conv28_conv2_avm_read(bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_read),
        .out_unnamed_conv28_conv2_avm_write(bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_write),
        .out_unnamed_conv28_conv2_avm_writedata(bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_writedata),
        .out_unnamed_conv29_conv2_avm_address(bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_address),
        .out_unnamed_conv29_conv2_avm_burstcount(bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_burstcount),
        .out_unnamed_conv29_conv2_avm_byteenable(bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_byteenable),
        .out_unnamed_conv29_conv2_avm_enable(bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_enable),
        .out_unnamed_conv29_conv2_avm_read(bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_read),
        .out_unnamed_conv29_conv2_avm_write(bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_write),
        .out_unnamed_conv29_conv2_avm_writedata(bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_writedata),
        .out_valid_out(bb_conv2_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2_B7_branch(BLACKBOX,3)
    conv2_B7_branch theconv2_B7_branch (
        .in_exitcond19137_pop104(bb_conv2_B7_stall_region_out_exitcond19137_pop104),
        .in_exitcond22128_pop97(bb_conv2_B7_stall_region_out_exitcond22128_pop97),
        .in_exitcond25119_pop94(bb_conv2_B7_stall_region_out_exitcond25119_pop94),
        .in_exitcond2891_pop86(bb_conv2_B7_stall_region_out_exitcond2891_pop86),
        .in_exitcond3171_pop82(bb_conv2_B7_stall_region_out_exitcond3171_pop82),
        .in_masked(bb_conv2_B7_stall_region_out_masked),
        .in_memdep(bb_conv2_B7_stall_region_out_memdep),
        .in_notcmp36138_pop105(bb_conv2_B7_stall_region_out_notcmp36138_pop105),
        .in_notcmp41130_pop98(bb_conv2_B7_stall_region_out_notcmp41130_pop98),
        .in_notcmp46122_pop95(bb_conv2_B7_stall_region_out_notcmp46122_pop95),
        .in_notcmp5195_pop87(bb_conv2_B7_stall_region_out_notcmp5195_pop87),
        .in_notcmp5676_pop83(bb_conv2_B7_stall_region_out_notcmp5676_pop83),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv2_B7_stall_region_out_valid_out),
        .out_exitcond19137_pop104(conv2_B7_branch_out_exitcond19137_pop104),
        .out_exitcond22128_pop97(conv2_B7_branch_out_exitcond22128_pop97),
        .out_exitcond25119_pop94(conv2_B7_branch_out_exitcond25119_pop94),
        .out_exitcond2891_pop86(conv2_B7_branch_out_exitcond2891_pop86),
        .out_exitcond3171_pop82(conv2_B7_branch_out_exitcond3171_pop82),
        .out_memdep(conv2_B7_branch_out_memdep),
        .out_notcmp36138_pop105(conv2_B7_branch_out_notcmp36138_pop105),
        .out_notcmp41130_pop98(conv2_B7_branch_out_notcmp41130_pop98),
        .out_notcmp46122_pop95(conv2_B7_branch_out_notcmp46122_pop95),
        .out_notcmp5195_pop87(conv2_B7_branch_out_notcmp5195_pop87),
        .out_notcmp5676_pop83(conv2_B7_branch_out_notcmp5676_pop83),
        .out_stall_out(conv2_B7_branch_out_stall_out),
        .out_valid_out_0(conv2_B7_branch_out_valid_out_0),
        .out_valid_out_1(conv2_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exitcond19137_pop104(GPOUT,80)
    assign out_exitcond19137_pop104 = conv2_B7_branch_out_exitcond19137_pop104;

    // out_exitcond22128_pop97(GPOUT,81)
    assign out_exitcond22128_pop97 = conv2_B7_branch_out_exitcond22128_pop97;

    // out_exitcond25119_pop94(GPOUT,82)
    assign out_exitcond25119_pop94 = conv2_B7_branch_out_exitcond25119_pop94;

    // out_exitcond2891_pop86(GPOUT,83)
    assign out_exitcond2891_pop86 = conv2_B7_branch_out_exitcond2891_pop86;

    // out_exitcond3171_pop82(GPOUT,84)
    assign out_exitcond3171_pop82 = conv2_B7_branch_out_exitcond3171_pop82;

    // out_exiting_stall_out(GPOUT,85)
    assign out_exiting_stall_out = bb_conv2_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv23_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,86)
    assign out_exiting_valid_out = bb_conv2_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv23_exiting_valid_out;

    // out_lsu_memdep_o_active(GPOUT,87)
    assign out_lsu_memdep_o_active = bb_conv2_B7_stall_region_out_lsu_memdep_o_active;

    // out_memdep(GPOUT,88)
    assign out_memdep = conv2_B7_branch_out_memdep;

    // out_memdep_conv2_avm_address(GPOUT,89)
    assign out_memdep_conv2_avm_address = bb_conv2_B7_stall_region_out_memdep_conv2_avm_address;

    // out_memdep_conv2_avm_burstcount(GPOUT,90)
    assign out_memdep_conv2_avm_burstcount = bb_conv2_B7_stall_region_out_memdep_conv2_avm_burstcount;

    // out_memdep_conv2_avm_byteenable(GPOUT,91)
    assign out_memdep_conv2_avm_byteenable = bb_conv2_B7_stall_region_out_memdep_conv2_avm_byteenable;

    // out_memdep_conv2_avm_enable(GPOUT,92)
    assign out_memdep_conv2_avm_enable = bb_conv2_B7_stall_region_out_memdep_conv2_avm_enable;

    // out_memdep_conv2_avm_read(GPOUT,93)
    assign out_memdep_conv2_avm_read = bb_conv2_B7_stall_region_out_memdep_conv2_avm_read;

    // out_memdep_conv2_avm_write(GPOUT,94)
    assign out_memdep_conv2_avm_write = bb_conv2_B7_stall_region_out_memdep_conv2_avm_write;

    // out_memdep_conv2_avm_writedata(GPOUT,95)
    assign out_memdep_conv2_avm_writedata = bb_conv2_B7_stall_region_out_memdep_conv2_avm_writedata;

    // out_notcmp36138_pop105(GPOUT,96)
    assign out_notcmp36138_pop105 = conv2_B7_branch_out_notcmp36138_pop105;

    // out_notcmp41130_pop98(GPOUT,97)
    assign out_notcmp41130_pop98 = conv2_B7_branch_out_notcmp41130_pop98;

    // out_notcmp46122_pop95(GPOUT,98)
    assign out_notcmp46122_pop95 = conv2_B7_branch_out_notcmp46122_pop95;

    // out_notcmp5195_pop87(GPOUT,99)
    assign out_notcmp5195_pop87 = conv2_B7_branch_out_notcmp5195_pop87;

    // out_notcmp5676_pop83(GPOUT,100)
    assign out_notcmp5676_pop83 = conv2_B7_branch_out_notcmp5676_pop83;

    // out_pn1_conv2_avm_address(GPOUT,101)
    assign out_pn1_conv2_avm_address = bb_conv2_B7_stall_region_out_pn1_conv2_avm_address;

    // out_pn1_conv2_avm_burstcount(GPOUT,102)
    assign out_pn1_conv2_avm_burstcount = bb_conv2_B7_stall_region_out_pn1_conv2_avm_burstcount;

    // out_pn1_conv2_avm_byteenable(GPOUT,103)
    assign out_pn1_conv2_avm_byteenable = bb_conv2_B7_stall_region_out_pn1_conv2_avm_byteenable;

    // out_pn1_conv2_avm_enable(GPOUT,104)
    assign out_pn1_conv2_avm_enable = bb_conv2_B7_stall_region_out_pn1_conv2_avm_enable;

    // out_pn1_conv2_avm_read(GPOUT,105)
    assign out_pn1_conv2_avm_read = bb_conv2_B7_stall_region_out_pn1_conv2_avm_read;

    // out_pn1_conv2_avm_write(GPOUT,106)
    assign out_pn1_conv2_avm_write = bb_conv2_B7_stall_region_out_pn1_conv2_avm_write;

    // out_pn1_conv2_avm_writedata(GPOUT,107)
    assign out_pn1_conv2_avm_writedata = bb_conv2_B7_stall_region_out_pn1_conv2_avm_writedata;

    // out_stall_in_0(GPOUT,108)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,109)
    assign out_stall_out_0 = conv2_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,110)
    assign out_stall_out_1 = conv2_B7_merge_out_stall_out_1;

    // out_unnamed_conv28_conv2_avm_address(GPOUT,111)
    assign out_unnamed_conv28_conv2_avm_address = bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_address;

    // out_unnamed_conv28_conv2_avm_burstcount(GPOUT,112)
    assign out_unnamed_conv28_conv2_avm_burstcount = bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_burstcount;

    // out_unnamed_conv28_conv2_avm_byteenable(GPOUT,113)
    assign out_unnamed_conv28_conv2_avm_byteenable = bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_byteenable;

    // out_unnamed_conv28_conv2_avm_enable(GPOUT,114)
    assign out_unnamed_conv28_conv2_avm_enable = bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_enable;

    // out_unnamed_conv28_conv2_avm_read(GPOUT,115)
    assign out_unnamed_conv28_conv2_avm_read = bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_read;

    // out_unnamed_conv28_conv2_avm_write(GPOUT,116)
    assign out_unnamed_conv28_conv2_avm_write = bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_write;

    // out_unnamed_conv28_conv2_avm_writedata(GPOUT,117)
    assign out_unnamed_conv28_conv2_avm_writedata = bb_conv2_B7_stall_region_out_unnamed_conv28_conv2_avm_writedata;

    // out_unnamed_conv29_conv2_avm_address(GPOUT,118)
    assign out_unnamed_conv29_conv2_avm_address = bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_address;

    // out_unnamed_conv29_conv2_avm_burstcount(GPOUT,119)
    assign out_unnamed_conv29_conv2_avm_burstcount = bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_burstcount;

    // out_unnamed_conv29_conv2_avm_byteenable(GPOUT,120)
    assign out_unnamed_conv29_conv2_avm_byteenable = bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_byteenable;

    // out_unnamed_conv29_conv2_avm_enable(GPOUT,121)
    assign out_unnamed_conv29_conv2_avm_enable = bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_enable;

    // out_unnamed_conv29_conv2_avm_read(GPOUT,122)
    assign out_unnamed_conv29_conv2_avm_read = bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_read;

    // out_unnamed_conv29_conv2_avm_write(GPOUT,123)
    assign out_unnamed_conv29_conv2_avm_write = bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_write;

    // out_unnamed_conv29_conv2_avm_writedata(GPOUT,124)
    assign out_unnamed_conv29_conv2_avm_writedata = bb_conv2_B7_stall_region_out_unnamed_conv29_conv2_avm_writedata;

    // out_valid_in_0(GPOUT,125)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,126)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,127)
    assign out_valid_out_0 = conv2_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,128)
    assign out_valid_out_1 = conv2_B7_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,130)
    assign out_pipeline_valid_out = bb_conv2_B7_stall_region_out_pipeline_valid_out;

endmodule
