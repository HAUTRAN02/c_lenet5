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

// SystemVerilog created from bb_conv2_B5
// Created for function/kernel conv2
// SystemVerilog created on Sat Apr  1 13:10:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2_bb_B5 (
    input wire [0:0] in_feedback_in_39,
    output wire [0:0] out_feedback_stall_out_39,
    input wire [0:0] in_feedback_valid_in_39,
    input wire [63:0] in_arrayidx34247_0,
    input wire [63:0] in_arrayidx34247_1,
    input wire [63:0] in_arrayidx64257_0,
    input wire [63:0] in_arrayidx64257_1,
    input wire [31:0] in_channel_039_pop17165_0,
    input wire [31:0] in_channel_039_pop17165_1,
    input wire [31:0] in_channel_039_pop1777_pop24224_0,
    input wire [31:0] in_channel_039_pop1777_pop24224_1,
    input wire [31:0] in_channel_039_pop1778_pop31237_0,
    input wire [31:0] in_channel_039_pop1778_pop31237_1,
    input wire [31:0] in_col_037_pop27252_0,
    input wire [31:0] in_col_037_pop27252_1,
    input wire [0:0] in_exitcond25262_0,
    input wire [0:0] in_exitcond25262_1,
    input wire [0:0] in_exitcond28182_0,
    input wire [0:0] in_exitcond28182_1,
    input wire [0:0] in_exitcond2888_pop33292_0,
    input wire [0:0] in_exitcond2888_pop33292_1,
    input wire [0:0] in_exitcond31147_0,
    input wire [0:0] in_exitcond31147_1,
    input wire [0:0] in_exitcond3167_pop22210_0,
    input wire [0:0] in_exitcond3167_pop22210_1,
    input wire [0:0] in_exitcond3168_pop29277_0,
    input wire [0:0] in_exitcond3168_pop29277_1,
    input wire [0:0] in_forked104_0,
    input wire [0:0] in_forked104_1,
    input wire [63:0] in_idxprom25242_0,
    input wire [63:0] in_idxprom25242_1,
    input wire [0:0] in_memdep_phi4_pop28272_0,
    input wire [0:0] in_memdep_phi4_pop28272_1,
    input wire [0:0] in_memdep_phi5_pop21100_pop36302_0,
    input wire [0:0] in_memdep_phi5_pop21100_pop36302_1,
    input wire [0:0] in_memdep_phi5_pop21203_0,
    input wire [0:0] in_memdep_phi5_pop21203_1,
    input wire [0:0] in_memdep_phi6_pop18174_0,
    input wire [0:0] in_memdep_phi6_pop18174_1,
    input wire [0:0] in_memdep_phi6_pop1882_pop25231_0,
    input wire [0:0] in_memdep_phi6_pop1882_pop25231_1,
    input wire [0:0] in_memdep_phi6_pop1883_pop32287_0,
    input wire [0:0] in_memdep_phi6_pop1883_pop32287_1,
    input wire [0:0] in_notcmp46267_0,
    input wire [0:0] in_notcmp46267_1,
    input wire [0:0] in_notcmp51189_0,
    input wire [0:0] in_notcmp51189_1,
    input wire [0:0] in_notcmp5192_pop34297_0,
    input wire [0:0] in_notcmp5192_pop34297_1,
    input wire [0:0] in_notcmp56156_0,
    input wire [0:0] in_notcmp56156_1,
    input wire [0:0] in_notcmp5672_pop23217_0,
    input wire [0:0] in_notcmp5672_pop23217_1,
    input wire [0:0] in_notcmp5673_pop30282_0,
    input wire [0:0] in_notcmp5673_pop30282_1,
    input wire [31:0] in_row_038_pop20196_0,
    input wire [31:0] in_row_038_pop20196_1,
    input wire [31:0] in_row_038_pop2096_pop35232_0,
    input wire [31:0] in_row_038_pop2096_pop35232_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10539,
    output wire [0:0] out_c0_exe11540,
    output wire [63:0] out_c0_exe12541,
    output wire [63:0] out_c0_exe13542,
    output wire [31:0] out_c0_exe14543,
    output wire [0:0] out_c0_exe1530,
    output wire [63:0] out_c0_exe15544,
    output wire [0:0] out_c0_exe16545,
    output wire [0:0] out_c0_exe17546,
    output wire [0:0] out_c0_exe18547,
    output wire [0:0] out_c0_exe20549,
    output wire [0:0] out_c0_exe21550,
    output wire [31:0] out_c0_exe22551,
    output wire [0:0] out_c0_exe23552,
    output wire [0:0] out_c0_exe24553,
    output wire [0:0] out_c0_exe2531,
    output wire [0:0] out_c0_exe25554,
    output wire [31:0] out_c0_exe26555,
    output wire [0:0] out_c0_exe27556,
    output wire [0:0] out_c0_exe28,
    output wire [0:0] out_c0_exe29,
    output wire [31:0] out_c0_exe30,
    output wire [0:0] out_c0_exe31,
    output wire [31:0] out_c0_exe32,
    output wire [31:0] out_c0_exe33,
    output wire [63:0] out_c0_exe34,
    output wire [63:0] out_c0_exe35,
    output wire [31:0] out_c0_exe3532,
    output wire [31:0] out_c0_exe36,
    output wire [63:0] out_c0_exe37,
    output wire [0:0] out_c0_exe38,
    output wire [0:0] out_c0_exe39,
    output wire [0:0] out_c0_exe40,
    output wire [0:0] out_c0_exe41,
    output wire [0:0] out_c0_exe42,
    output wire [0:0] out_c0_exe43,
    output wire [0:0] out_c0_exe44,
    output wire [0:0] out_c0_exe45,
    output wire [0:0] out_c0_exe4533,
    output wire [0:0] out_c0_exe46,
    output wire [0:0] out_c0_exe5534,
    output wire [31:0] out_c0_exe6535,
    output wire [0:0] out_c0_exe7536,
    output wire [0:0] out_c0_exe8537,
    output wire [0:0] out_c0_exe9538,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi3_pop39,
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

    wire [0:0] bb_conv2_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_stall_out;
    wire [0:0] bb_conv2_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_valid_out;
    wire [31:0] bb_conv2_B5_stall_region_out_c0_exe10539;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe11540;
    wire [63:0] bb_conv2_B5_stall_region_out_c0_exe12541;
    wire [63:0] bb_conv2_B5_stall_region_out_c0_exe13542;
    wire [31:0] bb_conv2_B5_stall_region_out_c0_exe14543;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe1530;
    wire [63:0] bb_conv2_B5_stall_region_out_c0_exe15544;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe16545;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe17546;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe18547;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe20549;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe21550;
    wire [31:0] bb_conv2_B5_stall_region_out_c0_exe22551;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe23552;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe24553;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe2531;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe25554;
    wire [31:0] bb_conv2_B5_stall_region_out_c0_exe26555;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe27556;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe28;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe29;
    wire [31:0] bb_conv2_B5_stall_region_out_c0_exe30;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe31;
    wire [31:0] bb_conv2_B5_stall_region_out_c0_exe32;
    wire [31:0] bb_conv2_B5_stall_region_out_c0_exe33;
    wire [63:0] bb_conv2_B5_stall_region_out_c0_exe34;
    wire [63:0] bb_conv2_B5_stall_region_out_c0_exe35;
    wire [31:0] bb_conv2_B5_stall_region_out_c0_exe3532;
    wire [31:0] bb_conv2_B5_stall_region_out_c0_exe36;
    wire [63:0] bb_conv2_B5_stall_region_out_c0_exe37;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe38;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe39;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe40;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe41;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe42;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe43;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe44;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe45;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe4533;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe46;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe5534;
    wire [31:0] bb_conv2_B5_stall_region_out_c0_exe6535;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe7536;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe8537;
    wire [0:0] bb_conv2_B5_stall_region_out_c0_exe9538;
    wire [0:0] bb_conv2_B5_stall_region_out_feedback_stall_out_39;
    wire [0:0] bb_conv2_B5_stall_region_out_memdep_phi3_pop39;
    wire [0:0] bb_conv2_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv2_B5_stall_region_out_stall_out;
    wire [0:0] bb_conv2_B5_stall_region_out_valid_out;
    wire [31:0] conv2_B5_branch_out_c0_exe10539;
    wire [0:0] conv2_B5_branch_out_c0_exe11540;
    wire [63:0] conv2_B5_branch_out_c0_exe12541;
    wire [63:0] conv2_B5_branch_out_c0_exe13542;
    wire [31:0] conv2_B5_branch_out_c0_exe14543;
    wire [0:0] conv2_B5_branch_out_c0_exe1530;
    wire [63:0] conv2_B5_branch_out_c0_exe15544;
    wire [0:0] conv2_B5_branch_out_c0_exe16545;
    wire [0:0] conv2_B5_branch_out_c0_exe17546;
    wire [0:0] conv2_B5_branch_out_c0_exe18547;
    wire [0:0] conv2_B5_branch_out_c0_exe20549;
    wire [0:0] conv2_B5_branch_out_c0_exe21550;
    wire [31:0] conv2_B5_branch_out_c0_exe22551;
    wire [0:0] conv2_B5_branch_out_c0_exe23552;
    wire [0:0] conv2_B5_branch_out_c0_exe24553;
    wire [0:0] conv2_B5_branch_out_c0_exe2531;
    wire [0:0] conv2_B5_branch_out_c0_exe25554;
    wire [31:0] conv2_B5_branch_out_c0_exe26555;
    wire [0:0] conv2_B5_branch_out_c0_exe27556;
    wire [0:0] conv2_B5_branch_out_c0_exe28;
    wire [0:0] conv2_B5_branch_out_c0_exe29;
    wire [31:0] conv2_B5_branch_out_c0_exe30;
    wire [0:0] conv2_B5_branch_out_c0_exe31;
    wire [31:0] conv2_B5_branch_out_c0_exe32;
    wire [31:0] conv2_B5_branch_out_c0_exe33;
    wire [63:0] conv2_B5_branch_out_c0_exe34;
    wire [63:0] conv2_B5_branch_out_c0_exe35;
    wire [31:0] conv2_B5_branch_out_c0_exe3532;
    wire [31:0] conv2_B5_branch_out_c0_exe36;
    wire [63:0] conv2_B5_branch_out_c0_exe37;
    wire [0:0] conv2_B5_branch_out_c0_exe38;
    wire [0:0] conv2_B5_branch_out_c0_exe39;
    wire [0:0] conv2_B5_branch_out_c0_exe40;
    wire [0:0] conv2_B5_branch_out_c0_exe41;
    wire [0:0] conv2_B5_branch_out_c0_exe42;
    wire [0:0] conv2_B5_branch_out_c0_exe43;
    wire [0:0] conv2_B5_branch_out_c0_exe44;
    wire [0:0] conv2_B5_branch_out_c0_exe45;
    wire [0:0] conv2_B5_branch_out_c0_exe4533;
    wire [0:0] conv2_B5_branch_out_c0_exe46;
    wire [0:0] conv2_B5_branch_out_c0_exe5534;
    wire [31:0] conv2_B5_branch_out_c0_exe6535;
    wire [0:0] conv2_B5_branch_out_c0_exe7536;
    wire [0:0] conv2_B5_branch_out_c0_exe8537;
    wire [0:0] conv2_B5_branch_out_c0_exe9538;
    wire [0:0] conv2_B5_branch_out_memdep_phi3_pop39;
    wire [0:0] conv2_B5_branch_out_stall_out;
    wire [0:0] conv2_B5_branch_out_valid_out_0;
    wire [63:0] conv2_B5_merge_out_arrayidx34247;
    wire [63:0] conv2_B5_merge_out_arrayidx64257;
    wire [31:0] conv2_B5_merge_out_channel_039_pop17165;
    wire [31:0] conv2_B5_merge_out_channel_039_pop1777_pop24224;
    wire [31:0] conv2_B5_merge_out_channel_039_pop1778_pop31237;
    wire [31:0] conv2_B5_merge_out_col_037_pop27252;
    wire [0:0] conv2_B5_merge_out_exitcond25262;
    wire [0:0] conv2_B5_merge_out_exitcond28182;
    wire [0:0] conv2_B5_merge_out_exitcond2888_pop33292;
    wire [0:0] conv2_B5_merge_out_exitcond31147;
    wire [0:0] conv2_B5_merge_out_exitcond3167_pop22210;
    wire [0:0] conv2_B5_merge_out_exitcond3168_pop29277;
    wire [0:0] conv2_B5_merge_out_forked104;
    wire [63:0] conv2_B5_merge_out_idxprom25242;
    wire [0:0] conv2_B5_merge_out_memdep_phi4_pop28272;
    wire [0:0] conv2_B5_merge_out_memdep_phi5_pop21100_pop36302;
    wire [0:0] conv2_B5_merge_out_memdep_phi5_pop21203;
    wire [0:0] conv2_B5_merge_out_memdep_phi6_pop18174;
    wire [0:0] conv2_B5_merge_out_memdep_phi6_pop1882_pop25231;
    wire [0:0] conv2_B5_merge_out_memdep_phi6_pop1883_pop32287;
    wire [0:0] conv2_B5_merge_out_notcmp46267;
    wire [0:0] conv2_B5_merge_out_notcmp51189;
    wire [0:0] conv2_B5_merge_out_notcmp5192_pop34297;
    wire [0:0] conv2_B5_merge_out_notcmp56156;
    wire [0:0] conv2_B5_merge_out_notcmp5672_pop23217;
    wire [0:0] conv2_B5_merge_out_notcmp5673_pop30282;
    wire [31:0] conv2_B5_merge_out_row_038_pop20196;
    wire [31:0] conv2_B5_merge_out_row_038_pop2096_pop35232;
    wire [0:0] conv2_B5_merge_out_stall_out_0;
    wire [0:0] conv2_B5_merge_out_stall_out_1;
    wire [0:0] conv2_B5_merge_out_valid_out;


    // conv2_B5_branch(BLACKBOX,3)
    conv2_B5_branch theconv2_B5_branch (
        .in_c0_exe10539(bb_conv2_B5_stall_region_out_c0_exe10539),
        .in_c0_exe11540(bb_conv2_B5_stall_region_out_c0_exe11540),
        .in_c0_exe12541(bb_conv2_B5_stall_region_out_c0_exe12541),
        .in_c0_exe13542(bb_conv2_B5_stall_region_out_c0_exe13542),
        .in_c0_exe14543(bb_conv2_B5_stall_region_out_c0_exe14543),
        .in_c0_exe1530(bb_conv2_B5_stall_region_out_c0_exe1530),
        .in_c0_exe15544(bb_conv2_B5_stall_region_out_c0_exe15544),
        .in_c0_exe16545(bb_conv2_B5_stall_region_out_c0_exe16545),
        .in_c0_exe17546(bb_conv2_B5_stall_region_out_c0_exe17546),
        .in_c0_exe18547(bb_conv2_B5_stall_region_out_c0_exe18547),
        .in_c0_exe20549(bb_conv2_B5_stall_region_out_c0_exe20549),
        .in_c0_exe21550(bb_conv2_B5_stall_region_out_c0_exe21550),
        .in_c0_exe22551(bb_conv2_B5_stall_region_out_c0_exe22551),
        .in_c0_exe23552(bb_conv2_B5_stall_region_out_c0_exe23552),
        .in_c0_exe24553(bb_conv2_B5_stall_region_out_c0_exe24553),
        .in_c0_exe2531(bb_conv2_B5_stall_region_out_c0_exe2531),
        .in_c0_exe25554(bb_conv2_B5_stall_region_out_c0_exe25554),
        .in_c0_exe26555(bb_conv2_B5_stall_region_out_c0_exe26555),
        .in_c0_exe27556(bb_conv2_B5_stall_region_out_c0_exe27556),
        .in_c0_exe28(bb_conv2_B5_stall_region_out_c0_exe28),
        .in_c0_exe29(bb_conv2_B5_stall_region_out_c0_exe29),
        .in_c0_exe30(bb_conv2_B5_stall_region_out_c0_exe30),
        .in_c0_exe31(bb_conv2_B5_stall_region_out_c0_exe31),
        .in_c0_exe32(bb_conv2_B5_stall_region_out_c0_exe32),
        .in_c0_exe33(bb_conv2_B5_stall_region_out_c0_exe33),
        .in_c0_exe34(bb_conv2_B5_stall_region_out_c0_exe34),
        .in_c0_exe35(bb_conv2_B5_stall_region_out_c0_exe35),
        .in_c0_exe3532(bb_conv2_B5_stall_region_out_c0_exe3532),
        .in_c0_exe36(bb_conv2_B5_stall_region_out_c0_exe36),
        .in_c0_exe37(bb_conv2_B5_stall_region_out_c0_exe37),
        .in_c0_exe38(bb_conv2_B5_stall_region_out_c0_exe38),
        .in_c0_exe39(bb_conv2_B5_stall_region_out_c0_exe39),
        .in_c0_exe40(bb_conv2_B5_stall_region_out_c0_exe40),
        .in_c0_exe41(bb_conv2_B5_stall_region_out_c0_exe41),
        .in_c0_exe42(bb_conv2_B5_stall_region_out_c0_exe42),
        .in_c0_exe43(bb_conv2_B5_stall_region_out_c0_exe43),
        .in_c0_exe44(bb_conv2_B5_stall_region_out_c0_exe44),
        .in_c0_exe45(bb_conv2_B5_stall_region_out_c0_exe45),
        .in_c0_exe4533(bb_conv2_B5_stall_region_out_c0_exe4533),
        .in_c0_exe46(bb_conv2_B5_stall_region_out_c0_exe46),
        .in_c0_exe5534(bb_conv2_B5_stall_region_out_c0_exe5534),
        .in_c0_exe6535(bb_conv2_B5_stall_region_out_c0_exe6535),
        .in_c0_exe7536(bb_conv2_B5_stall_region_out_c0_exe7536),
        .in_c0_exe8537(bb_conv2_B5_stall_region_out_c0_exe8537),
        .in_c0_exe9538(bb_conv2_B5_stall_region_out_c0_exe9538),
        .in_memdep_phi3_pop39(bb_conv2_B5_stall_region_out_memdep_phi3_pop39),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv2_B5_stall_region_out_valid_out),
        .out_c0_exe10539(conv2_B5_branch_out_c0_exe10539),
        .out_c0_exe11540(conv2_B5_branch_out_c0_exe11540),
        .out_c0_exe12541(conv2_B5_branch_out_c0_exe12541),
        .out_c0_exe13542(conv2_B5_branch_out_c0_exe13542),
        .out_c0_exe14543(conv2_B5_branch_out_c0_exe14543),
        .out_c0_exe1530(conv2_B5_branch_out_c0_exe1530),
        .out_c0_exe15544(conv2_B5_branch_out_c0_exe15544),
        .out_c0_exe16545(conv2_B5_branch_out_c0_exe16545),
        .out_c0_exe17546(conv2_B5_branch_out_c0_exe17546),
        .out_c0_exe18547(conv2_B5_branch_out_c0_exe18547),
        .out_c0_exe20549(conv2_B5_branch_out_c0_exe20549),
        .out_c0_exe21550(conv2_B5_branch_out_c0_exe21550),
        .out_c0_exe22551(conv2_B5_branch_out_c0_exe22551),
        .out_c0_exe23552(conv2_B5_branch_out_c0_exe23552),
        .out_c0_exe24553(conv2_B5_branch_out_c0_exe24553),
        .out_c0_exe2531(conv2_B5_branch_out_c0_exe2531),
        .out_c0_exe25554(conv2_B5_branch_out_c0_exe25554),
        .out_c0_exe26555(conv2_B5_branch_out_c0_exe26555),
        .out_c0_exe27556(conv2_B5_branch_out_c0_exe27556),
        .out_c0_exe28(conv2_B5_branch_out_c0_exe28),
        .out_c0_exe29(conv2_B5_branch_out_c0_exe29),
        .out_c0_exe30(conv2_B5_branch_out_c0_exe30),
        .out_c0_exe31(conv2_B5_branch_out_c0_exe31),
        .out_c0_exe32(conv2_B5_branch_out_c0_exe32),
        .out_c0_exe33(conv2_B5_branch_out_c0_exe33),
        .out_c0_exe34(conv2_B5_branch_out_c0_exe34),
        .out_c0_exe35(conv2_B5_branch_out_c0_exe35),
        .out_c0_exe3532(conv2_B5_branch_out_c0_exe3532),
        .out_c0_exe36(conv2_B5_branch_out_c0_exe36),
        .out_c0_exe37(conv2_B5_branch_out_c0_exe37),
        .out_c0_exe38(conv2_B5_branch_out_c0_exe38),
        .out_c0_exe39(conv2_B5_branch_out_c0_exe39),
        .out_c0_exe40(conv2_B5_branch_out_c0_exe40),
        .out_c0_exe41(conv2_B5_branch_out_c0_exe41),
        .out_c0_exe42(conv2_B5_branch_out_c0_exe42),
        .out_c0_exe43(conv2_B5_branch_out_c0_exe43),
        .out_c0_exe44(conv2_B5_branch_out_c0_exe44),
        .out_c0_exe45(conv2_B5_branch_out_c0_exe45),
        .out_c0_exe4533(conv2_B5_branch_out_c0_exe4533),
        .out_c0_exe46(conv2_B5_branch_out_c0_exe46),
        .out_c0_exe5534(conv2_B5_branch_out_c0_exe5534),
        .out_c0_exe6535(conv2_B5_branch_out_c0_exe6535),
        .out_c0_exe7536(conv2_B5_branch_out_c0_exe7536),
        .out_c0_exe8537(conv2_B5_branch_out_c0_exe8537),
        .out_c0_exe9538(conv2_B5_branch_out_c0_exe9538),
        .out_memdep_phi3_pop39(conv2_B5_branch_out_memdep_phi3_pop39),
        .out_stall_out(conv2_B5_branch_out_stall_out),
        .out_valid_out_0(conv2_B5_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // conv2_B5_merge(BLACKBOX,4)
    conv2_B5_merge theconv2_B5_merge (
        .in_arrayidx34247_0(in_arrayidx34247_0),
        .in_arrayidx34247_1(in_arrayidx34247_1),
        .in_arrayidx64257_0(in_arrayidx64257_0),
        .in_arrayidx64257_1(in_arrayidx64257_1),
        .in_channel_039_pop17165_0(in_channel_039_pop17165_0),
        .in_channel_039_pop17165_1(in_channel_039_pop17165_1),
        .in_channel_039_pop1777_pop24224_0(in_channel_039_pop1777_pop24224_0),
        .in_channel_039_pop1777_pop24224_1(in_channel_039_pop1777_pop24224_1),
        .in_channel_039_pop1778_pop31237_0(in_channel_039_pop1778_pop31237_0),
        .in_channel_039_pop1778_pop31237_1(in_channel_039_pop1778_pop31237_1),
        .in_col_037_pop27252_0(in_col_037_pop27252_0),
        .in_col_037_pop27252_1(in_col_037_pop27252_1),
        .in_exitcond25262_0(in_exitcond25262_0),
        .in_exitcond25262_1(in_exitcond25262_1),
        .in_exitcond28182_0(in_exitcond28182_0),
        .in_exitcond28182_1(in_exitcond28182_1),
        .in_exitcond2888_pop33292_0(in_exitcond2888_pop33292_0),
        .in_exitcond2888_pop33292_1(in_exitcond2888_pop33292_1),
        .in_exitcond31147_0(in_exitcond31147_0),
        .in_exitcond31147_1(in_exitcond31147_1),
        .in_exitcond3167_pop22210_0(in_exitcond3167_pop22210_0),
        .in_exitcond3167_pop22210_1(in_exitcond3167_pop22210_1),
        .in_exitcond3168_pop29277_0(in_exitcond3168_pop29277_0),
        .in_exitcond3168_pop29277_1(in_exitcond3168_pop29277_1),
        .in_forked104_0(in_forked104_0),
        .in_forked104_1(in_forked104_1),
        .in_idxprom25242_0(in_idxprom25242_0),
        .in_idxprom25242_1(in_idxprom25242_1),
        .in_memdep_phi4_pop28272_0(in_memdep_phi4_pop28272_0),
        .in_memdep_phi4_pop28272_1(in_memdep_phi4_pop28272_1),
        .in_memdep_phi5_pop21100_pop36302_0(in_memdep_phi5_pop21100_pop36302_0),
        .in_memdep_phi5_pop21100_pop36302_1(in_memdep_phi5_pop21100_pop36302_1),
        .in_memdep_phi5_pop21203_0(in_memdep_phi5_pop21203_0),
        .in_memdep_phi5_pop21203_1(in_memdep_phi5_pop21203_1),
        .in_memdep_phi6_pop18174_0(in_memdep_phi6_pop18174_0),
        .in_memdep_phi6_pop18174_1(in_memdep_phi6_pop18174_1),
        .in_memdep_phi6_pop1882_pop25231_0(in_memdep_phi6_pop1882_pop25231_0),
        .in_memdep_phi6_pop1882_pop25231_1(in_memdep_phi6_pop1882_pop25231_1),
        .in_memdep_phi6_pop1883_pop32287_0(in_memdep_phi6_pop1883_pop32287_0),
        .in_memdep_phi6_pop1883_pop32287_1(in_memdep_phi6_pop1883_pop32287_1),
        .in_notcmp46267_0(in_notcmp46267_0),
        .in_notcmp46267_1(in_notcmp46267_1),
        .in_notcmp51189_0(in_notcmp51189_0),
        .in_notcmp51189_1(in_notcmp51189_1),
        .in_notcmp5192_pop34297_0(in_notcmp5192_pop34297_0),
        .in_notcmp5192_pop34297_1(in_notcmp5192_pop34297_1),
        .in_notcmp56156_0(in_notcmp56156_0),
        .in_notcmp56156_1(in_notcmp56156_1),
        .in_notcmp5672_pop23217_0(in_notcmp5672_pop23217_0),
        .in_notcmp5672_pop23217_1(in_notcmp5672_pop23217_1),
        .in_notcmp5673_pop30282_0(in_notcmp5673_pop30282_0),
        .in_notcmp5673_pop30282_1(in_notcmp5673_pop30282_1),
        .in_row_038_pop20196_0(in_row_038_pop20196_0),
        .in_row_038_pop20196_1(in_row_038_pop20196_1),
        .in_row_038_pop2096_pop35232_0(in_row_038_pop2096_pop35232_0),
        .in_row_038_pop2096_pop35232_1(in_row_038_pop2096_pop35232_1),
        .in_stall_in(bb_conv2_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_arrayidx34247(conv2_B5_merge_out_arrayidx34247),
        .out_arrayidx64257(conv2_B5_merge_out_arrayidx64257),
        .out_channel_039_pop17165(conv2_B5_merge_out_channel_039_pop17165),
        .out_channel_039_pop1777_pop24224(conv2_B5_merge_out_channel_039_pop1777_pop24224),
        .out_channel_039_pop1778_pop31237(conv2_B5_merge_out_channel_039_pop1778_pop31237),
        .out_col_037_pop27252(conv2_B5_merge_out_col_037_pop27252),
        .out_exitcond25262(conv2_B5_merge_out_exitcond25262),
        .out_exitcond28182(conv2_B5_merge_out_exitcond28182),
        .out_exitcond2888_pop33292(conv2_B5_merge_out_exitcond2888_pop33292),
        .out_exitcond31147(conv2_B5_merge_out_exitcond31147),
        .out_exitcond3167_pop22210(conv2_B5_merge_out_exitcond3167_pop22210),
        .out_exitcond3168_pop29277(conv2_B5_merge_out_exitcond3168_pop29277),
        .out_forked104(conv2_B5_merge_out_forked104),
        .out_idxprom25242(conv2_B5_merge_out_idxprom25242),
        .out_memdep_phi4_pop28272(conv2_B5_merge_out_memdep_phi4_pop28272),
        .out_memdep_phi5_pop21100_pop36302(conv2_B5_merge_out_memdep_phi5_pop21100_pop36302),
        .out_memdep_phi5_pop21203(conv2_B5_merge_out_memdep_phi5_pop21203),
        .out_memdep_phi6_pop18174(conv2_B5_merge_out_memdep_phi6_pop18174),
        .out_memdep_phi6_pop1882_pop25231(conv2_B5_merge_out_memdep_phi6_pop1882_pop25231),
        .out_memdep_phi6_pop1883_pop32287(conv2_B5_merge_out_memdep_phi6_pop1883_pop32287),
        .out_notcmp46267(conv2_B5_merge_out_notcmp46267),
        .out_notcmp51189(conv2_B5_merge_out_notcmp51189),
        .out_notcmp5192_pop34297(conv2_B5_merge_out_notcmp5192_pop34297),
        .out_notcmp56156(conv2_B5_merge_out_notcmp56156),
        .out_notcmp5672_pop23217(conv2_B5_merge_out_notcmp5672_pop23217),
        .out_notcmp5673_pop30282(conv2_B5_merge_out_notcmp5673_pop30282),
        .out_row_038_pop20196(conv2_B5_merge_out_row_038_pop20196),
        .out_row_038_pop2096_pop35232(conv2_B5_merge_out_row_038_pop2096_pop35232),
        .out_stall_out_0(conv2_B5_merge_out_stall_out_0),
        .out_stall_out_1(conv2_B5_merge_out_stall_out_1),
        .out_valid_out(conv2_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv2_B5_stall_region(BLACKBOX,2)
    conv2_bb_B5_stall_region thebb_conv2_B5_stall_region (
        .in_arrayidx34247(conv2_B5_merge_out_arrayidx34247),
        .in_arrayidx64257(conv2_B5_merge_out_arrayidx64257),
        .in_channel_039_pop17165(conv2_B5_merge_out_channel_039_pop17165),
        .in_channel_039_pop1777_pop24224(conv2_B5_merge_out_channel_039_pop1777_pop24224),
        .in_channel_039_pop1778_pop31237(conv2_B5_merge_out_channel_039_pop1778_pop31237),
        .in_col_037_pop27252(conv2_B5_merge_out_col_037_pop27252),
        .in_exitcond25262(conv2_B5_merge_out_exitcond25262),
        .in_exitcond28182(conv2_B5_merge_out_exitcond28182),
        .in_exitcond2888_pop33292(conv2_B5_merge_out_exitcond2888_pop33292),
        .in_exitcond31147(conv2_B5_merge_out_exitcond31147),
        .in_exitcond3167_pop22210(conv2_B5_merge_out_exitcond3167_pop22210),
        .in_exitcond3168_pop29277(conv2_B5_merge_out_exitcond3168_pop29277),
        .in_feedback_in_39(in_feedback_in_39),
        .in_feedback_valid_in_39(in_feedback_valid_in_39),
        .in_forked104(conv2_B5_merge_out_forked104),
        .in_idxprom25242(conv2_B5_merge_out_idxprom25242),
        .in_memdep_phi4_pop28272(conv2_B5_merge_out_memdep_phi4_pop28272),
        .in_memdep_phi5_pop21100_pop36302(conv2_B5_merge_out_memdep_phi5_pop21100_pop36302),
        .in_memdep_phi5_pop21203(conv2_B5_merge_out_memdep_phi5_pop21203),
        .in_memdep_phi6_pop18174(conv2_B5_merge_out_memdep_phi6_pop18174),
        .in_memdep_phi6_pop1882_pop25231(conv2_B5_merge_out_memdep_phi6_pop1882_pop25231),
        .in_memdep_phi6_pop1883_pop32287(conv2_B5_merge_out_memdep_phi6_pop1883_pop32287),
        .in_notcmp46267(conv2_B5_merge_out_notcmp46267),
        .in_notcmp51189(conv2_B5_merge_out_notcmp51189),
        .in_notcmp5192_pop34297(conv2_B5_merge_out_notcmp5192_pop34297),
        .in_notcmp56156(conv2_B5_merge_out_notcmp56156),
        .in_notcmp5672_pop23217(conv2_B5_merge_out_notcmp5672_pop23217),
        .in_notcmp5673_pop30282(conv2_B5_merge_out_notcmp5673_pop30282),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_row_038_pop20196(conv2_B5_merge_out_row_038_pop20196),
        .in_row_038_pop2096_pop35232(conv2_B5_merge_out_row_038_pop2096_pop35232),
        .in_stall_in(conv2_B5_branch_out_stall_out),
        .in_valid_in(conv2_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_stall_out(bb_conv2_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_valid_out(bb_conv2_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_valid_out),
        .out_c0_exe10539(bb_conv2_B5_stall_region_out_c0_exe10539),
        .out_c0_exe11540(bb_conv2_B5_stall_region_out_c0_exe11540),
        .out_c0_exe12541(bb_conv2_B5_stall_region_out_c0_exe12541),
        .out_c0_exe13542(bb_conv2_B5_stall_region_out_c0_exe13542),
        .out_c0_exe14543(bb_conv2_B5_stall_region_out_c0_exe14543),
        .out_c0_exe1530(bb_conv2_B5_stall_region_out_c0_exe1530),
        .out_c0_exe15544(bb_conv2_B5_stall_region_out_c0_exe15544),
        .out_c0_exe16545(bb_conv2_B5_stall_region_out_c0_exe16545),
        .out_c0_exe17546(bb_conv2_B5_stall_region_out_c0_exe17546),
        .out_c0_exe18547(bb_conv2_B5_stall_region_out_c0_exe18547),
        .out_c0_exe20549(bb_conv2_B5_stall_region_out_c0_exe20549),
        .out_c0_exe21550(bb_conv2_B5_stall_region_out_c0_exe21550),
        .out_c0_exe22551(bb_conv2_B5_stall_region_out_c0_exe22551),
        .out_c0_exe23552(bb_conv2_B5_stall_region_out_c0_exe23552),
        .out_c0_exe24553(bb_conv2_B5_stall_region_out_c0_exe24553),
        .out_c0_exe2531(bb_conv2_B5_stall_region_out_c0_exe2531),
        .out_c0_exe25554(bb_conv2_B5_stall_region_out_c0_exe25554),
        .out_c0_exe26555(bb_conv2_B5_stall_region_out_c0_exe26555),
        .out_c0_exe27556(bb_conv2_B5_stall_region_out_c0_exe27556),
        .out_c0_exe28(bb_conv2_B5_stall_region_out_c0_exe28),
        .out_c0_exe29(bb_conv2_B5_stall_region_out_c0_exe29),
        .out_c0_exe30(bb_conv2_B5_stall_region_out_c0_exe30),
        .out_c0_exe31(bb_conv2_B5_stall_region_out_c0_exe31),
        .out_c0_exe32(bb_conv2_B5_stall_region_out_c0_exe32),
        .out_c0_exe33(bb_conv2_B5_stall_region_out_c0_exe33),
        .out_c0_exe34(bb_conv2_B5_stall_region_out_c0_exe34),
        .out_c0_exe35(bb_conv2_B5_stall_region_out_c0_exe35),
        .out_c0_exe3532(bb_conv2_B5_stall_region_out_c0_exe3532),
        .out_c0_exe36(bb_conv2_B5_stall_region_out_c0_exe36),
        .out_c0_exe37(bb_conv2_B5_stall_region_out_c0_exe37),
        .out_c0_exe38(bb_conv2_B5_stall_region_out_c0_exe38),
        .out_c0_exe39(bb_conv2_B5_stall_region_out_c0_exe39),
        .out_c0_exe40(bb_conv2_B5_stall_region_out_c0_exe40),
        .out_c0_exe41(bb_conv2_B5_stall_region_out_c0_exe41),
        .out_c0_exe42(bb_conv2_B5_stall_region_out_c0_exe42),
        .out_c0_exe43(bb_conv2_B5_stall_region_out_c0_exe43),
        .out_c0_exe44(bb_conv2_B5_stall_region_out_c0_exe44),
        .out_c0_exe45(bb_conv2_B5_stall_region_out_c0_exe45),
        .out_c0_exe4533(bb_conv2_B5_stall_region_out_c0_exe4533),
        .out_c0_exe46(bb_conv2_B5_stall_region_out_c0_exe46),
        .out_c0_exe5534(bb_conv2_B5_stall_region_out_c0_exe5534),
        .out_c0_exe6535(bb_conv2_B5_stall_region_out_c0_exe6535),
        .out_c0_exe7536(bb_conv2_B5_stall_region_out_c0_exe7536),
        .out_c0_exe8537(bb_conv2_B5_stall_region_out_c0_exe8537),
        .out_c0_exe9538(bb_conv2_B5_stall_region_out_c0_exe9538),
        .out_feedback_stall_out_39(bb_conv2_B5_stall_region_out_feedback_stall_out_39),
        .out_memdep_phi3_pop39(bb_conv2_B5_stall_region_out_memdep_phi3_pop39),
        .out_pipeline_valid_out(bb_conv2_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv2_B5_stall_region_out_stall_out),
        .out_valid_out(bb_conv2_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_39_sync(GPOUT,6)
    assign out_feedback_stall_out_39 = bb_conv2_B5_stall_region_out_feedback_stall_out_39;

    // out_c0_exe10539(GPOUT,67)
    assign out_c0_exe10539 = conv2_B5_branch_out_c0_exe10539;

    // out_c0_exe11540(GPOUT,68)
    assign out_c0_exe11540 = conv2_B5_branch_out_c0_exe11540;

    // out_c0_exe12541(GPOUT,69)
    assign out_c0_exe12541 = conv2_B5_branch_out_c0_exe12541;

    // out_c0_exe13542(GPOUT,70)
    assign out_c0_exe13542 = conv2_B5_branch_out_c0_exe13542;

    // out_c0_exe14543(GPOUT,71)
    assign out_c0_exe14543 = conv2_B5_branch_out_c0_exe14543;

    // out_c0_exe1530(GPOUT,72)
    assign out_c0_exe1530 = conv2_B5_branch_out_c0_exe1530;

    // out_c0_exe15544(GPOUT,73)
    assign out_c0_exe15544 = conv2_B5_branch_out_c0_exe15544;

    // out_c0_exe16545(GPOUT,74)
    assign out_c0_exe16545 = conv2_B5_branch_out_c0_exe16545;

    // out_c0_exe17546(GPOUT,75)
    assign out_c0_exe17546 = conv2_B5_branch_out_c0_exe17546;

    // out_c0_exe18547(GPOUT,76)
    assign out_c0_exe18547 = conv2_B5_branch_out_c0_exe18547;

    // out_c0_exe20549(GPOUT,77)
    assign out_c0_exe20549 = conv2_B5_branch_out_c0_exe20549;

    // out_c0_exe21550(GPOUT,78)
    assign out_c0_exe21550 = conv2_B5_branch_out_c0_exe21550;

    // out_c0_exe22551(GPOUT,79)
    assign out_c0_exe22551 = conv2_B5_branch_out_c0_exe22551;

    // out_c0_exe23552(GPOUT,80)
    assign out_c0_exe23552 = conv2_B5_branch_out_c0_exe23552;

    // out_c0_exe24553(GPOUT,81)
    assign out_c0_exe24553 = conv2_B5_branch_out_c0_exe24553;

    // out_c0_exe2531(GPOUT,82)
    assign out_c0_exe2531 = conv2_B5_branch_out_c0_exe2531;

    // out_c0_exe25554(GPOUT,83)
    assign out_c0_exe25554 = conv2_B5_branch_out_c0_exe25554;

    // out_c0_exe26555(GPOUT,84)
    assign out_c0_exe26555 = conv2_B5_branch_out_c0_exe26555;

    // out_c0_exe27556(GPOUT,85)
    assign out_c0_exe27556 = conv2_B5_branch_out_c0_exe27556;

    // out_c0_exe28(GPOUT,86)
    assign out_c0_exe28 = conv2_B5_branch_out_c0_exe28;

    // out_c0_exe29(GPOUT,87)
    assign out_c0_exe29 = conv2_B5_branch_out_c0_exe29;

    // out_c0_exe30(GPOUT,88)
    assign out_c0_exe30 = conv2_B5_branch_out_c0_exe30;

    // out_c0_exe31(GPOUT,89)
    assign out_c0_exe31 = conv2_B5_branch_out_c0_exe31;

    // out_c0_exe32(GPOUT,90)
    assign out_c0_exe32 = conv2_B5_branch_out_c0_exe32;

    // out_c0_exe33(GPOUT,91)
    assign out_c0_exe33 = conv2_B5_branch_out_c0_exe33;

    // out_c0_exe34(GPOUT,92)
    assign out_c0_exe34 = conv2_B5_branch_out_c0_exe34;

    // out_c0_exe35(GPOUT,93)
    assign out_c0_exe35 = conv2_B5_branch_out_c0_exe35;

    // out_c0_exe3532(GPOUT,94)
    assign out_c0_exe3532 = conv2_B5_branch_out_c0_exe3532;

    // out_c0_exe36(GPOUT,95)
    assign out_c0_exe36 = conv2_B5_branch_out_c0_exe36;

    // out_c0_exe37(GPOUT,96)
    assign out_c0_exe37 = conv2_B5_branch_out_c0_exe37;

    // out_c0_exe38(GPOUT,97)
    assign out_c0_exe38 = conv2_B5_branch_out_c0_exe38;

    // out_c0_exe39(GPOUT,98)
    assign out_c0_exe39 = conv2_B5_branch_out_c0_exe39;

    // out_c0_exe40(GPOUT,99)
    assign out_c0_exe40 = conv2_B5_branch_out_c0_exe40;

    // out_c0_exe41(GPOUT,100)
    assign out_c0_exe41 = conv2_B5_branch_out_c0_exe41;

    // out_c0_exe42(GPOUT,101)
    assign out_c0_exe42 = conv2_B5_branch_out_c0_exe42;

    // out_c0_exe43(GPOUT,102)
    assign out_c0_exe43 = conv2_B5_branch_out_c0_exe43;

    // out_c0_exe44(GPOUT,103)
    assign out_c0_exe44 = conv2_B5_branch_out_c0_exe44;

    // out_c0_exe45(GPOUT,104)
    assign out_c0_exe45 = conv2_B5_branch_out_c0_exe45;

    // out_c0_exe4533(GPOUT,105)
    assign out_c0_exe4533 = conv2_B5_branch_out_c0_exe4533;

    // out_c0_exe46(GPOUT,106)
    assign out_c0_exe46 = conv2_B5_branch_out_c0_exe46;

    // out_c0_exe5534(GPOUT,107)
    assign out_c0_exe5534 = conv2_B5_branch_out_c0_exe5534;

    // out_c0_exe6535(GPOUT,108)
    assign out_c0_exe6535 = conv2_B5_branch_out_c0_exe6535;

    // out_c0_exe7536(GPOUT,109)
    assign out_c0_exe7536 = conv2_B5_branch_out_c0_exe7536;

    // out_c0_exe8537(GPOUT,110)
    assign out_c0_exe8537 = conv2_B5_branch_out_c0_exe8537;

    // out_c0_exe9538(GPOUT,111)
    assign out_c0_exe9538 = conv2_B5_branch_out_c0_exe9538;

    // out_exiting_stall_out(GPOUT,112)
    assign out_exiting_stall_out = bb_conv2_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,113)
    assign out_exiting_valid_out = bb_conv2_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_conv22_exiting_valid_out;

    // out_memdep_phi3_pop39(GPOUT,114)
    assign out_memdep_phi3_pop39 = conv2_B5_branch_out_memdep_phi3_pop39;

    // out_stall_out_0(GPOUT,115)
    assign out_stall_out_0 = conv2_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,116)
    assign out_stall_out_1 = conv2_B5_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,117)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,118)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,119)
    assign out_valid_out_0 = conv2_B5_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,121)
    assign out_pipeline_valid_out = bb_conv2_B5_stall_region_out_pipeline_valid_out;

endmodule
