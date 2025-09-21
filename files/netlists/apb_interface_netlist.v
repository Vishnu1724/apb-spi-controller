/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sun Aug 17 17:29:50 2025
/////////////////////////////////////////////////////////////


module apb_slave_interface ( PCLK, PRESET_n, PWRITE_i, PSEL_i, PENABLE_i, SS_i, 
        receive_data_i, tip_i, PADDR_i, PWDATA_i, miso_data_i, PREADY_o, 
        PSLVERR_o, spi_interrupt_request_o, mstr_o, cpol_o, cpha_o, lsbfe_o, 
        spiswai_o, send_data_o, PRDATA_o, mosi_data_o, spi_mode_o, spr_o, 
        sppr_o );
  input [2:0] PADDR_i;
  input [7:0] PWDATA_i;
  input [7:0] miso_data_i;
  output [7:0] PRDATA_o;
  output [7:0] mosi_data_o;
  output [1:0] spi_mode_o;
  output [2:0] spr_o;
  output [2:0] sppr_o;
  input PCLK, PRESET_n, PWRITE_i, PSEL_i, PENABLE_i, SS_i, receive_data_i,
         tip_i;
  output PREADY_o, PSLVERR_o, spi_interrupt_request_o, mstr_o, cpol_o, cpha_o,
         lsbfe_o, spiswai_o, send_data_o;
  wire   \next_state[1] , \next_mode[1] , SPI_CR_1_1, SPI_CR_2_0, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303;
  wire   [1:0] STATE;
  wire   [7:5] SPI_CR_1;
  wire   [7:2] SPI_CR_2;
  wire   [7:0] SPI_DR;

  FD2 \STATE_reg[0]  ( .D(n170), .CP(PCLK), .CD(PRESET_n), .Q(STATE[0]) );
  FD2 \STATE_reg[1]  ( .D(\next_state[1] ), .CP(PCLK), .CD(PRESET_n), .Q(
        STATE[1]), .QN(n298) );
  FD2 \SPI_CR_2_reg[4]  ( .D(n168), .CP(PCLK), .CD(PRESET_n), .Q(SPI_CR_2[4])
         );
  FD2 \SPI_CR_2_reg[3]  ( .D(n167), .CP(PCLK), .CD(PRESET_n), .Q(SPI_CR_2[3])
         );
  FD2 \SPI_CR_2_reg[1]  ( .D(n166), .CP(PCLK), .CD(PRESET_n), .Q(spiswai_o) );
  FD2 \SPI_CR_2_reg[0]  ( .D(n165), .CP(PCLK), .CD(PRESET_n), .Q(SPI_CR_2_0)
         );
  FD2 \SPI_BR_reg[6]  ( .D(n164), .CP(PCLK), .CD(PRESET_n), .Q(sppr_o[2]) );
  FD2 \SPI_BR_reg[5]  ( .D(n163), .CP(PCLK), .CD(PRESET_n), .Q(sppr_o[1]), 
        .QN(n299) );
  FD2 \SPI_BR_reg[4]  ( .D(n162), .CP(PCLK), .CD(PRESET_n), .Q(sppr_o[0]), 
        .QN(n300) );
  FD2 \SPI_BR_reg[2]  ( .D(n161), .CP(PCLK), .CD(PRESET_n), .Q(spr_o[2]) );
  FD2 \SPI_BR_reg[1]  ( .D(n160), .CP(PCLK), .CD(PRESET_n), .Q(spr_o[1]), .QN(
        n293) );
  FD2 \SPI_BR_reg[0]  ( .D(n159), .CP(PCLK), .CD(PRESET_n), .Q(spr_o[0]), .QN(
        n294) );
  FD2 \SPI_CR_1_reg[7]  ( .D(n158), .CP(PCLK), .CD(PRESET_n), .Q(SPI_CR_1[7])
         );
  FD2 \SPI_CR_1_reg[6]  ( .D(n157), .CP(PCLK), .CD(PRESET_n), .Q(SPI_CR_1[6])
         );
  FD2 \spi_mode_o_reg[0]  ( .D(n171), .CP(PCLK), .CD(PRESET_n), .Q(
        spi_mode_o[0]) );
  FD2 \spi_mode_o_reg[1]  ( .D(\next_mode[1] ), .CP(PCLK), .CD(PRESET_n), .Q(
        spi_mode_o[1]), .QN(n303) );
  FD2 \SPI_CR_1_reg[5]  ( .D(n156), .CP(PCLK), .CD(PRESET_n), .Q(SPI_CR_1[5])
         );
  FD2 \SPI_CR_1_reg[4]  ( .D(n155), .CP(PCLK), .CD(PRESET_n), .Q(mstr_o), .QN(
        n295) );
  FD2 \SPI_CR_1_reg[3]  ( .D(n154), .CP(PCLK), .CD(PRESET_n), .Q(cpol_o) );
  FD2 \SPI_CR_1_reg[1]  ( .D(n152), .CP(PCLK), .CD(PRESET_n), .Q(SPI_CR_1_1), 
        .QN(n301) );
  FD2 \SPI_CR_1_reg[0]  ( .D(n151), .CP(PCLK), .CD(PRESET_n), .Q(lsbfe_o), 
        .QN(n302) );
  FD2 \SPI_DR_reg[0]  ( .D(n150), .CP(PCLK), .CD(PRESET_n), .Q(SPI_DR[0]), 
        .QN(n173) );
  FD2 \SPI_DR_reg[1]  ( .D(n149), .CP(PCLK), .CD(PRESET_n), .Q(SPI_DR[1]), 
        .QN(n291) );
  FD2 \SPI_DR_reg[2]  ( .D(n148), .CP(PCLK), .CD(PRESET_n), .Q(SPI_DR[2]), 
        .QN(n290) );
  FD2 \SPI_DR_reg[3]  ( .D(n147), .CP(PCLK), .CD(PRESET_n), .Q(SPI_DR[3]), 
        .QN(n296) );
  FD2 \SPI_DR_reg[4]  ( .D(n146), .CP(PCLK), .CD(PRESET_n), .Q(SPI_DR[4]), 
        .QN(n289) );
  FD2 \SPI_DR_reg[5]  ( .D(n145), .CP(PCLK), .CD(PRESET_n), .Q(SPI_DR[5]), 
        .QN(n292) );
  FD2 \SPI_DR_reg[6]  ( .D(n144), .CP(PCLK), .CD(PRESET_n), .Q(SPI_DR[6]), 
        .QN(n172) );
  FD2 \SPI_DR_reg[7]  ( .D(n143), .CP(PCLK), .CD(PRESET_n), .Q(SPI_DR[7]), 
        .QN(n297) );
  FD2 send_data_o_reg ( .D(n142), .CP(PCLK), .CD(PRESET_n), .Q(send_data_o) );
  FD4 \SPI_CR_1_reg[2]  ( .D(n153), .CP(PCLK), .SD(PRESET_n), .Q(cpha_o) );
  FD2 \mosi_data_o_reg[0]  ( .D(n141), .CP(PCLK), .CD(PRESET_n), .Q(
        mosi_data_o[0]) );
  FD2 \mosi_data_o_reg[1]  ( .D(n140), .CP(PCLK), .CD(PRESET_n), .Q(
        mosi_data_o[1]) );
  FD2 \mosi_data_o_reg[2]  ( .D(n139), .CP(PCLK), .CD(PRESET_n), .Q(
        mosi_data_o[2]) );
  FD2 \mosi_data_o_reg[3]  ( .D(n138), .CP(PCLK), .CD(PRESET_n), .Q(
        mosi_data_o[3]) );
  FD2 \mosi_data_o_reg[4]  ( .D(n137), .CP(PCLK), .CD(PRESET_n), .Q(
        mosi_data_o[4]) );
  FD2 \mosi_data_o_reg[5]  ( .D(n136), .CP(PCLK), .CD(PRESET_n), .Q(
        mosi_data_o[5]) );
  FD2 \mosi_data_o_reg[6]  ( .D(n135), .CP(PCLK), .CD(PRESET_n), .Q(
        mosi_data_o[6]) );
  FD2 \mosi_data_o_reg[7]  ( .D(n134), .CP(PCLK), .CD(PRESET_n), .Q(
        mosi_data_o[7]) );
  NR2 U186 ( .A(STATE[0]), .B(n298), .Z(PREADY_o) );
  IVP U187 ( .A(PADDR_i[0]), .Z(n205) );
  NR2 U188 ( .A(PADDR_i[1]), .B(n205), .Z(n208) );
  ND2 U189 ( .A(PREADY_o), .B(PWRITE_i), .Z(n287) );
  NR2 U190 ( .A(n287), .B(PADDR_i[2]), .Z(n179) );
  ND2 U191 ( .A(n208), .B(n179), .Z(n174) );
  IVP U192 ( .A(n174), .Z(n230) );
  AO4 U193 ( .A(n174), .B(PWDATA_i[3]), .C(SPI_CR_2[3]), .D(n230), .Z(n175) );
  IVP U194 ( .A(n175), .Z(n167) );
  ND2 U195 ( .A(PADDR_i[1]), .B(n205), .Z(n212) );
  IVP U196 ( .A(n212), .Z(n176) );
  ND2 U197 ( .A(n176), .B(n179), .Z(n231) );
  IVP U198 ( .A(n231), .Z(n232) );
  AO4 U199 ( .A(n231), .B(PWDATA_i[6]), .C(sppr_o[2]), .D(n232), .Z(n177) );
  IVP U200 ( .A(n177), .Z(n164) );
  AO4 U201 ( .A(n231), .B(PWDATA_i[2]), .C(spr_o[2]), .D(n232), .Z(n178) );
  IVP U202 ( .A(n178), .Z(n161) );
  NR2 U203 ( .A(PADDR_i[1]), .B(PADDR_i[0]), .Z(n214) );
  ND2 U204 ( .A(n214), .B(n179), .Z(n233) );
  IVP U205 ( .A(n233), .Z(n234) );
  AO4 U206 ( .A(n233), .B(PWDATA_i[7]), .C(SPI_CR_1[7]), .D(n234), .Z(n180) );
  IVP U207 ( .A(n180), .Z(n158) );
  AO4 U208 ( .A(n233), .B(PWDATA_i[6]), .C(SPI_CR_1[6]), .D(n234), .Z(n181) );
  IVP U209 ( .A(n181), .Z(n157) );
  AO4 U210 ( .A(n233), .B(PWDATA_i[3]), .C(cpol_o), .D(n234), .Z(n182) );
  IVP U211 ( .A(n182), .Z(n154) );
  AO4 U212 ( .A(n233), .B(PWDATA_i[2]), .C(cpha_o), .D(n234), .Z(n183) );
  IVP U213 ( .A(n183), .Z(n153) );
  AN2P U214 ( .A(PREADY_o), .B(tip_i), .Z(PSLVERR_o) );
  ND4 U215 ( .A(n289), .B(n292), .C(n172), .D(n297), .Z(n185) );
  ND4 U216 ( .A(n173), .B(n291), .C(n290), .D(n296), .Z(n184) );
  NR2 U217 ( .A(n185), .B(n184), .Z(n211) );
  ND2 U218 ( .A(n211), .B(SPI_CR_1[5]), .Z(n189) );
  NR2 U219 ( .A(SPI_CR_1_1), .B(SS_i), .Z(n186) );
  ND2 U220 ( .A(SPI_CR_2[4]), .B(n186), .Z(n202) );
  AO7 U221 ( .A(n295), .B(n202), .C(n211), .Z(n187) );
  ND2 U222 ( .A(SPI_CR_1[7]), .B(n187), .Z(n188) );
  ND2 U223 ( .A(n189), .B(n188), .Z(spi_interrupt_request_o) );
  AO7 U224 ( .A(spi_mode_o[1]), .B(spi_mode_o[0]), .C(spiswai_o), .Z(n225) );
  AO1P U225 ( .A(spi_mode_o[1]), .B(spi_mode_o[0]), .C(SPI_CR_1[6]), .D(n225), 
        .Z(\next_mode[1] ) );
  AN4P U226 ( .A(STATE[0]), .B(PENABLE_i), .C(PSEL_i), .D(n298), .Z(
        \next_state[1] ) );
  IVP U227 ( .A(n214), .Z(n196) );
  AO4 U228 ( .A(n196), .B(n302), .C(n212), .D(n294), .Z(n190) );
  AO6 U229 ( .A(n208), .B(SPI_CR_2_0), .C(n190), .Z(n193) );
  IVP U230 ( .A(PREADY_o), .Z(n191) );
  NR2 U231 ( .A(PWRITE_i), .B(n191), .Z(n199) );
  IVP U232 ( .A(PADDR_i[2]), .Z(n198) );
  ND2 U233 ( .A(n199), .B(n198), .Z(n219) );
  ND2 U234 ( .A(n208), .B(PADDR_i[2]), .Z(n262) );
  NR2 U235 ( .A(PWRITE_i), .B(n262), .Z(n192) );
  ND2 U236 ( .A(PREADY_o), .B(n192), .Z(n224) );
  AO4 U237 ( .A(n193), .B(n219), .C(n173), .D(n224), .Z(PRDATA_o[0]) );
  AO4 U238 ( .A(n196), .B(n301), .C(n212), .D(n293), .Z(n194) );
  AO6 U239 ( .A(n208), .B(spiswai_o), .C(n194), .Z(n195) );
  AO4 U240 ( .A(n195), .B(n219), .C(n291), .D(n224), .Z(PRDATA_o[1]) );
  NR2 U241 ( .A(n219), .B(n196), .Z(n220) );
  NR2 U242 ( .A(n219), .B(n212), .Z(n216) );
  AO2 U243 ( .A(cpha_o), .B(n220), .C(spr_o[2]), .D(n216), .Z(n197) );
  AO7 U244 ( .A(n290), .B(n224), .C(n197), .Z(PRDATA_o[2]) );
  ND2 U245 ( .A(n220), .B(cpol_o), .Z(n201) );
  ND4 U246 ( .A(n208), .B(n199), .C(SPI_CR_2[3]), .D(n198), .Z(n200) );
  AO3 U247 ( .A(n224), .B(n296), .C(n201), .D(n200), .Z(PRDATA_o[3]) );
  IVP U248 ( .A(PRESET_n), .Z(n210) );
  NR2 U249 ( .A(n210), .B(n202), .Z(n203) );
  NR2 U250 ( .A(n203), .B(n205), .Z(n204) );
  AO1P U251 ( .A(n205), .B(PADDR_i[1]), .C(n295), .D(n204), .Z(n207) );
  NR2 U252 ( .A(n212), .B(n300), .Z(n206) );
  AO1P U253 ( .A(SPI_CR_2[4]), .B(n208), .C(n207), .D(n206), .Z(n209) );
  AO4 U254 ( .A(n209), .B(n219), .C(n289), .D(n224), .Z(PRDATA_o[4]) );
  NR2 U255 ( .A(n211), .B(n210), .Z(n222) );
  ND2 U256 ( .A(PADDR_i[1]), .B(PADDR_i[0]), .Z(n218) );
  AO4 U257 ( .A(n222), .B(n218), .C(n212), .D(n299), .Z(n213) );
  AO6 U258 ( .A(n214), .B(SPI_CR_1[5]), .C(n213), .Z(n215) );
  AO4 U259 ( .A(n215), .B(n219), .C(n292), .D(n224), .Z(PRDATA_o[5]) );
  AO2 U260 ( .A(n220), .B(SPI_CR_1[6]), .C(n216), .D(sppr_o[2]), .Z(n217) );
  AO7 U261 ( .A(n172), .B(n224), .C(n217), .Z(PRDATA_o[6]) );
  NR2 U262 ( .A(n219), .B(n218), .Z(n221) );
  AO2 U263 ( .A(n222), .B(n221), .C(SPI_CR_1[7]), .D(n220), .Z(n223) );
  AO7 U264 ( .A(n297), .B(n224), .C(n223), .Z(PRDATA_o[7]) );
  IVP U265 ( .A(n225), .Z(n226) );
  AO1P U266 ( .A(spi_mode_o[1]), .B(spi_mode_o[0]), .C(SPI_CR_1[6]), .D(n226), 
        .Z(n171) );
  IVP U267 ( .A(PSEL_i), .Z(n229) );
  NR2 U268 ( .A(PENABLE_i), .B(STATE[1]), .Z(n227) );
  NR2 U269 ( .A(PREADY_o), .B(n227), .Z(n228) );
  NR2 U270 ( .A(n229), .B(n228), .Z(n170) );
  IVP U271 ( .A(PWDATA_i[4]), .Z(n254) );
  EO1 U272 ( .A(n230), .B(n254), .C(SPI_CR_2[4]), .D(n230), .Z(n168) );
  IVP U273 ( .A(PWDATA_i[1]), .Z(n235) );
  EO1 U274 ( .A(n230), .B(n235), .C(spiswai_o), .D(n230), .Z(n166) );
  IVP U275 ( .A(PWDATA_i[0]), .Z(n236) );
  EO1 U276 ( .A(n230), .B(n236), .C(SPI_CR_2_0), .D(n230), .Z(n165) );
  IVP U277 ( .A(PWDATA_i[5]), .Z(n237) );
  AO2 U278 ( .A(n232), .B(n237), .C(n299), .D(n231), .Z(n163) );
  AO2 U279 ( .A(n232), .B(n254), .C(n300), .D(n231), .Z(n162) );
  AO2 U280 ( .A(n232), .B(n235), .C(n293), .D(n231), .Z(n160) );
  AO2 U281 ( .A(n232), .B(n236), .C(n294), .D(n231), .Z(n159) );
  EO1 U282 ( .A(n234), .B(n237), .C(SPI_CR_1[5]), .D(n234), .Z(n156) );
  AO2 U283 ( .A(n234), .B(n254), .C(n295), .D(n233), .Z(n155) );
  AO2 U284 ( .A(n234), .B(n235), .C(n301), .D(n233), .Z(n152) );
  AO2 U285 ( .A(n234), .B(n236), .C(n302), .D(n233), .Z(n151) );
  AO2 U286 ( .A(SPI_DR[1]), .B(PWDATA_i[1]), .C(n235), .D(n291), .Z(n261) );
  EO1 U287 ( .A(SPI_DR[7]), .B(PWDATA_i[7]), .C(PWDATA_i[7]), .D(SPI_DR[7]), 
        .Z(n260) );
  EO1 U288 ( .A(SPI_DR[2]), .B(PWDATA_i[2]), .C(PWDATA_i[2]), .D(SPI_DR[2]), 
        .Z(n241) );
  AO2 U289 ( .A(SPI_DR[0]), .B(PWDATA_i[0]), .C(n236), .D(n173), .Z(n240) );
  AO2 U290 ( .A(SPI_DR[5]), .B(PWDATA_i[5]), .C(n237), .D(n292), .Z(n239) );
  EO1 U291 ( .A(SPI_DR[3]), .B(PWDATA_i[3]), .C(PWDATA_i[3]), .D(SPI_DR[3]), 
        .Z(n238) );
  NR4 U292 ( .A(n241), .B(n240), .C(n239), .D(n238), .Z(n258) );
  EO1 U293 ( .A(SPI_DR[1]), .B(miso_data_i[1]), .C(miso_data_i[1]), .D(
        SPI_DR[1]), .Z(n243) );
  NR2 U294 ( .A(miso_data_i[0]), .B(n173), .Z(n242) );
  AO1P U295 ( .A(miso_data_i[0]), .B(n173), .C(n243), .D(n242), .Z(n253) );
  EO1 U296 ( .A(miso_data_i[3]), .B(SPI_DR[3]), .C(SPI_DR[3]), .D(
        miso_data_i[3]), .Z(n245) );
  NR2 U297 ( .A(miso_data_i[2]), .B(n290), .Z(n244) );
  AO1P U298 ( .A(miso_data_i[2]), .B(n290), .C(n245), .D(n244), .Z(n252) );
  EO1 U299 ( .A(miso_data_i[5]), .B(SPI_DR[5]), .C(SPI_DR[5]), .D(
        miso_data_i[5]), .Z(n247) );
  NR2 U300 ( .A(miso_data_i[4]), .B(n289), .Z(n246) );
  AO1P U301 ( .A(miso_data_i[4]), .B(n289), .C(n247), .D(n246), .Z(n251) );
  EO1 U302 ( .A(SPI_DR[7]), .B(miso_data_i[7]), .C(miso_data_i[7]), .D(
        SPI_DR[7]), .Z(n249) );
  NR2 U303 ( .A(miso_data_i[6]), .B(n172), .Z(n248) );
  AO1P U304 ( .A(miso_data_i[6]), .B(n172), .C(n249), .D(n248), .Z(n250) );
  ND4 U305 ( .A(n253), .B(n252), .C(n251), .D(n250), .Z(n257) );
  AO2 U306 ( .A(SPI_DR[4]), .B(n254), .C(PWDATA_i[4]), .D(n289), .Z(n256) );
  EO1 U307 ( .A(PWDATA_i[6]), .B(n172), .C(n172), .D(PWDATA_i[6]), .Z(n255) );
  ND4 U308 ( .A(n258), .B(n257), .C(n256), .D(n255), .Z(n259) );
  NR4 U309 ( .A(n261), .B(spi_mode_o[1]), .C(n260), .D(n259), .Z(n263) );
  ND2 U310 ( .A(receive_data_i), .B(n303), .Z(n264) );
  AO1P U311 ( .A(PWRITE_i), .B(PREADY_o), .C(n263), .D(n264), .Z(n285) );
  NR2 U312 ( .A(n287), .B(n262), .Z(n280) );
  AO2 U313 ( .A(miso_data_i[0]), .B(n285), .C(PWDATA_i[0]), .D(n280), .Z(n267)
         );
  IVP U314 ( .A(n263), .Z(n286) );
  AO2 U315 ( .A(PREADY_o), .B(PWRITE_i), .C(n286), .D(n264), .Z(n265) );
  NR2 U316 ( .A(n265), .B(n280), .Z(n281) );
  ND2 U317 ( .A(SPI_DR[0]), .B(n281), .Z(n266) );
  ND2 U318 ( .A(n267), .B(n266), .Z(n150) );
  AO2 U319 ( .A(miso_data_i[1]), .B(n285), .C(PWDATA_i[1]), .D(n280), .Z(n269)
         );
  ND2 U320 ( .A(SPI_DR[1]), .B(n281), .Z(n268) );
  ND2 U321 ( .A(n269), .B(n268), .Z(n149) );
  AO2 U322 ( .A(miso_data_i[2]), .B(n285), .C(PWDATA_i[2]), .D(n280), .Z(n271)
         );
  ND2 U323 ( .A(SPI_DR[2]), .B(n281), .Z(n270) );
  ND2 U324 ( .A(n271), .B(n270), .Z(n148) );
  AO2 U325 ( .A(miso_data_i[3]), .B(n285), .C(PWDATA_i[3]), .D(n280), .Z(n273)
         );
  ND2 U326 ( .A(SPI_DR[3]), .B(n281), .Z(n272) );
  ND2 U327 ( .A(n273), .B(n272), .Z(n147) );
  AO2 U328 ( .A(miso_data_i[4]), .B(n285), .C(PWDATA_i[4]), .D(n280), .Z(n275)
         );
  ND2 U329 ( .A(SPI_DR[4]), .B(n281), .Z(n274) );
  ND2 U330 ( .A(n275), .B(n274), .Z(n146) );
  AO2 U331 ( .A(miso_data_i[5]), .B(n285), .C(PWDATA_i[5]), .D(n280), .Z(n277)
         );
  ND2 U332 ( .A(SPI_DR[5]), .B(n281), .Z(n276) );
  ND2 U333 ( .A(n277), .B(n276), .Z(n145) );
  AO2 U334 ( .A(miso_data_i[6]), .B(n285), .C(PWDATA_i[6]), .D(n280), .Z(n279)
         );
  ND2 U335 ( .A(SPI_DR[6]), .B(n281), .Z(n278) );
  ND2 U336 ( .A(n279), .B(n278), .Z(n144) );
  AO2 U337 ( .A(miso_data_i[7]), .B(n285), .C(PWDATA_i[7]), .D(n280), .Z(n283)
         );
  ND2 U338 ( .A(SPI_DR[7]), .B(n281), .Z(n282) );
  ND2 U339 ( .A(n283), .B(n282), .Z(n143) );
  NR2 U340 ( .A(send_data_o), .B(n287), .Z(n284) );
  NR2 U341 ( .A(n285), .B(n284), .Z(n142) );
  NR2 U342 ( .A(n287), .B(n286), .Z(n288) );
  EO1 U343 ( .A(n288), .B(n173), .C(mosi_data_o[0]), .D(n288), .Z(n141) );
  EO1 U344 ( .A(n288), .B(n291), .C(mosi_data_o[1]), .D(n288), .Z(n140) );
  EO1 U345 ( .A(n288), .B(n290), .C(mosi_data_o[2]), .D(n288), .Z(n139) );
  EO1 U346 ( .A(n288), .B(n296), .C(mosi_data_o[3]), .D(n288), .Z(n138) );
  EO1 U347 ( .A(n288), .B(n289), .C(mosi_data_o[4]), .D(n288), .Z(n137) );
  EO1 U348 ( .A(n288), .B(n292), .C(mosi_data_o[5]), .D(n288), .Z(n136) );
  EO1 U349 ( .A(n288), .B(n172), .C(mosi_data_o[6]), .D(n288), .Z(n135) );
  EO1 U350 ( .A(n288), .B(n297), .C(mosi_data_o[7]), .D(n288), .Z(n134) );
endmodule

