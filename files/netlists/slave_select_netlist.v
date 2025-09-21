/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sun Aug 17 17:27:54 2025
/////////////////////////////////////////////////////////////


module APB_slave_select ( PCLK, PRESET_n, mstr_i, spiswai_i, spi_mode_i, 
        send_data_i, BaudRateDivisor_i, receive_data_o, ss_o, tip_o );
  input [1:0] spi_mode_i;
  input [11:0] BaudRateDivisor_i;
  input PCLK, PRESET_n, mstr_i, spiswai_i, send_data_i;
  output receive_data_o, ss_o, tip_o;
  wire   rcv, N28, N54, N125, N126, N127, N128, N129, N130, N131, N132, N133,
         N134, N135, N136, N137, N138, N139, N140, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178;
  wire   [15:0] count;

  FD2 rcv_reg ( .D(N28), .CP(PCLK), .CD(PRESET_n), .Q(rcv) );
  FD2 receive_data_o_reg ( .D(rcv), .CP(PCLK), .CD(PRESET_n), .Q(
        receive_data_o) );
  FD4 ss_o_reg ( .D(N54), .CP(PCLK), .SD(PRESET_n), .Q(ss_o), .QN(tip_o) );
  FD4 \count_reg[15]  ( .D(N140), .CP(PCLK), .SD(PRESET_n), .Q(count[15]), 
        .QN(n178) );
  FD4 \count_reg[14]  ( .D(N139), .CP(PCLK), .SD(PRESET_n), .Q(count[14]) );
  FD4 \count_reg[13]  ( .D(N138), .CP(PCLK), .SD(PRESET_n), .Q(count[13]) );
  FD4 \count_reg[12]  ( .D(N137), .CP(PCLK), .SD(PRESET_n), .Q(count[12]) );
  FD4 \count_reg[11]  ( .D(N136), .CP(PCLK), .SD(PRESET_n), .Q(count[11]) );
  FD4 \count_reg[10]  ( .D(N135), .CP(PCLK), .SD(PRESET_n), .Q(count[10]) );
  FD4 \count_reg[9]  ( .D(N134), .CP(PCLK), .SD(PRESET_n), .Q(count[9]), .QN(
        n177) );
  FD4 \count_reg[8]  ( .D(N133), .CP(PCLK), .SD(PRESET_n), .Q(count[8]) );
  FD4 \count_reg[7]  ( .D(N132), .CP(PCLK), .SD(PRESET_n), .Q(count[7]) );
  FD4 \count_reg[6]  ( .D(N131), .CP(PCLK), .SD(PRESET_n), .Q(count[6]) );
  FD4 \count_reg[5]  ( .D(N130), .CP(PCLK), .SD(PRESET_n), .Q(count[5]), .QN(
        n176) );
  FD4 \count_reg[4]  ( .D(N129), .CP(PCLK), .SD(PRESET_n), .Q(count[4]) );
  FD4 \count_reg[3]  ( .D(N128), .CP(PCLK), .SD(PRESET_n), .Q(count[3]) );
  FD4 \count_reg[2]  ( .D(N127), .CP(PCLK), .SD(PRESET_n), .Q(count[2]) );
  FD4 \count_reg[1]  ( .D(N126), .CP(PCLK), .SD(PRESET_n), .Q(count[1]) );
  FD4 \count_reg[0]  ( .D(N125), .CP(PCLK), .SD(PRESET_n), .Q(count[0]) );
  IVP U85 ( .A(spi_mode_i[1]), .Z(n64) );
  ND2 U86 ( .A(mstr_i), .B(n64), .Z(n131) );
  AO6 U87 ( .A(spiswai_i), .B(spi_mode_i[0]), .C(n131), .Z(n110) );
  OR2P U88 ( .A(BaudRateDivisor_i[1]), .B(BaudRateDivisor_i[0]), .Z(n72) );
  NR2 U89 ( .A(BaudRateDivisor_i[2]), .B(n72), .Z(n70) );
  IVP U90 ( .A(n70), .Z(n69) );
  NR2 U91 ( .A(n69), .B(BaudRateDivisor_i[3]), .Z(n68) );
  IVP U92 ( .A(n68), .Z(n77) );
  NR2 U93 ( .A(BaudRateDivisor_i[4]), .B(n77), .Z(n76) );
  IVP U94 ( .A(n76), .Z(n79) );
  NR2 U95 ( .A(n79), .B(BaudRateDivisor_i[5]), .Z(n78) );
  IVP U96 ( .A(n78), .Z(n65) );
  NR2 U97 ( .A(BaudRateDivisor_i[6]), .B(n65), .Z(n66) );
  AO6 U98 ( .A(BaudRateDivisor_i[6]), .B(n65), .C(n66), .Z(n82) );
  IVP U99 ( .A(n66), .Z(n67) );
  NR2 U100 ( .A(BaudRateDivisor_i[7]), .B(n67), .Z(n88) );
  AO6 U101 ( .A(BaudRateDivisor_i[7]), .B(n67), .C(n88), .Z(n94) );
  AO4 U102 ( .A(count[10]), .B(n82), .C(count[11]), .D(n94), .Z(n123) );
  AO6 U103 ( .A(BaudRateDivisor_i[3]), .B(n69), .C(n68), .Z(n80) );
  AO6 U104 ( .A(BaudRateDivisor_i[2]), .B(n72), .C(n70), .Z(n74) );
  AO2 U105 ( .A(count[7]), .B(n80), .C(count[6]), .D(n74), .Z(n119) );
  ND2 U106 ( .A(BaudRateDivisor_i[0]), .B(count[4]), .Z(n112) );
  ND2 U107 ( .A(BaudRateDivisor_i[1]), .B(BaudRateDivisor_i[0]), .Z(n71) );
  NR2 U108 ( .A(count[5]), .B(n71), .Z(n73) );
  ND2 U109 ( .A(n72), .B(n71), .Z(n108) );
  AO4 U110 ( .A(n112), .B(n73), .C(n108), .D(n176), .Z(n75) );
  OR2P U111 ( .A(count[6]), .B(n74), .Z(n111) );
  ND2 U112 ( .A(n75), .B(n111), .Z(n81) );
  AO6 U113 ( .A(BaudRateDivisor_i[4]), .B(n77), .C(n76), .Z(n83) );
  NR2 U114 ( .A(count[8]), .B(n83), .Z(n124) );
  AO6 U115 ( .A(BaudRateDivisor_i[5]), .B(n79), .C(n78), .Z(n117) );
  AO4 U116 ( .A(count[9]), .B(n117), .C(count[7]), .D(n80), .Z(n115) );
  AO1P U117 ( .A(n119), .B(n81), .C(n124), .D(n115), .Z(n86) );
  ND2 U118 ( .A(count[10]), .B(n82), .Z(n118) );
  AN2P U119 ( .A(count[8]), .B(n83), .Z(n116) );
  AO5 U120 ( .A(count[9]), .B(n116), .C(n117), .Z(n84) );
  ND2 U121 ( .A(n118), .B(n84), .Z(n85) );
  NR2 U122 ( .A(n86), .B(n85), .Z(n87) );
  NR2 U123 ( .A(n123), .B(n87), .Z(n104) );
  IVP U124 ( .A(n88), .Z(n93) );
  NR2 U125 ( .A(n93), .B(BaudRateDivisor_i[8]), .Z(n92) );
  IVP U126 ( .A(n92), .Z(n89) );
  NR2 U127 ( .A(BaudRateDivisor_i[9]), .B(n89), .Z(n90) );
  AO6 U128 ( .A(BaudRateDivisor_i[9]), .B(n89), .C(n90), .Z(n101) );
  IVP U129 ( .A(n90), .Z(n91) );
  NR2 U130 ( .A(BaudRateDivisor_i[10]), .B(n91), .Z(n96) );
  AO6 U131 ( .A(BaudRateDivisor_i[10]), .B(n91), .C(n96), .Z(n97) );
  AO2 U132 ( .A(count[13]), .B(n101), .C(count[14]), .D(n97), .Z(n102) );
  AO6 U133 ( .A(BaudRateDivisor_i[8]), .B(n93), .C(n92), .Z(n100) );
  AO2 U134 ( .A(count[11]), .B(n94), .C(count[12]), .D(n100), .Z(n95) );
  ND2 U135 ( .A(n102), .B(n95), .Z(n130) );
  EN U136 ( .A(n96), .B(BaudRateDivisor_i[11]), .Z(n105) );
  NR2 U137 ( .A(count[15]), .B(n105), .Z(n99) );
  NR2 U138 ( .A(count[14]), .B(n97), .Z(n98) );
  NR2 U139 ( .A(n99), .B(n98), .Z(n128) );
  AO4 U140 ( .A(count[13]), .B(n101), .C(count[12]), .D(n100), .Z(n122) );
  ND2 U141 ( .A(n102), .B(n122), .Z(n103) );
  AO3 U142 ( .A(n104), .B(n130), .C(n128), .D(n103), .Z(n106) );
  ND2 U143 ( .A(count[15]), .B(n105), .Z(n125) );
  AO6 U144 ( .A(n106), .B(n125), .C(send_data_i), .Z(n132) );
  IVP U145 ( .A(n132), .Z(n107) );
  ND2 U146 ( .A(n110), .B(n107), .Z(N54) );
  EO1 U147 ( .A(n108), .B(n176), .C(n176), .D(n108), .Z(n109) );
  AO3 U148 ( .A(BaudRateDivisor_i[0]), .B(count[4]), .C(n110), .D(n109), .Z(
        n114) );
  ND2 U149 ( .A(count[0]), .B(count[1]), .Z(n133) );
  IVP U150 ( .A(n133), .Z(n136) );
  ND2 U151 ( .A(n136), .B(count[2]), .Z(n135) );
  IVP U152 ( .A(n135), .Z(n139) );
  ND2 U153 ( .A(n139), .B(count[3]), .Z(n138) );
  IVP U154 ( .A(n138), .Z(n141) );
  IVP U155 ( .A(send_data_i), .Z(n171) );
  ND4 U156 ( .A(n141), .B(n171), .C(n112), .D(n111), .Z(n113) );
  NR4 U157 ( .A(n116), .B(n115), .C(n114), .D(n113), .Z(n127) );
  IVP U158 ( .A(n117), .Z(n120) );
  AO3 U159 ( .A(n120), .B(n177), .C(n119), .D(n118), .Z(n121) );
  NR4 U160 ( .A(n124), .B(n123), .C(n122), .D(n121), .Z(n126) );
  ND4 U161 ( .A(n128), .B(n127), .C(n126), .D(n125), .Z(n129) );
  NR2 U162 ( .A(n130), .B(n129), .Z(N28) );
  NR3 U163 ( .A(n132), .B(spiswai_i), .C(n131), .Z(n175) );
  AO7 U164 ( .A(send_data_i), .B(count[0]), .C(n175), .Z(N125) );
  AO3 U165 ( .A(count[0]), .B(count[1]), .C(n171), .D(n133), .Z(n134) );
  ND2 U166 ( .A(n175), .B(n134), .Z(N126) );
  AO3 U167 ( .A(n136), .B(count[2]), .C(n171), .D(n135), .Z(n137) );
  ND2 U168 ( .A(n175), .B(n137), .Z(N127) );
  AO3 U169 ( .A(n139), .B(count[3]), .C(n171), .D(n138), .Z(n140) );
  ND2 U170 ( .A(n175), .B(n140), .Z(N128) );
  ND2 U171 ( .A(count[4]), .B(n141), .Z(n143) );
  AO3 U172 ( .A(count[4]), .B(n141), .C(n171), .D(n143), .Z(n142) );
  ND2 U173 ( .A(n175), .B(n142), .Z(N129) );
  NR2 U174 ( .A(n176), .B(n143), .Z(n146) );
  AO1P U175 ( .A(n176), .B(n143), .C(send_data_i), .D(n146), .Z(n144) );
  IVP U176 ( .A(n144), .Z(n145) );
  ND2 U177 ( .A(n175), .B(n145), .Z(N130) );
  ND2 U178 ( .A(count[6]), .B(n146), .Z(n148) );
  AO3 U179 ( .A(count[6]), .B(n146), .C(n171), .D(n148), .Z(n147) );
  ND2 U180 ( .A(n175), .B(n147), .Z(N131) );
  IVP U181 ( .A(n148), .Z(n149) );
  ND2 U182 ( .A(count[7]), .B(n149), .Z(n151) );
  AO3 U183 ( .A(count[7]), .B(n149), .C(n171), .D(n151), .Z(n150) );
  ND2 U184 ( .A(n175), .B(n150), .Z(N132) );
  IVP U185 ( .A(n151), .Z(n152) );
  ND2 U186 ( .A(count[8]), .B(n152), .Z(n154) );
  AO3 U187 ( .A(count[8]), .B(n152), .C(n171), .D(n154), .Z(n153) );
  ND2 U188 ( .A(n175), .B(n153), .Z(N133) );
  NR2 U189 ( .A(n177), .B(n154), .Z(n157) );
  AO1P U190 ( .A(n177), .B(n154), .C(send_data_i), .D(n157), .Z(n155) );
  IVP U191 ( .A(n155), .Z(n156) );
  ND2 U192 ( .A(n175), .B(n156), .Z(N134) );
  ND2 U193 ( .A(count[10]), .B(n157), .Z(n159) );
  AO3 U194 ( .A(count[10]), .B(n157), .C(n171), .D(n159), .Z(n158) );
  ND2 U195 ( .A(n175), .B(n158), .Z(N135) );
  IVP U196 ( .A(n159), .Z(n160) );
  ND2 U197 ( .A(count[11]), .B(n160), .Z(n162) );
  AO3 U198 ( .A(count[11]), .B(n160), .C(n171), .D(n162), .Z(n161) );
  ND2 U199 ( .A(n175), .B(n161), .Z(N136) );
  IVP U200 ( .A(n162), .Z(n163) );
  ND2 U201 ( .A(count[12]), .B(n163), .Z(n165) );
  AO3 U202 ( .A(count[12]), .B(n163), .C(n171), .D(n165), .Z(n164) );
  ND2 U203 ( .A(n175), .B(n164), .Z(N137) );
  IVP U204 ( .A(n165), .Z(n166) );
  ND2 U205 ( .A(count[13]), .B(n166), .Z(n168) );
  AO3 U206 ( .A(count[13]), .B(n166), .C(n171), .D(n168), .Z(n167) );
  ND2 U207 ( .A(n175), .B(n167), .Z(N138) );
  IVP U208 ( .A(n168), .Z(n169) );
  ND2 U209 ( .A(count[14]), .B(n169), .Z(n173) );
  AO3 U210 ( .A(count[14]), .B(n169), .C(n171), .D(n173), .Z(n170) );
  ND2 U211 ( .A(n175), .B(n170), .Z(N139) );
  ND2 U212 ( .A(n173), .B(n178), .Z(n172) );
  AO3 U213 ( .A(n173), .B(n178), .C(n172), .D(n171), .Z(n174) );
  ND2 U214 ( .A(n175), .B(n174), .Z(N140) );
endmodule

