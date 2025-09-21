/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sun Aug 17 17:26:20 2025
/////////////////////////////////////////////////////////////


module spi_baud_generator ( PCLK, PRESET_n, spiswai_i, cpol_i, cpha_i, ss_i, 
        spi_mode_i, sppr_i, spr_i, sclk_o, miso_receive_sclk_o, 
        miso_receive_sclk0_o, mosi_send_sclk_o, mosi_send_sclk0_o, 
        BaudrateDivisor_o );
  input [1:0] spi_mode_i;
  input [2:0] sppr_i;
  input [2:0] spr_i;
  output [11:0] BaudrateDivisor_o;
  input PCLK, PRESET_n, spiswai_i, cpol_i, cpha_i, ss_i;
  output sclk_o, miso_receive_sclk_o, miso_receive_sclk0_o, mosi_send_sclk_o,
         mosi_send_sclk0_o;
  wire   miso_receive_sclk_o, miso_receive_sclk0_o, N63, N64, N65, N66, N67,
         N68, N69, N70, N71, N72, N73, N74, N142, N143, n17, n18, n19, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132;
  wire   [11:0] count_s;
  assign mosi_send_sclk_o = miso_receive_sclk_o;
  assign mosi_send_sclk0_o = miso_receive_sclk0_o;
  assign BaudrateDivisor_o[11] = 1'b0;
  assign BaudrateDivisor_o[10] = 1'b0;

  FD3 sclk_o_reg ( .D(n19), .CP(PCLK), .CD(n17), .SD(n18), .Q(sclk_o), .QN(
        n127) );
  FD2 \count_s_reg[11]  ( .D(N74), .CP(PCLK), .CD(PRESET_n), .Q(count_s[11])
         );
  FD2 \count_s_reg[10]  ( .D(N73), .CP(PCLK), .CD(PRESET_n), .Q(count_s[10]), 
        .QN(n132) );
  FD2 \count_s_reg[9]  ( .D(N72), .CP(PCLK), .CD(PRESET_n), .Q(count_s[9]) );
  FD2 \count_s_reg[8]  ( .D(N71), .CP(PCLK), .CD(PRESET_n), .QN(n126) );
  FD2 \count_s_reg[7]  ( .D(N70), .CP(PCLK), .CD(PRESET_n), .Q(count_s[7]), 
        .QN(n131) );
  FD2 \count_s_reg[6]  ( .D(N69), .CP(PCLK), .CD(PRESET_n), .Q(count_s[6]) );
  FD2 \count_s_reg[5]  ( .D(N68), .CP(PCLK), .CD(PRESET_n), .Q(count_s[5]), 
        .QN(n130) );
  FD2 \count_s_reg[4]  ( .D(N67), .CP(PCLK), .CD(PRESET_n), .Q(count_s[4]) );
  FD2 \count_s_reg[3]  ( .D(N66), .CP(PCLK), .CD(PRESET_n), .Q(count_s[3]), 
        .QN(n129) );
  FD2 \count_s_reg[2]  ( .D(N65), .CP(PCLK), .CD(PRESET_n), .Q(count_s[2]) );
  FD2 \count_s_reg[1]  ( .D(N64), .CP(PCLK), .CD(PRESET_n), .Q(count_s[1]), 
        .QN(n128) );
  FD2 \count_s_reg[0]  ( .D(N63), .CP(PCLK), .CD(PRESET_n), .Q(count_s[0]), 
        .QN(n125) );
  FD2 miso_receive_sclk0_o_reg ( .D(N143), .CP(PCLK), .CD(PRESET_n), .Q(
        miso_receive_sclk0_o) );
  FD2 miso_receive_sclk_o_reg ( .D(N142), .CP(PCLK), .CD(PRESET_n), .Q(
        miso_receive_sclk_o) );
  IVP U45 ( .A(sppr_i[0]), .Z(n52) );
  IVP U46 ( .A(spr_i[0]), .Z(n41) );
  IVP U47 ( .A(spr_i[2]), .Z(n39) );
  ND2 U48 ( .A(n41), .B(n39), .Z(n33) );
  NR2 U49 ( .A(spr_i[1]), .B(n33), .Z(n55) );
  ND2 U50 ( .A(spr_i[1]), .B(spr_i[0]), .Z(n38) );
  NR2 U51 ( .A(n39), .B(n38), .Z(n56) );
  IVP U52 ( .A(sppr_i[1]), .Z(n21) );
  NR2 U53 ( .A(n52), .B(n21), .Z(n23) );
  AO6 U54 ( .A(n52), .B(n21), .C(n23), .Z(n54) );
  AO2 U55 ( .A(n52), .B(n55), .C(n56), .D(n54), .Z(n78) );
  IVP U56 ( .A(n78), .Z(BaudrateDivisor_o[0]) );
  ND2 U58 ( .A(n23), .B(sppr_i[2]), .Z(n25) );
  IVP U59 ( .A(spr_i[1]), .Z(n34) );
  ND2 U60 ( .A(n41), .B(spr_i[2]), .Z(n26) );
  NR2 U61 ( .A(n34), .B(n26), .Z(n29) );
  IVP U62 ( .A(n29), .Z(n24) );
  NR2 U63 ( .A(n25), .B(n24), .Z(BaudrateDivisor_o[9]) );
  NR2 U64 ( .A(spr_i[1]), .B(n39), .Z(n22) );
  ND2 U65 ( .A(spr_i[0]), .B(n22), .Z(n37) );
  AO7 U66 ( .A(n23), .B(sppr_i[2]), .C(n25), .Z(n28) );
  AO4 U67 ( .A(n25), .B(n37), .C(n24), .D(n28), .Z(BaudrateDivisor_o[8]) );
  IVP U68 ( .A(n25), .Z(n48) );
  NR2 U69 ( .A(spr_i[1]), .B(n26), .Z(n42) );
  AO2 U70 ( .A(n48), .B(n42), .C(n29), .D(n54), .Z(n27) );
  AO7 U71 ( .A(n28), .B(n37), .C(n27), .Z(BaudrateDivisor_o[7]) );
  IVP U72 ( .A(n54), .Z(n32) );
  NR2 U73 ( .A(spr_i[2]), .B(n38), .Z(n45) );
  IVP U74 ( .A(n28), .Z(n57) );
  AO2 U75 ( .A(n48), .B(n45), .C(n57), .D(n42), .Z(n31) );
  ND2 U76 ( .A(n29), .B(n52), .Z(n30) );
  AO3 U77 ( .A(n32), .B(n37), .C(n31), .D(n30), .Z(BaudrateDivisor_o[6]) );
  NR2 U78 ( .A(n34), .B(n33), .Z(n49) );
  AO2 U79 ( .A(n48), .B(n49), .C(n57), .D(n45), .Z(n36) );
  ND2 U80 ( .A(n54), .B(n42), .Z(n35) );
  AO3 U81 ( .A(sppr_i[0]), .B(n37), .C(n36), .D(n35), .Z(BaudrateDivisor_o[5])
         );
  ND2 U82 ( .A(n39), .B(n38), .Z(n40) );
  NR2 U83 ( .A(n41), .B(n40), .Z(n53) );
  AO2 U84 ( .A(n48), .B(n53), .C(n57), .D(n49), .Z(n44) );
  AO2 U85 ( .A(n45), .B(n54), .C(n42), .D(n52), .Z(n43) );
  ND2 U86 ( .A(n44), .B(n43), .Z(BaudrateDivisor_o[4]) );
  AO2 U87 ( .A(n48), .B(n55), .C(n57), .D(n53), .Z(n47) );
  AO2 U88 ( .A(n49), .B(n54), .C(n45), .D(n52), .Z(n46) );
  ND2 U89 ( .A(n47), .B(n46), .Z(BaudrateDivisor_o[3]) );
  AO2 U90 ( .A(n48), .B(n56), .C(n57), .D(n55), .Z(n51) );
  AO2 U91 ( .A(n53), .B(n54), .C(n49), .D(n52), .Z(n50) );
  ND2 U92 ( .A(n51), .B(n50), .Z(BaudrateDivisor_o[2]) );
  AO2 U93 ( .A(n55), .B(n54), .C(n53), .D(n52), .Z(n59) );
  ND2 U94 ( .A(n57), .B(n56), .Z(n58) );
  ND2 U95 ( .A(n59), .B(n58), .Z(BaudrateDivisor_o[1]) );
  OR3 U96 ( .A(ss_i), .B(spi_mode_i[1]), .C(spiswai_i), .Z(n122) );
  NR2 U97 ( .A(BaudrateDivisor_o[1]), .B(BaudrateDivisor_o[0]), .Z(n73) );
  IVP U98 ( .A(n73), .Z(n75) );
  NR2 U99 ( .A(n75), .B(BaudrateDivisor_o[2]), .Z(n74) );
  IVP U100 ( .A(n74), .Z(n77) );
  NR2 U101 ( .A(n77), .B(BaudrateDivisor_o[3]), .Z(n76) );
  IVP U102 ( .A(n76), .Z(n62) );
  NR2 U103 ( .A(BaudrateDivisor_o[4]), .B(n62), .Z(n61) );
  IVP U104 ( .A(n61), .Z(n72) );
  NR2 U105 ( .A(BaudrateDivisor_o[5]), .B(n72), .Z(n71) );
  IVP U106 ( .A(n71), .Z(n70) );
  NR2 U107 ( .A(BaudrateDivisor_o[6]), .B(n70), .Z(n69) );
  IVP U108 ( .A(n69), .Z(n60) );
  NR2 U109 ( .A(BaudrateDivisor_o[7]), .B(n60), .Z(n63) );
  AO6 U110 ( .A(BaudrateDivisor_o[7]), .B(n60), .C(n63), .Z(n101) );
  AO6 U111 ( .A(BaudrateDivisor_o[4]), .B(n62), .C(n61), .Z(n98) );
  NR2 U112 ( .A(n126), .B(BaudrateDivisor_o[8]), .Z(n66) );
  AO2 U113 ( .A(n126), .B(BaudrateDivisor_o[8]), .C(n66), .D(
        BaudrateDivisor_o[9]), .Z(n68) );
  IVP U114 ( .A(n63), .Z(n67) );
  ND2 U115 ( .A(n126), .B(BaudrateDivisor_o[8]), .Z(n64) );
  ND2 U116 ( .A(n64), .B(n67), .Z(n65) );
  AO4 U117 ( .A(n68), .B(n67), .C(n66), .D(n65), .Z(n97) );
  AO6 U118 ( .A(BaudrateDivisor_o[6]), .B(n70), .C(n69), .Z(n94) );
  AO6 U119 ( .A(BaudrateDivisor_o[5]), .B(n72), .C(n71), .Z(n91) );
  AO6 U120 ( .A(BaudrateDivisor_o[1]), .B(BaudrateDivisor_o[0]), .C(n73), .Z(
        n88) );
  AO6 U121 ( .A(n75), .B(BaudrateDivisor_o[2]), .C(n74), .Z(n85) );
  AO6 U122 ( .A(n77), .B(BaudrateDivisor_o[3]), .C(n76), .Z(n82) );
  AO2 U123 ( .A(n78), .B(count_s[0]), .C(n125), .D(BaudrateDivisor_o[0]), .Z(
        n79) );
  NR4 U124 ( .A(n79), .B(count_s[10]), .C(count_s[11]), .D(count_s[9]), .Z(n81) );
  ND2 U125 ( .A(count_s[3]), .B(n82), .Z(n80) );
  AO3 U126 ( .A(count_s[3]), .B(n82), .C(n81), .D(n80), .Z(n84) );
  NR2 U127 ( .A(count_s[2]), .B(n85), .Z(n83) );
  AO1P U128 ( .A(count_s[2]), .B(n85), .C(n84), .D(n83), .Z(n87) );
  ND2 U129 ( .A(count_s[1]), .B(n88), .Z(n86) );
  AO3 U130 ( .A(count_s[1]), .B(n88), .C(n87), .D(n86), .Z(n90) );
  NR2 U131 ( .A(count_s[5]), .B(n91), .Z(n89) );
  AO1P U132 ( .A(count_s[5]), .B(n91), .C(n90), .D(n89), .Z(n93) );
  ND2 U133 ( .A(count_s[6]), .B(n94), .Z(n92) );
  AO3 U134 ( .A(count_s[6]), .B(n94), .C(n93), .D(n92), .Z(n95) );
  AO6 U135 ( .A(count_s[4]), .B(n98), .C(n95), .Z(n96) );
  AO3 U136 ( .A(count_s[4]), .B(n98), .C(n97), .D(n96), .Z(n100) );
  NR2 U137 ( .A(count_s[7]), .B(n101), .Z(n99) );
  AO1P U138 ( .A(count_s[7]), .B(n101), .C(n100), .D(n99), .Z(n123) );
  OR2P U139 ( .A(n122), .B(n123), .Z(n117) );
  NR2 U140 ( .A(count_s[0]), .B(n117), .Z(N63) );
  NR2 U141 ( .A(n128), .B(n125), .Z(n103) );
  AO1P U142 ( .A(n128), .B(n125), .C(n103), .D(n117), .Z(N64) );
  NR2 U143 ( .A(count_s[2]), .B(n103), .Z(n102) );
  AO1P U144 ( .A(count_s[2]), .B(n103), .C(n117), .D(n102), .Z(N65) );
  ND2 U145 ( .A(count_s[2]), .B(n103), .Z(n104) );
  NR2 U146 ( .A(n129), .B(n104), .Z(n106) );
  AO1P U147 ( .A(n129), .B(n104), .C(n106), .D(n117), .Z(N66) );
  NR2 U148 ( .A(count_s[4]), .B(n106), .Z(n105) );
  AO1P U149 ( .A(count_s[4]), .B(n106), .C(n117), .D(n105), .Z(N67) );
  ND2 U150 ( .A(count_s[4]), .B(n106), .Z(n107) );
  NR2 U151 ( .A(n130), .B(n107), .Z(n109) );
  AO1P U152 ( .A(n130), .B(n107), .C(n109), .D(n117), .Z(N68) );
  NR2 U153 ( .A(count_s[6]), .B(n109), .Z(n108) );
  AO1P U154 ( .A(count_s[6]), .B(n109), .C(n117), .D(n108), .Z(N69) );
  ND2 U155 ( .A(count_s[6]), .B(n109), .Z(n110) );
  NR2 U156 ( .A(n131), .B(n110), .Z(n111) );
  AO1P U157 ( .A(n131), .B(n110), .C(n111), .D(n117), .Z(N70) );
  IVP U158 ( .A(n111), .Z(n112) );
  NR2 U159 ( .A(n126), .B(n112), .Z(n114) );
  AO1P U160 ( .A(n126), .B(n112), .C(n114), .D(n117), .Z(N71) );
  NR2 U161 ( .A(count_s[9]), .B(n114), .Z(n113) );
  AO1P U162 ( .A(count_s[9]), .B(n114), .C(n117), .D(n113), .Z(N72) );
  ND2 U163 ( .A(count_s[9]), .B(n114), .Z(n115) );
  NR2 U164 ( .A(n132), .B(n115), .Z(n118) );
  AO1P U165 ( .A(n132), .B(n115), .C(n118), .D(n117), .Z(N73) );
  NR2 U166 ( .A(count_s[11]), .B(n118), .Z(n116) );
  AO1P U167 ( .A(count_s[11]), .B(n118), .C(n117), .D(n116), .Z(N74) );
  IVP U168 ( .A(cpol_i), .Z(n124) );
  EN U169 ( .A(cpha_i), .B(n124), .Z(n119) );
  AN3 U170 ( .A(n123), .B(sclk_o), .C(n119), .Z(N143) );
  IVP U171 ( .A(n119), .Z(n120) );
  AN3 U172 ( .A(n127), .B(n120), .C(n123), .Z(N142) );
  IVP U173 ( .A(PRESET_n), .Z(n121) );
  ND2 U174 ( .A(cpol_i), .B(n121), .Z(n18) );
  ND2 U175 ( .A(n124), .B(n121), .Z(n17) );
  MUX31L U176 ( .D0(n127), .D1(sclk_o), .D2(n124), .A(n123), .B(n122), .Z(n19)
         );
endmodule

