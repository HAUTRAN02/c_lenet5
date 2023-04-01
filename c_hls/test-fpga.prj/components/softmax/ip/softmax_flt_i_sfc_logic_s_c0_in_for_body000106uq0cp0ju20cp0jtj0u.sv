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

// SystemVerilog created from flt_i_sfc_logic_s_c0_in_for_body3_softmaxs_c0_enter333_softmax0_expBlock_typeSFloatIEEE_23_8_typeSFloatIEEE_23_8_383ibb21h82deedqgdwhfwtc063065063663c65c62i65i63o63u60763760j63p602c3e60k62ki5w623643c0uq5ux5gv8yll5gvbyxk5id06uq0cp0ju20cp0jtj0u
// Created for function/kernel softmax
// SystemVerilog created on Sat Apr  1 13:10:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module softmax_flt_i_sfc_logic_s_c0_in_for_body000106uq0cp0ju20cp0jtj0u (
    input wire [31:0] in_0,
    output wire [31:0] out_primWireOut,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [7:0] expX_uid6_block_rsrvd_fix_b;
    wire [0:0] signX_uid7_block_rsrvd_fix_b;
    wire [22:0] fracX_uid8_block_rsrvd_fix_b;
    wire [7:0] cstBias_uid9_block_rsrvd_fix_q;
    wire [7:0] cstZeroWE_uid14_block_rsrvd_fix_q;
    wire [8:0] cstZeroWEP1_uid15_block_rsrvd_fix_q;
    wire [7:0] cstBiasPWE_uid16_block_rsrvd_fix_q;
    wire [7:0] cstAllOWE_uid17_block_rsrvd_fix_q;
    wire [22:0] cstZeroWF_uid18_block_rsrvd_fix_q;
    wire [0:0] excZ_x_uid22_block_rsrvd_fix_qi;
    reg [0:0] excZ_x_uid22_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid23_block_rsrvd_fix_qi;
    reg [0:0] expXIsMax_uid23_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid24_block_rsrvd_fix_qi;
    reg [0:0] fracXIsZero_uid24_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid25_block_rsrvd_fix_q;
    wire [0:0] excI_x_uid26_block_rsrvd_fix_qi;
    reg [0:0] excI_x_uid26_block_rsrvd_fix_q;
    wire [0:0] excN_x_uid27_block_rsrvd_fix_qi;
    reg [0:0] excN_x_uid27_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid28_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid29_block_rsrvd_fix_q;
    wire [0:0] excR_x_uid30_block_rsrvd_fix_qi;
    reg [0:0] excR_x_uid30_block_rsrvd_fix_q;
    wire [5:0] cstBiasPWE_uid31_block_rsrvd_fix_q;
    wire [23:0] oFracX_uid32_block_rsrvd_fix_q;
    wire [24:0] oFracX_uid33_block_rsrvd_fix_q;
    wire [24:0] onesCmpFxpInX_uid34_block_rsrvd_fix_b;
    wire [24:0] onesCmpFxpInX_uid34_block_rsrvd_fix_qi;
    reg [24:0] onesCmpFxpInX_uid34_block_rsrvd_fix_q;
    wire [25:0] fxpInExtX_uid35_block_rsrvd_fix_a;
    wire [25:0] fxpInExtX_uid35_block_rsrvd_fix_b;
    logic [25:0] fxpInExtX_uid35_block_rsrvd_fix_o;
    wire [25:0] fxpInExtX_uid35_block_rsrvd_fix_q;
    wire [24:0] fxpInPreAlign_uid36_block_rsrvd_fix_in;
    wire [24:0] fxpInPreAlign_uid36_block_rsrvd_fix_b;
    wire [36:0] oFracXZwE_uid39_block_rsrvd_fix_q;
    wire [8:0] shiftValuePreSat_uid41_block_rsrvd_fix_a;
    wire [8:0] shiftValuePreSat_uid41_block_rsrvd_fix_b;
    logic [8:0] shiftValuePreSat_uid41_block_rsrvd_fix_o;
    wire [8:0] shiftValuePreSat_uid41_block_rsrvd_fix_q;
    wire [0:0] expOvfInitial_uid42_block_rsrvd_fix_b;
    wire [10:0] shiftUdf_uid43_block_rsrvd_fix_a;
    wire [10:0] shiftUdf_uid43_block_rsrvd_fix_b;
    logic [10:0] shiftUdf_uid43_block_rsrvd_fix_o;
    wire [0:0] shiftUdf_uid43_block_rsrvd_fix_n;
    wire [5:0] shiftValuePreSatRed_uid44_block_rsrvd_fix_in;
    wire [5:0] shiftValuePreSatRed_uid44_block_rsrvd_fix_b;
    wire [0:0] shiftVal_uid45_block_rsrvd_fix_s;
    reg [5:0] shiftVal_uid45_block_rsrvd_fix_q;
    wire [10:0] topRangeFxpEPreRnd_uid46_block_rsrvd_fix_b;
    wire [33:0] oFracXZwE_uid52_block_rsrvd_fix_q;
    wire [33:0] onesCmpFxpIn_uid53_block_rsrvd_fix_b;
    wire [33:0] onesCmpFxpIn_uid53_block_rsrvd_fix_qi;
    reg [33:0] onesCmpFxpIn_uid53_block_rsrvd_fix_q;
    wire [34:0] fxpInExt_uid54_block_rsrvd_fix_a;
    wire [34:0] fxpInExt_uid54_block_rsrvd_fix_b;
    logic [34:0] fxpInExt_uid54_block_rsrvd_fix_o;
    wire [34:0] fxpInExt_uid54_block_rsrvd_fix_q;
    wire [33:0] fxpInPreAlign_uid55_block_rsrvd_fix_in;
    wire [33:0] fxpInPreAlign_uid55_block_rsrvd_fix_b;
    wire [41:0] aPostPad_uid63_block_rsrvd_fix_q;
    wire [43:0] yExt_uid64_block_rsrvd_fix_a;
    wire [43:0] yExt_uid64_block_rsrvd_fix_b;
    logic [43:0] yExt_uid64_block_rsrvd_fix_o;
    wire [43:0] yExt_uid64_block_rsrvd_fix_q;
    wire [0:0] msbUYExt_uid65_block_rsrvd_fix_b;
    wire [25:0] zY_uid66_block_rsrvd_fix_q;
    wire [31:0] yRed_uid67_block_rsrvd_fix_in;
    wire [25:0] yRed_uid67_block_rsrvd_fix_b;
    wire [0:0] yRedPostMux_uid68_block_rsrvd_fix_s;
    reg [25:0] yRedPostMux_uid68_block_rsrvd_fix_q;
    wire [28:0] peOR_uid73_block_rsrvd_fix_in;
    wire [23:0] peOR_uid73_block_rsrvd_fix_b;
    wire [29:0] peORExpInc_uid74_block_rsrvd_fix_in;
    wire [0:0] peORExpInc_uid74_block_rsrvd_fix_b;
    wire [12:0] expRPostBiasPreExc0_uid75_block_rsrvd_fix_a;
    wire [12:0] expRPostBiasPreExc0_uid75_block_rsrvd_fix_b;
    logic [12:0] expRPostBiasPreExc0_uid75_block_rsrvd_fix_o;
    wire [11:0] expRPostBiasPreExc0_uid75_block_rsrvd_fix_q;
    wire [13:0] expRPostBiasPreExc_uid76_block_rsrvd_fix_a;
    wire [13:0] expRPostBiasPreExc_uid76_block_rsrvd_fix_b;
    logic [13:0] expRPostBiasPreExc_uid76_block_rsrvd_fix_o;
    wire [12:0] expRPostBiasPreExc_uid76_block_rsrvd_fix_q;
    wire [22:0] fracR_uid77_block_rsrvd_fix_in;
    wire [22:0] fracR_uid77_block_rsrvd_fix_b;
    wire [14:0] expUdf_uid78_block_rsrvd_fix_a;
    wire [14:0] expUdf_uid78_block_rsrvd_fix_b;
    logic [14:0] expUdf_uid78_block_rsrvd_fix_o;
    wire [0:0] expUdf_uid78_block_rsrvd_fix_n;
    wire [14:0] expOvf_uid80_block_rsrvd_fix_a;
    wire [14:0] expOvf_uid80_block_rsrvd_fix_b;
    logic [14:0] expOvf_uid80_block_rsrvd_fix_o;
    wire [0:0] expOvf_uid80_block_rsrvd_fix_n;
    wire [7:0] expR_uid81_block_rsrvd_fix_in;
    wire [7:0] expR_uid81_block_rsrvd_fix_b;
    wire [0:0] negInf_uid82_block_rsrvd_fix_q;
    wire [0:0] regXAndExpOverflowAndNeg_uid83_block_rsrvd_fix_q;
    wire [0:0] invExpOvfInitial_uid84_block_rsrvd_fix_q;
    wire [0:0] regXAndUdf_uid85_block_rsrvd_fix_q;
    wire [0:0] excRZero_uid86_block_rsrvd_fix_qi;
    reg [0:0] excRZero_uid86_block_rsrvd_fix_q;
    wire [0:0] invSignX_uid87_block_rsrvd_fix_q;
    wire [0:0] regXAndExpOverflowAndPos_uid88_block_rsrvd_fix_q;
    wire [0:0] regInAndOvf_uid90_block_rsrvd_fix_q;
    wire [0:0] posInf_uid92_block_rsrvd_fix_q;
    wire [0:0] excRInf_uid93_block_rsrvd_fix_qi;
    reg [0:0] excRInf_uid93_block_rsrvd_fix_q;
    wire [2:0] concExc_uid94_block_rsrvd_fix_q;
    reg [1:0] excREnc_uid95_block_rsrvd_fix_q;
    wire [22:0] oneFracRPostExc2_uid96_block_rsrvd_fix_q;
    wire [1:0] fracRPostExc_uid99_block_rsrvd_fix_s;
    reg [22:0] fracRPostExc_uid99_block_rsrvd_fix_q;
    wire [1:0] expRPostExc_uid103_block_rsrvd_fix_s;
    reg [7:0] expRPostExc_uid103_block_rsrvd_fix_q;
    wire [31:0] RExpE_uid104_block_rsrvd_fix_q;
    wire [4:0] xv0_uid238_xTimesOOlog2Ext_uid37_block_rsrvd_fix_in;
    wire [4:0] xv0_uid238_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b;
    wire [9:0] xv1_uid239_xTimesOOlog2Ext_uid37_block_rsrvd_fix_in;
    wire [4:0] xv1_uid239_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b;
    wire [14:0] xv2_uid240_xTimesOOlog2Ext_uid37_block_rsrvd_fix_in;
    wire [4:0] xv2_uid240_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b;
    wire [19:0] xv3_uid241_xTimesOOlog2Ext_uid37_block_rsrvd_fix_in;
    wire [4:0] xv3_uid241_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b;
    wire [4:0] xv4_uid242_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b;
    reg [32:0] p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q;
    reg [26:0] p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q;
    reg [21:0] p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q;
    reg [16:0] p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q;
    reg [11:0] p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q;
    wire [34:0] lev1_a0_uid248_xTimesOOlog2Ext_uid37_block_rsrvd_fix_a;
    wire [34:0] lev1_a0_uid248_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b;
    logic [34:0] lev1_a0_uid248_xTimesOOlog2Ext_uid37_block_rsrvd_fix_o;
    wire [33:0] lev1_a0_uid248_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q;
    wire [22:0] lev1_a1_uid249_xTimesOOlog2Ext_uid37_block_rsrvd_fix_a;
    wire [22:0] lev1_a1_uid249_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b;
    logic [22:0] lev1_a1_uid249_xTimesOOlog2Ext_uid37_block_rsrvd_fix_o;
    wire [22:0] lev1_a1_uid249_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q;
    wire [35:0] lev2_a0_uid250_xTimesOOlog2Ext_uid37_block_rsrvd_fix_a;
    wire [35:0] lev2_a0_uid250_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b;
    logic [35:0] lev2_a0_uid250_xTimesOOlog2Ext_uid37_block_rsrvd_fix_o;
    wire [34:0] lev2_a0_uid250_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q;
    wire [36:0] lev3_a0_uid251_xTimesOOlog2Ext_uid37_block_rsrvd_fix_a;
    wire [36:0] lev3_a0_uid251_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b;
    logic [36:0] lev3_a0_uid251_xTimesOOlog2Ext_uid37_block_rsrvd_fix_o;
    wire [35:0] lev3_a0_uid251_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q;
    wire [31:0] sOuputFormat_uid252_xTimesOOlog2Ext_uid37_block_rsrvd_fix_in;
    wire [28:0] sOuputFormat_uid252_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b;
    wire [4:0] xv0_uid433_eRndXlog2_uid50_block_rsrvd_fix_in;
    wire [4:0] xv0_uid433_eRndXlog2_uid50_block_rsrvd_fix_b;
    wire [5:0] xv1_uid434_eRndXlog2_uid50_block_rsrvd_fix_b;
    reg [45:0] p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q;
    reg [38:0] p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q;
    wire [47:0] lev1_a0_uid437_eRndXlog2_uid50_block_rsrvd_fix_a;
    wire [47:0] lev1_a0_uid437_eRndXlog2_uid50_block_rsrvd_fix_b;
    logic [47:0] lev1_a0_uid437_eRndXlog2_uid50_block_rsrvd_fix_o;
    wire [46:0] lev1_a0_uid437_eRndXlog2_uid50_block_rsrvd_fix_q;
    wire [44:0] sOuputFormat_uid438_eRndXlog2_uid50_block_rsrvd_fix_in;
    wire [42:0] sOuputFormat_uid438_eRndXlog2_uid50_block_rsrvd_fix_b;
    reg [28:0] memoryC0_uid440_expTables_q;
    reg [21:0] memoryC1_uid443_expTables_q;
    reg [13:0] memoryC2_uid446_expTables_q;
    wire [13:0] yT1_uid452_invPolyEval_b;
    wire [0:0] lowRangeB_uid454_invPolyEval_in;
    wire [0:0] lowRangeB_uid454_invPolyEval_b;
    wire [13:0] highBBits_uid455_invPolyEval_b;
    wire [22:0] s1sumAHighB_uid456_invPolyEval_a;
    wire [22:0] s1sumAHighB_uid456_invPolyEval_b;
    logic [22:0] s1sumAHighB_uid456_invPolyEval_o;
    wire [22:0] s1sumAHighB_uid456_invPolyEval_q;
    wire [23:0] s1_uid457_invPolyEval_q;
    wire [1:0] lowRangeB_uid460_invPolyEval_in;
    wire [1:0] lowRangeB_uid460_invPolyEval_b;
    wire [22:0] highBBits_uid461_invPolyEval_b;
    wire [29:0] s2sumAHighB_uid462_invPolyEval_a;
    wire [29:0] s2sumAHighB_uid462_invPolyEval_b;
    logic [29:0] s2sumAHighB_uid462_invPolyEval_o;
    wire [29:0] s2sumAHighB_uid462_invPolyEval_q;
    wire [31:0] s2_uid463_invPolyEval_q;
    wire [14:0] osig_uid466_pT1_uid453_invPolyEval_b;
    wire [42:0] osig_uid469_pT2_uid459_invPolyEval_in;
    wire [24:0] osig_uid469_pT2_uid459_invPolyEval_b;
    wire [0:0] xMSB_uid471_fxpInPostAlign_uid47_block_rsrvd_fix_b;
    wire [3:0] wIntCst_uid473_fxpInPostAlign_uid47_block_rsrvd_fix_q;
    wire [7:0] shiftedOut_uid474_fxpInPostAlign_uid47_block_rsrvd_fix_a;
    wire [7:0] shiftedOut_uid474_fxpInPostAlign_uid47_block_rsrvd_fix_b;
    logic [7:0] shiftedOut_uid474_fxpInPostAlign_uid47_block_rsrvd_fix_o;
    wire [0:0] shiftedOut_uid474_fxpInPostAlign_uid47_block_rsrvd_fix_n;
    wire [9:0] rightShiftStage0Idx1Rng1_uid475_fxpInPostAlign_uid47_block_rsrvd_fix_b;
    wire [10:0] rightShiftStage0Idx1_uid476_fxpInPostAlign_uid47_block_rsrvd_fix_q;
    wire [1:0] seMsb_to2_uid477_in;
    wire [1:0] seMsb_to2_uid477_b;
    wire [8:0] rightShiftStage0Idx2Rng2_uid478_fxpInPostAlign_uid47_block_rsrvd_fix_b;
    wire [10:0] rightShiftStage0Idx2_uid479_fxpInPostAlign_uid47_block_rsrvd_fix_q;
    wire [2:0] seMsb_to3_uid480_in;
    wire [2:0] seMsb_to3_uid480_b;
    wire [7:0] rightShiftStage0Idx3Rng3_uid481_fxpInPostAlign_uid47_block_rsrvd_fix_b;
    wire [10:0] rightShiftStage0Idx3_uid482_fxpInPostAlign_uid47_block_rsrvd_fix_q;
    wire [1:0] rightShiftStage0_uid484_fxpInPostAlign_uid47_block_rsrvd_fix_s;
    reg [10:0] rightShiftStage0_uid484_fxpInPostAlign_uid47_block_rsrvd_fix_q;
    wire [3:0] seMsb_to4_uid485_in;
    wire [3:0] seMsb_to4_uid485_b;
    wire [6:0] rightShiftStage1Idx1Rng4_uid486_fxpInPostAlign_uid47_block_rsrvd_fix_b;
    wire [10:0] rightShiftStage1Idx1_uid487_fxpInPostAlign_uid47_block_rsrvd_fix_q;
    wire [7:0] seMsb_to8_uid488_in;
    wire [7:0] seMsb_to8_uid488_b;
    wire [2:0] rightShiftStage1Idx2Rng8_uid489_fxpInPostAlign_uid47_block_rsrvd_fix_b;
    wire [10:0] rightShiftStage1Idx2_uid490_fxpInPostAlign_uid47_block_rsrvd_fix_q;
    wire [10:0] stageIndexName_to11_uid491_in;
    wire [10:0] stageIndexName_to11_uid491_b;
    wire [1:0] rightShiftStage1_uid494_fxpInPostAlign_uid47_block_rsrvd_fix_s;
    reg [10:0] rightShiftStage1_uid494_fxpInPostAlign_uid47_block_rsrvd_fix_q;
    wire [0:0] r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_s;
    reg [10:0] r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q;
    wire [0:0] xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b;
    wire [32:0] rightShiftStage0Idx1Rng1_uid501_fxpInPostAlign_X_uid60_block_rsrvd_fix_b;
    wire [33:0] rightShiftStage0Idx1_uid502_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
    wire [1:0] seMsb_to2_uid503_in;
    wire [1:0] seMsb_to2_uid503_b;
    wire [31:0] rightShiftStage0Idx2Rng2_uid504_fxpInPostAlign_X_uid60_block_rsrvd_fix_b;
    wire [33:0] rightShiftStage0Idx2_uid505_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
    wire [2:0] seMsb_to3_uid506_in;
    wire [2:0] seMsb_to3_uid506_b;
    wire [30:0] rightShiftStage0Idx3Rng3_uid507_fxpInPostAlign_X_uid60_block_rsrvd_fix_b;
    wire [33:0] rightShiftStage0Idx3_uid508_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
    wire [1:0] rightShiftStage0_uid510_fxpInPostAlign_X_uid60_block_rsrvd_fix_s;
    reg [33:0] rightShiftStage0_uid510_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
    wire [3:0] seMsb_to4_uid511_in;
    wire [3:0] seMsb_to4_uid511_b;
    wire [29:0] rightShiftStage1Idx1Rng4_uid512_fxpInPostAlign_X_uid60_block_rsrvd_fix_b;
    wire [33:0] rightShiftStage1Idx1_uid513_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
    wire [7:0] seMsb_to8_uid514_in;
    wire [7:0] seMsb_to8_uid514_b;
    wire [25:0] rightShiftStage1Idx2Rng8_uid515_fxpInPostAlign_X_uid60_block_rsrvd_fix_b;
    wire [33:0] rightShiftStage1Idx2_uid516_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
    wire [11:0] seMsb_to12_uid517_in;
    wire [11:0] seMsb_to12_uid517_b;
    wire [21:0] rightShiftStage1Idx3Rng12_uid518_fxpInPostAlign_X_uid60_block_rsrvd_fix_b;
    wire [33:0] rightShiftStage1Idx3_uid519_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
    wire [1:0] rightShiftStage1_uid521_fxpInPostAlign_X_uid60_block_rsrvd_fix_s;
    reg [33:0] rightShiftStage1_uid521_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
    wire [15:0] seMsb_to16_uid522_in;
    wire [15:0] seMsb_to16_uid522_b;
    wire [17:0] rightShiftStage2Idx1Rng16_uid523_fxpInPostAlign_X_uid60_block_rsrvd_fix_b;
    wire [33:0] rightShiftStage2Idx1_uid524_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
    wire [31:0] seMsb_to32_uid525_in;
    wire [31:0] seMsb_to32_uid525_b;
    wire [1:0] rightShiftStage2Idx2Rng32_uid526_fxpInPostAlign_X_uid60_block_rsrvd_fix_b;
    wire [33:0] rightShiftStage2Idx2_uid527_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
    wire [33:0] stageIndexName_to34_uid528_in;
    wire [33:0] stageIndexName_to34_uid528_b;
    wire [1:0] rightShiftStage2_uid531_fxpInPostAlign_X_uid60_block_rsrvd_fix_s;
    reg [33:0] rightShiftStage2_uid531_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
    wire [17:0] prodXY_uid468_pT2_uid459_invPolyEval_bs1_in;
    wire [17:0] prodXY_uid468_pT2_uid459_invPolyEval_bs1_b;
    wire [0:0] prodXY_uid468_pT2_uid459_invPolyEval_bs6_b;
    wire [1:0] prodXY_uid468_pT2_uid459_invPolyEval_bjA7_q;
    reg [0:0] prodXY_uid468_pT2_uid459_invPolyEval_im9_a0;
    reg [5:0] prodXY_uid468_pT2_uid459_invPolyEval_im9_b0;
    reg [6:0] prodXY_uid468_pT2_uid459_invPolyEval_im9_s1;
    wire signed [7:0] prodXY_uid468_pT2_uid459_invPolyEval_im9_pr;
    reg [6:0] prodXY_uid468_pT2_uid459_invPolyEval_im9_q;
    wire [42:0] prodXY_uid468_pT2_uid459_invPolyEval_sums_join_0_q;
    wire [42:0] prodXY_uid468_pT2_uid459_invPolyEval_sums_align_1_q;
    wire [42:0] prodXY_uid468_pT2_uid459_invPolyEval_sums_align_1_qint;
    wire [43:0] prodXY_uid468_pT2_uid459_invPolyEval_sums_result_add_0_0_a;
    wire [43:0] prodXY_uid468_pT2_uid459_invPolyEval_sums_result_add_0_0_b;
    logic [43:0] prodXY_uid468_pT2_uid459_invPolyEval_sums_result_add_0_0_o;
    wire [43:0] prodXY_uid468_pT2_uid459_invPolyEval_sums_result_add_0_0_q;
    wire prodXY_uid465_pT1_uid453_invPolyEval_cma_reset;
    (* preserve *) reg [13:0] prodXY_uid465_pT1_uid453_invPolyEval_cma_a0 [0:0];
    (* preserve *) reg signed [13:0] prodXY_uid465_pT1_uid453_invPolyEval_cma_c0 [0:0];
    wire signed [14:0] prodXY_uid465_pT1_uid453_invPolyEval_cma_l [0:0];
    wire signed [28:0] prodXY_uid465_pT1_uid453_invPolyEval_cma_p [0:0];
    wire signed [28:0] prodXY_uid465_pT1_uid453_invPolyEval_cma_u [0:0];
    wire signed [28:0] prodXY_uid465_pT1_uid453_invPolyEval_cma_w [0:0];
    wire signed [28:0] prodXY_uid465_pT1_uid453_invPolyEval_cma_x [0:0];
    wire signed [28:0] prodXY_uid465_pT1_uid453_invPolyEval_cma_y [0:0];
    reg signed [28:0] prodXY_uid465_pT1_uid453_invPolyEval_cma_s [0:0];
    wire [28:0] prodXY_uid465_pT1_uid453_invPolyEval_cma_qq;
    wire [27:0] prodXY_uid465_pT1_uid453_invPolyEval_cma_q;
    wire prodXY_uid465_pT1_uid453_invPolyEval_cma_ena0;
    wire prodXY_uid465_pT1_uid453_invPolyEval_cma_ena1;
    wire prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_reset;
    (* preserve *) reg [17:0] prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_c0 [0:0];
    wire [35:0] prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_p [0:0];
    wire [35:0] prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_u [0:0];
    wire [35:0] prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_w [0:0];
    wire [35:0] prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_x [0:0];
    wire [35:0] prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_y [0:0];
    reg [35:0] prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_s [0:0];
    wire [35:0] prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_qq;
    wire [35:0] prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_q;
    wire prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_ena0;
    wire prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_ena1;
    wire prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_reset;
    (* preserve *) reg signed [5:0] prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_c0 [0:1];
    wire signed [18:0] prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_r [0:1];
    wire signed [24:0] prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_p [0:1];
    wire signed [25:0] prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_u [0:1];
    wire signed [25:0] prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_w [0:0];
    wire signed [25:0] prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_x [0:0];
    wire signed [25:0] prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_y [0:0];
    reg signed [25:0] prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_s [0:0];
    wire [25:0] prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_qq;
    wire [24:0] prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_q;
    wire prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_ena0;
    wire prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_ena1;
    wire [1:0] rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_b;
    wire [1:0] rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_d;
    wire [6:0] yAddr_uid70_block_rsrvd_fix_merged_bit_select_b;
    wire [18:0] yAddr_uid70_block_rsrvd_fix_merged_bit_select_c;
    wire [17:0] prodXY_uid468_pT2_uid459_invPolyEval_bs2_merged_bit_select_b;
    wire [5:0] prodXY_uid468_pT2_uid459_invPolyEval_bs2_merged_bit_select_c;
    reg [17:0] redist0_prodXY_uid468_pT2_uid459_invPolyEval_bs2_merged_bit_select_b_1_q;
    reg [5:0] redist1_prodXY_uid468_pT2_uid459_invPolyEval_bs2_merged_bit_select_c_1_q;
    reg [6:0] redist2_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_3_q;
    reg [6:0] redist2_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_3_delay_0;
    reg [6:0] redist2_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_3_delay_1;
    reg [6:0] redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8_q;
    reg [6:0] redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8_delay_0;
    reg [6:0] redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8_delay_1;
    reg [6:0] redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8_delay_2;
    reg [6:0] redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8_delay_3;
    reg [18:0] redist4_yAddr_uid70_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [1:0] redist5_rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_b_1_q;
    reg [1:0] redist6_rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [1:0] redist7_rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_d_2_q;
    reg [1:0] redist7_rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_d_2_delay_0;
    reg [24:0] redist8_prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_q_1_q;
    reg [35:0] redist9_prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_q_1_q;
    reg [6:0] redist10_prodXY_uid468_pT2_uid459_invPolyEval_im9_q_1_q;
    reg [0:0] redist11_prodXY_uid468_pT2_uid459_invPolyEval_bs6_b_4_q;
    reg [0:0] redist11_prodXY_uid468_pT2_uid459_invPolyEval_bs6_b_4_delay_0;
    reg [0:0] redist11_prodXY_uid468_pT2_uid459_invPolyEval_bs6_b_4_delay_1;
    reg [0:0] redist11_prodXY_uid468_pT2_uid459_invPolyEval_bs6_b_4_delay_2;
    reg [17:0] redist12_prodXY_uid468_pT2_uid459_invPolyEval_bs1_b_4_q;
    reg [17:0] redist12_prodXY_uid468_pT2_uid459_invPolyEval_bs1_b_4_delay_0;
    reg [0:0] redist13_xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b_1_q;
    reg [10:0] redist15_stageIndexName_to11_uid491_b_1_q;
    reg [24:0] redist16_osig_uid469_pT2_uid459_invPolyEval_b_1_q;
    reg [13:0] redist17_highBBits_uid455_invPolyEval_b_1_q;
    reg [0:0] redist18_lowRangeB_uid454_invPolyEval_b_1_q;
    reg [42:0] redist19_sOuputFormat_uid438_eRndXlog2_uid50_block_rsrvd_fix_b_1_q;
    reg [4:0] redist20_xv4_uid242_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_1_q;
    reg [4:0] redist21_xv3_uid241_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_1_q;
    reg [4:0] redist22_xv2_uid240_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_1_q;
    reg [4:0] redist23_xv1_uid239_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_1_q;
    reg [4:0] redist24_xv0_uid238_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_3_q;
    reg [4:0] redist24_xv0_uid238_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_3_delay_0;
    reg [4:0] redist24_xv0_uid238_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_3_delay_1;
    reg [7:0] redist25_expR_uid81_block_rsrvd_fix_b_2_q;
    reg [7:0] redist25_expR_uid81_block_rsrvd_fix_b_2_delay_0;
    reg [22:0] redist26_fracR_uid77_block_rsrvd_fix_b_4_q;
    reg [22:0] redist26_fracR_uid77_block_rsrvd_fix_b_4_delay_0;
    reg [22:0] redist26_fracR_uid77_block_rsrvd_fix_b_4_delay_1;
    reg [0:0] redist27_peORExpInc_uid74_block_rsrvd_fix_b_1_q;
    reg [25:0] redist28_yRed_uid67_block_rsrvd_fix_b_1_q;
    reg [0:0] redist29_msbUYExt_uid65_block_rsrvd_fix_b_1_q;
    reg [33:0] redist30_fxpInPreAlign_uid55_block_rsrvd_fix_b_1_q;
    reg [10:0] redist31_topRangeFxpEPreRnd_uid46_block_rsrvd_fix_b_1_q;
    reg [5:0] redist32_shiftValuePreSatRed_uid44_block_rsrvd_fix_b_1_q;
    reg [0:0] redist33_expOvfInitial_uid42_block_rsrvd_fix_b_19_q;
    reg [23:0] redist34_oFracX_uid32_block_rsrvd_fix_q_5_q;
    reg [23:0] redist34_oFracX_uid32_block_rsrvd_fix_q_5_delay_0;
    reg [23:0] redist34_oFracX_uid32_block_rsrvd_fix_q_5_delay_1;
    reg [0:0] redist35_excR_x_uid30_block_rsrvd_fix_q_19_q;
    reg [0:0] redist36_excN_x_uid27_block_rsrvd_fix_q_2_q;
    reg [0:0] redist37_fracXIsZero_uid24_block_rsrvd_fix_q_22_q;
    reg [0:0] redist38_expXIsMax_uid23_block_rsrvd_fix_q_19_q;
    reg [0:0] redist39_signX_uid7_block_rsrvd_fix_b_1_q;
    reg [0:0] redist40_signX_uid7_block_rsrvd_fix_b_5_q;
    reg [0:0] redist40_signX_uid7_block_rsrvd_fix_b_5_delay_0;
    reg [0:0] redist40_signX_uid7_block_rsrvd_fix_b_5_delay_1;
    reg [0:0] redist40_signX_uid7_block_rsrvd_fix_b_5_delay_2;
    reg [0:0] redist41_signX_uid7_block_rsrvd_fix_b_6_q;
    reg [0:0] redist42_signX_uid7_block_rsrvd_fix_b_23_q;
    reg [7:0] redist43_expX_uid6_block_rsrvd_fix_b_3_q;
    reg [7:0] redist43_expX_uid6_block_rsrvd_fix_b_3_delay_0;
    reg [7:0] redist43_expX_uid6_block_rsrvd_fix_b_3_delay_1;
    reg [17:0] redist12_prodXY_uid468_pT2_uid459_invPolyEval_bs1_b_4_inputreg0_q;
    reg [17:0] redist12_prodXY_uid468_pT2_uid459_invPolyEval_bs1_b_4_outputreg0_q;
    reg [10:0] redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_inputreg0_q;
    reg [10:0] redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_outputreg0_q;
    wire redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_reset0;
    wire [10:0] redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_ia;
    wire [3:0] redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_aa;
    wire [3:0] redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_ab;
    wire [10:0] redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_iq;
    wire [10:0] redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_q;
    wire [3:0] redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_rdcnt_q;
    (* preserve *) reg [3:0] redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_rdcnt_i;
    (* preserve *) reg redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_rdcnt_eq;
    reg [3:0] redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_wraddr_q;
    wire [4:0] redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_last_q;
    wire [4:0] redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_cmp_b;
    wire [0:0] redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_cmp_q;
    (* dont_merge *) reg [0:0] redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_cmpReg_q;
    wire [0:0] redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_notEnable_q;
    wire [0:0] redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_nor_q;
    (* dont_merge *) reg [0:0] redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_sticky_ena_q;
    wire [0:0] redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_enaAnd_q;
    reg [22:0] redist26_fracR_uid77_block_rsrvd_fix_b_4_inputreg0_q;
    reg [23:0] redist34_oFracX_uid32_block_rsrvd_fix_q_5_inputreg0_q;
    reg [23:0] redist34_oFracX_uid32_block_rsrvd_fix_q_5_outputreg0_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // cstAllOWE_uid17_block_rsrvd_fix(CONSTANT,16)
    assign cstAllOWE_uid17_block_rsrvd_fix_q = $unsigned(8'b11111111);

    // zY_uid66_block_rsrvd_fix(CONSTANT,65)
    assign zY_uid66_block_rsrvd_fix_q = $unsigned(26'b00000000000000000000000000);

    // signX_uid7_block_rsrvd_fix(BITSELECT,6)@0
    assign signX_uid7_block_rsrvd_fix_b = $unsigned(in_0[31:31]);

    // redist39_signX_uid7_block_rsrvd_fix_b_1(DELAY,593)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_signX_uid7_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist39_signX_uid7_block_rsrvd_fix_b_1_q <= $unsigned(signX_uid7_block_rsrvd_fix_b);
        end
    end

    // fracX_uid8_block_rsrvd_fix(BITSELECT,7)@0
    assign fracX_uid8_block_rsrvd_fix_b = in_0[22:0];

    // oFracX_uid32_block_rsrvd_fix(BITJOIN,31)@0
    assign oFracX_uid32_block_rsrvd_fix_q = {VCC_q, fracX_uid8_block_rsrvd_fix_b};

    // oFracX_uid33_block_rsrvd_fix(BITJOIN,32)@0
    assign oFracX_uid33_block_rsrvd_fix_q = {GND_q, oFracX_uid32_block_rsrvd_fix_q};

    // onesCmpFxpInX_uid34_block_rsrvd_fix(LOGICAL,33)@0 + 1
    assign onesCmpFxpInX_uid34_block_rsrvd_fix_b = $unsigned({{24{signX_uid7_block_rsrvd_fix_b[0]}}, signX_uid7_block_rsrvd_fix_b});
    assign onesCmpFxpInX_uid34_block_rsrvd_fix_qi = oFracX_uid33_block_rsrvd_fix_q ^ onesCmpFxpInX_uid34_block_rsrvd_fix_b;
    dspba_delay_ver #( .width(25), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    onesCmpFxpInX_uid34_block_rsrvd_fix_delay ( .xin(onesCmpFxpInX_uid34_block_rsrvd_fix_qi), .xout(onesCmpFxpInX_uid34_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fxpInExtX_uid35_block_rsrvd_fix(ADD,34)@1
    assign fxpInExtX_uid35_block_rsrvd_fix_a = {1'b0, onesCmpFxpInX_uid34_block_rsrvd_fix_q};
    assign fxpInExtX_uid35_block_rsrvd_fix_b = {25'b0000000000000000000000000, redist39_signX_uid7_block_rsrvd_fix_b_1_q};
    assign fxpInExtX_uid35_block_rsrvd_fix_o = $unsigned(fxpInExtX_uid35_block_rsrvd_fix_a) + $unsigned(fxpInExtX_uid35_block_rsrvd_fix_b);
    assign fxpInExtX_uid35_block_rsrvd_fix_q = fxpInExtX_uid35_block_rsrvd_fix_o[25:0];

    // fxpInPreAlign_uid36_block_rsrvd_fix(BITSELECT,35)@1
    assign fxpInPreAlign_uid36_block_rsrvd_fix_in = $unsigned(fxpInExtX_uid35_block_rsrvd_fix_q[24:0]);
    assign fxpInPreAlign_uid36_block_rsrvd_fix_b = $unsigned(fxpInPreAlign_uid36_block_rsrvd_fix_in[24:0]);

    // xv0_uid238_xTimesOOlog2Ext_uid37_block_rsrvd_fix(BITSELECT,237)@1
    assign xv0_uid238_xTimesOOlog2Ext_uid37_block_rsrvd_fix_in = fxpInPreAlign_uid36_block_rsrvd_fix_b[4:0];
    assign xv0_uid238_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b = xv0_uid238_xTimesOOlog2Ext_uid37_block_rsrvd_fix_in[4:0];

    // redist24_xv0_uid238_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_3(DELAY,578)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_xv0_uid238_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist24_xv0_uid238_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_3_delay_1 <= '0;
            redist24_xv0_uid238_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist24_xv0_uid238_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_3_delay_0 <= $unsigned(xv0_uid238_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b);
            redist24_xv0_uid238_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_3_delay_1 <= redist24_xv0_uid238_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_3_delay_0;
            redist24_xv0_uid238_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_3_q <= redist24_xv0_uid238_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_3_delay_1;
        end
    end

    // p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix(LOOKUP,246)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= $unsigned(12'b000000000000);
        end
        else
        begin
            unique case (redist24_xv0_uid238_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_3_q)
                5'b00000 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b000000000000;
                5'b00001 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b000001011100;
                5'b00010 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b000010111000;
                5'b00011 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b000100010100;
                5'b00100 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b000101110001;
                5'b00101 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b000111001101;
                5'b00110 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b001000101001;
                5'b00111 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b001010000110;
                5'b01000 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b001011100010;
                5'b01001 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b001100111110;
                5'b01010 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b001110011011;
                5'b01011 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b001111110111;
                5'b01100 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b010001010011;
                5'b01101 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b010010110000;
                5'b01110 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b010100001100;
                5'b01111 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b010101101000;
                5'b10000 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b010111000101;
                5'b10001 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b011000100001;
                5'b10010 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b011001111101;
                5'b10011 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b011011011010;
                5'b10100 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b011100110110;
                5'b10101 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b011110010010;
                5'b10110 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b011111101111;
                5'b10111 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b100001001011;
                5'b11000 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b100010100111;
                5'b11001 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b100100000100;
                5'b11010 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b100101100000;
                5'b11011 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b100110111100;
                5'b11100 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b101000011001;
                5'b11101 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b101001110101;
                5'b11110 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b101011010001;
                5'b11111 : p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'b101100101110;
                default : begin
                              // unreachable
                              p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 12'bxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // xv1_uid239_xTimesOOlog2Ext_uid37_block_rsrvd_fix(BITSELECT,238)@1
    assign xv1_uid239_xTimesOOlog2Ext_uid37_block_rsrvd_fix_in = fxpInPreAlign_uid36_block_rsrvd_fix_b[9:0];
    assign xv1_uid239_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b = xv1_uid239_xTimesOOlog2Ext_uid37_block_rsrvd_fix_in[9:5];

    // redist23_xv1_uid239_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_1(DELAY,577)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_xv1_uid239_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist23_xv1_uid239_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_1_q <= $unsigned(xv1_uid239_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b);
        end
    end

    // p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix(LOOKUP,245)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= $unsigned(17'b00000000000000000);
        end
        else
        begin
            unique case (redist23_xv1_uid239_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_1_q)
                5'b00000 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b00000000000000000;
                5'b00001 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b00000101110001010;
                5'b00010 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b00001011100010101;
                5'b00011 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b00010001010011111;
                5'b00100 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b00010111000101010;
                5'b00101 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b00011100110110101;
                5'b00110 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b00100010100111111;
                5'b00111 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b00101000011001010;
                5'b01000 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b00101110001010101;
                5'b01001 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b00110011111011111;
                5'b01010 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b00111001101101010;
                5'b01011 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b00111111011110101;
                5'b01100 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b01000101001111111;
                5'b01101 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b01001011000001010;
                5'b01110 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b01010000110010100;
                5'b01111 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b01010110100011111;
                5'b10000 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b01011100010101010;
                5'b10001 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b01100010000110100;
                5'b10010 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b01100111110111111;
                5'b10011 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b01101101101001010;
                5'b10100 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b01110011011010100;
                5'b10101 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b01111001001011111;
                5'b10110 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b01111110111101010;
                5'b10111 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b10000100101110100;
                5'b11000 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b10001010011111111;
                5'b11001 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b10010000010001001;
                5'b11010 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b10010110000010100;
                5'b11011 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b10011011110011111;
                5'b11100 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b10100001100101001;
                5'b11101 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b10100111010110100;
                5'b11110 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b10101101000111111;
                5'b11111 : p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'b10110010111001001;
                default : begin
                              // unreachable
                              p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 17'bxxxxxxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // xv2_uid240_xTimesOOlog2Ext_uid37_block_rsrvd_fix(BITSELECT,239)@1
    assign xv2_uid240_xTimesOOlog2Ext_uid37_block_rsrvd_fix_in = fxpInPreAlign_uid36_block_rsrvd_fix_b[14:0];
    assign xv2_uid240_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b = xv2_uid240_xTimesOOlog2Ext_uid37_block_rsrvd_fix_in[14:10];

    // redist22_xv2_uid240_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_1(DELAY,576)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_xv2_uid240_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist22_xv2_uid240_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_1_q <= $unsigned(xv2_uid240_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b);
        end
    end

    // p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix(LOOKUP,244)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= $unsigned(22'b0000000000000000000000);
        end
        else
        begin
            unique case (redist22_xv2_uid240_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_1_q)
                5'b00000 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0000000000000000000000;
                5'b00001 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0000010111000101010100;
                5'b00010 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0000101110001010101000;
                5'b00011 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0001000101001111111101;
                5'b00100 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0001011100010101010001;
                5'b00101 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0001110011011010100110;
                5'b00110 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0010001010011111111010;
                5'b00111 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0010100001100101001111;
                5'b01000 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0010111000101010100011;
                5'b01001 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0011001111101111111000;
                5'b01010 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0011100110110101001100;
                5'b01011 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0011111101111010100001;
                5'b01100 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0100010100111111110101;
                5'b01101 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0100101100000101001010;
                5'b01110 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0101000011001010011110;
                5'b01111 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0101011010001111110010;
                5'b10000 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0101110001010101000111;
                5'b10001 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0110001000011010011011;
                5'b10010 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0110011111011111110000;
                5'b10011 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0110110110100101000100;
                5'b10100 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0111001101101010011001;
                5'b10101 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0111100100101111101101;
                5'b10110 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b0111111011110101000010;
                5'b10111 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b1000010010111010010110;
                5'b11000 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b1000101001111111101011;
                5'b11001 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b1001000001000100111111;
                5'b11010 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b1001011000001010010100;
                5'b11011 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b1001101111001111101000;
                5'b11100 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b1010000110010100111100;
                5'b11101 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b1010011101011010010001;
                5'b11110 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b1010110100011111100101;
                5'b11111 : p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'b1011001011100100111010;
                default : begin
                              // unreachable
                              p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 22'bxxxxxxxxxxxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // lev1_a1_uid249_xTimesOOlog2Ext_uid37_block_rsrvd_fix(ADD,248)@3 + 1
    assign lev1_a1_uid249_xTimesOOlog2Ext_uid37_block_rsrvd_fix_a = {1'b0, p2_uid245_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q};
    assign lev1_a1_uid249_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b = {6'b000000, p1_uid246_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev1_a1_uid249_xTimesOOlog2Ext_uid37_block_rsrvd_fix_o <= 23'b0;
        end
        else
        begin
            lev1_a1_uid249_xTimesOOlog2Ext_uid37_block_rsrvd_fix_o <= $unsigned(lev1_a1_uid249_xTimesOOlog2Ext_uid37_block_rsrvd_fix_a) + $unsigned(lev1_a1_uid249_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b);
        end
    end
    assign lev1_a1_uid249_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q = lev1_a1_uid249_xTimesOOlog2Ext_uid37_block_rsrvd_fix_o[22:0];

    // xv3_uid241_xTimesOOlog2Ext_uid37_block_rsrvd_fix(BITSELECT,240)@1
    assign xv3_uid241_xTimesOOlog2Ext_uid37_block_rsrvd_fix_in = fxpInPreAlign_uid36_block_rsrvd_fix_b[19:0];
    assign xv3_uid241_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b = xv3_uid241_xTimesOOlog2Ext_uid37_block_rsrvd_fix_in[19:15];

    // redist21_xv3_uid241_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_1(DELAY,575)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_xv3_uid241_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist21_xv3_uid241_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_1_q <= $unsigned(xv3_uid241_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b);
        end
    end

    // p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix(LOOKUP,243)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= $unsigned(27'b000000000000000000000000000);
        end
        else
        begin
            unique case (redist21_xv3_uid241_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_1_q)
                5'b00000 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b000000000000000000000000000;
                5'b00001 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b000001011100010101010001110;
                5'b00010 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b000010111000101010100011101;
                5'b00011 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b000100010100111111110101100;
                5'b00100 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b000101110001010101000111011;
                5'b00101 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b000111001101101010011001001;
                5'b00110 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b001000101001111111101011000;
                5'b00111 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b001010000110010100111100111;
                5'b01000 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b001011100010101010001110110;
                5'b01001 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b001100111110111111100000101;
                5'b01010 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b001110011011010100110010011;
                5'b01011 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b001111110111101010000100010;
                5'b01100 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b010001010011111111010110001;
                5'b01101 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b010010110000010100101000000;
                5'b01110 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b010100001100101001111001111;
                5'b01111 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b010101101000111111001011101;
                5'b10000 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b010111000101010100011101100;
                5'b10001 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b011000100001101001101111011;
                5'b10010 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b011001111101111111000001010;
                5'b10011 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b011011011010010100010011001;
                5'b10100 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b011100110110101001100100111;
                5'b10101 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b011110010010111110110110110;
                5'b10110 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b011111101111010100001000101;
                5'b10111 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b100001001011101001011010100;
                5'b11000 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b100010100111111110101100010;
                5'b11001 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b100100000100010011111110001;
                5'b11010 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b100101100000101001010000000;
                5'b11011 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b100110111100111110100001111;
                5'b11100 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b101000011001010011110011110;
                5'b11101 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b101001110101101001000101100;
                5'b11110 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b101011010001111110010111011;
                5'b11111 : p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'b101100101110010011101001010;
                default : begin
                              // unreachable
                              p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 27'bxxxxxxxxxxxxxxxxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // xv4_uid242_xTimesOOlog2Ext_uid37_block_rsrvd_fix(BITSELECT,241)@1
    assign xv4_uid242_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b = $unsigned(fxpInPreAlign_uid36_block_rsrvd_fix_b[24:20]);

    // redist20_xv4_uid242_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_1(DELAY,574)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_xv4_uid242_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist20_xv4_uid242_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_1_q <= $unsigned(xv4_uid242_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b);
        end
    end

    // p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix(LOOKUP,242)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= $unsigned(33'b000000000000000000000000000000100);
        end
        else
        begin
            unique case (redist20_xv4_uid242_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b_1_q)
                5'b00000 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b000000000000000000000000000000100;
                5'b00001 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b000000101110001010101000111011101;
                5'b00010 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b000001011100010101010001110110110;
                5'b00011 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b000010001010011111111010110001111;
                5'b00100 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b000010111000101010100011101101001;
                5'b00101 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b000011100110110101001100101000010;
                5'b00110 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b000100010100111111110101100011011;
                5'b00111 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b000101000011001010011110011110101;
                5'b01000 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b000101110001010101000111011001110;
                5'b01001 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b000110011111011111110000010100111;
                5'b01010 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b000111001101101010011001010000000;
                5'b01011 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b000111111011110101000010001011010;
                5'b01100 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b001000101001111111101011000110011;
                5'b01101 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b001001011000001010010100000001100;
                5'b01110 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b001010000110010100111100111100110;
                5'b01111 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b001010110100011111100101110111111;
                5'b10000 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b110100011101010101110001001101111;
                5'b10001 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b110101001011100000011010001001000;
                5'b10010 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b110101111001101011000011000100001;
                5'b10011 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b110110100111110101101011111111011;
                5'b10100 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b110111010110000000010100111010100;
                5'b10101 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b111000000100001010111101110101101;
                5'b10110 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b111000110010010101100110110000111;
                5'b10111 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b111001100000100000001111101100000;
                5'b11000 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b111010001110101010111000100111001;
                5'b11001 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b111010111100110101100001100010010;
                5'b11010 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b111011101011000000001010011101100;
                5'b11011 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b111100011001001010110011011000101;
                5'b11100 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b111101000111010101011100010011110;
                5'b11101 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b111101110101100000000101001111000;
                5'b11110 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b111110100011101010101110001010001;
                5'b11111 : p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'b111111010001110101010111000101010;
                default : begin
                              // unreachable
                              p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q <= 33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // lev1_a0_uid248_xTimesOOlog2Ext_uid37_block_rsrvd_fix(ADD,247)@3 + 1
    assign lev1_a0_uid248_xTimesOOlog2Ext_uid37_block_rsrvd_fix_a = $unsigned({{2{p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q[32]}}, p4_uid243_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q});
    assign lev1_a0_uid248_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b = $unsigned({8'b00000000, p3_uid244_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev1_a0_uid248_xTimesOOlog2Ext_uid37_block_rsrvd_fix_o <= 35'b0;
        end
        else
        begin
            lev1_a0_uid248_xTimesOOlog2Ext_uid37_block_rsrvd_fix_o <= $unsigned($signed(lev1_a0_uid248_xTimesOOlog2Ext_uid37_block_rsrvd_fix_a) + $signed(lev1_a0_uid248_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b));
        end
    end
    assign lev1_a0_uid248_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q = lev1_a0_uid248_xTimesOOlog2Ext_uid37_block_rsrvd_fix_o[33:0];

    // lev2_a0_uid250_xTimesOOlog2Ext_uid37_block_rsrvd_fix(ADD,249)@4 + 1
    assign lev2_a0_uid250_xTimesOOlog2Ext_uid37_block_rsrvd_fix_a = $unsigned({{2{lev1_a0_uid248_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q[33]}}, lev1_a0_uid248_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q});
    assign lev2_a0_uid250_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b = $unsigned({13'b0000000000000, lev1_a1_uid249_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev2_a0_uid250_xTimesOOlog2Ext_uid37_block_rsrvd_fix_o <= 36'b0;
        end
        else
        begin
            lev2_a0_uid250_xTimesOOlog2Ext_uid37_block_rsrvd_fix_o <= $unsigned($signed(lev2_a0_uid250_xTimesOOlog2Ext_uid37_block_rsrvd_fix_a) + $signed(lev2_a0_uid250_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b));
        end
    end
    assign lev2_a0_uid250_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q = lev2_a0_uid250_xTimesOOlog2Ext_uid37_block_rsrvd_fix_o[34:0];

    // lev3_a0_uid251_xTimesOOlog2Ext_uid37_block_rsrvd_fix(ADD,250)@5
    assign lev3_a0_uid251_xTimesOOlog2Ext_uid37_block_rsrvd_fix_a = $unsigned({{2{lev2_a0_uid250_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q[34]}}, lev2_a0_uid250_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q});
    assign lev3_a0_uid251_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b = $unsigned({25'b0000000000000000000000000, p0_uid247_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q});
    assign lev3_a0_uid251_xTimesOOlog2Ext_uid37_block_rsrvd_fix_o = $unsigned($signed(lev3_a0_uid251_xTimesOOlog2Ext_uid37_block_rsrvd_fix_a) + $signed(lev3_a0_uid251_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b));
    assign lev3_a0_uid251_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q = lev3_a0_uid251_xTimesOOlog2Ext_uid37_block_rsrvd_fix_o[35:0];

    // sOuputFormat_uid252_xTimesOOlog2Ext_uid37_block_rsrvd_fix(BITSELECT,251)@5
    assign sOuputFormat_uid252_xTimesOOlog2Ext_uid37_block_rsrvd_fix_in = $unsigned(lev3_a0_uid251_xTimesOOlog2Ext_uid37_block_rsrvd_fix_q[31:0]);
    assign sOuputFormat_uid252_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b = $unsigned(sOuputFormat_uid252_xTimesOOlog2Ext_uid37_block_rsrvd_fix_in[31:3]);

    // oFracXZwE_uid39_block_rsrvd_fix(BITJOIN,38)@5
    assign oFracXZwE_uid39_block_rsrvd_fix_q = {sOuputFormat_uid252_xTimesOOlog2Ext_uid37_block_rsrvd_fix_b, cstZeroWE_uid14_block_rsrvd_fix_q};

    // topRangeFxpEPreRnd_uid46_block_rsrvd_fix(BITSELECT,45)@5
    assign topRangeFxpEPreRnd_uid46_block_rsrvd_fix_b = $unsigned(oFracXZwE_uid39_block_rsrvd_fix_q[36:26]);

    // redist31_topRangeFxpEPreRnd_uid46_block_rsrvd_fix_b_1(DELAY,585)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_topRangeFxpEPreRnd_uid46_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist31_topRangeFxpEPreRnd_uid46_block_rsrvd_fix_b_1_q <= $unsigned(topRangeFxpEPreRnd_uid46_block_rsrvd_fix_b);
        end
    end

    // xMSB_uid471_fxpInPostAlign_uid47_block_rsrvd_fix(BITSELECT,470)@6
    assign xMSB_uid471_fxpInPostAlign_uid47_block_rsrvd_fix_b = $unsigned(redist31_topRangeFxpEPreRnd_uid46_block_rsrvd_fix_b_1_q[10:10]);

    // stageIndexName_to11_uid491(BITSELECT,490)@6
    assign stageIndexName_to11_uid491_in = $unsigned({{10{xMSB_uid471_fxpInPostAlign_uid47_block_rsrvd_fix_b[0]}}, xMSB_uid471_fxpInPostAlign_uid47_block_rsrvd_fix_b});
    assign stageIndexName_to11_uid491_b = $unsigned(stageIndexName_to11_uid491_in[10:0]);

    // redist15_stageIndexName_to11_uid491_b_1(DELAY,569)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_stageIndexName_to11_uid491_b_1_q <= '0;
        end
        else
        begin
            redist15_stageIndexName_to11_uid491_b_1_q <= $unsigned(stageIndexName_to11_uid491_b);
        end
    end

    // seMsb_to8_uid488(BITSELECT,487)@6
    assign seMsb_to8_uid488_in = $unsigned({{7{xMSB_uid471_fxpInPostAlign_uid47_block_rsrvd_fix_b[0]}}, xMSB_uid471_fxpInPostAlign_uid47_block_rsrvd_fix_b});
    assign seMsb_to8_uid488_b = $unsigned(seMsb_to8_uid488_in[7:0]);

    // rightShiftStage1Idx2Rng8_uid489_fxpInPostAlign_uid47_block_rsrvd_fix(BITSELECT,488)@6
    assign rightShiftStage1Idx2Rng8_uid489_fxpInPostAlign_uid47_block_rsrvd_fix_b = $unsigned(rightShiftStage0_uid484_fxpInPostAlign_uid47_block_rsrvd_fix_q[10:8]);

    // rightShiftStage1Idx2_uid490_fxpInPostAlign_uid47_block_rsrvd_fix(BITJOIN,489)@6
    assign rightShiftStage1Idx2_uid490_fxpInPostAlign_uid47_block_rsrvd_fix_q = {seMsb_to8_uid488_b, rightShiftStage1Idx2Rng8_uid489_fxpInPostAlign_uid47_block_rsrvd_fix_b};

    // seMsb_to4_uid485(BITSELECT,484)@6
    assign seMsb_to4_uid485_in = $unsigned({{3{xMSB_uid471_fxpInPostAlign_uid47_block_rsrvd_fix_b[0]}}, xMSB_uid471_fxpInPostAlign_uid47_block_rsrvd_fix_b});
    assign seMsb_to4_uid485_b = $unsigned(seMsb_to4_uid485_in[3:0]);

    // rightShiftStage1Idx1Rng4_uid486_fxpInPostAlign_uid47_block_rsrvd_fix(BITSELECT,485)@6
    assign rightShiftStage1Idx1Rng4_uid486_fxpInPostAlign_uid47_block_rsrvd_fix_b = $unsigned(rightShiftStage0_uid484_fxpInPostAlign_uid47_block_rsrvd_fix_q[10:4]);

    // rightShiftStage1Idx1_uid487_fxpInPostAlign_uid47_block_rsrvd_fix(BITJOIN,486)@6
    assign rightShiftStage1Idx1_uid487_fxpInPostAlign_uid47_block_rsrvd_fix_q = {seMsb_to4_uid485_b, rightShiftStage1Idx1Rng4_uid486_fxpInPostAlign_uid47_block_rsrvd_fix_b};

    // seMsb_to3_uid480(BITSELECT,479)@6
    assign seMsb_to3_uid480_in = $unsigned({{2{xMSB_uid471_fxpInPostAlign_uid47_block_rsrvd_fix_b[0]}}, xMSB_uid471_fxpInPostAlign_uid47_block_rsrvd_fix_b});
    assign seMsb_to3_uid480_b = $unsigned(seMsb_to3_uid480_in[2:0]);

    // rightShiftStage0Idx3Rng3_uid481_fxpInPostAlign_uid47_block_rsrvd_fix(BITSELECT,480)@6
    assign rightShiftStage0Idx3Rng3_uid481_fxpInPostAlign_uid47_block_rsrvd_fix_b = $unsigned(redist31_topRangeFxpEPreRnd_uid46_block_rsrvd_fix_b_1_q[10:3]);

    // rightShiftStage0Idx3_uid482_fxpInPostAlign_uid47_block_rsrvd_fix(BITJOIN,481)@6
    assign rightShiftStage0Idx3_uid482_fxpInPostAlign_uid47_block_rsrvd_fix_q = {seMsb_to3_uid480_b, rightShiftStage0Idx3Rng3_uid481_fxpInPostAlign_uid47_block_rsrvd_fix_b};

    // seMsb_to2_uid477(BITSELECT,476)@6
    assign seMsb_to2_uid477_in = $unsigned({{1{xMSB_uid471_fxpInPostAlign_uid47_block_rsrvd_fix_b[0]}}, xMSB_uid471_fxpInPostAlign_uid47_block_rsrvd_fix_b});
    assign seMsb_to2_uid477_b = $unsigned(seMsb_to2_uid477_in[1:0]);

    // rightShiftStage0Idx2Rng2_uid478_fxpInPostAlign_uid47_block_rsrvd_fix(BITSELECT,477)@6
    assign rightShiftStage0Idx2Rng2_uid478_fxpInPostAlign_uid47_block_rsrvd_fix_b = $unsigned(redist31_topRangeFxpEPreRnd_uid46_block_rsrvd_fix_b_1_q[10:2]);

    // rightShiftStage0Idx2_uid479_fxpInPostAlign_uid47_block_rsrvd_fix(BITJOIN,478)@6
    assign rightShiftStage0Idx2_uid479_fxpInPostAlign_uid47_block_rsrvd_fix_q = {seMsb_to2_uid477_b, rightShiftStage0Idx2Rng2_uid478_fxpInPostAlign_uid47_block_rsrvd_fix_b};

    // rightShiftStage0Idx1Rng1_uid475_fxpInPostAlign_uid47_block_rsrvd_fix(BITSELECT,474)@6
    assign rightShiftStage0Idx1Rng1_uid475_fxpInPostAlign_uid47_block_rsrvd_fix_b = $unsigned(redist31_topRangeFxpEPreRnd_uid46_block_rsrvd_fix_b_1_q[10:1]);

    // rightShiftStage0Idx1_uid476_fxpInPostAlign_uid47_block_rsrvd_fix(BITJOIN,475)@6
    assign rightShiftStage0Idx1_uid476_fxpInPostAlign_uid47_block_rsrvd_fix_q = {xMSB_uid471_fxpInPostAlign_uid47_block_rsrvd_fix_b, rightShiftStage0Idx1Rng1_uid475_fxpInPostAlign_uid47_block_rsrvd_fix_b};

    // rightShiftStage0_uid484_fxpInPostAlign_uid47_block_rsrvd_fix(MUX,483)@6
    assign rightShiftStage0_uid484_fxpInPostAlign_uid47_block_rsrvd_fix_s = rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_b;
    always @(rightShiftStage0_uid484_fxpInPostAlign_uid47_block_rsrvd_fix_s or redist31_topRangeFxpEPreRnd_uid46_block_rsrvd_fix_b_1_q or rightShiftStage0Idx1_uid476_fxpInPostAlign_uid47_block_rsrvd_fix_q or rightShiftStage0Idx2_uid479_fxpInPostAlign_uid47_block_rsrvd_fix_q or rightShiftStage0Idx3_uid482_fxpInPostAlign_uid47_block_rsrvd_fix_q)
    begin
        unique case (rightShiftStage0_uid484_fxpInPostAlign_uid47_block_rsrvd_fix_s)
            2'b00 : rightShiftStage0_uid484_fxpInPostAlign_uid47_block_rsrvd_fix_q = redist31_topRangeFxpEPreRnd_uid46_block_rsrvd_fix_b_1_q;
            2'b01 : rightShiftStage0_uid484_fxpInPostAlign_uid47_block_rsrvd_fix_q = rightShiftStage0Idx1_uid476_fxpInPostAlign_uid47_block_rsrvd_fix_q;
            2'b10 : rightShiftStage0_uid484_fxpInPostAlign_uid47_block_rsrvd_fix_q = rightShiftStage0Idx2_uid479_fxpInPostAlign_uid47_block_rsrvd_fix_q;
            2'b11 : rightShiftStage0_uid484_fxpInPostAlign_uid47_block_rsrvd_fix_q = rightShiftStage0Idx3_uid482_fxpInPostAlign_uid47_block_rsrvd_fix_q;
            default : rightShiftStage0_uid484_fxpInPostAlign_uid47_block_rsrvd_fix_q = 11'b0;
        endcase
    end

    // cstBiasPWE_uid31_block_rsrvd_fix(CONSTANT,30)
    assign cstBiasPWE_uid31_block_rsrvd_fix_q = $unsigned(6'b100001);

    // expX_uid6_block_rsrvd_fix(BITSELECT,5)@0
    assign expX_uid6_block_rsrvd_fix_b = in_0[30:23];

    // redist43_expX_uid6_block_rsrvd_fix_b_3(DELAY,597)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_expX_uid6_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist43_expX_uid6_block_rsrvd_fix_b_3_delay_1 <= '0;
            redist43_expX_uid6_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist43_expX_uid6_block_rsrvd_fix_b_3_delay_0 <= $unsigned(expX_uid6_block_rsrvd_fix_b);
            redist43_expX_uid6_block_rsrvd_fix_b_3_delay_1 <= redist43_expX_uid6_block_rsrvd_fix_b_3_delay_0;
            redist43_expX_uid6_block_rsrvd_fix_b_3_q <= redist43_expX_uid6_block_rsrvd_fix_b_3_delay_1;
        end
    end

    // cstBiasPWE_uid16_block_rsrvd_fix(CONSTANT,15)
    assign cstBiasPWE_uid16_block_rsrvd_fix_q = $unsigned(8'b10000111);

    // shiftValuePreSat_uid41_block_rsrvd_fix(SUB,40)@3 + 1
    assign shiftValuePreSat_uid41_block_rsrvd_fix_a = {1'b0, cstBiasPWE_uid16_block_rsrvd_fix_q};
    assign shiftValuePreSat_uid41_block_rsrvd_fix_b = {1'b0, redist43_expX_uid6_block_rsrvd_fix_b_3_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            shiftValuePreSat_uid41_block_rsrvd_fix_o <= 9'b0;
        end
        else
        begin
            shiftValuePreSat_uid41_block_rsrvd_fix_o <= $unsigned(shiftValuePreSat_uid41_block_rsrvd_fix_a) - $unsigned(shiftValuePreSat_uid41_block_rsrvd_fix_b);
        end
    end
    assign shiftValuePreSat_uid41_block_rsrvd_fix_q = shiftValuePreSat_uid41_block_rsrvd_fix_o[8:0];

    // shiftValuePreSatRed_uid44_block_rsrvd_fix(BITSELECT,43)@4
    assign shiftValuePreSatRed_uid44_block_rsrvd_fix_in = shiftValuePreSat_uid41_block_rsrvd_fix_q[5:0];
    assign shiftValuePreSatRed_uid44_block_rsrvd_fix_b = shiftValuePreSatRed_uid44_block_rsrvd_fix_in[5:0];

    // redist32_shiftValuePreSatRed_uid44_block_rsrvd_fix_b_1(DELAY,586)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_shiftValuePreSatRed_uid44_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist32_shiftValuePreSatRed_uid44_block_rsrvd_fix_b_1_q <= $unsigned(shiftValuePreSatRed_uid44_block_rsrvd_fix_b);
        end
    end

    // shiftUdf_uid43_block_rsrvd_fix(COMPARE,42)@4 + 1
    assign shiftUdf_uid43_block_rsrvd_fix_a = $unsigned({{2{shiftValuePreSat_uid41_block_rsrvd_fix_q[8]}}, shiftValuePreSat_uid41_block_rsrvd_fix_q});
    assign shiftUdf_uid43_block_rsrvd_fix_b = $unsigned({5'b00000, cstBiasPWE_uid31_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            shiftUdf_uid43_block_rsrvd_fix_o <= 11'b0;
        end
        else
        begin
            shiftUdf_uid43_block_rsrvd_fix_o <= $unsigned($signed(shiftUdf_uid43_block_rsrvd_fix_a) - $signed(shiftUdf_uid43_block_rsrvd_fix_b));
        end
    end
    assign shiftUdf_uid43_block_rsrvd_fix_n[0] = ~ (shiftUdf_uid43_block_rsrvd_fix_o[10]);

    // shiftVal_uid45_block_rsrvd_fix(MUX,44)@5 + 1
    assign shiftVal_uid45_block_rsrvd_fix_s = shiftUdf_uid43_block_rsrvd_fix_n;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            shiftVal_uid45_block_rsrvd_fix_q <= 6'b0;
        end
        else
        begin
            unique case (shiftVal_uid45_block_rsrvd_fix_s)
                1'b0 : shiftVal_uid45_block_rsrvd_fix_q <= redist32_shiftValuePreSatRed_uid44_block_rsrvd_fix_b_1_q;
                1'b1 : shiftVal_uid45_block_rsrvd_fix_q <= cstBiasPWE_uid31_block_rsrvd_fix_q;
                default : shiftVal_uid45_block_rsrvd_fix_q <= 6'b0;
            endcase
        end
    end

    // rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select(BITSELECT,551)@6
    assign rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_b = shiftVal_uid45_block_rsrvd_fix_q[1:0];
    assign rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_c = shiftVal_uid45_block_rsrvd_fix_q[3:2];
    assign rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_d = shiftVal_uid45_block_rsrvd_fix_q[5:4];

    // rightShiftStage1_uid494_fxpInPostAlign_uid47_block_rsrvd_fix(MUX,493)@6 + 1
    assign rightShiftStage1_uid494_fxpInPostAlign_uid47_block_rsrvd_fix_s = rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage1_uid494_fxpInPostAlign_uid47_block_rsrvd_fix_q <= 11'b0;
        end
        else
        begin
            unique case (rightShiftStage1_uid494_fxpInPostAlign_uid47_block_rsrvd_fix_s)
                2'b00 : rightShiftStage1_uid494_fxpInPostAlign_uid47_block_rsrvd_fix_q <= rightShiftStage0_uid484_fxpInPostAlign_uid47_block_rsrvd_fix_q;
                2'b01 : rightShiftStage1_uid494_fxpInPostAlign_uid47_block_rsrvd_fix_q <= rightShiftStage1Idx1_uid487_fxpInPostAlign_uid47_block_rsrvd_fix_q;
                2'b10 : rightShiftStage1_uid494_fxpInPostAlign_uid47_block_rsrvd_fix_q <= rightShiftStage1Idx2_uid490_fxpInPostAlign_uid47_block_rsrvd_fix_q;
                2'b11 : rightShiftStage1_uid494_fxpInPostAlign_uid47_block_rsrvd_fix_q <= stageIndexName_to11_uid491_b;
                default : rightShiftStage1_uid494_fxpInPostAlign_uid47_block_rsrvd_fix_q <= 11'b0;
            endcase
        end
    end

    // wIntCst_uid473_fxpInPostAlign_uid47_block_rsrvd_fix(CONSTANT,472)
    assign wIntCst_uid473_fxpInPostAlign_uid47_block_rsrvd_fix_q = $unsigned(4'b1011);

    // shiftedOut_uid474_fxpInPostAlign_uid47_block_rsrvd_fix(COMPARE,473)@6 + 1
    assign shiftedOut_uid474_fxpInPostAlign_uid47_block_rsrvd_fix_a = {2'b00, shiftVal_uid45_block_rsrvd_fix_q};
    assign shiftedOut_uid474_fxpInPostAlign_uid47_block_rsrvd_fix_b = {4'b0000, wIntCst_uid473_fxpInPostAlign_uid47_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            shiftedOut_uid474_fxpInPostAlign_uid47_block_rsrvd_fix_o <= 8'b0;
        end
        else
        begin
            shiftedOut_uid474_fxpInPostAlign_uid47_block_rsrvd_fix_o <= $unsigned(shiftedOut_uid474_fxpInPostAlign_uid47_block_rsrvd_fix_a) - $unsigned(shiftedOut_uid474_fxpInPostAlign_uid47_block_rsrvd_fix_b);
        end
    end
    assign shiftedOut_uid474_fxpInPostAlign_uid47_block_rsrvd_fix_n[0] = ~ (shiftedOut_uid474_fxpInPostAlign_uid47_block_rsrvd_fix_o[7]);

    // r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix(MUX,496)@7
    assign r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_s = shiftedOut_uid474_fxpInPostAlign_uid47_block_rsrvd_fix_n;
    always @(r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_s or rightShiftStage1_uid494_fxpInPostAlign_uid47_block_rsrvd_fix_q or redist15_stageIndexName_to11_uid491_b_1_q)
    begin
        unique case (r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_s)
            1'b0 : r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q = rightShiftStage1_uid494_fxpInPostAlign_uid47_block_rsrvd_fix_q;
            1'b1 : r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q = redist15_stageIndexName_to11_uid491_b_1_q;
            default : r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q = 11'b0;
        endcase
    end

    // xv0_uid433_eRndXlog2_uid50_block_rsrvd_fix(BITSELECT,432)@7
    assign xv0_uid433_eRndXlog2_uid50_block_rsrvd_fix_in = r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q[4:0];
    assign xv0_uid433_eRndXlog2_uid50_block_rsrvd_fix_b = xv0_uid433_eRndXlog2_uid50_block_rsrvd_fix_in[4:0];

    // p0_uid436_eRndXlog2_uid50_block_rsrvd_fix(LOOKUP,435)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= $unsigned(39'b000000000000000000000000000000000000000);
        end
        else
        begin
            unique case (xv0_uid433_eRndXlog2_uid50_block_rsrvd_fix_b)
                5'b00000 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b000000000000000000000000000000000000000;
                5'b00001 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b000001011000101110010000101111111011111;
                5'b00010 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b000010110001011100100001011111110111110;
                5'b00011 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b000100001010001010110010001111110011101;
                5'b00100 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b000101100010111001000010111111101111101;
                5'b00101 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b000110111011100111010011101111101011100;
                5'b00110 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b001000010100010101100100011111100111011;
                5'b00111 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b001001101101000011110101001111100011010;
                5'b01000 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b001011000101110010000101111111011111010;
                5'b01001 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b001100011110100000010110101111011011001;
                5'b01010 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b001101110111001110100111011111010111000;
                5'b01011 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b001111001111111100111000001111010011000;
                5'b01100 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b010000101000101011001000111111001110111;
                5'b01101 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b010010000001011001011001101111001010110;
                5'b01110 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b010011011010000111101010011111000110101;
                5'b01111 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b010100110010110101111011001111000010101;
                5'b10000 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b010110001011100100001011111110111110100;
                5'b10001 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b010111100100010010011100101110111010011;
                5'b10010 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b011000111101000000101101011110110110011;
                5'b10011 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b011010010101101110111110001110110010010;
                5'b10100 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b011011101110011101001110111110101110001;
                5'b10101 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b011101000111001011011111101110101010000;
                5'b10110 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b011110011111111001110000011110100110000;
                5'b10111 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b011111111000101000000001001110100001111;
                5'b11000 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b100001010001010110010001111110011101110;
                5'b11001 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b100010101010000100100010101110011001101;
                5'b11010 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b100100000010110010110011011110010101101;
                5'b11011 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b100101011011100001000100001110010001100;
                5'b11100 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b100110110100001111010100111110001101011;
                5'b11101 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b101000001100111101100101101110001001011;
                5'b11110 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b101001100101101011110110011110000101010;
                5'b11111 : p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'b101010111110011010000111001110000001001;
                default : begin
                              // unreachable
                              p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q <= 39'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // xv1_uid434_eRndXlog2_uid50_block_rsrvd_fix(BITSELECT,433)@7
    assign xv1_uid434_eRndXlog2_uid50_block_rsrvd_fix_b = $unsigned(r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q[10:5]);

    // p1_uid435_eRndXlog2_uid50_block_rsrvd_fix(LOOKUP,434)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= $unsigned(46'b0000000000000000000000000000000000000000000010);
        end
        else
        begin
            unique case (xv1_uid434_eRndXlog2_uid50_block_rsrvd_fix_b)
                6'b000000 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0000000000000000000000000000000000000000000010;
                6'b000001 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0000000101100010111001000010111111101111101010;
                6'b000010 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0000001011000101110010000101111111011111010011;
                6'b000011 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0000010000101000101011001000111111001110111100;
                6'b000100 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0000010110001011100100001011111110111110100101;
                6'b000101 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0000011011101110011101001110111110101110001110;
                6'b000110 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0000100001010001010110010001111110011101110111;
                6'b000111 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0000100110110100001111010100111110001101100000;
                6'b001000 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0000101100010111001000010111111101111101001001;
                6'b001001 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0000110001111010000001011010111101101100110010;
                6'b001010 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0000110111011100111010011101111101011100011011;
                6'b001011 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0000111100111111110011100000111101001100000011;
                6'b001100 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0001000010100010101100100011111100111011101100;
                6'b001101 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0001001000000101100101100110111100101011010101;
                6'b001110 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0001001101101000011110101001111100011010111110;
                6'b001111 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0001010011001011010111101100111100001010100111;
                6'b010000 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0001011000101110010000101111111011111010010000;
                6'b010001 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0001011110010001001001110010111011101001111001;
                6'b010010 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0001100011110100000010110101111011011001100010;
                6'b010011 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0001101001010110111011111000111011001001001011;
                6'b010100 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0001101110111001110100111011111010111000110100;
                6'b010101 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0001110100011100101101111110111010101000011101;
                6'b010110 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0001111001111111100111000001111010011000000101;
                6'b010111 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0001111111100010100000000100111010000111101110;
                6'b011000 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0010000101000101011001000111111001110111010111;
                6'b011001 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0010001010101000010010001010111001100111000000;
                6'b011010 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0010010000001011001011001101111001010110101001;
                6'b011011 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0010010101101110000100010000111001000110010010;
                6'b011100 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0010011011010000111101010011111000110101111011;
                6'b011101 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0010100000110011110110010110111000100101100100;
                6'b011110 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0010100110010110101111011001111000010101001101;
                6'b011111 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b0010101011111001101000011100111000000100110110;
                6'b100000 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1101001110100011011110100000001000001011100101;
                6'b100001 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1101010100000110010111100011000111111011001101;
                6'b100010 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1101011001101001010000100110000111101010110110;
                6'b100011 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1101011111001100001001101001000111011010011111;
                6'b100100 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1101100100101111000010101100000111001010001000;
                6'b100101 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1101101010010001111011101111000110111001110001;
                6'b100110 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1101101111110100110100110010000110101001011010;
                6'b100111 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1101110101010111101101110101000110011001000011;
                6'b101000 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1101111010111010100110111000000110001000101100;
                6'b101001 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1110000000011101011111111011000101111000010101;
                6'b101010 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1110000110000000011000111110000101100111111110;
                6'b101011 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1110001011100011010010000001000101010111100110;
                6'b101100 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1110010001000110001011000100000101000111001111;
                6'b101101 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1110010110101001000100000111000100110110111000;
                6'b101110 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1110011100001011111101001010000100100110100001;
                6'b101111 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1110100001101110110110001101000100010110001010;
                6'b110000 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1110100111010001101111010000000100000101110011;
                6'b110001 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1110101100110100101000010011000011110101011100;
                6'b110010 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1110110010010111100001010110000011100101000101;
                6'b110011 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1110110111111010011010011001000011010100101110;
                6'b110100 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1110111101011101010011011100000011000100010111;
                6'b110101 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1111000011000000001100011111000010110100000000;
                6'b110110 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1111001000100011000101100010000010100011101000;
                6'b110111 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1111001110000101111110100101000010010011010001;
                6'b111000 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1111010011101000110111101000000010000010111010;
                6'b111001 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1111011001001011110000101011000001110010100011;
                6'b111010 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1111011110101110101001101110000001100010001100;
                6'b111011 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1111100100010001100010110001000001010001110101;
                6'b111100 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1111101001110100011011110100000001000001011110;
                6'b111101 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1111101111010111010100110111000000110001000111;
                6'b111110 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1111110100111010001101111010000000100000110000;
                6'b111111 : p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'b1111111010011101000110111101000000010000011001;
                default : begin
                              // unreachable
                              p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q <= 46'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // lev1_a0_uid437_eRndXlog2_uid50_block_rsrvd_fix(ADD,436)@8
    assign lev1_a0_uid437_eRndXlog2_uid50_block_rsrvd_fix_a = $unsigned({{2{p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q[45]}}, p1_uid435_eRndXlog2_uid50_block_rsrvd_fix_q});
    assign lev1_a0_uid437_eRndXlog2_uid50_block_rsrvd_fix_b = $unsigned({9'b000000000, p0_uid436_eRndXlog2_uid50_block_rsrvd_fix_q});
    assign lev1_a0_uid437_eRndXlog2_uid50_block_rsrvd_fix_o = $unsigned($signed(lev1_a0_uid437_eRndXlog2_uid50_block_rsrvd_fix_a) + $signed(lev1_a0_uid437_eRndXlog2_uid50_block_rsrvd_fix_b));
    assign lev1_a0_uid437_eRndXlog2_uid50_block_rsrvd_fix_q = lev1_a0_uid437_eRndXlog2_uid50_block_rsrvd_fix_o[46:0];

    // sOuputFormat_uid438_eRndXlog2_uid50_block_rsrvd_fix(BITSELECT,437)@8
    assign sOuputFormat_uid438_eRndXlog2_uid50_block_rsrvd_fix_in = $unsigned(lev1_a0_uid437_eRndXlog2_uid50_block_rsrvd_fix_q[44:0]);
    assign sOuputFormat_uid438_eRndXlog2_uid50_block_rsrvd_fix_b = $unsigned(sOuputFormat_uid438_eRndXlog2_uid50_block_rsrvd_fix_in[44:2]);

    // redist19_sOuputFormat_uid438_eRndXlog2_uid50_block_rsrvd_fix_b_1(DELAY,573)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sOuputFormat_uid438_eRndXlog2_uid50_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist19_sOuputFormat_uid438_eRndXlog2_uid50_block_rsrvd_fix_b_1_q <= $unsigned(sOuputFormat_uid438_eRndXlog2_uid50_block_rsrvd_fix_b);
        end
    end

    // redist40_signX_uid7_block_rsrvd_fix_b_5(DELAY,594)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_signX_uid7_block_rsrvd_fix_b_5_delay_0 <= '0;
            redist40_signX_uid7_block_rsrvd_fix_b_5_delay_1 <= '0;
            redist40_signX_uid7_block_rsrvd_fix_b_5_delay_2 <= '0;
            redist40_signX_uid7_block_rsrvd_fix_b_5_q <= '0;
        end
        else
        begin
            redist40_signX_uid7_block_rsrvd_fix_b_5_delay_0 <= $unsigned(redist39_signX_uid7_block_rsrvd_fix_b_1_q);
            redist40_signX_uid7_block_rsrvd_fix_b_5_delay_1 <= redist40_signX_uid7_block_rsrvd_fix_b_5_delay_0;
            redist40_signX_uid7_block_rsrvd_fix_b_5_delay_2 <= redist40_signX_uid7_block_rsrvd_fix_b_5_delay_1;
            redist40_signX_uid7_block_rsrvd_fix_b_5_q <= redist40_signX_uid7_block_rsrvd_fix_b_5_delay_2;
        end
    end

    // redist41_signX_uid7_block_rsrvd_fix_b_6(DELAY,595)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_signX_uid7_block_rsrvd_fix_b_6_q <= '0;
        end
        else
        begin
            redist41_signX_uid7_block_rsrvd_fix_b_6_q <= $unsigned(redist40_signX_uid7_block_rsrvd_fix_b_5_q);
        end
    end

    // redist34_oFracX_uid32_block_rsrvd_fix_q_5_inputreg0(DELAY,613)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_oFracX_uid32_block_rsrvd_fix_q_5_inputreg0_q <= '0;
        end
        else
        begin
            redist34_oFracX_uid32_block_rsrvd_fix_q_5_inputreg0_q <= $unsigned(oFracX_uid32_block_rsrvd_fix_q);
        end
    end

    // redist34_oFracX_uid32_block_rsrvd_fix_q_5(DELAY,588)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_oFracX_uid32_block_rsrvd_fix_q_5_delay_0 <= '0;
            redist34_oFracX_uid32_block_rsrvd_fix_q_5_delay_1 <= '0;
            redist34_oFracX_uid32_block_rsrvd_fix_q_5_q <= '0;
        end
        else
        begin
            redist34_oFracX_uid32_block_rsrvd_fix_q_5_delay_0 <= $unsigned(redist34_oFracX_uid32_block_rsrvd_fix_q_5_inputreg0_q);
            redist34_oFracX_uid32_block_rsrvd_fix_q_5_delay_1 <= redist34_oFracX_uid32_block_rsrvd_fix_q_5_delay_0;
            redist34_oFracX_uid32_block_rsrvd_fix_q_5_q <= redist34_oFracX_uid32_block_rsrvd_fix_q_5_delay_1;
        end
    end

    // redist34_oFracX_uid32_block_rsrvd_fix_q_5_outputreg0(DELAY,614)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_oFracX_uid32_block_rsrvd_fix_q_5_outputreg0_q <= '0;
        end
        else
        begin
            redist34_oFracX_uid32_block_rsrvd_fix_q_5_outputreg0_q <= $unsigned(redist34_oFracX_uid32_block_rsrvd_fix_q_5_q);
        end
    end

    // cstZeroWEP1_uid15_block_rsrvd_fix(CONSTANT,14)
    assign cstZeroWEP1_uid15_block_rsrvd_fix_q = $unsigned(9'b000000000);

    // oFracXZwE_uid52_block_rsrvd_fix(BITJOIN,51)@5
    assign oFracXZwE_uid52_block_rsrvd_fix_q = {GND_q, redist34_oFracX_uid32_block_rsrvd_fix_q_5_outputreg0_q, cstZeroWEP1_uid15_block_rsrvd_fix_q};

    // onesCmpFxpIn_uid53_block_rsrvd_fix(LOGICAL,52)@5 + 1
    assign onesCmpFxpIn_uid53_block_rsrvd_fix_b = $unsigned({{33{redist40_signX_uid7_block_rsrvd_fix_b_5_q[0]}}, redist40_signX_uid7_block_rsrvd_fix_b_5_q});
    assign onesCmpFxpIn_uid53_block_rsrvd_fix_qi = oFracXZwE_uid52_block_rsrvd_fix_q ^ onesCmpFxpIn_uid53_block_rsrvd_fix_b;
    dspba_delay_ver #( .width(34), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    onesCmpFxpIn_uid53_block_rsrvd_fix_delay ( .xin(onesCmpFxpIn_uid53_block_rsrvd_fix_qi), .xout(onesCmpFxpIn_uid53_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fxpInExt_uid54_block_rsrvd_fix(ADD,53)@6
    assign fxpInExt_uid54_block_rsrvd_fix_a = {1'b0, onesCmpFxpIn_uid53_block_rsrvd_fix_q};
    assign fxpInExt_uid54_block_rsrvd_fix_b = {34'b0000000000000000000000000000000000, redist41_signX_uid7_block_rsrvd_fix_b_6_q};
    assign fxpInExt_uid54_block_rsrvd_fix_o = $unsigned(fxpInExt_uid54_block_rsrvd_fix_a) + $unsigned(fxpInExt_uid54_block_rsrvd_fix_b);
    assign fxpInExt_uid54_block_rsrvd_fix_q = fxpInExt_uid54_block_rsrvd_fix_o[34:0];

    // fxpInPreAlign_uid55_block_rsrvd_fix(BITSELECT,54)@6
    assign fxpInPreAlign_uid55_block_rsrvd_fix_in = $unsigned(fxpInExt_uid54_block_rsrvd_fix_q[33:0]);
    assign fxpInPreAlign_uid55_block_rsrvd_fix_b = $unsigned(fxpInPreAlign_uid55_block_rsrvd_fix_in[33:0]);

    // redist30_fxpInPreAlign_uid55_block_rsrvd_fix_b_1(DELAY,584)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_fxpInPreAlign_uid55_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist30_fxpInPreAlign_uid55_block_rsrvd_fix_b_1_q <= $unsigned(fxpInPreAlign_uid55_block_rsrvd_fix_b);
        end
    end

    // xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix(BITSELECT,498)@7
    assign xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b = $unsigned(redist30_fxpInPreAlign_uid55_block_rsrvd_fix_b_1_q[33:33]);

    // redist13_xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b_1(DELAY,567)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist13_xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b_1_q <= $unsigned(xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b);
        end
    end

    // stageIndexName_to34_uid528(BITSELECT,527)@8
    assign stageIndexName_to34_uid528_in = $unsigned({{33{redist13_xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b_1_q[0]}}, redist13_xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b_1_q});
    assign stageIndexName_to34_uid528_b = $unsigned(stageIndexName_to34_uid528_in[33:0]);

    // seMsb_to32_uid525(BITSELECT,524)@8
    assign seMsb_to32_uid525_in = $unsigned({{31{redist13_xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b_1_q[0]}}, redist13_xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b_1_q});
    assign seMsb_to32_uid525_b = $unsigned(seMsb_to32_uid525_in[31:0]);

    // rightShiftStage2Idx2Rng32_uid526_fxpInPostAlign_X_uid60_block_rsrvd_fix(BITSELECT,525)@8
    assign rightShiftStage2Idx2Rng32_uid526_fxpInPostAlign_X_uid60_block_rsrvd_fix_b = $unsigned(rightShiftStage1_uid521_fxpInPostAlign_X_uid60_block_rsrvd_fix_q[33:32]);

    // rightShiftStage2Idx2_uid527_fxpInPostAlign_X_uid60_block_rsrvd_fix(BITJOIN,526)@8
    assign rightShiftStage2Idx2_uid527_fxpInPostAlign_X_uid60_block_rsrvd_fix_q = {seMsb_to32_uid525_b, rightShiftStage2Idx2Rng32_uid526_fxpInPostAlign_X_uid60_block_rsrvd_fix_b};

    // seMsb_to16_uid522(BITSELECT,521)@8
    assign seMsb_to16_uid522_in = $unsigned({{15{redist13_xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b_1_q[0]}}, redist13_xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b_1_q});
    assign seMsb_to16_uid522_b = $unsigned(seMsb_to16_uid522_in[15:0]);

    // rightShiftStage2Idx1Rng16_uid523_fxpInPostAlign_X_uid60_block_rsrvd_fix(BITSELECT,522)@8
    assign rightShiftStage2Idx1Rng16_uid523_fxpInPostAlign_X_uid60_block_rsrvd_fix_b = $unsigned(rightShiftStage1_uid521_fxpInPostAlign_X_uid60_block_rsrvd_fix_q[33:16]);

    // rightShiftStage2Idx1_uid524_fxpInPostAlign_X_uid60_block_rsrvd_fix(BITJOIN,523)@8
    assign rightShiftStage2Idx1_uid524_fxpInPostAlign_X_uid60_block_rsrvd_fix_q = {seMsb_to16_uid522_b, rightShiftStage2Idx1Rng16_uid523_fxpInPostAlign_X_uid60_block_rsrvd_fix_b};

    // seMsb_to12_uid517(BITSELECT,516)@7
    assign seMsb_to12_uid517_in = $unsigned({{11{xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b[0]}}, xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b});
    assign seMsb_to12_uid517_b = $unsigned(seMsb_to12_uid517_in[11:0]);

    // rightShiftStage1Idx3Rng12_uid518_fxpInPostAlign_X_uid60_block_rsrvd_fix(BITSELECT,517)@7
    assign rightShiftStage1Idx3Rng12_uid518_fxpInPostAlign_X_uid60_block_rsrvd_fix_b = $unsigned(rightShiftStage0_uid510_fxpInPostAlign_X_uid60_block_rsrvd_fix_q[33:12]);

    // rightShiftStage1Idx3_uid519_fxpInPostAlign_X_uid60_block_rsrvd_fix(BITJOIN,518)@7
    assign rightShiftStage1Idx3_uid519_fxpInPostAlign_X_uid60_block_rsrvd_fix_q = {seMsb_to12_uid517_b, rightShiftStage1Idx3Rng12_uid518_fxpInPostAlign_X_uid60_block_rsrvd_fix_b};

    // seMsb_to8_uid514(BITSELECT,513)@7
    assign seMsb_to8_uid514_in = $unsigned({{7{xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b[0]}}, xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b});
    assign seMsb_to8_uid514_b = $unsigned(seMsb_to8_uid514_in[7:0]);

    // rightShiftStage1Idx2Rng8_uid515_fxpInPostAlign_X_uid60_block_rsrvd_fix(BITSELECT,514)@7
    assign rightShiftStage1Idx2Rng8_uid515_fxpInPostAlign_X_uid60_block_rsrvd_fix_b = $unsigned(rightShiftStage0_uid510_fxpInPostAlign_X_uid60_block_rsrvd_fix_q[33:8]);

    // rightShiftStage1Idx2_uid516_fxpInPostAlign_X_uid60_block_rsrvd_fix(BITJOIN,515)@7
    assign rightShiftStage1Idx2_uid516_fxpInPostAlign_X_uid60_block_rsrvd_fix_q = {seMsb_to8_uid514_b, rightShiftStage1Idx2Rng8_uid515_fxpInPostAlign_X_uid60_block_rsrvd_fix_b};

    // seMsb_to4_uid511(BITSELECT,510)@7
    assign seMsb_to4_uid511_in = $unsigned({{3{xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b[0]}}, xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b});
    assign seMsb_to4_uid511_b = $unsigned(seMsb_to4_uid511_in[3:0]);

    // rightShiftStage1Idx1Rng4_uid512_fxpInPostAlign_X_uid60_block_rsrvd_fix(BITSELECT,511)@7
    assign rightShiftStage1Idx1Rng4_uid512_fxpInPostAlign_X_uid60_block_rsrvd_fix_b = $unsigned(rightShiftStage0_uid510_fxpInPostAlign_X_uid60_block_rsrvd_fix_q[33:4]);

    // rightShiftStage1Idx1_uid513_fxpInPostAlign_X_uid60_block_rsrvd_fix(BITJOIN,512)@7
    assign rightShiftStage1Idx1_uid513_fxpInPostAlign_X_uid60_block_rsrvd_fix_q = {seMsb_to4_uid511_b, rightShiftStage1Idx1Rng4_uid512_fxpInPostAlign_X_uid60_block_rsrvd_fix_b};

    // seMsb_to3_uid506(BITSELECT,505)@7
    assign seMsb_to3_uid506_in = $unsigned({{2{xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b[0]}}, xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b});
    assign seMsb_to3_uid506_b = $unsigned(seMsb_to3_uid506_in[2:0]);

    // rightShiftStage0Idx3Rng3_uid507_fxpInPostAlign_X_uid60_block_rsrvd_fix(BITSELECT,506)@7
    assign rightShiftStage0Idx3Rng3_uid507_fxpInPostAlign_X_uid60_block_rsrvd_fix_b = $unsigned(redist30_fxpInPreAlign_uid55_block_rsrvd_fix_b_1_q[33:3]);

    // rightShiftStage0Idx3_uid508_fxpInPostAlign_X_uid60_block_rsrvd_fix(BITJOIN,507)@7
    assign rightShiftStage0Idx3_uid508_fxpInPostAlign_X_uid60_block_rsrvd_fix_q = {seMsb_to3_uid506_b, rightShiftStage0Idx3Rng3_uid507_fxpInPostAlign_X_uid60_block_rsrvd_fix_b};

    // seMsb_to2_uid503(BITSELECT,502)@7
    assign seMsb_to2_uid503_in = $unsigned({{1{xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b[0]}}, xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b});
    assign seMsb_to2_uid503_b = $unsigned(seMsb_to2_uid503_in[1:0]);

    // rightShiftStage0Idx2Rng2_uid504_fxpInPostAlign_X_uid60_block_rsrvd_fix(BITSELECT,503)@7
    assign rightShiftStage0Idx2Rng2_uid504_fxpInPostAlign_X_uid60_block_rsrvd_fix_b = $unsigned(redist30_fxpInPreAlign_uid55_block_rsrvd_fix_b_1_q[33:2]);

    // rightShiftStage0Idx2_uid505_fxpInPostAlign_X_uid60_block_rsrvd_fix(BITJOIN,504)@7
    assign rightShiftStage0Idx2_uid505_fxpInPostAlign_X_uid60_block_rsrvd_fix_q = {seMsb_to2_uid503_b, rightShiftStage0Idx2Rng2_uid504_fxpInPostAlign_X_uid60_block_rsrvd_fix_b};

    // rightShiftStage0Idx1Rng1_uid501_fxpInPostAlign_X_uid60_block_rsrvd_fix(BITSELECT,500)@7
    assign rightShiftStage0Idx1Rng1_uid501_fxpInPostAlign_X_uid60_block_rsrvd_fix_b = $unsigned(redist30_fxpInPreAlign_uid55_block_rsrvd_fix_b_1_q[33:1]);

    // rightShiftStage0Idx1_uid502_fxpInPostAlign_X_uid60_block_rsrvd_fix(BITJOIN,501)@7
    assign rightShiftStage0Idx1_uid502_fxpInPostAlign_X_uid60_block_rsrvd_fix_q = {xMSB_uid499_fxpInPostAlign_X_uid60_block_rsrvd_fix_b, rightShiftStage0Idx1Rng1_uid501_fxpInPostAlign_X_uid60_block_rsrvd_fix_b};

    // redist5_rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_b_1(DELAY,559)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist5_rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_b_1_q <= $unsigned(rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_b);
        end
    end

    // rightShiftStage0_uid510_fxpInPostAlign_X_uid60_block_rsrvd_fix(MUX,509)@7
    assign rightShiftStage0_uid510_fxpInPostAlign_X_uid60_block_rsrvd_fix_s = redist5_rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_b_1_q;
    always @(rightShiftStage0_uid510_fxpInPostAlign_X_uid60_block_rsrvd_fix_s or redist30_fxpInPreAlign_uid55_block_rsrvd_fix_b_1_q or rightShiftStage0Idx1_uid502_fxpInPostAlign_X_uid60_block_rsrvd_fix_q or rightShiftStage0Idx2_uid505_fxpInPostAlign_X_uid60_block_rsrvd_fix_q or rightShiftStage0Idx3_uid508_fxpInPostAlign_X_uid60_block_rsrvd_fix_q)
    begin
        unique case (rightShiftStage0_uid510_fxpInPostAlign_X_uid60_block_rsrvd_fix_s)
            2'b00 : rightShiftStage0_uid510_fxpInPostAlign_X_uid60_block_rsrvd_fix_q = redist30_fxpInPreAlign_uid55_block_rsrvd_fix_b_1_q;
            2'b01 : rightShiftStage0_uid510_fxpInPostAlign_X_uid60_block_rsrvd_fix_q = rightShiftStage0Idx1_uid502_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
            2'b10 : rightShiftStage0_uid510_fxpInPostAlign_X_uid60_block_rsrvd_fix_q = rightShiftStage0Idx2_uid505_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
            2'b11 : rightShiftStage0_uid510_fxpInPostAlign_X_uid60_block_rsrvd_fix_q = rightShiftStage0Idx3_uid508_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
            default : rightShiftStage0_uid510_fxpInPostAlign_X_uid60_block_rsrvd_fix_q = 34'b0;
        endcase
    end

    // redist6_rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_c_1(DELAY,560)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist6_rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // rightShiftStage1_uid521_fxpInPostAlign_X_uid60_block_rsrvd_fix(MUX,520)@7 + 1
    assign rightShiftStage1_uid521_fxpInPostAlign_X_uid60_block_rsrvd_fix_s = redist6_rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_c_1_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage1_uid521_fxpInPostAlign_X_uid60_block_rsrvd_fix_q <= 34'b0;
        end
        else
        begin
            unique case (rightShiftStage1_uid521_fxpInPostAlign_X_uid60_block_rsrvd_fix_s)
                2'b00 : rightShiftStage1_uid521_fxpInPostAlign_X_uid60_block_rsrvd_fix_q <= rightShiftStage0_uid510_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
                2'b01 : rightShiftStage1_uid521_fxpInPostAlign_X_uid60_block_rsrvd_fix_q <= rightShiftStage1Idx1_uid513_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
                2'b10 : rightShiftStage1_uid521_fxpInPostAlign_X_uid60_block_rsrvd_fix_q <= rightShiftStage1Idx2_uid516_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
                2'b11 : rightShiftStage1_uid521_fxpInPostAlign_X_uid60_block_rsrvd_fix_q <= rightShiftStage1Idx3_uid519_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
                default : rightShiftStage1_uid521_fxpInPostAlign_X_uid60_block_rsrvd_fix_q <= 34'b0;
            endcase
        end
    end

    // redist7_rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_d_2(DELAY,561)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_d_2_delay_0 <= '0;
            redist7_rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_d_2_q <= '0;
        end
        else
        begin
            redist7_rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_d_2_delay_0 <= $unsigned(rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_d);
            redist7_rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_d_2_q <= redist7_rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_d_2_delay_0;
        end
    end

    // rightShiftStage2_uid531_fxpInPostAlign_X_uid60_block_rsrvd_fix(MUX,530)@8 + 1
    assign rightShiftStage2_uid531_fxpInPostAlign_X_uid60_block_rsrvd_fix_s = redist7_rightShiftStageSel0Dto0_uid483_fxpInPostAlign_uid47_block_rsrvd_fix_merged_bit_select_d_2_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage2_uid531_fxpInPostAlign_X_uid60_block_rsrvd_fix_q <= 34'b0;
        end
        else
        begin
            unique case (rightShiftStage2_uid531_fxpInPostAlign_X_uid60_block_rsrvd_fix_s)
                2'b00 : rightShiftStage2_uid531_fxpInPostAlign_X_uid60_block_rsrvd_fix_q <= rightShiftStage1_uid521_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
                2'b01 : rightShiftStage2_uid531_fxpInPostAlign_X_uid60_block_rsrvd_fix_q <= rightShiftStage2Idx1_uid524_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
                2'b10 : rightShiftStage2_uid531_fxpInPostAlign_X_uid60_block_rsrvd_fix_q <= rightShiftStage2Idx2_uid527_fxpInPostAlign_X_uid60_block_rsrvd_fix_q;
                2'b11 : rightShiftStage2_uid531_fxpInPostAlign_X_uid60_block_rsrvd_fix_q <= stageIndexName_to34_uid528_b;
                default : rightShiftStage2_uid531_fxpInPostAlign_X_uid60_block_rsrvd_fix_q <= 34'b0;
            endcase
        end
    end

    // aPostPad_uid63_block_rsrvd_fix(BITJOIN,62)@9
    assign aPostPad_uid63_block_rsrvd_fix_q = {rightShiftStage2_uid531_fxpInPostAlign_X_uid60_block_rsrvd_fix_q, cstZeroWE_uid14_block_rsrvd_fix_q};

    // yExt_uid64_block_rsrvd_fix(SUB,63)@9
    assign yExt_uid64_block_rsrvd_fix_a = $unsigned({{2{aPostPad_uid63_block_rsrvd_fix_q[41]}}, aPostPad_uid63_block_rsrvd_fix_q});
    assign yExt_uid64_block_rsrvd_fix_b = $unsigned({{1{redist19_sOuputFormat_uid438_eRndXlog2_uid50_block_rsrvd_fix_b_1_q[42]}}, redist19_sOuputFormat_uid438_eRndXlog2_uid50_block_rsrvd_fix_b_1_q});
    assign yExt_uid64_block_rsrvd_fix_o = $unsigned($signed(yExt_uid64_block_rsrvd_fix_a) - $signed(yExt_uid64_block_rsrvd_fix_b));
    assign yExt_uid64_block_rsrvd_fix_q = yExt_uid64_block_rsrvd_fix_o[43:0];

    // yRed_uid67_block_rsrvd_fix(BITSELECT,66)@9
    assign yRed_uid67_block_rsrvd_fix_in = yExt_uid64_block_rsrvd_fix_q[31:0];
    assign yRed_uid67_block_rsrvd_fix_b = yRed_uid67_block_rsrvd_fix_in[31:6];

    // redist28_yRed_uid67_block_rsrvd_fix_b_1(DELAY,582)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_yRed_uid67_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist28_yRed_uid67_block_rsrvd_fix_b_1_q <= $unsigned(yRed_uid67_block_rsrvd_fix_b);
        end
    end

    // msbUYExt_uid65_block_rsrvd_fix(BITSELECT,64)@9
    assign msbUYExt_uid65_block_rsrvd_fix_b = $unsigned(yExt_uid64_block_rsrvd_fix_q[43:43]);

    // redist29_msbUYExt_uid65_block_rsrvd_fix_b_1(DELAY,583)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_msbUYExt_uid65_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist29_msbUYExt_uid65_block_rsrvd_fix_b_1_q <= $unsigned(msbUYExt_uid65_block_rsrvd_fix_b);
        end
    end

    // yRedPostMux_uid68_block_rsrvd_fix(MUX,67)@10 + 1
    assign yRedPostMux_uid68_block_rsrvd_fix_s = redist29_msbUYExt_uid65_block_rsrvd_fix_b_1_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            yRedPostMux_uid68_block_rsrvd_fix_q <= 26'b0;
        end
        else
        begin
            unique case (yRedPostMux_uid68_block_rsrvd_fix_s)
                1'b0 : yRedPostMux_uid68_block_rsrvd_fix_q <= redist28_yRed_uid67_block_rsrvd_fix_b_1_q;
                1'b1 : yRedPostMux_uid68_block_rsrvd_fix_q <= zY_uid66_block_rsrvd_fix_q;
                default : yRedPostMux_uid68_block_rsrvd_fix_q <= 26'b0;
            endcase
        end
    end

    // yAddr_uid70_block_rsrvd_fix_merged_bit_select(BITSELECT,552)@11
    assign yAddr_uid70_block_rsrvd_fix_merged_bit_select_b = yRedPostMux_uid68_block_rsrvd_fix_q[25:19];
    assign yAddr_uid70_block_rsrvd_fix_merged_bit_select_c = yRedPostMux_uid68_block_rsrvd_fix_q[18:0];

    // redist4_yAddr_uid70_block_rsrvd_fix_merged_bit_select_c_1(DELAY,558)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_yAddr_uid70_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist4_yAddr_uid70_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(yAddr_uid70_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // prodXY_uid468_pT2_uid459_invPolyEval_bs1(BITSELECT,533)@12
    assign prodXY_uid468_pT2_uid459_invPolyEval_bs1_in = redist4_yAddr_uid70_block_rsrvd_fix_merged_bit_select_c_1_q[17:0];
    assign prodXY_uid468_pT2_uid459_invPolyEval_bs1_b = prodXY_uid468_pT2_uid459_invPolyEval_bs1_in[17:0];

    // redist12_prodXY_uid468_pT2_uid459_invPolyEval_bs1_b_4_inputreg0(DELAY,598)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_prodXY_uid468_pT2_uid459_invPolyEval_bs1_b_4_inputreg0_q <= '0;
        end
        else
        begin
            redist12_prodXY_uid468_pT2_uid459_invPolyEval_bs1_b_4_inputreg0_q <= $unsigned(prodXY_uid468_pT2_uid459_invPolyEval_bs1_b);
        end
    end

    // redist12_prodXY_uid468_pT2_uid459_invPolyEval_bs1_b_4(DELAY,566)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_prodXY_uid468_pT2_uid459_invPolyEval_bs1_b_4_delay_0 <= '0;
            redist12_prodXY_uid468_pT2_uid459_invPolyEval_bs1_b_4_q <= '0;
        end
        else
        begin
            redist12_prodXY_uid468_pT2_uid459_invPolyEval_bs1_b_4_delay_0 <= $unsigned(redist12_prodXY_uid468_pT2_uid459_invPolyEval_bs1_b_4_inputreg0_q);
            redist12_prodXY_uid468_pT2_uid459_invPolyEval_bs1_b_4_q <= redist12_prodXY_uid468_pT2_uid459_invPolyEval_bs1_b_4_delay_0;
        end
    end

    // redist12_prodXY_uid468_pT2_uid459_invPolyEval_bs1_b_4_outputreg0(DELAY,599)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_prodXY_uid468_pT2_uid459_invPolyEval_bs1_b_4_outputreg0_q <= '0;
        end
        else
        begin
            redist12_prodXY_uid468_pT2_uid459_invPolyEval_bs1_b_4_outputreg0_q <= $unsigned(redist12_prodXY_uid468_pT2_uid459_invPolyEval_bs1_b_4_q);
        end
    end

    // memoryC2_uid446_expTables(LOOKUP,445)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memoryC2_uid446_expTables_q <= $unsigned(14'b00100000000111);
        end
        else
        begin
            unique case (yAddr_uid70_block_rsrvd_fix_merged_bit_select_b)
                7'b0000000 : memoryC2_uid446_expTables_q <= 14'b00100000000111;
                7'b0000001 : memoryC2_uid446_expTables_q <= 14'b00100000011010;
                7'b0000010 : memoryC2_uid446_expTables_q <= 14'b00100000101001;
                7'b0000011 : memoryC2_uid446_expTables_q <= 14'b00100000111001;
                7'b0000100 : memoryC2_uid446_expTables_q <= 14'b00100001001001;
                7'b0000101 : memoryC2_uid446_expTables_q <= 14'b00100001011000;
                7'b0000110 : memoryC2_uid446_expTables_q <= 14'b00100001101010;
                7'b0000111 : memoryC2_uid446_expTables_q <= 14'b00100001111101;
                7'b0001000 : memoryC2_uid446_expTables_q <= 14'b00100010001100;
                7'b0001001 : memoryC2_uid446_expTables_q <= 14'b00100010011101;
                7'b0001010 : memoryC2_uid446_expTables_q <= 14'b00100010101111;
                7'b0001011 : memoryC2_uid446_expTables_q <= 14'b00100011000001;
                7'b0001100 : memoryC2_uid446_expTables_q <= 14'b00100011010010;
                7'b0001101 : memoryC2_uid446_expTables_q <= 14'b00100011100100;
                7'b0001110 : memoryC2_uid446_expTables_q <= 14'b00100011110110;
                7'b0001111 : memoryC2_uid446_expTables_q <= 14'b00100100000111;
                7'b0010000 : memoryC2_uid446_expTables_q <= 14'b00100100011010;
                7'b0010001 : memoryC2_uid446_expTables_q <= 14'b00100100101011;
                7'b0010010 : memoryC2_uid446_expTables_q <= 14'b00100100111110;
                7'b0010011 : memoryC2_uid446_expTables_q <= 14'b00100101010001;
                7'b0010100 : memoryC2_uid446_expTables_q <= 14'b00100101100100;
                7'b0010101 : memoryC2_uid446_expTables_q <= 14'b00100101110111;
                7'b0010110 : memoryC2_uid446_expTables_q <= 14'b00100110001000;
                7'b0010111 : memoryC2_uid446_expTables_q <= 14'b00100110011110;
                7'b0011000 : memoryC2_uid446_expTables_q <= 14'b00100110101111;
                7'b0011001 : memoryC2_uid446_expTables_q <= 14'b00100111000101;
                7'b0011010 : memoryC2_uid446_expTables_q <= 14'b00100111011000;
                7'b0011011 : memoryC2_uid446_expTables_q <= 14'b00100111101001;
                7'b0011100 : memoryC2_uid446_expTables_q <= 14'b00101000000000;
                7'b0011101 : memoryC2_uid446_expTables_q <= 14'b00101000010011;
                7'b0011110 : memoryC2_uid446_expTables_q <= 14'b00101000101000;
                7'b0011111 : memoryC2_uid446_expTables_q <= 14'b00101000111100;
                7'b0100000 : memoryC2_uid446_expTables_q <= 14'b00101001001110;
                7'b0100001 : memoryC2_uid446_expTables_q <= 14'b00101001100101;
                7'b0100010 : memoryC2_uid446_expTables_q <= 14'b00101001111000;
                7'b0100011 : memoryC2_uid446_expTables_q <= 14'b00101010001111;
                7'b0100100 : memoryC2_uid446_expTables_q <= 14'b00101010100011;
                7'b0100101 : memoryC2_uid446_expTables_q <= 14'b00101010111000;
                7'b0100110 : memoryC2_uid446_expTables_q <= 14'b00101011001100;
                7'b0100111 : memoryC2_uid446_expTables_q <= 14'b00101011100100;
                7'b0101000 : memoryC2_uid446_expTables_q <= 14'b00101011111100;
                7'b0101001 : memoryC2_uid446_expTables_q <= 14'b00101100001111;
                7'b0101010 : memoryC2_uid446_expTables_q <= 14'b00101100100111;
                7'b0101011 : memoryC2_uid446_expTables_q <= 14'b00101100111100;
                7'b0101100 : memoryC2_uid446_expTables_q <= 14'b00101101010010;
                7'b0101101 : memoryC2_uid446_expTables_q <= 14'b00101101101011;
                7'b0101110 : memoryC2_uid446_expTables_q <= 14'b00101110000010;
                7'b0101111 : memoryC2_uid446_expTables_q <= 14'b00101110011010;
                7'b0110000 : memoryC2_uid446_expTables_q <= 14'b00101110101111;
                7'b0110001 : memoryC2_uid446_expTables_q <= 14'b00101111000101;
                7'b0110010 : memoryC2_uid446_expTables_q <= 14'b00101111100000;
                7'b0110011 : memoryC2_uid446_expTables_q <= 14'b00101111111000;
                7'b0110100 : memoryC2_uid446_expTables_q <= 14'b00110000001101;
                7'b0110101 : memoryC2_uid446_expTables_q <= 14'b00110000101000;
                7'b0110110 : memoryC2_uid446_expTables_q <= 14'b00110000111110;
                7'b0110111 : memoryC2_uid446_expTables_q <= 14'b00110001011001;
                7'b0111000 : memoryC2_uid446_expTables_q <= 14'b00110001110000;
                7'b0111001 : memoryC2_uid446_expTables_q <= 14'b00110010001010;
                7'b0111010 : memoryC2_uid446_expTables_q <= 14'b00110010100010;
                7'b0111011 : memoryC2_uid446_expTables_q <= 14'b00110010111100;
                7'b0111100 : memoryC2_uid446_expTables_q <= 14'b00110011010110;
                7'b0111101 : memoryC2_uid446_expTables_q <= 14'b00110011110000;
                7'b0111110 : memoryC2_uid446_expTables_q <= 14'b00110100000111;
                7'b0111111 : memoryC2_uid446_expTables_q <= 14'b00110100100011;
                7'b1000000 : memoryC2_uid446_expTables_q <= 14'b00110100111101;
                7'b1000001 : memoryC2_uid446_expTables_q <= 14'b00110101011001;
                7'b1000010 : memoryC2_uid446_expTables_q <= 14'b00110101110011;
                7'b1000011 : memoryC2_uid446_expTables_q <= 14'b00110110001110;
                7'b1000100 : memoryC2_uid446_expTables_q <= 14'b00110110101001;
                7'b1000101 : memoryC2_uid446_expTables_q <= 14'b00110111000101;
                7'b1000110 : memoryC2_uid446_expTables_q <= 14'b00110111100000;
                7'b1000111 : memoryC2_uid446_expTables_q <= 14'b00110111111011;
                7'b1001000 : memoryC2_uid446_expTables_q <= 14'b00111000011010;
                7'b1001001 : memoryC2_uid446_expTables_q <= 14'b00111000110100;
                7'b1001010 : memoryC2_uid446_expTables_q <= 14'b00111001010001;
                7'b1001011 : memoryC2_uid446_expTables_q <= 14'b00111001101110;
                7'b1001100 : memoryC2_uid446_expTables_q <= 14'b00111010001010;
                7'b1001101 : memoryC2_uid446_expTables_q <= 14'b00111010100111;
                7'b1001110 : memoryC2_uid446_expTables_q <= 14'b00111011000111;
                7'b1001111 : memoryC2_uid446_expTables_q <= 14'b00111011100000;
                7'b1010000 : memoryC2_uid446_expTables_q <= 14'b00111100000010;
                7'b1010001 : memoryC2_uid446_expTables_q <= 14'b00111100011110;
                7'b1010010 : memoryC2_uid446_expTables_q <= 14'b00111101000000;
                7'b1010011 : memoryC2_uid446_expTables_q <= 14'b00111101011101;
                7'b1010100 : memoryC2_uid446_expTables_q <= 14'b00111101111010;
                7'b1010101 : memoryC2_uid446_expTables_q <= 14'b00111110011011;
                7'b1010110 : memoryC2_uid446_expTables_q <= 14'b00111110111010;
                7'b1010111 : memoryC2_uid446_expTables_q <= 14'b00111111011001;
                7'b1011000 : memoryC2_uid446_expTables_q <= 14'b00111111111010;
                7'b1011001 : memoryC2_uid446_expTables_q <= 14'b01000000010111;
                7'b1011010 : memoryC2_uid446_expTables_q <= 14'b01000000111001;
                7'b1011011 : memoryC2_uid446_expTables_q <= 14'b01000001011011;
                7'b1011100 : memoryC2_uid446_expTables_q <= 14'b01000001111011;
                7'b1011101 : memoryC2_uid446_expTables_q <= 14'b01000010011100;
                7'b1011110 : memoryC2_uid446_expTables_q <= 14'b01000010111111;
                7'b1011111 : memoryC2_uid446_expTables_q <= 14'b01000011011111;
                7'b1100000 : memoryC2_uid446_expTables_q <= 14'b01000100000011;
                7'b1100001 : memoryC2_uid446_expTables_q <= 14'b01000100100001;
                7'b1100010 : memoryC2_uid446_expTables_q <= 14'b01000101000100;
                7'b1100011 : memoryC2_uid446_expTables_q <= 14'b01000101101001;
                7'b1100100 : memoryC2_uid446_expTables_q <= 14'b01000110001100;
                7'b1100101 : memoryC2_uid446_expTables_q <= 14'b01000110101111;
                7'b1100110 : memoryC2_uid446_expTables_q <= 14'b01000111010010;
                7'b1100111 : memoryC2_uid446_expTables_q <= 14'b01000111110101;
                7'b1101000 : memoryC2_uid446_expTables_q <= 14'b01001000011010;
                7'b1101001 : memoryC2_uid446_expTables_q <= 14'b01001000111100;
                7'b1101010 : memoryC2_uid446_expTables_q <= 14'b01001001100100;
                7'b1101011 : memoryC2_uid446_expTables_q <= 14'b01001010000110;
                7'b1101100 : memoryC2_uid446_expTables_q <= 14'b01001010101110;
                7'b1101101 : memoryC2_uid446_expTables_q <= 14'b01001011010001;
                7'b1101110 : memoryC2_uid446_expTables_q <= 14'b01001011111000;
                7'b1101111 : memoryC2_uid446_expTables_q <= 14'b01001100011101;
                7'b1110000 : memoryC2_uid446_expTables_q <= 14'b01001101000100;
                7'b1110001 : memoryC2_uid446_expTables_q <= 14'b01001101101101;
                7'b1110010 : memoryC2_uid446_expTables_q <= 14'b01001110010100;
                7'b1110011 : memoryC2_uid446_expTables_q <= 14'b01001110111000;
                7'b1110100 : memoryC2_uid446_expTables_q <= 14'b01001111100010;
                7'b1110101 : memoryC2_uid446_expTables_q <= 14'b01010000000111;
                7'b1110110 : memoryC2_uid446_expTables_q <= 14'b01010000110001;
                7'b1110111 : memoryC2_uid446_expTables_q <= 14'b01010001011001;
                7'b1111000 : memoryC2_uid446_expTables_q <= 14'b01010010000010;
                7'b1111001 : memoryC2_uid446_expTables_q <= 14'b01010010101011;
                7'b1111010 : memoryC2_uid446_expTables_q <= 14'b01010011010101;
                7'b1111011 : memoryC2_uid446_expTables_q <= 14'b01010100000000;
                7'b1111100 : memoryC2_uid446_expTables_q <= 14'b01010100101010;
                7'b1111101 : memoryC2_uid446_expTables_q <= 14'b01010101010101;
                7'b1111110 : memoryC2_uid446_expTables_q <= 14'b01010101111111;
                7'b1111111 : memoryC2_uid446_expTables_q <= 14'b01010110101001;
                default : begin
                              // unreachable
                              memoryC2_uid446_expTables_q <= 14'bxxxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // yT1_uid452_invPolyEval(BITSELECT,451)@12
    assign yT1_uid452_invPolyEval_b = redist4_yAddr_uid70_block_rsrvd_fix_merged_bit_select_c_1_q[18:5];

    // prodXY_uid465_pT1_uid453_invPolyEval_cma(CHAINMULTADD,548)@12 + 2
    assign prodXY_uid465_pT1_uid453_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid465_pT1_uid453_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid465_pT1_uid453_invPolyEval_cma_ena1 = prodXY_uid465_pT1_uid453_invPolyEval_cma_ena0;
    assign prodXY_uid465_pT1_uid453_invPolyEval_cma_l[0] = $signed({1'b0, prodXY_uid465_pT1_uid453_invPolyEval_cma_a0[0][13:0]});
    assign prodXY_uid465_pT1_uid453_invPolyEval_cma_p[0] = prodXY_uid465_pT1_uid453_invPolyEval_cma_l[0] * prodXY_uid465_pT1_uid453_invPolyEval_cma_c0[0];
    assign prodXY_uid465_pT1_uid453_invPolyEval_cma_u[0] = prodXY_uid465_pT1_uid453_invPolyEval_cma_p[0][28:0];
    assign prodXY_uid465_pT1_uid453_invPolyEval_cma_w[0] = prodXY_uid465_pT1_uid453_invPolyEval_cma_u[0];
    assign prodXY_uid465_pT1_uid453_invPolyEval_cma_x[0] = prodXY_uid465_pT1_uid453_invPolyEval_cma_w[0];
    assign prodXY_uid465_pT1_uid453_invPolyEval_cma_y[0] = prodXY_uid465_pT1_uid453_invPolyEval_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid465_pT1_uid453_invPolyEval_cma_a0 <= '{default: '0};
            prodXY_uid465_pT1_uid453_invPolyEval_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid465_pT1_uid453_invPolyEval_cma_ena0 == 1'b1)
            begin
                prodXY_uid465_pT1_uid453_invPolyEval_cma_a0[0] <= yT1_uid452_invPolyEval_b;
                prodXY_uid465_pT1_uid453_invPolyEval_cma_c0[0] <= memoryC2_uid446_expTables_q;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid465_pT1_uid453_invPolyEval_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid465_pT1_uid453_invPolyEval_cma_ena1 == 1'b1)
            begin
                prodXY_uid465_pT1_uid453_invPolyEval_cma_s[0] <= prodXY_uid465_pT1_uid453_invPolyEval_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(29), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid465_pT1_uid453_invPolyEval_cma_delay ( .xin(prodXY_uid465_pT1_uid453_invPolyEval_cma_s[0]), .xout(prodXY_uid465_pT1_uid453_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid465_pT1_uid453_invPolyEval_cma_q = $unsigned(prodXY_uid465_pT1_uid453_invPolyEval_cma_qq[27:0]);

    // osig_uid466_pT1_uid453_invPolyEval(BITSELECT,465)@14
    assign osig_uid466_pT1_uid453_invPolyEval_b = $unsigned(prodXY_uid465_pT1_uid453_invPolyEval_cma_q[27:13]);

    // highBBits_uid455_invPolyEval(BITSELECT,454)@14
    assign highBBits_uid455_invPolyEval_b = $unsigned(osig_uid466_pT1_uid453_invPolyEval_b[14:1]);

    // redist17_highBBits_uid455_invPolyEval_b_1(DELAY,571)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_highBBits_uid455_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist17_highBBits_uid455_invPolyEval_b_1_q <= $unsigned(highBBits_uid455_invPolyEval_b);
        end
    end

    // redist2_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_3(DELAY,556)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_3_delay_0 <= '0;
            redist2_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_3_delay_1 <= '0;
            redist2_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_3_q <= '0;
        end
        else
        begin
            redist2_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_3_delay_0 <= $unsigned(yAddr_uid70_block_rsrvd_fix_merged_bit_select_b);
            redist2_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_3_delay_1 <= redist2_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_3_delay_0;
            redist2_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_3_q <= redist2_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_3_delay_1;
        end
    end

    // memoryC1_uid443_expTables(LOOKUP,442)@14 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memoryC1_uid443_expTables_q <= $unsigned(22'b0001111111111111111110);
        end
        else
        begin
            unique case (redist2_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_3_q)
                7'b0000000 : memoryC1_uid443_expTables_q <= 22'b0001111111111111111110;
                7'b0000001 : memoryC1_uid443_expTables_q <= 22'b0010000001000000001011;
                7'b0000010 : memoryC1_uid443_expTables_q <= 22'b0010000010000000111101;
                7'b0000011 : memoryC1_uid443_expTables_q <= 22'b0010000011000010001110;
                7'b0000100 : memoryC1_uid443_expTables_q <= 22'b0010000100000100000000;
                7'b0000101 : memoryC1_uid443_expTables_q <= 22'b0010000101000110010100;
                7'b0000110 : memoryC1_uid443_expTables_q <= 22'b0010000110001001000110;
                7'b0000111 : memoryC1_uid443_expTables_q <= 22'b0010000111001100011010;
                7'b0001000 : memoryC1_uid443_expTables_q <= 22'b0010001000010000010011;
                7'b0001001 : memoryC1_uid443_expTables_q <= 22'b0010001001010100101101;
                7'b0001010 : memoryC1_uid443_expTables_q <= 22'b0010001010011001101000;
                7'b0001011 : memoryC1_uid443_expTables_q <= 22'b0010001011011111000101;
                7'b0001100 : memoryC1_uid443_expTables_q <= 22'b0010001100100101000111;
                7'b0001101 : memoryC1_uid443_expTables_q <= 22'b0010001101101011101011;
                7'b0001110 : memoryC1_uid443_expTables_q <= 22'b0010001110110010110010;
                7'b0001111 : memoryC1_uid443_expTables_q <= 22'b0010001111111010011110;
                7'b0010000 : memoryC1_uid443_expTables_q <= 22'b0010010001000010101100;
                7'b0010001 : memoryC1_uid443_expTables_q <= 22'b0010010010001011100010;
                7'b0010010 : memoryC1_uid443_expTables_q <= 22'b0010010011010100111001;
                7'b0010011 : memoryC1_uid443_expTables_q <= 22'b0010010100011110110110;
                7'b0010100 : memoryC1_uid443_expTables_q <= 22'b0010010101101001010111;
                7'b0010101 : memoryC1_uid443_expTables_q <= 22'b0010010110110100011111;
                7'b0010110 : memoryC1_uid443_expTables_q <= 22'b0010011000000000001101;
                7'b0010111 : memoryC1_uid443_expTables_q <= 22'b0010011001001100011110;
                7'b0011000 : memoryC1_uid443_expTables_q <= 22'b0010011010011001011001;
                7'b0011001 : memoryC1_uid443_expTables_q <= 22'b0010011011100110110111;
                7'b0011010 : memoryC1_uid443_expTables_q <= 22'b0010011100110100111111;
                7'b0011011 : memoryC1_uid443_expTables_q <= 22'b0010011110000011101111;
                7'b0011100 : memoryC1_uid443_expTables_q <= 22'b0010011111010011000010;
                7'b0011101 : memoryC1_uid443_expTables_q <= 22'b0010100000100011000001;
                7'b0011110 : memoryC1_uid443_expTables_q <= 22'b0010100001110011100110;
                7'b0011111 : memoryC1_uid443_expTables_q <= 22'b0010100011000100110100;
                7'b0100000 : memoryC1_uid443_expTables_q <= 22'b0010100100010110101101;
                7'b0100001 : memoryC1_uid443_expTables_q <= 22'b0010100101101001001011;
                7'b0100010 : memoryC1_uid443_expTables_q <= 22'b0010100110111100010110;
                7'b0100011 : memoryC1_uid443_expTables_q <= 22'b0010101000010000000111;
                7'b0100100 : memoryC1_uid443_expTables_q <= 22'b0010101001100100100110;
                7'b0100101 : memoryC1_uid443_expTables_q <= 22'b0010101010111001101110;
                7'b0100110 : memoryC1_uid443_expTables_q <= 22'b0010101100001111100001;
                7'b0100111 : memoryC1_uid443_expTables_q <= 22'b0010101101100101111100;
                7'b0101000 : memoryC1_uid443_expTables_q <= 22'b0010101110111101000011;
                7'b0101001 : memoryC1_uid443_expTables_q <= 22'b0010110000010100111010;
                7'b0101010 : memoryC1_uid443_expTables_q <= 22'b0010110001101101011001;
                7'b0101011 : memoryC1_uid443_expTables_q <= 22'b0010110011000110101000;
                7'b0101100 : memoryC1_uid443_expTables_q <= 22'b0010110100100000100010;
                7'b0101101 : memoryC1_uid443_expTables_q <= 22'b0010110101111011000110;
                7'b0101110 : memoryC1_uid443_expTables_q <= 22'b0010110111010110011010;
                7'b0101111 : memoryC1_uid443_expTables_q <= 22'b0010111000110010011100;
                7'b0110000 : memoryC1_uid443_expTables_q <= 22'b0010111010001111001111;
                7'b0110001 : memoryC1_uid443_expTables_q <= 22'b0010111011101100101111;
                7'b0110010 : memoryC1_uid443_expTables_q <= 22'b0010111101001010111010;
                7'b0110011 : memoryC1_uid443_expTables_q <= 22'b0010111110101001110111;
                7'b0110100 : memoryC1_uid443_expTables_q <= 22'b0011000000001001100110;
                7'b0110101 : memoryC1_uid443_expTables_q <= 22'b0011000001101010000001;
                7'b0110110 : memoryC1_uid443_expTables_q <= 22'b0011000011001011010000;
                7'b0110111 : memoryC1_uid443_expTables_q <= 22'b0011000100101101001100;
                7'b0111000 : memoryC1_uid443_expTables_q <= 22'b0011000110001111111101;
                7'b0111001 : memoryC1_uid443_expTables_q <= 22'b0011000111110011011100;
                7'b0111010 : memoryC1_uid443_expTables_q <= 22'b0011001001010111110000;
                7'b0111011 : memoryC1_uid443_expTables_q <= 22'b0011001010111100110101;
                7'b0111100 : memoryC1_uid443_expTables_q <= 22'b0011001100100010101100;
                7'b0111101 : memoryC1_uid443_expTables_q <= 22'b0011001110001001010111;
                7'b0111110 : memoryC1_uid443_expTables_q <= 22'b0011001111110000111001;
                7'b0111111 : memoryC1_uid443_expTables_q <= 22'b0011010001011001001001;
                7'b1000000 : memoryC1_uid443_expTables_q <= 22'b0011010011000010010000;
                7'b1000001 : memoryC1_uid443_expTables_q <= 22'b0011010100101100001011;
                7'b1000010 : memoryC1_uid443_expTables_q <= 22'b0011010110010110111101;
                7'b1000011 : memoryC1_uid443_expTables_q <= 22'b0011011000000010100011;
                7'b1000100 : memoryC1_uid443_expTables_q <= 22'b0011011001101111000000;
                7'b1000101 : memoryC1_uid443_expTables_q <= 22'b0011011011011100010010;
                7'b1000110 : memoryC1_uid443_expTables_q <= 22'b0011011101001010011100;
                7'b1000111 : memoryC1_uid443_expTables_q <= 22'b0011011110111001011110;
                7'b1001000 : memoryC1_uid443_expTables_q <= 22'b0011100000101001010011;
                7'b1001001 : memoryC1_uid443_expTables_q <= 22'b0011100010011010000111;
                7'b1001010 : memoryC1_uid443_expTables_q <= 22'b0011100100001011110000;
                7'b1001011 : memoryC1_uid443_expTables_q <= 22'b0011100101111110010010;
                7'b1001100 : memoryC1_uid443_expTables_q <= 22'b0011100111110001101111;
                7'b1001101 : memoryC1_uid443_expTables_q <= 22'b0011101001100110000101;
                7'b1001110 : memoryC1_uid443_expTables_q <= 22'b0011101011011011010010;
                7'b1001111 : memoryC1_uid443_expTables_q <= 22'b0011101101010001100010;
                7'b1010000 : memoryC1_uid443_expTables_q <= 22'b0011101111001000100101;
                7'b1010001 : memoryC1_uid443_expTables_q <= 22'b0011110001000000101001;
                7'b1010010 : memoryC1_uid443_expTables_q <= 22'b0011110010111001100100;
                7'b1010011 : memoryC1_uid443_expTables_q <= 22'b0011110100110011100001;
                7'b1010100 : memoryC1_uid443_expTables_q <= 22'b0011110110101110011011;
                7'b1010101 : memoryC1_uid443_expTables_q <= 22'b0011111000101010001111;
                7'b1010110 : memoryC1_uid443_expTables_q <= 22'b0011111010100111000011;
                7'b1010111 : memoryC1_uid443_expTables_q <= 22'b0011111100100100110111;
                7'b1011000 : memoryC1_uid443_expTables_q <= 22'b0011111110100011101000;
                7'b1011001 : memoryC1_uid443_expTables_q <= 22'b0100000000100011011101;
                7'b1011010 : memoryC1_uid443_expTables_q <= 22'b0100000010100100001101;
                7'b1011011 : memoryC1_uid443_expTables_q <= 22'b0100000100100101111110;
                7'b1011100 : memoryC1_uid443_expTables_q <= 22'b0100000110101000110010;
                7'b1011101 : memoryC1_uid443_expTables_q <= 22'b0100001000101100101000;
                7'b1011110 : memoryC1_uid443_expTables_q <= 22'b0100001010110001011110;
                7'b1011111 : memoryC1_uid443_expTables_q <= 22'b0100001100110111011010;
                7'b1100000 : memoryC1_uid443_expTables_q <= 22'b0100001110111110010101;
                7'b1100001 : memoryC1_uid443_expTables_q <= 22'b0100010001000110011010;
                7'b1100010 : memoryC1_uid443_expTables_q <= 22'b0100010011001111011111;
                7'b1100011 : memoryC1_uid443_expTables_q <= 22'b0100010101011001100111;
                7'b1100100 : memoryC1_uid443_expTables_q <= 22'b0100010111100100110110;
                7'b1100101 : memoryC1_uid443_expTables_q <= 22'b0100011001110001001100;
                7'b1100110 : memoryC1_uid443_expTables_q <= 22'b0100011011111110101000;
                7'b1100111 : memoryC1_uid443_expTables_q <= 22'b0100011110001101001100;
                7'b1101000 : memoryC1_uid443_expTables_q <= 22'b0100100000011100110110;
                7'b1101001 : memoryC1_uid443_expTables_q <= 22'b0100100010101101101011;
                7'b1101010 : memoryC1_uid443_expTables_q <= 22'b0100100100111111100011;
                7'b1101011 : memoryC1_uid443_expTables_q <= 22'b0100100111010010101010;
                7'b1101100 : memoryC1_uid443_expTables_q <= 22'b0100101001100110110110;
                7'b1101101 : memoryC1_uid443_expTables_q <= 22'b0100101011111100010001;
                7'b1101110 : memoryC1_uid443_expTables_q <= 22'b0100101110010010110011;
                7'b1101111 : memoryC1_uid443_expTables_q <= 22'b0100110000101010100011;
                7'b1110000 : memoryC1_uid443_expTables_q <= 22'b0100110011000011011111;
                7'b1110001 : memoryC1_uid443_expTables_q <= 22'b0100110101011101100100;
                7'b1110010 : memoryC1_uid443_expTables_q <= 22'b0100110111111000111010;
                7'b1110011 : memoryC1_uid443_expTables_q <= 22'b0100111010010101100001;
                7'b1110100 : memoryC1_uid443_expTables_q <= 22'b0100111100110011010001;
                7'b1110101 : memoryC1_uid443_expTables_q <= 22'b0100111111010010010101;
                7'b1110110 : memoryC1_uid443_expTables_q <= 22'b0101000001110010100100;
                7'b1110111 : memoryC1_uid443_expTables_q <= 22'b0101000100010100000110;
                7'b1111000 : memoryC1_uid443_expTables_q <= 22'b0101000110110110111001;
                7'b1111001 : memoryC1_uid443_expTables_q <= 22'b0101001001011010111101;
                7'b1111010 : memoryC1_uid443_expTables_q <= 22'b0101001100000000010100;
                7'b1111011 : memoryC1_uid443_expTables_q <= 22'b0101001110100110111100;
                7'b1111100 : memoryC1_uid443_expTables_q <= 22'b0101010001001110111010;
                7'b1111101 : memoryC1_uid443_expTables_q <= 22'b0101010011111000001011;
                7'b1111110 : memoryC1_uid443_expTables_q <= 22'b0101010110100010110010;
                7'b1111111 : memoryC1_uid443_expTables_q <= 22'b0101011001001110110000;
                default : begin
                              // unreachable
                              memoryC1_uid443_expTables_q <= 22'bxxxxxxxxxxxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // s1sumAHighB_uid456_invPolyEval(ADD,455)@15
    assign s1sumAHighB_uid456_invPolyEval_a = $unsigned({{1{memoryC1_uid443_expTables_q[21]}}, memoryC1_uid443_expTables_q});
    assign s1sumAHighB_uid456_invPolyEval_b = $unsigned({{9{redist17_highBBits_uid455_invPolyEval_b_1_q[13]}}, redist17_highBBits_uid455_invPolyEval_b_1_q});
    assign s1sumAHighB_uid456_invPolyEval_o = $unsigned($signed(s1sumAHighB_uid456_invPolyEval_a) + $signed(s1sumAHighB_uid456_invPolyEval_b));
    assign s1sumAHighB_uid456_invPolyEval_q = s1sumAHighB_uid456_invPolyEval_o[22:0];

    // lowRangeB_uid454_invPolyEval(BITSELECT,453)@14
    assign lowRangeB_uid454_invPolyEval_in = osig_uid466_pT1_uid453_invPolyEval_b[0:0];
    assign lowRangeB_uid454_invPolyEval_b = lowRangeB_uid454_invPolyEval_in[0:0];

    // redist18_lowRangeB_uid454_invPolyEval_b_1(DELAY,572)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_lowRangeB_uid454_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist18_lowRangeB_uid454_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid454_invPolyEval_b);
        end
    end

    // s1_uid457_invPolyEval(BITJOIN,456)@15
    assign s1_uid457_invPolyEval_q = {s1sumAHighB_uid456_invPolyEval_q, redist18_lowRangeB_uid454_invPolyEval_b_1_q};

    // prodXY_uid468_pT2_uid459_invPolyEval_bs2_merged_bit_select(BITSELECT,553)@15
    assign prodXY_uid468_pT2_uid459_invPolyEval_bs2_merged_bit_select_b = $unsigned(s1_uid457_invPolyEval_q[17:0]);
    assign prodXY_uid468_pT2_uid459_invPolyEval_bs2_merged_bit_select_c = $unsigned(s1_uid457_invPolyEval_q[23:18]);

    // redist1_prodXY_uid468_pT2_uid459_invPolyEval_bs2_merged_bit_select_c_1(DELAY,555)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_prodXY_uid468_pT2_uid459_invPolyEval_bs2_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist1_prodXY_uid468_pT2_uid459_invPolyEval_bs2_merged_bit_select_c_1_q <= $unsigned(prodXY_uid468_pT2_uid459_invPolyEval_bs2_merged_bit_select_c);
        end
    end

    // redist0_prodXY_uid468_pT2_uid459_invPolyEval_bs2_merged_bit_select_b_1(DELAY,554)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_prodXY_uid468_pT2_uid459_invPolyEval_bs2_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist0_prodXY_uid468_pT2_uid459_invPolyEval_bs2_merged_bit_select_b_1_q <= $unsigned(prodXY_uid468_pT2_uid459_invPolyEval_bs2_merged_bit_select_b);
        end
    end

    // prodXY_uid468_pT2_uid459_invPolyEval_bs6(BITSELECT,538)@12
    assign prodXY_uid468_pT2_uid459_invPolyEval_bs6_b = redist4_yAddr_uid70_block_rsrvd_fix_merged_bit_select_c_1_q[18:18];

    // redist11_prodXY_uid468_pT2_uid459_invPolyEval_bs6_b_4(DELAY,565)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_prodXY_uid468_pT2_uid459_invPolyEval_bs6_b_4_delay_0 <= '0;
            redist11_prodXY_uid468_pT2_uid459_invPolyEval_bs6_b_4_delay_1 <= '0;
            redist11_prodXY_uid468_pT2_uid459_invPolyEval_bs6_b_4_delay_2 <= '0;
            redist11_prodXY_uid468_pT2_uid459_invPolyEval_bs6_b_4_q <= '0;
        end
        else
        begin
            redist11_prodXY_uid468_pT2_uid459_invPolyEval_bs6_b_4_delay_0 <= $unsigned(prodXY_uid468_pT2_uid459_invPolyEval_bs6_b);
            redist11_prodXY_uid468_pT2_uid459_invPolyEval_bs6_b_4_delay_1 <= redist11_prodXY_uid468_pT2_uid459_invPolyEval_bs6_b_4_delay_0;
            redist11_prodXY_uid468_pT2_uid459_invPolyEval_bs6_b_4_delay_2 <= redist11_prodXY_uid468_pT2_uid459_invPolyEval_bs6_b_4_delay_1;
            redist11_prodXY_uid468_pT2_uid459_invPolyEval_bs6_b_4_q <= redist11_prodXY_uid468_pT2_uid459_invPolyEval_bs6_b_4_delay_2;
        end
    end

    // prodXY_uid468_pT2_uid459_invPolyEval_bjA7(BITJOIN,539)@16
    assign prodXY_uid468_pT2_uid459_invPolyEval_bjA7_q = {GND_q, redist11_prodXY_uid468_pT2_uid459_invPolyEval_bs6_b_4_q};

    // prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma(CHAINMULTADD,550)@16 + 2
    assign prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_reset = ~ (resetn);
    assign prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_ena0 = 1'b1;
    assign prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_ena1 = prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_ena0;
    assign prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_r[0] = $signed({1'b0, prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_c0[0][17:0]});
    assign prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_r[1] = $signed({1'b0, prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_c0[1][17:0]});
    assign prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_p[0] = prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_a0[0] * prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_r[0];
    assign prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_p[1] = prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_a0[1] * prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_r[1];
    assign prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_u[0] = {{1{prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_p[0][24]}}, prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_p[0][24:0]};
    assign prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_u[1] = {{1{prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_p[1][24]}}, prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_p[1][24:0]};
    assign prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_w[0] = prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_u[0] + prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_u[1];
    assign prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_x[0] = prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_w[0];
    assign prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_y[0] = prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_a0 <= '{default: '0};
            prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_ena0 == 1'b1)
            begin
                prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_a0[0] <= {{4{prodXY_uid468_pT2_uid459_invPolyEval_bjA7_q[1]}}, prodXY_uid468_pT2_uid459_invPolyEval_bjA7_q[1:0]};
                prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_a0[1] <= redist1_prodXY_uid468_pT2_uid459_invPolyEval_bs2_merged_bit_select_c_1_q;
                prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_c0[0] <= redist0_prodXY_uid468_pT2_uid459_invPolyEval_bs2_merged_bit_select_b_1_q;
                prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_c0[1] <= redist12_prodXY_uid468_pT2_uid459_invPolyEval_bs1_b_4_outputreg0_q;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_ena1 == 1'b1)
            begin
                prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_s[0] <= prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(26), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_delay ( .xin(prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_s[0]), .xout(prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_q = $unsigned(prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_qq[24:0]);

    // redist8_prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_q_1(DELAY,562)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_q_1_q <= '0;
        end
        else
        begin
            redist8_prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_q_1_q <= $unsigned(prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_q);
        end
    end

    // prodXY_uid468_pT2_uid459_invPolyEval_sums_align_1(BITSHIFT,545)@19
    assign prodXY_uid468_pT2_uid459_invPolyEval_sums_align_1_qint = { redist8_prodXY_uid468_pT2_uid459_invPolyEval_ma3_cma_q_1_q, 18'b000000000000000000 };
    assign prodXY_uid468_pT2_uid459_invPolyEval_sums_align_1_q = prodXY_uid468_pT2_uid459_invPolyEval_sums_align_1_qint[42:0];

    // prodXY_uid468_pT2_uid459_invPolyEval_im9(MULT,541)@16 + 2
    assign prodXY_uid468_pT2_uid459_invPolyEval_im9_pr = signed'({1'b0, prodXY_uid468_pT2_uid459_invPolyEval_im9_a0[0:0]}) * signed'(prodXY_uid468_pT2_uid459_invPolyEval_im9_b0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid468_pT2_uid459_invPolyEval_im9_a0 <= 1'b0;
            prodXY_uid468_pT2_uid459_invPolyEval_im9_b0 <= 6'b0;
            prodXY_uid468_pT2_uid459_invPolyEval_im9_s1 <= 7'b0;
        end
        else
        begin
            prodXY_uid468_pT2_uid459_invPolyEval_im9_a0 <= redist11_prodXY_uid468_pT2_uid459_invPolyEval_bs6_b_4_q;
            prodXY_uid468_pT2_uid459_invPolyEval_im9_b0 <= $unsigned(redist1_prodXY_uid468_pT2_uid459_invPolyEval_bs2_merged_bit_select_c_1_q);
            prodXY_uid468_pT2_uid459_invPolyEval_im9_s1 <= $unsigned(prodXY_uid468_pT2_uid459_invPolyEval_im9_pr[6:0]);
        end
    end
    assign prodXY_uid468_pT2_uid459_invPolyEval_im9_q = prodXY_uid468_pT2_uid459_invPolyEval_im9_s1;

    // redist10_prodXY_uid468_pT2_uid459_invPolyEval_im9_q_1(DELAY,564)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_prodXY_uid468_pT2_uid459_invPolyEval_im9_q_1_q <= '0;
        end
        else
        begin
            redist10_prodXY_uid468_pT2_uid459_invPolyEval_im9_q_1_q <= $unsigned(prodXY_uid468_pT2_uid459_invPolyEval_im9_q);
        end
    end

    // prodXY_uid468_pT2_uid459_invPolyEval_im0_cma(CHAINMULTADD,549)@16 + 2
    assign prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_reset = ~ (resetn);
    assign prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_ena0 = 1'b1;
    assign prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_ena1 = prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_ena0;
    assign prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_p[0] = prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_a0[0] * prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_c0[0];
    assign prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_u[0] = prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_p[0][35:0];
    assign prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_w[0] = prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_u[0];
    assign prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_x[0] = prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_w[0];
    assign prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_y[0] = prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_a0 <= '{default: '0};
            prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_ena0 == 1'b1)
            begin
                prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_a0[0] <= redist12_prodXY_uid468_pT2_uid459_invPolyEval_bs1_b_4_outputreg0_q;
                prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_c0[0] <= redist0_prodXY_uid468_pT2_uid459_invPolyEval_bs2_merged_bit_select_b_1_q;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_ena1 == 1'b1)
            begin
                prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_s[0] <= prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_delay ( .xin(prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_s[0]), .xout(prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_q = $unsigned(prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_qq[35:0]);

    // redist9_prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_q_1(DELAY,563)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_q_1_q <= '0;
        end
        else
        begin
            redist9_prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_q_1_q <= $unsigned(prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_q);
        end
    end

    // prodXY_uid468_pT2_uid459_invPolyEval_sums_join_0(BITJOIN,544)@19
    assign prodXY_uid468_pT2_uid459_invPolyEval_sums_join_0_q = {redist10_prodXY_uid468_pT2_uid459_invPolyEval_im9_q_1_q, redist9_prodXY_uid468_pT2_uid459_invPolyEval_im0_cma_q_1_q};

    // prodXY_uid468_pT2_uid459_invPolyEval_sums_result_add_0_0(ADD,547)@19
    assign prodXY_uid468_pT2_uid459_invPolyEval_sums_result_add_0_0_a = $unsigned({{1{prodXY_uid468_pT2_uid459_invPolyEval_sums_join_0_q[42]}}, prodXY_uid468_pT2_uid459_invPolyEval_sums_join_0_q});
    assign prodXY_uid468_pT2_uid459_invPolyEval_sums_result_add_0_0_b = $unsigned({{1{prodXY_uid468_pT2_uid459_invPolyEval_sums_align_1_q[42]}}, prodXY_uid468_pT2_uid459_invPolyEval_sums_align_1_q});
    assign prodXY_uid468_pT2_uid459_invPolyEval_sums_result_add_0_0_o = $unsigned($signed(prodXY_uid468_pT2_uid459_invPolyEval_sums_result_add_0_0_a) + $signed(prodXY_uid468_pT2_uid459_invPolyEval_sums_result_add_0_0_b));
    assign prodXY_uid468_pT2_uid459_invPolyEval_sums_result_add_0_0_q = prodXY_uid468_pT2_uid459_invPolyEval_sums_result_add_0_0_o[43:0];

    // osig_uid469_pT2_uid459_invPolyEval(BITSELECT,468)@19
    assign osig_uid469_pT2_uid459_invPolyEval_in = $unsigned(prodXY_uid468_pT2_uid459_invPolyEval_sums_result_add_0_0_q[42:0]);
    assign osig_uid469_pT2_uid459_invPolyEval_b = $unsigned(osig_uid469_pT2_uid459_invPolyEval_in[42:18]);

    // redist16_osig_uid469_pT2_uid459_invPolyEval_b_1(DELAY,570)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_osig_uid469_pT2_uid459_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist16_osig_uid469_pT2_uid459_invPolyEval_b_1_q <= $unsigned(osig_uid469_pT2_uid459_invPolyEval_b);
        end
    end

    // highBBits_uid461_invPolyEval(BITSELECT,460)@20
    assign highBBits_uid461_invPolyEval_b = $unsigned(redist16_osig_uid469_pT2_uid459_invPolyEval_b_1_q[24:2]);

    // redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8(DELAY,557)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8_delay_0 <= '0;
            redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8_delay_1 <= '0;
            redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8_delay_2 <= '0;
            redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8_delay_3 <= '0;
            redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8_q <= '0;
        end
        else
        begin
            redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8_delay_0 <= $unsigned(redist2_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_3_q);
            redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8_delay_1 <= redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8_delay_0;
            redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8_delay_2 <= redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8_delay_1;
            redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8_delay_3 <= redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8_delay_2;
            redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8_q <= redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8_delay_3;
        end
    end

    // memoryC0_uid440_expTables(LOOKUP,439)@19 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memoryC0_uid440_expTables_q <= $unsigned(29'b00100000000000000000000000100);
        end
        else
        begin
            unique case (redist3_yAddr_uid70_block_rsrvd_fix_merged_bit_select_b_8_q)
                7'b0000000 : memoryC0_uid440_expTables_q <= 29'b00100000000000000000000000100;
                7'b0000001 : memoryC0_uid440_expTables_q <= 29'b00100000010000000100000001010;
                7'b0000010 : memoryC0_uid440_expTables_q <= 29'b00100000100000010000000101111;
                7'b0000011 : memoryC0_uid440_expTables_q <= 29'b00100000110000100100010010101;
                7'b0000100 : memoryC0_uid440_expTables_q <= 29'b00100001000001000000101011100;
                7'b0000101 : memoryC0_uid440_expTables_q <= 29'b00100001010001100101010100101;
                7'b0000110 : memoryC0_uid440_expTables_q <= 29'b00100001100010010010010010010;
                7'b0000111 : memoryC0_uid440_expTables_q <= 29'b00100001110011000111101000011;
                7'b0001000 : memoryC0_uid440_expTables_q <= 29'b00100010000100000101011011010;
                7'b0001001 : memoryC0_uid440_expTables_q <= 29'b00100010010101001011101111001;
                7'b0001010 : memoryC0_uid440_expTables_q <= 29'b00100010100110011010101000011;
                7'b0001011 : memoryC0_uid440_expTables_q <= 29'b00100010110111110010001011010;
                7'b0001100 : memoryC0_uid440_expTables_q <= 29'b00100011001001010010011100000;
                7'b0001101 : memoryC0_uid440_expTables_q <= 29'b00100011011010111011011111001;
                7'b0001110 : memoryC0_uid440_expTables_q <= 29'b00100011101100101101011001000;
                7'b0001111 : memoryC0_uid440_expTables_q <= 29'b00100011111110101000001110000;
                7'b0010000 : memoryC0_uid440_expTables_q <= 29'b00100100010000101100000010110;
                7'b0010001 : memoryC0_uid440_expTables_q <= 29'b00100100100010111000111011100;
                7'b0010010 : memoryC0_uid440_expTables_q <= 29'b00100100110101001110111101001;
                7'b0010011 : memoryC0_uid440_expTables_q <= 29'b00100101000111101110001100000;
                7'b0010100 : memoryC0_uid440_expTables_q <= 29'b00100101011010010110101100111;
                7'b0010101 : memoryC0_uid440_expTables_q <= 29'b00100101101101001000100100010;
                7'b0010110 : memoryC0_uid440_expTables_q <= 29'b00100110000000000011110111000;
                7'b0010111 : memoryC0_uid440_expTables_q <= 29'b00100110010011001000101001110;
                7'b0011000 : memoryC0_uid440_expTables_q <= 29'b00100110100110010111000001010;
                7'b0011001 : memoryC0_uid440_expTables_q <= 29'b00100110111001101111000010011;
                7'b0011010 : memoryC0_uid440_expTables_q <= 29'b00100111001101010000110001111;
                7'b0011011 : memoryC0_uid440_expTables_q <= 29'b00100111100000111100010100110;
                7'b0011100 : memoryC0_uid440_expTables_q <= 29'b00100111110100110001101111111;
                7'b0011101 : memoryC0_uid440_expTables_q <= 29'b00101000001000110001001000001;
                7'b0011110 : memoryC0_uid440_expTables_q <= 29'b00101000011100111010100010101;
                7'b0011111 : memoryC0_uid440_expTables_q <= 29'b00101000110001001110000100011;
                7'b0100000 : memoryC0_uid440_expTables_q <= 29'b00101001000101101011110010011;
                7'b0100001 : memoryC0_uid440_expTables_q <= 29'b00101001011010010011110001111;
                7'b0100010 : memoryC0_uid440_expTables_q <= 29'b00101001101111000110000111111;
                7'b0100011 : memoryC0_uid440_expTables_q <= 29'b00101010000100000010111001110;
                7'b0100100 : memoryC0_uid440_expTables_q <= 29'b00101010011001001010001100100;
                7'b0100101 : memoryC0_uid440_expTables_q <= 29'b00101010101110011100000101101;
                7'b0100110 : memoryC0_uid440_expTables_q <= 29'b00101011000011111000101010011;
                7'b0100111 : memoryC0_uid440_expTables_q <= 29'b00101011011001100000000000001;
                7'b0101000 : memoryC0_uid440_expTables_q <= 29'b00101011101111010010001100010;
                7'b0101001 : memoryC0_uid440_expTables_q <= 29'b00101100000101001111010100001;
                7'b0101010 : memoryC0_uid440_expTables_q <= 29'b00101100011011010111011101011;
                7'b0101011 : memoryC0_uid440_expTables_q <= 29'b00101100110001101010101101011;
                7'b0101100 : memoryC0_uid440_expTables_q <= 29'b00101101001000001001001001111;
                7'b0101101 : memoryC0_uid440_expTables_q <= 29'b00101101011110110010111000100;
                7'b0101110 : memoryC0_uid440_expTables_q <= 29'b00101101110101100111111110110;
                7'b0101111 : memoryC0_uid440_expTables_q <= 29'b00101110001100101000100010011;
                7'b0110000 : memoryC0_uid440_expTables_q <= 29'b00101110100011110100101001001;
                7'b0110001 : memoryC0_uid440_expTables_q <= 29'b00101110111011001100011000111;
                7'b0110010 : memoryC0_uid440_expTables_q <= 29'b00101111010010101111110111100;
                7'b0110011 : memoryC0_uid440_expTables_q <= 29'b00101111101010011111001010110;
                7'b0110100 : memoryC0_uid440_expTables_q <= 29'b00110000000010011010011000101;
                7'b0110101 : memoryC0_uid440_expTables_q <= 29'b00110000011010100001100111001;
                7'b0110110 : memoryC0_uid440_expTables_q <= 29'b00110000110010110100111100010;
                7'b0110111 : memoryC0_uid440_expTables_q <= 29'b00110001001011010100011110001;
                7'b0111000 : memoryC0_uid440_expTables_q <= 29'b00110001100100000000010010110;
                7'b0111001 : memoryC0_uid440_expTables_q <= 29'b00110001111100111000100000100;
                7'b0111010 : memoryC0_uid440_expTables_q <= 29'b00110010010101111101001101011;
                7'b0111011 : memoryC0_uid440_expTables_q <= 29'b00110010101111001110011111110;
                7'b0111100 : memoryC0_uid440_expTables_q <= 29'b00110011001000101100011110000;
                7'b0111101 : memoryC0_uid440_expTables_q <= 29'b00110011100010010111001110011;
                7'b0111110 : memoryC0_uid440_expTables_q <= 29'b00110011111100001110110111010;
                7'b0111111 : memoryC0_uid440_expTables_q <= 29'b00110100010110010011011111011;
                7'b1000000 : memoryC0_uid440_expTables_q <= 29'b00110100110000100101001101000;
                7'b1000001 : memoryC0_uid440_expTables_q <= 29'b00110101001011000100000110110;
                7'b1000010 : memoryC0_uid440_expTables_q <= 29'b00110101100101110000010011010;
                7'b1000011 : memoryC0_uid440_expTables_q <= 29'b00110110000000101001111001010;
                7'b1000100 : memoryC0_uid440_expTables_q <= 29'b00110110011011110000111111011;
                7'b1000101 : memoryC0_uid440_expTables_q <= 29'b00110110110111000101101100100;
                7'b1000110 : memoryC0_uid440_expTables_q <= 29'b00110111010010101000000111011;
                7'b1000111 : memoryC0_uid440_expTables_q <= 29'b00110111101110011000010110111;
                7'b1001000 : memoryC0_uid440_expTables_q <= 29'b00111000001010010110100010001;
                7'b1001001 : memoryC0_uid440_expTables_q <= 29'b00111000100110100010101111110;
                7'b1001010 : memoryC0_uid440_expTables_q <= 29'b00111001000010111101000111001;
                7'b1001011 : memoryC0_uid440_expTables_q <= 29'b00111001011111100101101111010;
                7'b1001100 : memoryC0_uid440_expTables_q <= 29'b00111001111100011100101111010;
                7'b1001101 : memoryC0_uid440_expTables_q <= 29'b00111010011001100010001110011;
                7'b1001110 : memoryC0_uid440_expTables_q <= 29'b00111010110110110110010100000;
                7'b1001111 : memoryC0_uid440_expTables_q <= 29'b00111011010100011001000111001;
                7'b1010000 : memoryC0_uid440_expTables_q <= 29'b00111011110010001010101111100;
                7'b1010001 : memoryC0_uid440_expTables_q <= 29'b00111100010000001011010100011;
                7'b1010010 : memoryC0_uid440_expTables_q <= 29'b00111100101110011010111101011;
                7'b1010011 : memoryC0_uid440_expTables_q <= 29'b00111101001100111001110001111;
                7'b1010100 : memoryC0_uid440_expTables_q <= 29'b00111101101011100111111001101;
                7'b1010101 : memoryC0_uid440_expTables_q <= 29'b00111110001010100101011100011;
                7'b1010110 : memoryC0_uid440_expTables_q <= 29'b00111110101001110010100001110;
                7'b1010111 : memoryC0_uid440_expTables_q <= 29'b00111111001001001111010001100;
                7'b1011000 : memoryC0_uid440_expTables_q <= 29'b00111111101000111011110011101;
                7'b1011001 : memoryC0_uid440_expTables_q <= 29'b01000000001000111000001111111;
                7'b1011010 : memoryC0_uid440_expTables_q <= 29'b01000000101001000100101110100;
                7'b1011011 : memoryC0_uid440_expTables_q <= 29'b01000001001001100001010111011;
                7'b1011100 : memoryC0_uid440_expTables_q <= 29'b01000001101010001110010010101;
                7'b1011101 : memoryC0_uid440_expTables_q <= 29'b01000010001011001011101000011;
                7'b1011110 : memoryC0_uid440_expTables_q <= 29'b01000010101100011001100001000;
                7'b1011111 : memoryC0_uid440_expTables_q <= 29'b01000011001101111000000100101;
                7'b1100000 : memoryC0_uid440_expTables_q <= 29'b01000011101111100111011011111;
                7'b1100001 : memoryC0_uid440_expTables_q <= 29'b01000100010001100111101110111;
                7'b1100010 : memoryC0_uid440_expTables_q <= 29'b01000100110011111001000110011;
                7'b1100011 : memoryC0_uid440_expTables_q <= 29'b01000101010110011011101010111;
                7'b1100100 : memoryC0_uid440_expTables_q <= 29'b01000101111001001111100101000;
                7'b1100101 : memoryC0_uid440_expTables_q <= 29'b01000110011100010100111101011;
                7'b1100110 : memoryC0_uid440_expTables_q <= 29'b01000110111111101011111100111;
                7'b1100111 : memoryC0_uid440_expTables_q <= 29'b01000111100011010100101100010;
                7'b1101000 : memoryC0_uid440_expTables_q <= 29'b01001000000111001111010100100;
                7'b1101001 : memoryC0_uid440_expTables_q <= 29'b01001000101011011011111110100;
                7'b1101010 : memoryC0_uid440_expTables_q <= 29'b01001001001111111010110011100;
                7'b1101011 : memoryC0_uid440_expTables_q <= 29'b01001001110100101011111100011;
                7'b1101100 : memoryC0_uid440_expTables_q <= 29'b01001010011001101111100010100;
                7'b1101101 : memoryC0_uid440_expTables_q <= 29'b01001010111111000101101111000;
                7'b1101110 : memoryC0_uid440_expTables_q <= 29'b01001011100100101110101011011;
                7'b1101111 : memoryC0_uid440_expTables_q <= 29'b01001100001010101010100000111;
                7'b1110000 : memoryC0_uid440_expTables_q <= 29'b01001100110000111001011001000;
                7'b1110001 : memoryC0_uid440_expTables_q <= 29'b01001101010111011011011101100;
                7'b1110010 : memoryC0_uid440_expTables_q <= 29'b01001101111110010000110111110;
                7'b1110011 : memoryC0_uid440_expTables_q <= 29'b01001110100101011001110001100;
                7'b1110100 : memoryC0_uid440_expTables_q <= 29'b01001111001100110110010100110;
                7'b1110101 : memoryC0_uid440_expTables_q <= 29'b01001111110100100110101011001;
                7'b1110110 : memoryC0_uid440_expTables_q <= 29'b01010000011100101010111110110;
                7'b1110111 : memoryC0_uid440_expTables_q <= 29'b01010001000101000011011001100;
                7'b1111000 : memoryC0_uid440_expTables_q <= 29'b01010001101101110000000101100;
                7'b1111001 : memoryC0_uid440_expTables_q <= 29'b01010010010110110001001101000;
                7'b1111010 : memoryC0_uid440_expTables_q <= 29'b01010011000000000110111010001;
                7'b1111011 : memoryC0_uid440_expTables_q <= 29'b01010011101001110001010111011;
                7'b1111100 : memoryC0_uid440_expTables_q <= 29'b01010100010011110000101111000;
                7'b1111101 : memoryC0_uid440_expTables_q <= 29'b01010100111110000101001011101;
                7'b1111110 : memoryC0_uid440_expTables_q <= 29'b01010101101000101110110111110;
                7'b1111111 : memoryC0_uid440_expTables_q <= 29'b01010110010011101101111110000;
                default : begin
                              // unreachable
                              memoryC0_uid440_expTables_q <= 29'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // s2sumAHighB_uid462_invPolyEval(ADD,461)@20
    assign s2sumAHighB_uid462_invPolyEval_a = $unsigned({{1{memoryC0_uid440_expTables_q[28]}}, memoryC0_uid440_expTables_q});
    assign s2sumAHighB_uid462_invPolyEval_b = $unsigned({{7{highBBits_uid461_invPolyEval_b[22]}}, highBBits_uid461_invPolyEval_b});
    assign s2sumAHighB_uid462_invPolyEval_o = $unsigned($signed(s2sumAHighB_uid462_invPolyEval_a) + $signed(s2sumAHighB_uid462_invPolyEval_b));
    assign s2sumAHighB_uid462_invPolyEval_q = s2sumAHighB_uid462_invPolyEval_o[29:0];

    // lowRangeB_uid460_invPolyEval(BITSELECT,459)@20
    assign lowRangeB_uid460_invPolyEval_in = redist16_osig_uid469_pT2_uid459_invPolyEval_b_1_q[1:0];
    assign lowRangeB_uid460_invPolyEval_b = lowRangeB_uid460_invPolyEval_in[1:0];

    // s2_uid463_invPolyEval(BITJOIN,462)@20
    assign s2_uid463_invPolyEval_q = {s2sumAHighB_uid462_invPolyEval_q, lowRangeB_uid460_invPolyEval_b};

    // peORExpInc_uid74_block_rsrvd_fix(BITSELECT,73)@20
    assign peORExpInc_uid74_block_rsrvd_fix_in = $unsigned(s2_uid463_invPolyEval_q[29:0]);
    assign peORExpInc_uid74_block_rsrvd_fix_b = $unsigned(peORExpInc_uid74_block_rsrvd_fix_in[29:29]);

    // redist27_peORExpInc_uid74_block_rsrvd_fix_b_1(DELAY,581)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_peORExpInc_uid74_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist27_peORExpInc_uid74_block_rsrvd_fix_b_1_q <= $unsigned(peORExpInc_uid74_block_rsrvd_fix_b);
        end
    end

    // cstBias_uid9_block_rsrvd_fix(CONSTANT,8)
    assign cstBias_uid9_block_rsrvd_fix_q = $unsigned(8'b01111111);

    // redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_notEnable(LOGICAL,608)
    assign redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_nor(LOGICAL,609)
    assign redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_nor_q = ~ (redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_notEnable_q | redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_sticky_ena_q);

    // redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_last(CONSTANT,605)
    assign redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_last_q = $unsigned(5'b01000);

    // redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_cmp(LOGICAL,606)
    assign redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_cmp_b = {1'b0, redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_rdcnt_q};
    assign redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_cmp_q = $unsigned(redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_last_q == redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_cmp_b ? 1'b1 : 1'b0);

    // redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_cmpReg(REG,607)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_cmpReg_q <= $unsigned(redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_cmp_q);
        end
    end

    // redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_sticky_ena(REG,610)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_nor_q == 1'b1)
        begin
            redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_sticky_ena_q <= $unsigned(redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_cmpReg_q);
        end
    end

    // redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_enaAnd(LOGICAL,611)
    assign redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_enaAnd_q = redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_sticky_ena_q & VCC_q;

    // redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_rdcnt(COUNTER,603)
    // low=0, high=9, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_rdcnt_i <= 4'd0;
            redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_rdcnt_i == 4'd8)
            begin
                redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_rdcnt_eq <= 1'b0;
            end
            if (redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_rdcnt_eq == 1'b1)
            begin
                redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_rdcnt_i <= $unsigned(redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_rdcnt_i) + $unsigned(4'd7);
            end
            else
            begin
                redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_rdcnt_i <= $unsigned(redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_rdcnt_q = redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_rdcnt_i[3:0];

    // redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_inputreg0(DELAY,600)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_inputreg0_q <= '0;
        end
        else
        begin
            redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_inputreg0_q <= $unsigned(r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q);
        end
    end

    // redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_wraddr(REG,604)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_wraddr_q <= $unsigned(4'b1001);
        end
        else
        begin
            redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_wraddr_q <= $unsigned(redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_rdcnt_q);
        end
    end

    // redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem(DUALMEM,602)
    assign redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_ia = $unsigned(redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_inputreg0_q);
    assign redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_aa = redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_wraddr_q;
    assign redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_ab = redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_rdcnt_q;
    assign redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(11),
        .widthad_a(4),
        .numwords_a(10),
        .width_b(11),
        .widthad_b(4),
        .numwords_b(10),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_dmem (
        .clocken1(redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_reset0),
        .clock1(clock),
        .address_a(redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_aa),
        .data_a(redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_ab),
        .q_b(redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_q = redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_iq[10:0];

    // redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_outputreg0(DELAY,601)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_outputreg0_q <= '0;
        end
        else
        begin
            redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_outputreg0_q <= $unsigned(redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_mem_q);
        end
    end

    // expRPostBiasPreExc0_uid75_block_rsrvd_fix(ADD,74)@20 + 1
    assign expRPostBiasPreExc0_uid75_block_rsrvd_fix_a = $unsigned({{2{redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_outputreg0_q[10]}}, redist14_r_uid497_fxpInPostAlign_uid47_block_rsrvd_fix_q_13_outputreg0_q});
    assign expRPostBiasPreExc0_uid75_block_rsrvd_fix_b = $unsigned({5'b00000, cstBias_uid9_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expRPostBiasPreExc0_uid75_block_rsrvd_fix_o <= 13'b0;
        end
        else
        begin
            expRPostBiasPreExc0_uid75_block_rsrvd_fix_o <= $unsigned($signed(expRPostBiasPreExc0_uid75_block_rsrvd_fix_a) + $signed(expRPostBiasPreExc0_uid75_block_rsrvd_fix_b));
        end
    end
    assign expRPostBiasPreExc0_uid75_block_rsrvd_fix_q = expRPostBiasPreExc0_uid75_block_rsrvd_fix_o[11:0];

    // expRPostBiasPreExc_uid76_block_rsrvd_fix(ADD,75)@21 + 1
    assign expRPostBiasPreExc_uid76_block_rsrvd_fix_a = $unsigned({{2{expRPostBiasPreExc0_uid75_block_rsrvd_fix_q[11]}}, expRPostBiasPreExc0_uid75_block_rsrvd_fix_q});
    assign expRPostBiasPreExc_uid76_block_rsrvd_fix_b = $unsigned({13'b0000000000000, redist27_peORExpInc_uid74_block_rsrvd_fix_b_1_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expRPostBiasPreExc_uid76_block_rsrvd_fix_o <= 14'b0;
        end
        else
        begin
            expRPostBiasPreExc_uid76_block_rsrvd_fix_o <= $unsigned($signed(expRPostBiasPreExc_uid76_block_rsrvd_fix_a) + $signed(expRPostBiasPreExc_uid76_block_rsrvd_fix_b));
        end
    end
    assign expRPostBiasPreExc_uid76_block_rsrvd_fix_q = expRPostBiasPreExc_uid76_block_rsrvd_fix_o[12:0];

    // expR_uid81_block_rsrvd_fix(BITSELECT,80)@22
    assign expR_uid81_block_rsrvd_fix_in = expRPostBiasPreExc_uid76_block_rsrvd_fix_q[7:0];
    assign expR_uid81_block_rsrvd_fix_b = expR_uid81_block_rsrvd_fix_in[7:0];

    // redist25_expR_uid81_block_rsrvd_fix_b_2(DELAY,579)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_expR_uid81_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist25_expR_uid81_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist25_expR_uid81_block_rsrvd_fix_b_2_delay_0 <= $unsigned(expR_uid81_block_rsrvd_fix_b);
            redist25_expR_uid81_block_rsrvd_fix_b_2_q <= redist25_expR_uid81_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // cstZeroWE_uid14_block_rsrvd_fix(CONSTANT,13)
    assign cstZeroWE_uid14_block_rsrvd_fix_q = $unsigned(8'b00000000);

    // cstZeroWF_uid18_block_rsrvd_fix(CONSTANT,17)
    assign cstZeroWF_uid18_block_rsrvd_fix_q = $unsigned(23'b00000000000000000000000);

    // fracXIsZero_uid24_block_rsrvd_fix(LOGICAL,23)@0 + 1
    assign fracXIsZero_uid24_block_rsrvd_fix_qi = $unsigned(cstZeroWF_uid18_block_rsrvd_fix_q == fracX_uid8_block_rsrvd_fix_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid24_block_rsrvd_fix_delay ( .xin(fracXIsZero_uid24_block_rsrvd_fix_qi), .xout(fracXIsZero_uid24_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist37_fracXIsZero_uid24_block_rsrvd_fix_q_22(DELAY,591)
    dspba_delay_ver #( .width(1), .depth(21), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist37_fracXIsZero_uid24_block_rsrvd_fix_q_22 ( .xin(fracXIsZero_uid24_block_rsrvd_fix_q), .xout(redist37_fracXIsZero_uid24_block_rsrvd_fix_q_22_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid25_block_rsrvd_fix(LOGICAL,24)@22
    assign fracXIsNotZero_uid25_block_rsrvd_fix_q = ~ (redist37_fracXIsZero_uid24_block_rsrvd_fix_q_22_q);

    // expXIsMax_uid23_block_rsrvd_fix(LOGICAL,22)@3 + 1
    assign expXIsMax_uid23_block_rsrvd_fix_qi = $unsigned(redist43_expX_uid6_block_rsrvd_fix_b_3_q == cstAllOWE_uid17_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid23_block_rsrvd_fix_delay ( .xin(expXIsMax_uid23_block_rsrvd_fix_qi), .xout(expXIsMax_uid23_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist38_expXIsMax_uid23_block_rsrvd_fix_q_19(DELAY,592)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist38_expXIsMax_uid23_block_rsrvd_fix_q_19 ( .xin(expXIsMax_uid23_block_rsrvd_fix_q), .xout(redist38_expXIsMax_uid23_block_rsrvd_fix_q_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excN_x_uid27_block_rsrvd_fix(LOGICAL,26)@22 + 1
    assign excN_x_uid27_block_rsrvd_fix_qi = redist38_expXIsMax_uid23_block_rsrvd_fix_q_19_q & fracXIsNotZero_uid25_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_x_uid27_block_rsrvd_fix_delay ( .xin(excN_x_uid27_block_rsrvd_fix_qi), .xout(excN_x_uid27_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist36_excN_x_uid27_block_rsrvd_fix_q_2(DELAY,590)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_excN_x_uid27_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist36_excN_x_uid27_block_rsrvd_fix_q_2_q <= $unsigned(excN_x_uid27_block_rsrvd_fix_q);
        end
    end

    // redist42_signX_uid7_block_rsrvd_fix_b_23(DELAY,596)
    dspba_delay_ver #( .width(1), .depth(17), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist42_signX_uid7_block_rsrvd_fix_b_23 ( .xin(redist41_signX_uid7_block_rsrvd_fix_b_6_q), .xout(redist42_signX_uid7_block_rsrvd_fix_b_23_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invSignX_uid87_block_rsrvd_fix(LOGICAL,86)@23
    assign invSignX_uid87_block_rsrvd_fix_q = ~ (redist42_signX_uid7_block_rsrvd_fix_b_23_q);

    // expOvfInitial_uid42_block_rsrvd_fix(BITSELECT,41)@4
    assign expOvfInitial_uid42_block_rsrvd_fix_b = $unsigned(shiftValuePreSat_uid41_block_rsrvd_fix_q[8:8]);

    // redist33_expOvfInitial_uid42_block_rsrvd_fix_b_19(DELAY,587)
    dspba_delay_ver #( .width(1), .depth(19), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist33_expOvfInitial_uid42_block_rsrvd_fix_b_19 ( .xin(expOvfInitial_uid42_block_rsrvd_fix_b), .xout(redist33_expOvfInitial_uid42_block_rsrvd_fix_b_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExpXIsMax_uid28_block_rsrvd_fix(LOGICAL,27)@4
    assign invExpXIsMax_uid28_block_rsrvd_fix_q = ~ (expXIsMax_uid23_block_rsrvd_fix_q);

    // excZ_x_uid22_block_rsrvd_fix(LOGICAL,21)@3 + 1
    assign excZ_x_uid22_block_rsrvd_fix_qi = $unsigned(redist43_expX_uid6_block_rsrvd_fix_b_3_q == cstZeroWE_uid14_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_x_uid22_block_rsrvd_fix_delay ( .xin(excZ_x_uid22_block_rsrvd_fix_qi), .xout(excZ_x_uid22_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // InvExpXIsZero_uid29_block_rsrvd_fix(LOGICAL,28)@4
    assign InvExpXIsZero_uid29_block_rsrvd_fix_q = ~ (excZ_x_uid22_block_rsrvd_fix_q);

    // excR_x_uid30_block_rsrvd_fix(LOGICAL,29)@4 + 1
    assign excR_x_uid30_block_rsrvd_fix_qi = InvExpXIsZero_uid29_block_rsrvd_fix_q & invExpXIsMax_uid28_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excR_x_uid30_block_rsrvd_fix_delay ( .xin(excR_x_uid30_block_rsrvd_fix_qi), .xout(excR_x_uid30_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist35_excR_x_uid30_block_rsrvd_fix_q_19(DELAY,589)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist35_excR_x_uid30_block_rsrvd_fix_q_19 ( .xin(excR_x_uid30_block_rsrvd_fix_q), .xout(redist35_excR_x_uid30_block_rsrvd_fix_q_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // regXAndExpOverflowAndPos_uid88_block_rsrvd_fix(LOGICAL,87)@23
    assign regXAndExpOverflowAndPos_uid88_block_rsrvd_fix_q = redist35_excR_x_uid30_block_rsrvd_fix_q_19_q & redist33_expOvfInitial_uid42_block_rsrvd_fix_b_19_q & invSignX_uid87_block_rsrvd_fix_q;

    // invExpOvfInitial_uid84_block_rsrvd_fix(LOGICAL,83)@23
    assign invExpOvfInitial_uid84_block_rsrvd_fix_q = ~ (redist33_expOvfInitial_uid42_block_rsrvd_fix_b_19_q);

    // expOvf_uid80_block_rsrvd_fix(COMPARE,79)@22 + 1
    assign expOvf_uid80_block_rsrvd_fix_a = $unsigned({{2{expRPostBiasPreExc_uid76_block_rsrvd_fix_q[12]}}, expRPostBiasPreExc_uid76_block_rsrvd_fix_q});
    assign expOvf_uid80_block_rsrvd_fix_b = $unsigned({7'b0000000, cstAllOWE_uid17_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expOvf_uid80_block_rsrvd_fix_o <= 15'b0;
        end
        else
        begin
            expOvf_uid80_block_rsrvd_fix_o <= $unsigned($signed(expOvf_uid80_block_rsrvd_fix_a) - $signed(expOvf_uid80_block_rsrvd_fix_b));
        end
    end
    assign expOvf_uid80_block_rsrvd_fix_n[0] = ~ (expOvf_uid80_block_rsrvd_fix_o[14]);

    // regInAndOvf_uid90_block_rsrvd_fix(LOGICAL,89)@23
    assign regInAndOvf_uid90_block_rsrvd_fix_q = redist35_excR_x_uid30_block_rsrvd_fix_q_19_q & expOvf_uid80_block_rsrvd_fix_n & invExpOvfInitial_uid84_block_rsrvd_fix_q;

    // excI_x_uid26_block_rsrvd_fix(LOGICAL,25)@22 + 1
    assign excI_x_uid26_block_rsrvd_fix_qi = redist38_expXIsMax_uid23_block_rsrvd_fix_q_19_q & redist37_fracXIsZero_uid24_block_rsrvd_fix_q_22_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excI_x_uid26_block_rsrvd_fix_delay ( .xin(excI_x_uid26_block_rsrvd_fix_qi), .xout(excI_x_uid26_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // posInf_uid92_block_rsrvd_fix(LOGICAL,91)@23
    assign posInf_uid92_block_rsrvd_fix_q = excI_x_uid26_block_rsrvd_fix_q & invSignX_uid87_block_rsrvd_fix_q;

    // excRInf_uid93_block_rsrvd_fix(LOGICAL,92)@23 + 1
    assign excRInf_uid93_block_rsrvd_fix_qi = posInf_uid92_block_rsrvd_fix_q | regInAndOvf_uid90_block_rsrvd_fix_q | regXAndExpOverflowAndPos_uid88_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excRInf_uid93_block_rsrvd_fix_delay ( .xin(excRInf_uid93_block_rsrvd_fix_qi), .xout(excRInf_uid93_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // negInf_uid82_block_rsrvd_fix(LOGICAL,81)@23
    assign negInf_uid82_block_rsrvd_fix_q = excI_x_uid26_block_rsrvd_fix_q & redist42_signX_uid7_block_rsrvd_fix_b_23_q;

    // regXAndExpOverflowAndNeg_uid83_block_rsrvd_fix(LOGICAL,82)@23
    assign regXAndExpOverflowAndNeg_uid83_block_rsrvd_fix_q = redist35_excR_x_uid30_block_rsrvd_fix_q_19_q & redist33_expOvfInitial_uid42_block_rsrvd_fix_b_19_q & redist42_signX_uid7_block_rsrvd_fix_b_23_q;

    // expUdf_uid78_block_rsrvd_fix(COMPARE,77)@22 + 1
    assign expUdf_uid78_block_rsrvd_fix_a = $unsigned({14'b00000000000000, GND_q});
    assign expUdf_uid78_block_rsrvd_fix_b = $unsigned({{2{expRPostBiasPreExc_uid76_block_rsrvd_fix_q[12]}}, expRPostBiasPreExc_uid76_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expUdf_uid78_block_rsrvd_fix_o <= 15'b0;
        end
        else
        begin
            expUdf_uid78_block_rsrvd_fix_o <= $unsigned($signed(expUdf_uid78_block_rsrvd_fix_a) - $signed(expUdf_uid78_block_rsrvd_fix_b));
        end
    end
    assign expUdf_uid78_block_rsrvd_fix_n[0] = ~ (expUdf_uid78_block_rsrvd_fix_o[14]);

    // regXAndUdf_uid85_block_rsrvd_fix(LOGICAL,84)@23
    assign regXAndUdf_uid85_block_rsrvd_fix_q = redist35_excR_x_uid30_block_rsrvd_fix_q_19_q & expUdf_uid78_block_rsrvd_fix_n & invExpOvfInitial_uid84_block_rsrvd_fix_q;

    // excRZero_uid86_block_rsrvd_fix(LOGICAL,85)@23 + 1
    assign excRZero_uid86_block_rsrvd_fix_qi = regXAndUdf_uid85_block_rsrvd_fix_q | regXAndExpOverflowAndNeg_uid83_block_rsrvd_fix_q | negInf_uid82_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excRZero_uid86_block_rsrvd_fix_delay ( .xin(excRZero_uid86_block_rsrvd_fix_qi), .xout(excRZero_uid86_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // concExc_uid94_block_rsrvd_fix(BITJOIN,93)@24
    assign concExc_uid94_block_rsrvd_fix_q = {redist36_excN_x_uid27_block_rsrvd_fix_q_2_q, excRInf_uid93_block_rsrvd_fix_q, excRZero_uid86_block_rsrvd_fix_q};

    // excREnc_uid95_block_rsrvd_fix(LOOKUP,94)@24
    always @(concExc_uid94_block_rsrvd_fix_q)
    begin
        // Begin reserved scope level
        unique case (concExc_uid94_block_rsrvd_fix_q)
            3'b000 : excREnc_uid95_block_rsrvd_fix_q = 2'b01;
            3'b001 : excREnc_uid95_block_rsrvd_fix_q = 2'b00;
            3'b010 : excREnc_uid95_block_rsrvd_fix_q = 2'b10;
            3'b011 : excREnc_uid95_block_rsrvd_fix_q = 2'b00;
            3'b100 : excREnc_uid95_block_rsrvd_fix_q = 2'b11;
            3'b101 : excREnc_uid95_block_rsrvd_fix_q = 2'b00;
            3'b110 : excREnc_uid95_block_rsrvd_fix_q = 2'b00;
            3'b111 : excREnc_uid95_block_rsrvd_fix_q = 2'b00;
            default : begin
                          // unreachable
                          excREnc_uid95_block_rsrvd_fix_q = 2'bxx;
                      end
        endcase
        // End reserved scope level
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // expRPostExc_uid103_block_rsrvd_fix(MUX,102)@24
    assign expRPostExc_uid103_block_rsrvd_fix_s = excREnc_uid95_block_rsrvd_fix_q;
    always @(expRPostExc_uid103_block_rsrvd_fix_s or cstZeroWE_uid14_block_rsrvd_fix_q or redist25_expR_uid81_block_rsrvd_fix_b_2_q or cstAllOWE_uid17_block_rsrvd_fix_q)
    begin
        unique case (expRPostExc_uid103_block_rsrvd_fix_s)
            2'b00 : expRPostExc_uid103_block_rsrvd_fix_q = cstZeroWE_uid14_block_rsrvd_fix_q;
            2'b01 : expRPostExc_uid103_block_rsrvd_fix_q = redist25_expR_uid81_block_rsrvd_fix_b_2_q;
            2'b10 : expRPostExc_uid103_block_rsrvd_fix_q = cstAllOWE_uid17_block_rsrvd_fix_q;
            2'b11 : expRPostExc_uid103_block_rsrvd_fix_q = cstAllOWE_uid17_block_rsrvd_fix_q;
            default : expRPostExc_uid103_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // oneFracRPostExc2_uid96_block_rsrvd_fix(CONSTANT,95)
    assign oneFracRPostExc2_uid96_block_rsrvd_fix_q = $unsigned(23'b00000000000000000000001);

    // peOR_uid73_block_rsrvd_fix(BITSELECT,72)@20
    assign peOR_uid73_block_rsrvd_fix_in = s2_uid463_invPolyEval_q[28:0];
    assign peOR_uid73_block_rsrvd_fix_b = peOR_uid73_block_rsrvd_fix_in[28:5];

    // fracR_uid77_block_rsrvd_fix(BITSELECT,76)@20
    assign fracR_uid77_block_rsrvd_fix_in = peOR_uid73_block_rsrvd_fix_b[22:0];
    assign fracR_uid77_block_rsrvd_fix_b = fracR_uid77_block_rsrvd_fix_in[22:0];

    // redist26_fracR_uid77_block_rsrvd_fix_b_4_inputreg0(DELAY,612)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_fracR_uid77_block_rsrvd_fix_b_4_inputreg0_q <= '0;
        end
        else
        begin
            redist26_fracR_uid77_block_rsrvd_fix_b_4_inputreg0_q <= $unsigned(fracR_uid77_block_rsrvd_fix_b);
        end
    end

    // redist26_fracR_uid77_block_rsrvd_fix_b_4(DELAY,580)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_fracR_uid77_block_rsrvd_fix_b_4_delay_0 <= '0;
            redist26_fracR_uid77_block_rsrvd_fix_b_4_delay_1 <= '0;
            redist26_fracR_uid77_block_rsrvd_fix_b_4_q <= '0;
        end
        else
        begin
            redist26_fracR_uid77_block_rsrvd_fix_b_4_delay_0 <= $unsigned(redist26_fracR_uid77_block_rsrvd_fix_b_4_inputreg0_q);
            redist26_fracR_uid77_block_rsrvd_fix_b_4_delay_1 <= redist26_fracR_uid77_block_rsrvd_fix_b_4_delay_0;
            redist26_fracR_uid77_block_rsrvd_fix_b_4_q <= redist26_fracR_uid77_block_rsrvd_fix_b_4_delay_1;
        end
    end

    // fracRPostExc_uid99_block_rsrvd_fix(MUX,98)@24
    assign fracRPostExc_uid99_block_rsrvd_fix_s = excREnc_uid95_block_rsrvd_fix_q;
    always @(fracRPostExc_uid99_block_rsrvd_fix_s or cstZeroWF_uid18_block_rsrvd_fix_q or redist26_fracR_uid77_block_rsrvd_fix_b_4_q or oneFracRPostExc2_uid96_block_rsrvd_fix_q)
    begin
        unique case (fracRPostExc_uid99_block_rsrvd_fix_s)
            2'b00 : fracRPostExc_uid99_block_rsrvd_fix_q = cstZeroWF_uid18_block_rsrvd_fix_q;
            2'b01 : fracRPostExc_uid99_block_rsrvd_fix_q = redist26_fracR_uid77_block_rsrvd_fix_b_4_q;
            2'b10 : fracRPostExc_uid99_block_rsrvd_fix_q = cstZeroWF_uid18_block_rsrvd_fix_q;
            2'b11 : fracRPostExc_uid99_block_rsrvd_fix_q = oneFracRPostExc2_uid96_block_rsrvd_fix_q;
            default : fracRPostExc_uid99_block_rsrvd_fix_q = 23'b0;
        endcase
    end

    // RExpE_uid104_block_rsrvd_fix(BITJOIN,103)@24
    assign RExpE_uid104_block_rsrvd_fix_q = {GND_q, expRPostExc_uid103_block_rsrvd_fix_q, fracRPostExc_uid99_block_rsrvd_fix_q};

    // out_primWireOut(GPOUT,4)@24
    assign out_primWireOut = RExpE_uid104_block_rsrvd_fix_q;

endmodule
