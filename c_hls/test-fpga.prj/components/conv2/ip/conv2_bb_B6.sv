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

// SystemVerilog created from bb_conv2_B6
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:45 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_bb_B6 (
    input wire [0:0] in_feedback_in_57,
    output wire [0:0] out_feedback_stall_out_57,
    input wire [0:0] in_feedback_valid_in_57,
    input wire [63:0] in_arrayidx34108_pop49346_0,
    input wire [63:0] in_arrayidx34108_pop49346_1,
    input wire [63:0] in_arrayidx34251_0,
    input wire [63:0] in_arrayidx34251_1,
    input wire [63:0] in_arrayidx64114_pop51352_0,
    input wire [63:0] in_arrayidx64114_pop51352_1,
    input wire [63:0] in_arrayidx64261_0,
    input wire [63:0] in_arrayidx64261_1,
    input wire [31:0] in_channel_039_pop17164_0,
    input wire [31:0] in_channel_039_pop17164_1,
    input wire [31:0] in_channel_039_pop1777_pop24223_0,
    input wire [31:0] in_channel_039_pop1777_pop24223_1,
    input wire [31:0] in_channel_039_pop1778_pop31241_0,
    input wire [31:0] in_channel_039_pop1778_pop31241_1,
    input wire [31:0] in_channel_039_pop1779_pop42325_0,
    input wire [31:0] in_channel_039_pop1779_pop42325_1,
    input wire [31:0] in_col_037_pop27111_pop50349_0,
    input wire [31:0] in_col_037_pop27111_pop50349_1,
    input wire [31:0] in_col_037_pop27256_0,
    input wire [31:0] in_col_037_pop27256_1,
    input wire [0:0] in_exitcond22307_0,
    input wire [0:0] in_exitcond22307_1,
    input wire [0:0] in_exitcond25117_pop52355_0,
    input wire [0:0] in_exitcond25117_pop52355_1,
    input wire [0:0] in_exitcond25266_0,
    input wire [0:0] in_exitcond25266_1,
    input wire [0:0] in_exitcond28181_0,
    input wire [0:0] in_exitcond28181_1,
    input wire [0:0] in_exitcond2888_pop33296_0,
    input wire [0:0] in_exitcond2888_pop33296_1,
    input wire [0:0] in_exitcond2889_pop44331_0,
    input wire [0:0] in_exitcond2889_pop44331_1,
    input wire [0:0] in_exitcond31146_0,
    input wire [0:0] in_exitcond31146_1,
    input wire [0:0] in_exitcond3167_pop22209_0,
    input wire [0:0] in_exitcond3167_pop22209_1,
    input wire [0:0] in_exitcond3168_pop29281_0,
    input wire [0:0] in_exitcond3168_pop29281_1,
    input wire [0:0] in_exitcond3169_pop40319_0,
    input wire [0:0] in_exitcond3169_pop40319_1,
    input wire [0:0] in_forked126_0,
    input wire [0:0] in_forked126_1,
    input wire [63:0] in_idxprom25105_pop48343_0,
    input wire [63:0] in_idxprom25105_pop48343_1,
    input wire [63:0] in_idxprom25246_0,
    input wire [63:0] in_idxprom25246_1,
    input wire [31:0] in_k_036_pop38313_0,
    input wire [31:0] in_k_036_pop38313_1,
    input wire [0:0] in_memdep_phi3_pop39316_0,
    input wire [0:0] in_memdep_phi3_pop39316_1,
    input wire [0:0] in_memdep_phi4_pop28123_pop54361_0,
    input wire [0:0] in_memdep_phi4_pop28123_pop54361_1,
    input wire [0:0] in_memdep_phi4_pop28276_0,
    input wire [0:0] in_memdep_phi4_pop28276_1,
    input wire [0:0] in_memdep_phi5_pop21100_pop36306_0,
    input wire [0:0] in_memdep_phi5_pop21100_pop36306_1,
    input wire [0:0] in_memdep_phi5_pop21101_pop47340_0,
    input wire [0:0] in_memdep_phi5_pop21101_pop47340_1,
    input wire [0:0] in_memdep_phi5_pop21202_0,
    input wire [0:0] in_memdep_phi5_pop21202_1,
    input wire [0:0] in_memdep_phi6_pop18173_0,
    input wire [0:0] in_memdep_phi6_pop18173_1,
    input wire [0:0] in_memdep_phi6_pop1882_pop25230_0,
    input wire [0:0] in_memdep_phi6_pop1882_pop25230_1,
    input wire [0:0] in_memdep_phi6_pop1883_pop32291_0,
    input wire [0:0] in_memdep_phi6_pop1883_pop32291_1,
    input wire [0:0] in_memdep_phi6_pop1884_pop43328_0,
    input wire [0:0] in_memdep_phi6_pop1884_pop43328_1,
    input wire [0:0] in_notcmp41310_0,
    input wire [0:0] in_notcmp41310_1,
    input wire [0:0] in_notcmp46120_pop53358_0,
    input wire [0:0] in_notcmp46120_pop53358_1,
    input wire [0:0] in_notcmp46271_0,
    input wire [0:0] in_notcmp46271_1,
    input wire [0:0] in_notcmp51188_0,
    input wire [0:0] in_notcmp51188_1,
    input wire [0:0] in_notcmp5192_pop34301_0,
    input wire [0:0] in_notcmp5192_pop34301_1,
    input wire [0:0] in_notcmp5193_pop45334_0,
    input wire [0:0] in_notcmp5193_pop45334_1,
    input wire [0:0] in_notcmp56155_0,
    input wire [0:0] in_notcmp56155_1,
    input wire [0:0] in_notcmp5672_pop23216_0,
    input wire [0:0] in_notcmp5672_pop23216_1,
    input wire [0:0] in_notcmp5673_pop30286_0,
    input wire [0:0] in_notcmp5673_pop30286_1,
    input wire [0:0] in_notcmp5674_pop41322_0,
    input wire [0:0] in_notcmp5674_pop41322_1,
    input wire [31:0] in_row_038_pop20195_0,
    input wire [31:0] in_row_038_pop20195_1,
    input wire [31:0] in_row_038_pop2096_pop35236_0,
    input wire [31:0] in_row_038_pop2096_pop35236_1,
    input wire [31:0] in_row_038_pop2097_pop46337_0,
    input wire [31:0] in_row_038_pop2097_pop46337_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10670,
    output wire [0:0] out_c0_exe11671,
    output wire [0:0] out_c0_exe12672,
    output wire [0:0] out_c0_exe13673,
    output wire [0:0] out_c0_exe14674,
    output wire [63:0] out_c0_exe15675,
    output wire [31:0] out_c0_exe1661,
    output wire [63:0] out_c0_exe16676,
    output wire [31:0] out_c0_exe17677,
    output wire [63:0] out_c0_exe18678,
    output wire [0:0] out_c0_exe19679,
    output wire [0:0] out_c0_exe20680,
    output wire [0:0] out_c0_exe21681,
    output wire [0:0] out_c0_exe22682,
    output wire [0:0] out_c0_exe23683,
    output wire [0:0] out_c0_exe24684,
    output wire [31:0] out_c0_exe2662,
    output wire [31:0] out_c0_exe3663,
    output wire [31:0] out_c0_exe4664,
    output wire [31:0] out_c0_exe5665,
    output wire [0:0] out_c0_exe6666,
    output wire [0:0] out_c0_exe7667,
    output wire [0:0] out_c0_exe8668,
    output wire [0:0] out_c0_exe9669,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi2_pop57,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv2_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_stall_out;
    wire [0:0] bb_conv2_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_valid_out;
    wire [31:0] bb_conv2_B6_stall_region_out_c0_exe10670;
    wire [0:0] bb_conv2_B6_stall_region_out_c0_exe11671;
    wire [0:0] bb_conv2_B6_stall_region_out_c0_exe12672;
    wire [0:0] bb_conv2_B6_stall_region_out_c0_exe13673;
    wire [0:0] bb_conv2_B6_stall_region_out_c0_exe14674;
    wire [63:0] bb_conv2_B6_stall_region_out_c0_exe15675;
    wire [31:0] bb_conv2_B6_stall_region_out_c0_exe1661;
    wire [63:0] bb_conv2_B6_stall_region_out_c0_exe16676;
    wire [31:0] bb_conv2_B6_stall_region_out_c0_exe17677;
    wire [63:0] bb_conv2_B6_stall_region_out_c0_exe18678;
    wire [0:0] bb_conv2_B6_stall_region_out_c0_exe19679;
    wire [0:0] bb_conv2_B6_stall_region_out_c0_exe20680;
    wire [0:0] bb_conv2_B6_stall_region_out_c0_exe21681;
    wire [0:0] bb_conv2_B6_stall_region_out_c0_exe22682;
    wire [0:0] bb_conv2_B6_stall_region_out_c0_exe23683;
    wire [0:0] bb_conv2_B6_stall_region_out_c0_exe24684;
    wire [31:0] bb_conv2_B6_stall_region_out_c0_exe2662;
    wire [31:0] bb_conv2_B6_stall_region_out_c0_exe3663;
    wire [31:0] bb_conv2_B6_stall_region_out_c0_exe4664;
    wire [31:0] bb_conv2_B6_stall_region_out_c0_exe5665;
    wire [0:0] bb_conv2_B6_stall_region_out_c0_exe6666;
    wire [0:0] bb_conv2_B6_stall_region_out_c0_exe7667;
    wire [0:0] bb_conv2_B6_stall_region_out_c0_exe8668;
    wire [0:0] bb_conv2_B6_stall_region_out_c0_exe9669;
    wire [0:0] bb_conv2_B6_stall_region_out_feedback_stall_out_57;
    wire [0:0] bb_conv2_B6_stall_region_out_memdep_phi2_pop57;
    wire [0:0] bb_conv2_B6_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2_B6_stall_region_out_stall_out;
    wire [0:0] bb_conv2_B6_stall_region_out_valid_out;
    wire [31:0] conv2_B6_branch_out_c0_exe10670;
    wire [0:0] conv2_B6_branch_out_c0_exe11671;
    wire [0:0] conv2_B6_branch_out_c0_exe12672;
    wire [0:0] conv2_B6_branch_out_c0_exe13673;
    wire [0:0] conv2_B6_branch_out_c0_exe14674;
    wire [63:0] conv2_B6_branch_out_c0_exe15675;
    wire [31:0] conv2_B6_branch_out_c0_exe1661;
    wire [63:0] conv2_B6_branch_out_c0_exe16676;
    wire [31:0] conv2_B6_branch_out_c0_exe17677;
    wire [63:0] conv2_B6_branch_out_c0_exe18678;
    wire [0:0] conv2_B6_branch_out_c0_exe19679;
    wire [0:0] conv2_B6_branch_out_c0_exe20680;
    wire [0:0] conv2_B6_branch_out_c0_exe21681;
    wire [0:0] conv2_B6_branch_out_c0_exe22682;
    wire [0:0] conv2_B6_branch_out_c0_exe23683;
    wire [0:0] conv2_B6_branch_out_c0_exe24684;
    wire [31:0] conv2_B6_branch_out_c0_exe2662;
    wire [31:0] conv2_B6_branch_out_c0_exe3663;
    wire [31:0] conv2_B6_branch_out_c0_exe4664;
    wire [31:0] conv2_B6_branch_out_c0_exe5665;
    wire [0:0] conv2_B6_branch_out_c0_exe6666;
    wire [0:0] conv2_B6_branch_out_c0_exe7667;
    wire [0:0] conv2_B6_branch_out_c0_exe8668;
    wire [0:0] conv2_B6_branch_out_c0_exe9669;
    wire [0:0] conv2_B6_branch_out_memdep_phi2_pop57;
    wire [0:0] conv2_B6_branch_out_stall_out;
    wire [0:0] conv2_B6_branch_out_valid_out_0;
    wire [63:0] conv2_B6_merge_out_arrayidx34108_pop49346;
    wire [63:0] conv2_B6_merge_out_arrayidx34251;
    wire [63:0] conv2_B6_merge_out_arrayidx64114_pop51352;
    wire [63:0] conv2_B6_merge_out_arrayidx64261;
    wire [31:0] conv2_B6_merge_out_channel_039_pop17164;
    wire [31:0] conv2_B6_merge_out_channel_039_pop1777_pop24223;
    wire [31:0] conv2_B6_merge_out_channel_039_pop1778_pop31241;
    wire [31:0] conv2_B6_merge_out_channel_039_pop1779_pop42325;
    wire [31:0] conv2_B6_merge_out_col_037_pop27111_pop50349;
    wire [31:0] conv2_B6_merge_out_col_037_pop27256;
    wire [0:0] conv2_B6_merge_out_exitcond22307;
    wire [0:0] conv2_B6_merge_out_exitcond25117_pop52355;
    wire [0:0] conv2_B6_merge_out_exitcond25266;
    wire [0:0] conv2_B6_merge_out_exitcond28181;
    wire [0:0] conv2_B6_merge_out_exitcond2888_pop33296;
    wire [0:0] conv2_B6_merge_out_exitcond2889_pop44331;
    wire [0:0] conv2_B6_merge_out_exitcond31146;
    wire [0:0] conv2_B6_merge_out_exitcond3167_pop22209;
    wire [0:0] conv2_B6_merge_out_exitcond3168_pop29281;
    wire [0:0] conv2_B6_merge_out_exitcond3169_pop40319;
    wire [0:0] conv2_B6_merge_out_forked126;
    wire [63:0] conv2_B6_merge_out_idxprom25105_pop48343;
    wire [63:0] conv2_B6_merge_out_idxprom25246;
    wire [31:0] conv2_B6_merge_out_k_036_pop38313;
    wire [0:0] conv2_B6_merge_out_memdep_phi3_pop39316;
    wire [0:0] conv2_B6_merge_out_memdep_phi4_pop28123_pop54361;
    wire [0:0] conv2_B6_merge_out_memdep_phi4_pop28276;
    wire [0:0] conv2_B6_merge_out_memdep_phi5_pop21100_pop36306;
    wire [0:0] conv2_B6_merge_out_memdep_phi5_pop21101_pop47340;
    wire [0:0] conv2_B6_merge_out_memdep_phi5_pop21202;
    wire [0:0] conv2_B6_merge_out_memdep_phi6_pop18173;
    wire [0:0] conv2_B6_merge_out_memdep_phi6_pop1882_pop25230;
    wire [0:0] conv2_B6_merge_out_memdep_phi6_pop1883_pop32291;
    wire [0:0] conv2_B6_merge_out_memdep_phi6_pop1884_pop43328;
    wire [0:0] conv2_B6_merge_out_notcmp41310;
    wire [0:0] conv2_B6_merge_out_notcmp46120_pop53358;
    wire [0:0] conv2_B6_merge_out_notcmp46271;
    wire [0:0] conv2_B6_merge_out_notcmp51188;
    wire [0:0] conv2_B6_merge_out_notcmp5192_pop34301;
    wire [0:0] conv2_B6_merge_out_notcmp5193_pop45334;
    wire [0:0] conv2_B6_merge_out_notcmp56155;
    wire [0:0] conv2_B6_merge_out_notcmp5672_pop23216;
    wire [0:0] conv2_B6_merge_out_notcmp5673_pop30286;
    wire [0:0] conv2_B6_merge_out_notcmp5674_pop41322;
    wire [31:0] conv2_B6_merge_out_row_038_pop20195;
    wire [31:0] conv2_B6_merge_out_row_038_pop2096_pop35236;
    wire [31:0] conv2_B6_merge_out_row_038_pop2097_pop46337;
    wire [0:0] conv2_B6_merge_out_stall_out_0;
    wire [0:0] conv2_B6_merge_out_stall_out_1;
    wire [0:0] conv2_B6_merge_out_valid_out;


    // conv2_B6_branch(BLACKBOX,3)
    conv2_B6_branch theconv2_B6_branch (
        .in_c0_exe10670(bb_conv2_B6_stall_region_out_c0_exe10670),
        .in_c0_exe11671(bb_conv2_B6_stall_region_out_c0_exe11671),
        .in_c0_exe12672(bb_conv2_B6_stall_region_out_c0_exe12672),
        .in_c0_exe13673(bb_conv2_B6_stall_region_out_c0_exe13673),
        .in_c0_exe14674(bb_conv2_B6_stall_region_out_c0_exe14674),
        .in_c0_exe15675(bb_conv2_B6_stall_region_out_c0_exe15675),
        .in_c0_exe1661(bb_conv2_B6_stall_region_out_c0_exe1661),
        .in_c0_exe16676(bb_conv2_B6_stall_region_out_c0_exe16676),
        .in_c0_exe17677(bb_conv2_B6_stall_region_out_c0_exe17677),
        .in_c0_exe18678(bb_conv2_B6_stall_region_out_c0_exe18678),
        .in_c0_exe19679(bb_conv2_B6_stall_region_out_c0_exe19679),
        .in_c0_exe20680(bb_conv2_B6_stall_region_out_c0_exe20680),
        .in_c0_exe21681(bb_conv2_B6_stall_region_out_c0_exe21681),
        .in_c0_exe22682(bb_conv2_B6_stall_region_out_c0_exe22682),
        .in_c0_exe23683(bb_conv2_B6_stall_region_out_c0_exe23683),
        .in_c0_exe24684(bb_conv2_B6_stall_region_out_c0_exe24684),
        .in_c0_exe2662(bb_conv2_B6_stall_region_out_c0_exe2662),
        .in_c0_exe3663(bb_conv2_B6_stall_region_out_c0_exe3663),
        .in_c0_exe4664(bb_conv2_B6_stall_region_out_c0_exe4664),
        .in_c0_exe5665(bb_conv2_B6_stall_region_out_c0_exe5665),
        .in_c0_exe6666(bb_conv2_B6_stall_region_out_c0_exe6666),
        .in_c0_exe7667(bb_conv2_B6_stall_region_out_c0_exe7667),
        .in_c0_exe8668(bb_conv2_B6_stall_region_out_c0_exe8668),
        .in_c0_exe9669(bb_conv2_B6_stall_region_out_c0_exe9669),
        .in_memdep_phi2_pop57(bb_conv2_B6_stall_region_out_memdep_phi2_pop57),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv2_B6_stall_region_out_valid_out),
        .out_c0_exe10670(conv2_B6_branch_out_c0_exe10670),
        .out_c0_exe11671(conv2_B6_branch_out_c0_exe11671),
        .out_c0_exe12672(conv2_B6_branch_out_c0_exe12672),
        .out_c0_exe13673(conv2_B6_branch_out_c0_exe13673),
        .out_c0_exe14674(conv2_B6_branch_out_c0_exe14674),
        .out_c0_exe15675(conv2_B6_branch_out_c0_exe15675),
        .out_c0_exe1661(conv2_B6_branch_out_c0_exe1661),
        .out_c0_exe16676(conv2_B6_branch_out_c0_exe16676),
        .out_c0_exe17677(conv2_B6_branch_out_c0_exe17677),
        .out_c0_exe18678(conv2_B6_branch_out_c0_exe18678),
        .out_c0_exe19679(conv2_B6_branch_out_c0_exe19679),
        .out_c0_exe20680(conv2_B6_branch_out_c0_exe20680),
        .out_c0_exe21681(conv2_B6_branch_out_c0_exe21681),
        .out_c0_exe22682(conv2_B6_branch_out_c0_exe22682),
        .out_c0_exe23683(conv2_B6_branch_out_c0_exe23683),
        .out_c0_exe24684(conv2_B6_branch_out_c0_exe24684),
        .out_c0_exe2662(conv2_B6_branch_out_c0_exe2662),
        .out_c0_exe3663(conv2_B6_branch_out_c0_exe3663),
        .out_c0_exe4664(conv2_B6_branch_out_c0_exe4664),
        .out_c0_exe5665(conv2_B6_branch_out_c0_exe5665),
        .out_c0_exe6666(conv2_B6_branch_out_c0_exe6666),
        .out_c0_exe7667(conv2_B6_branch_out_c0_exe7667),
        .out_c0_exe8668(conv2_B6_branch_out_c0_exe8668),
        .out_c0_exe9669(conv2_B6_branch_out_c0_exe9669),
        .out_memdep_phi2_pop57(conv2_B6_branch_out_memdep_phi2_pop57),
        .out_stall_out(conv2_B6_branch_out_stall_out),
        .out_valid_out_0(conv2_B6_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2_B6_merge(BLACKBOX,4)
    conv2_B6_merge theconv2_B6_merge (
        .in_arrayidx34108_pop49346_0(in_arrayidx34108_pop49346_0),
        .in_arrayidx34108_pop49346_1(in_arrayidx34108_pop49346_1),
        .in_arrayidx34251_0(in_arrayidx34251_0),
        .in_arrayidx34251_1(in_arrayidx34251_1),
        .in_arrayidx64114_pop51352_0(in_arrayidx64114_pop51352_0),
        .in_arrayidx64114_pop51352_1(in_arrayidx64114_pop51352_1),
        .in_arrayidx64261_0(in_arrayidx64261_0),
        .in_arrayidx64261_1(in_arrayidx64261_1),
        .in_channel_039_pop17164_0(in_channel_039_pop17164_0),
        .in_channel_039_pop17164_1(in_channel_039_pop17164_1),
        .in_channel_039_pop1777_pop24223_0(in_channel_039_pop1777_pop24223_0),
        .in_channel_039_pop1777_pop24223_1(in_channel_039_pop1777_pop24223_1),
        .in_channel_039_pop1778_pop31241_0(in_channel_039_pop1778_pop31241_0),
        .in_channel_039_pop1778_pop31241_1(in_channel_039_pop1778_pop31241_1),
        .in_channel_039_pop1779_pop42325_0(in_channel_039_pop1779_pop42325_0),
        .in_channel_039_pop1779_pop42325_1(in_channel_039_pop1779_pop42325_1),
        .in_col_037_pop27111_pop50349_0(in_col_037_pop27111_pop50349_0),
        .in_col_037_pop27111_pop50349_1(in_col_037_pop27111_pop50349_1),
        .in_col_037_pop27256_0(in_col_037_pop27256_0),
        .in_col_037_pop27256_1(in_col_037_pop27256_1),
        .in_exitcond22307_0(in_exitcond22307_0),
        .in_exitcond22307_1(in_exitcond22307_1),
        .in_exitcond25117_pop52355_0(in_exitcond25117_pop52355_0),
        .in_exitcond25117_pop52355_1(in_exitcond25117_pop52355_1),
        .in_exitcond25266_0(in_exitcond25266_0),
        .in_exitcond25266_1(in_exitcond25266_1),
        .in_exitcond28181_0(in_exitcond28181_0),
        .in_exitcond28181_1(in_exitcond28181_1),
        .in_exitcond2888_pop33296_0(in_exitcond2888_pop33296_0),
        .in_exitcond2888_pop33296_1(in_exitcond2888_pop33296_1),
        .in_exitcond2889_pop44331_0(in_exitcond2889_pop44331_0),
        .in_exitcond2889_pop44331_1(in_exitcond2889_pop44331_1),
        .in_exitcond31146_0(in_exitcond31146_0),
        .in_exitcond31146_1(in_exitcond31146_1),
        .in_exitcond3167_pop22209_0(in_exitcond3167_pop22209_0),
        .in_exitcond3167_pop22209_1(in_exitcond3167_pop22209_1),
        .in_exitcond3168_pop29281_0(in_exitcond3168_pop29281_0),
        .in_exitcond3168_pop29281_1(in_exitcond3168_pop29281_1),
        .in_exitcond3169_pop40319_0(in_exitcond3169_pop40319_0),
        .in_exitcond3169_pop40319_1(in_exitcond3169_pop40319_1),
        .in_forked126_0(in_forked126_0),
        .in_forked126_1(in_forked126_1),
        .in_idxprom25105_pop48343_0(in_idxprom25105_pop48343_0),
        .in_idxprom25105_pop48343_1(in_idxprom25105_pop48343_1),
        .in_idxprom25246_0(in_idxprom25246_0),
        .in_idxprom25246_1(in_idxprom25246_1),
        .in_k_036_pop38313_0(in_k_036_pop38313_0),
        .in_k_036_pop38313_1(in_k_036_pop38313_1),
        .in_memdep_phi3_pop39316_0(in_memdep_phi3_pop39316_0),
        .in_memdep_phi3_pop39316_1(in_memdep_phi3_pop39316_1),
        .in_memdep_phi4_pop28123_pop54361_0(in_memdep_phi4_pop28123_pop54361_0),
        .in_memdep_phi4_pop28123_pop54361_1(in_memdep_phi4_pop28123_pop54361_1),
        .in_memdep_phi4_pop28276_0(in_memdep_phi4_pop28276_0),
        .in_memdep_phi4_pop28276_1(in_memdep_phi4_pop28276_1),
        .in_memdep_phi5_pop21100_pop36306_0(in_memdep_phi5_pop21100_pop36306_0),
        .in_memdep_phi5_pop21100_pop36306_1(in_memdep_phi5_pop21100_pop36306_1),
        .in_memdep_phi5_pop21101_pop47340_0(in_memdep_phi5_pop21101_pop47340_0),
        .in_memdep_phi5_pop21101_pop47340_1(in_memdep_phi5_pop21101_pop47340_1),
        .in_memdep_phi5_pop21202_0(in_memdep_phi5_pop21202_0),
        .in_memdep_phi5_pop21202_1(in_memdep_phi5_pop21202_1),
        .in_memdep_phi6_pop18173_0(in_memdep_phi6_pop18173_0),
        .in_memdep_phi6_pop18173_1(in_memdep_phi6_pop18173_1),
        .in_memdep_phi6_pop1882_pop25230_0(in_memdep_phi6_pop1882_pop25230_0),
        .in_memdep_phi6_pop1882_pop25230_1(in_memdep_phi6_pop1882_pop25230_1),
        .in_memdep_phi6_pop1883_pop32291_0(in_memdep_phi6_pop1883_pop32291_0),
        .in_memdep_phi6_pop1883_pop32291_1(in_memdep_phi6_pop1883_pop32291_1),
        .in_memdep_phi6_pop1884_pop43328_0(in_memdep_phi6_pop1884_pop43328_0),
        .in_memdep_phi6_pop1884_pop43328_1(in_memdep_phi6_pop1884_pop43328_1),
        .in_notcmp41310_0(in_notcmp41310_0),
        .in_notcmp41310_1(in_notcmp41310_1),
        .in_notcmp46120_pop53358_0(in_notcmp46120_pop53358_0),
        .in_notcmp46120_pop53358_1(in_notcmp46120_pop53358_1),
        .in_notcmp46271_0(in_notcmp46271_0),
        .in_notcmp46271_1(in_notcmp46271_1),
        .in_notcmp51188_0(in_notcmp51188_0),
        .in_notcmp51188_1(in_notcmp51188_1),
        .in_notcmp5192_pop34301_0(in_notcmp5192_pop34301_0),
        .in_notcmp5192_pop34301_1(in_notcmp5192_pop34301_1),
        .in_notcmp5193_pop45334_0(in_notcmp5193_pop45334_0),
        .in_notcmp5193_pop45334_1(in_notcmp5193_pop45334_1),
        .in_notcmp56155_0(in_notcmp56155_0),
        .in_notcmp56155_1(in_notcmp56155_1),
        .in_notcmp5672_pop23216_0(in_notcmp5672_pop23216_0),
        .in_notcmp5672_pop23216_1(in_notcmp5672_pop23216_1),
        .in_notcmp5673_pop30286_0(in_notcmp5673_pop30286_0),
        .in_notcmp5673_pop30286_1(in_notcmp5673_pop30286_1),
        .in_notcmp5674_pop41322_0(in_notcmp5674_pop41322_0),
        .in_notcmp5674_pop41322_1(in_notcmp5674_pop41322_1),
        .in_row_038_pop20195_0(in_row_038_pop20195_0),
        .in_row_038_pop20195_1(in_row_038_pop20195_1),
        .in_row_038_pop2096_pop35236_0(in_row_038_pop2096_pop35236_0),
        .in_row_038_pop2096_pop35236_1(in_row_038_pop2096_pop35236_1),
        .in_row_038_pop2097_pop46337_0(in_row_038_pop2097_pop46337_0),
        .in_row_038_pop2097_pop46337_1(in_row_038_pop2097_pop46337_1),
        .in_stall_in(bb_conv2_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_arrayidx34108_pop49346(conv2_B6_merge_out_arrayidx34108_pop49346),
        .out_arrayidx34251(conv2_B6_merge_out_arrayidx34251),
        .out_arrayidx64114_pop51352(conv2_B6_merge_out_arrayidx64114_pop51352),
        .out_arrayidx64261(conv2_B6_merge_out_arrayidx64261),
        .out_channel_039_pop17164(conv2_B6_merge_out_channel_039_pop17164),
        .out_channel_039_pop1777_pop24223(conv2_B6_merge_out_channel_039_pop1777_pop24223),
        .out_channel_039_pop1778_pop31241(conv2_B6_merge_out_channel_039_pop1778_pop31241),
        .out_channel_039_pop1779_pop42325(conv2_B6_merge_out_channel_039_pop1779_pop42325),
        .out_col_037_pop27111_pop50349(conv2_B6_merge_out_col_037_pop27111_pop50349),
        .out_col_037_pop27256(conv2_B6_merge_out_col_037_pop27256),
        .out_exitcond22307(conv2_B6_merge_out_exitcond22307),
        .out_exitcond25117_pop52355(conv2_B6_merge_out_exitcond25117_pop52355),
        .out_exitcond25266(conv2_B6_merge_out_exitcond25266),
        .out_exitcond28181(conv2_B6_merge_out_exitcond28181),
        .out_exitcond2888_pop33296(conv2_B6_merge_out_exitcond2888_pop33296),
        .out_exitcond2889_pop44331(conv2_B6_merge_out_exitcond2889_pop44331),
        .out_exitcond31146(conv2_B6_merge_out_exitcond31146),
        .out_exitcond3167_pop22209(conv2_B6_merge_out_exitcond3167_pop22209),
        .out_exitcond3168_pop29281(conv2_B6_merge_out_exitcond3168_pop29281),
        .out_exitcond3169_pop40319(conv2_B6_merge_out_exitcond3169_pop40319),
        .out_forked126(conv2_B6_merge_out_forked126),
        .out_idxprom25105_pop48343(conv2_B6_merge_out_idxprom25105_pop48343),
        .out_idxprom25246(conv2_B6_merge_out_idxprom25246),
        .out_k_036_pop38313(conv2_B6_merge_out_k_036_pop38313),
        .out_memdep_phi3_pop39316(conv2_B6_merge_out_memdep_phi3_pop39316),
        .out_memdep_phi4_pop28123_pop54361(conv2_B6_merge_out_memdep_phi4_pop28123_pop54361),
        .out_memdep_phi4_pop28276(conv2_B6_merge_out_memdep_phi4_pop28276),
        .out_memdep_phi5_pop21100_pop36306(conv2_B6_merge_out_memdep_phi5_pop21100_pop36306),
        .out_memdep_phi5_pop21101_pop47340(conv2_B6_merge_out_memdep_phi5_pop21101_pop47340),
        .out_memdep_phi5_pop21202(conv2_B6_merge_out_memdep_phi5_pop21202),
        .out_memdep_phi6_pop18173(conv2_B6_merge_out_memdep_phi6_pop18173),
        .out_memdep_phi6_pop1882_pop25230(conv2_B6_merge_out_memdep_phi6_pop1882_pop25230),
        .out_memdep_phi6_pop1883_pop32291(conv2_B6_merge_out_memdep_phi6_pop1883_pop32291),
        .out_memdep_phi6_pop1884_pop43328(conv2_B6_merge_out_memdep_phi6_pop1884_pop43328),
        .out_notcmp41310(conv2_B6_merge_out_notcmp41310),
        .out_notcmp46120_pop53358(conv2_B6_merge_out_notcmp46120_pop53358),
        .out_notcmp46271(conv2_B6_merge_out_notcmp46271),
        .out_notcmp51188(conv2_B6_merge_out_notcmp51188),
        .out_notcmp5192_pop34301(conv2_B6_merge_out_notcmp5192_pop34301),
        .out_notcmp5193_pop45334(conv2_B6_merge_out_notcmp5193_pop45334),
        .out_notcmp56155(conv2_B6_merge_out_notcmp56155),
        .out_notcmp5672_pop23216(conv2_B6_merge_out_notcmp5672_pop23216),
        .out_notcmp5673_pop30286(conv2_B6_merge_out_notcmp5673_pop30286),
        .out_notcmp5674_pop41322(conv2_B6_merge_out_notcmp5674_pop41322),
        .out_row_038_pop20195(conv2_B6_merge_out_row_038_pop20195),
        .out_row_038_pop2096_pop35236(conv2_B6_merge_out_row_038_pop2096_pop35236),
        .out_row_038_pop2097_pop46337(conv2_B6_merge_out_row_038_pop2097_pop46337),
        .out_stall_out_0(conv2_B6_merge_out_stall_out_0),
        .out_stall_out_1(conv2_B6_merge_out_stall_out_1),
        .out_valid_out(conv2_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B6_stall_region(BLACKBOX,2)
    conv2_bb_B6_stall_region thebb_conv2_B6_stall_region (
        .in_arrayidx34108_pop49346(conv2_B6_merge_out_arrayidx34108_pop49346),
        .in_arrayidx34251(conv2_B6_merge_out_arrayidx34251),
        .in_arrayidx64114_pop51352(conv2_B6_merge_out_arrayidx64114_pop51352),
        .in_arrayidx64261(conv2_B6_merge_out_arrayidx64261),
        .in_channel_039_pop17164(conv2_B6_merge_out_channel_039_pop17164),
        .in_channel_039_pop1777_pop24223(conv2_B6_merge_out_channel_039_pop1777_pop24223),
        .in_channel_039_pop1778_pop31241(conv2_B6_merge_out_channel_039_pop1778_pop31241),
        .in_channel_039_pop1779_pop42325(conv2_B6_merge_out_channel_039_pop1779_pop42325),
        .in_col_037_pop27111_pop50349(conv2_B6_merge_out_col_037_pop27111_pop50349),
        .in_col_037_pop27256(conv2_B6_merge_out_col_037_pop27256),
        .in_exitcond22307(conv2_B6_merge_out_exitcond22307),
        .in_exitcond25117_pop52355(conv2_B6_merge_out_exitcond25117_pop52355),
        .in_exitcond25266(conv2_B6_merge_out_exitcond25266),
        .in_exitcond28181(conv2_B6_merge_out_exitcond28181),
        .in_exitcond2888_pop33296(conv2_B6_merge_out_exitcond2888_pop33296),
        .in_exitcond2889_pop44331(conv2_B6_merge_out_exitcond2889_pop44331),
        .in_exitcond31146(conv2_B6_merge_out_exitcond31146),
        .in_exitcond3167_pop22209(conv2_B6_merge_out_exitcond3167_pop22209),
        .in_exitcond3168_pop29281(conv2_B6_merge_out_exitcond3168_pop29281),
        .in_exitcond3169_pop40319(conv2_B6_merge_out_exitcond3169_pop40319),
        .in_feedback_in_57(in_feedback_in_57),
        .in_feedback_valid_in_57(in_feedback_valid_in_57),
        .in_forked126(conv2_B6_merge_out_forked126),
        .in_idxprom25105_pop48343(conv2_B6_merge_out_idxprom25105_pop48343),
        .in_idxprom25246(conv2_B6_merge_out_idxprom25246),
        .in_k_036_pop38313(conv2_B6_merge_out_k_036_pop38313),
        .in_memdep_phi3_pop39316(conv2_B6_merge_out_memdep_phi3_pop39316),
        .in_memdep_phi4_pop28123_pop54361(conv2_B6_merge_out_memdep_phi4_pop28123_pop54361),
        .in_memdep_phi4_pop28276(conv2_B6_merge_out_memdep_phi4_pop28276),
        .in_memdep_phi5_pop21100_pop36306(conv2_B6_merge_out_memdep_phi5_pop21100_pop36306),
        .in_memdep_phi5_pop21101_pop47340(conv2_B6_merge_out_memdep_phi5_pop21101_pop47340),
        .in_memdep_phi5_pop21202(conv2_B6_merge_out_memdep_phi5_pop21202),
        .in_memdep_phi6_pop18173(conv2_B6_merge_out_memdep_phi6_pop18173),
        .in_memdep_phi6_pop1882_pop25230(conv2_B6_merge_out_memdep_phi6_pop1882_pop25230),
        .in_memdep_phi6_pop1883_pop32291(conv2_B6_merge_out_memdep_phi6_pop1883_pop32291),
        .in_memdep_phi6_pop1884_pop43328(conv2_B6_merge_out_memdep_phi6_pop1884_pop43328),
        .in_notcmp41310(conv2_B6_merge_out_notcmp41310),
        .in_notcmp46120_pop53358(conv2_B6_merge_out_notcmp46120_pop53358),
        .in_notcmp46271(conv2_B6_merge_out_notcmp46271),
        .in_notcmp51188(conv2_B6_merge_out_notcmp51188),
        .in_notcmp5192_pop34301(conv2_B6_merge_out_notcmp5192_pop34301),
        .in_notcmp5193_pop45334(conv2_B6_merge_out_notcmp5193_pop45334),
        .in_notcmp56155(conv2_B6_merge_out_notcmp56155),
        .in_notcmp5672_pop23216(conv2_B6_merge_out_notcmp5672_pop23216),
        .in_notcmp5673_pop30286(conv2_B6_merge_out_notcmp5673_pop30286),
        .in_notcmp5674_pop41322(conv2_B6_merge_out_notcmp5674_pop41322),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_row_038_pop20195(conv2_B6_merge_out_row_038_pop20195),
        .in_row_038_pop2096_pop35236(conv2_B6_merge_out_row_038_pop2096_pop35236),
        .in_row_038_pop2097_pop46337(conv2_B6_merge_out_row_038_pop2097_pop46337),
        .in_stall_in(conv2_B6_branch_out_stall_out),
        .in_valid_in(conv2_B6_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_stall_out(bb_conv2_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_valid_out(bb_conv2_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_valid_out),
        .out_c0_exe10670(bb_conv2_B6_stall_region_out_c0_exe10670),
        .out_c0_exe11671(bb_conv2_B6_stall_region_out_c0_exe11671),
        .out_c0_exe12672(bb_conv2_B6_stall_region_out_c0_exe12672),
        .out_c0_exe13673(bb_conv2_B6_stall_region_out_c0_exe13673),
        .out_c0_exe14674(bb_conv2_B6_stall_region_out_c0_exe14674),
        .out_c0_exe15675(bb_conv2_B6_stall_region_out_c0_exe15675),
        .out_c0_exe1661(bb_conv2_B6_stall_region_out_c0_exe1661),
        .out_c0_exe16676(bb_conv2_B6_stall_region_out_c0_exe16676),
        .out_c0_exe17677(bb_conv2_B6_stall_region_out_c0_exe17677),
        .out_c0_exe18678(bb_conv2_B6_stall_region_out_c0_exe18678),
        .out_c0_exe19679(bb_conv2_B6_stall_region_out_c0_exe19679),
        .out_c0_exe20680(bb_conv2_B6_stall_region_out_c0_exe20680),
        .out_c0_exe21681(bb_conv2_B6_stall_region_out_c0_exe21681),
        .out_c0_exe22682(bb_conv2_B6_stall_region_out_c0_exe22682),
        .out_c0_exe23683(bb_conv2_B6_stall_region_out_c0_exe23683),
        .out_c0_exe24684(bb_conv2_B6_stall_region_out_c0_exe24684),
        .out_c0_exe2662(bb_conv2_B6_stall_region_out_c0_exe2662),
        .out_c0_exe3663(bb_conv2_B6_stall_region_out_c0_exe3663),
        .out_c0_exe4664(bb_conv2_B6_stall_region_out_c0_exe4664),
        .out_c0_exe5665(bb_conv2_B6_stall_region_out_c0_exe5665),
        .out_c0_exe6666(bb_conv2_B6_stall_region_out_c0_exe6666),
        .out_c0_exe7667(bb_conv2_B6_stall_region_out_c0_exe7667),
        .out_c0_exe8668(bb_conv2_B6_stall_region_out_c0_exe8668),
        .out_c0_exe9669(bb_conv2_B6_stall_region_out_c0_exe9669),
        .out_feedback_stall_out_57(bb_conv2_B6_stall_region_out_feedback_stall_out_57),
        .out_memdep_phi2_pop57(bb_conv2_B6_stall_region_out_memdep_phi2_pop57),
        .out_pipeline_valid_out(bb_conv2_B6_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2_B6_stall_region_out_stall_out),
        .out_valid_out(bb_conv2_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_57_sync(GPOUT,6)
    assign out_feedback_stall_out_57 = bb_conv2_B6_stall_region_out_feedback_stall_out_57;

    // out_c0_exe10670(GPOUT,105)
    assign out_c0_exe10670 = conv2_B6_branch_out_c0_exe10670;

    // out_c0_exe11671(GPOUT,106)
    assign out_c0_exe11671 = conv2_B6_branch_out_c0_exe11671;

    // out_c0_exe12672(GPOUT,107)
    assign out_c0_exe12672 = conv2_B6_branch_out_c0_exe12672;

    // out_c0_exe13673(GPOUT,108)
    assign out_c0_exe13673 = conv2_B6_branch_out_c0_exe13673;

    // out_c0_exe14674(GPOUT,109)
    assign out_c0_exe14674 = conv2_B6_branch_out_c0_exe14674;

    // out_c0_exe15675(GPOUT,110)
    assign out_c0_exe15675 = conv2_B6_branch_out_c0_exe15675;

    // out_c0_exe1661(GPOUT,111)
    assign out_c0_exe1661 = conv2_B6_branch_out_c0_exe1661;

    // out_c0_exe16676(GPOUT,112)
    assign out_c0_exe16676 = conv2_B6_branch_out_c0_exe16676;

    // out_c0_exe17677(GPOUT,113)
    assign out_c0_exe17677 = conv2_B6_branch_out_c0_exe17677;

    // out_c0_exe18678(GPOUT,114)
    assign out_c0_exe18678 = conv2_B6_branch_out_c0_exe18678;

    // out_c0_exe19679(GPOUT,115)
    assign out_c0_exe19679 = conv2_B6_branch_out_c0_exe19679;

    // out_c0_exe20680(GPOUT,116)
    assign out_c0_exe20680 = conv2_B6_branch_out_c0_exe20680;

    // out_c0_exe21681(GPOUT,117)
    assign out_c0_exe21681 = conv2_B6_branch_out_c0_exe21681;

    // out_c0_exe22682(GPOUT,118)
    assign out_c0_exe22682 = conv2_B6_branch_out_c0_exe22682;

    // out_c0_exe23683(GPOUT,119)
    assign out_c0_exe23683 = conv2_B6_branch_out_c0_exe23683;

    // out_c0_exe24684(GPOUT,120)
    assign out_c0_exe24684 = conv2_B6_branch_out_c0_exe24684;

    // out_c0_exe2662(GPOUT,121)
    assign out_c0_exe2662 = conv2_B6_branch_out_c0_exe2662;

    // out_c0_exe3663(GPOUT,122)
    assign out_c0_exe3663 = conv2_B6_branch_out_c0_exe3663;

    // out_c0_exe4664(GPOUT,123)
    assign out_c0_exe4664 = conv2_B6_branch_out_c0_exe4664;

    // out_c0_exe5665(GPOUT,124)
    assign out_c0_exe5665 = conv2_B6_branch_out_c0_exe5665;

    // out_c0_exe6666(GPOUT,125)
    assign out_c0_exe6666 = conv2_B6_branch_out_c0_exe6666;

    // out_c0_exe7667(GPOUT,126)
    assign out_c0_exe7667 = conv2_B6_branch_out_c0_exe7667;

    // out_c0_exe8668(GPOUT,127)
    assign out_c0_exe8668 = conv2_B6_branch_out_c0_exe8668;

    // out_c0_exe9669(GPOUT,128)
    assign out_c0_exe9669 = conv2_B6_branch_out_c0_exe9669;

    // out_exiting_stall_out(GPOUT,129)
    assign out_exiting_stall_out = bb_conv2_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,130)
    assign out_exiting_valid_out = bb_conv2_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going38_conv22_exiting_valid_out;

    // out_memdep_phi2_pop57(GPOUT,131)
    assign out_memdep_phi2_pop57 = conv2_B6_branch_out_memdep_phi2_pop57;

    // out_stall_out_0(GPOUT,132)
    assign out_stall_out_0 = conv2_B6_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,133)
    assign out_stall_out_1 = conv2_B6_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,134)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,135)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,136)
    assign out_valid_out_0 = conv2_B6_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,138)
    assign out_pipeline_valid_out = bb_conv2_B6_stall_region_out_pipeline_valid_out;

endmodule
