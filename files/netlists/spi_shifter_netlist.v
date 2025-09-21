/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sun Aug 17 17:20:47 2025
/////////////////////////////////////////////////////////////


module spi_shifter1 ( PCLK, PRESET_n, ss_i, send_data_i, receive_data_i, 
        data_mosi_i, data_miso_o, mosi_send_sclk_i, mosi_send_sclk0_i, 
        miso_send_sclk_i, miso_send_sclk0_i, cpol_i, cpha_i, lsbfe_i, miso_i, 
        mosi_o );
  input [7:0] data_mosi_i;
  output [7:0] data_miso_o;
  input PCLK, PRESET_n, ss_i, send_data_i, receive_data_i, mosi_send_sclk_i,
         mosi_send_sclk0_i, miso_send_sclk_i, miso_send_sclk0_i, cpol_i,
         cpha_i, lsbfe_i, miso_i;
  output mosi_o;
  wire   N66, N67, N68, N69, N70, N71, N72, N73, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227;
  wire   [7:0] shift_register;
  wire   [7:0] temp_reg;
  wire   [2:0] count;
  wire   [2:0] count1;
  wire   [2:0] count2;
  wire   [2:0] count3;

  FD2 \shift_register_reg[7]  ( .D(n110), .CP(PCLK), .CD(PRESET_n), .Q(
        shift_register[7]), .QN(n218) );
  FD2 \shift_register_reg[6]  ( .D(n109), .CP(PCLK), .CD(PRESET_n), .Q(
        shift_register[6]) );
  FD2 \shift_register_reg[5]  ( .D(n108), .CP(PCLK), .CD(PRESET_n), .Q(
        shift_register[5]) );
  FD2 \shift_register_reg[4]  ( .D(n107), .CP(PCLK), .CD(PRESET_n), .Q(
        shift_register[4]) );
  FD2 \shift_register_reg[3]  ( .D(n106), .CP(PCLK), .CD(PRESET_n), .Q(
        shift_register[3]), .QN(n225) );
  FD2 \shift_register_reg[2]  ( .D(n105), .CP(PCLK), .CD(PRESET_n), .Q(
        shift_register[2]) );
  FD2 \shift_register_reg[1]  ( .D(n104), .CP(PCLK), .CD(PRESET_n), .Q(
        shift_register[1]) );
  FD2 \shift_register_reg[0]  ( .D(n103), .CP(PCLK), .CD(PRESET_n), .Q(
        shift_register[0]) );
  FD2 \count_reg[0]  ( .D(n120), .CP(PCLK), .CD(PRESET_n), .Q(count[0]), .QN(
        n223) );
  FD2 \count_reg[1]  ( .D(n119), .CP(PCLK), .CD(PRESET_n), .Q(count[1]), .QN(
        n224) );
  FD2 \count_reg[2]  ( .D(n124), .CP(PCLK), .CD(PRESET_n), .Q(count[2]), .QN(
        n219) );
  FD2 mosi_o_reg ( .D(n127), .CP(PCLK), .CD(PRESET_n), .Q(mosi_o) );
  FD2 \count2_reg[0]  ( .D(n123), .CP(PCLK), .CD(PRESET_n), .Q(count2[0]), 
        .QN(n226) );
  FD2 \count2_reg[1]  ( .D(n122), .CP(PCLK), .CD(PRESET_n), .Q(count2[1]) );
  FD2 \count2_reg[2]  ( .D(n121), .CP(PCLK), .CD(PRESET_n), .Q(count2[2]), 
        .QN(n220) );
  FD2 \temp_reg_reg[7]  ( .D(n118), .CP(PCLK), .CD(PRESET_n), .Q(temp_reg[7])
         );
  FD2 \data_miso_o_reg[7]  ( .D(N73), .CP(PCLK), .CD(PRESET_n), .Q(
        data_miso_o[7]) );
  FD2 \temp_reg_reg[6]  ( .D(n117), .CP(PCLK), .CD(PRESET_n), .Q(temp_reg[6])
         );
  FD2 \data_miso_o_reg[6]  ( .D(N72), .CP(PCLK), .CD(PRESET_n), .Q(
        data_miso_o[6]) );
  FD2 \temp_reg_reg[5]  ( .D(n116), .CP(PCLK), .CD(PRESET_n), .Q(temp_reg[5])
         );
  FD2 \data_miso_o_reg[5]  ( .D(N71), .CP(PCLK), .CD(PRESET_n), .Q(
        data_miso_o[5]) );
  FD2 \temp_reg_reg[4]  ( .D(n115), .CP(PCLK), .CD(PRESET_n), .Q(temp_reg[4])
         );
  FD2 \data_miso_o_reg[4]  ( .D(N70), .CP(PCLK), .CD(PRESET_n), .Q(
        data_miso_o[4]) );
  FD2 \temp_reg_reg[3]  ( .D(n114), .CP(PCLK), .CD(PRESET_n), .Q(temp_reg[3])
         );
  FD2 \data_miso_o_reg[3]  ( .D(N69), .CP(PCLK), .CD(PRESET_n), .Q(
        data_miso_o[3]) );
  FD2 \temp_reg_reg[2]  ( .D(n113), .CP(PCLK), .CD(PRESET_n), .Q(temp_reg[2])
         );
  FD2 \data_miso_o_reg[2]  ( .D(N68), .CP(PCLK), .CD(PRESET_n), .Q(
        data_miso_o[2]) );
  FD2 \temp_reg_reg[1]  ( .D(n112), .CP(PCLK), .CD(PRESET_n), .Q(temp_reg[1])
         );
  FD2 \data_miso_o_reg[1]  ( .D(N67), .CP(PCLK), .CD(PRESET_n), .Q(
        data_miso_o[1]) );
  FD2 \temp_reg_reg[0]  ( .D(n111), .CP(PCLK), .CD(PRESET_n), .Q(temp_reg[0])
         );
  FD2 \data_miso_o_reg[0]  ( .D(N66), .CP(PCLK), .CD(PRESET_n), .Q(
        data_miso_o[0]) );
  FD4 \count1_reg[0]  ( .D(n126), .CP(PCLK), .SD(PRESET_n), .Q(count1[0]), 
        .QN(n222) );
  FD4 \count1_reg[1]  ( .D(n125), .CP(PCLK), .SD(PRESET_n), .Q(count1[1]) );
  FD4 \count1_reg[2]  ( .D(n130), .CP(PCLK), .SD(PRESET_n), .Q(count1[2]), 
        .QN(n216) );
  FD4 \count3_reg[0]  ( .D(n131), .CP(PCLK), .SD(PRESET_n), .Q(count3[0]), 
        .QN(n227) );
  FD4 \count3_reg[1]  ( .D(n129), .CP(PCLK), .SD(PRESET_n), .Q(count3[1]), 
        .QN(n217) );
  FD4 \count3_reg[2]  ( .D(n128), .CP(PCLK), .SD(PRESET_n), .Q(count3[2]), 
        .QN(n221) );
  EO U142 ( .A(cpha_i), .B(cpol_i), .Z(n139) );
  IVP U143 ( .A(n139), .Z(n138) );
  AO2 U144 ( .A(n139), .B(miso_send_sclk0_i), .C(miso_send_sclk_i), .D(n138), 
        .Z(n132) );
  NR2 U145 ( .A(ss_i), .B(n132), .Z(n136) );
  ND2 U146 ( .A(n136), .B(lsbfe_i), .Z(n134) );
  NR2 U147 ( .A(n134), .B(count2[0]), .Z(n196) );
  AO6 U148 ( .A(n134), .B(count2[0]), .C(n196), .Z(n133) );
  IVP U149 ( .A(n133), .Z(n123) );
  NR2 U150 ( .A(n226), .B(n134), .Z(n192) );
  ND2 U151 ( .A(count2[1]), .B(n192), .Z(n166) );
  AO7 U152 ( .A(count2[1]), .B(n192), .C(n166), .Z(n135) );
  IVP U153 ( .A(n135), .Z(n122) );
  AN2P U154 ( .A(temp_reg[0]), .B(receive_data_i), .Z(N66) );
  AN2P U155 ( .A(temp_reg[1]), .B(receive_data_i), .Z(N67) );
  AN2P U156 ( .A(temp_reg[2]), .B(receive_data_i), .Z(N68) );
  AN2P U157 ( .A(temp_reg[3]), .B(receive_data_i), .Z(N69) );
  AN2P U158 ( .A(temp_reg[4]), .B(receive_data_i), .Z(N70) );
  AN2P U159 ( .A(temp_reg[5]), .B(receive_data_i), .Z(N71) );
  AN2P U160 ( .A(temp_reg[6]), .B(receive_data_i), .Z(N72) );
  AN2P U161 ( .A(temp_reg[7]), .B(receive_data_i), .Z(N73) );
  IVP U162 ( .A(lsbfe_i), .Z(n150) );
  ND2 U163 ( .A(n136), .B(n150), .Z(n171) );
  NR2 U164 ( .A(count3[0]), .B(n171), .Z(n187) );
  IVP U165 ( .A(n187), .Z(n142) );
  ND2 U166 ( .A(count3[0]), .B(n171), .Z(n137) );
  ND2 U167 ( .A(n142), .B(n137), .Z(n131) );
  AO2 U168 ( .A(n139), .B(mosi_send_sclk_i), .C(mosi_send_sclk0_i), .D(n138), 
        .Z(n140) );
  OR2P U169 ( .A(ss_i), .B(n140), .Z(n151) );
  NR2 U170 ( .A(lsbfe_i), .B(n151), .Z(n162) );
  ND2 U171 ( .A(n162), .B(n222), .Z(n163) );
  NR2 U172 ( .A(count1[1]), .B(n163), .Z(n141) );
  IVP U173 ( .A(n141), .Z(n165) );
  AO2 U174 ( .A(count1[2]), .B(n141), .C(n165), .D(n216), .Z(n130) );
  NR2 U175 ( .A(count3[1]), .B(n142), .Z(n195) );
  IVP U176 ( .A(n195), .Z(n143) );
  AO7 U177 ( .A(n187), .B(n217), .C(n143), .Z(n129) );
  AO2 U178 ( .A(count3[2]), .B(n195), .C(n143), .D(n221), .Z(n128) );
  AO2 U179 ( .A(count[2]), .B(shift_register[7]), .C(shift_register[3]), .D(
        n219), .Z(n145) );
  AO2 U180 ( .A(count[2]), .B(shift_register[6]), .C(shift_register[2]), .D(
        n219), .Z(n144) );
  AO2 U181 ( .A(count[0]), .B(n145), .C(n144), .D(n223), .Z(n149) );
  AO2 U182 ( .A(count[2]), .B(shift_register[5]), .C(shift_register[1]), .D(
        n219), .Z(n147) );
  AO2 U183 ( .A(count[2]), .B(shift_register[4]), .C(shift_register[0]), .D(
        n219), .Z(n146) );
  AO2 U184 ( .A(count[0]), .B(n147), .C(n146), .D(n223), .Z(n148) );
  AO2 U185 ( .A(count[1]), .B(n149), .C(n148), .D(n224), .Z(n161) );
  NR2 U186 ( .A(n150), .B(n151), .Z(n168) );
  IVP U187 ( .A(n168), .Z(n167) );
  ND2 U188 ( .A(mosi_o), .B(n151), .Z(n160) );
  AO2 U189 ( .A(count1[2]), .B(shift_register[5]), .C(shift_register[1]), .D(
        n216), .Z(n153) );
  AO2 U190 ( .A(count1[2]), .B(shift_register[4]), .C(shift_register[0]), .D(
        n216), .Z(n152) );
  AO2 U191 ( .A(count1[0]), .B(n153), .C(n152), .D(n222), .Z(n158) );
  AO2 U192 ( .A(count1[2]), .B(shift_register[6]), .C(shift_register[2]), .D(
        n216), .Z(n156) );
  AO2 U193 ( .A(count1[2]), .B(n218), .C(n225), .D(n216), .Z(n154) );
  ND2 U194 ( .A(count1[0]), .B(n154), .Z(n155) );
  AO3 U195 ( .A(n156), .B(count1[0]), .C(count1[1]), .D(n155), .Z(n157) );
  AO3 U196 ( .A(count1[1]), .B(n158), .C(n162), .D(n157), .Z(n159) );
  AO3 U197 ( .A(n161), .B(n167), .C(n160), .D(n159), .Z(n127) );
  AO7 U198 ( .A(n162), .B(n222), .C(n163), .Z(n126) );
  ND2 U199 ( .A(count1[1]), .B(n163), .Z(n164) );
  ND2 U200 ( .A(n165), .B(n164), .Z(n125) );
  ND2 U201 ( .A(count[0]), .B(n168), .Z(n170) );
  NR2 U202 ( .A(n224), .B(n170), .Z(n169) );
  EO1 U203 ( .A(count[2]), .B(n169), .C(n169), .D(count[2]), .Z(n124) );
  IVP U204 ( .A(n166), .Z(n182) );
  AO2 U205 ( .A(count2[2]), .B(n182), .C(n166), .D(n220), .Z(n121) );
  AO2 U206 ( .A(count[0]), .B(n168), .C(n167), .D(n223), .Z(n120) );
  AO6 U207 ( .A(n224), .B(n170), .C(n169), .Z(n119) );
  NR2 U208 ( .A(n227), .B(n171), .Z(n183) );
  NR2 U209 ( .A(n221), .B(n217), .Z(n174) );
  AO2 U210 ( .A(n183), .B(n174), .C(count2[2]), .D(n182), .Z(n173) );
  IVP U211 ( .A(miso_i), .Z(n199) );
  ND2 U212 ( .A(temp_reg[7]), .B(n173), .Z(n172) );
  AO7 U213 ( .A(n173), .B(n199), .C(n172), .Z(n118) );
  AN2P U214 ( .A(count2[1]), .B(n196), .Z(n186) );
  AO2 U215 ( .A(n174), .B(n187), .C(count2[2]), .D(n186), .Z(n176) );
  ND2 U216 ( .A(temp_reg[6]), .B(n176), .Z(n175) );
  AO7 U217 ( .A(n176), .B(n199), .C(n175), .Z(n117) );
  AN2P U218 ( .A(n217), .B(n183), .Z(n191) );
  NR2 U219 ( .A(count2[1]), .B(n220), .Z(n179) );
  AO2 U220 ( .A(count3[2]), .B(n191), .C(n192), .D(n179), .Z(n178) );
  ND2 U221 ( .A(temp_reg[5]), .B(n178), .Z(n177) );
  AO7 U222 ( .A(n178), .B(n199), .C(n177), .Z(n116) );
  AO2 U223 ( .A(count3[2]), .B(n195), .C(n196), .D(n179), .Z(n181) );
  ND2 U224 ( .A(temp_reg[4]), .B(n181), .Z(n180) );
  AO7 U225 ( .A(n181), .B(n199), .C(n180), .Z(n115) );
  NR2 U226 ( .A(count3[2]), .B(n217), .Z(n188) );
  AO2 U227 ( .A(n183), .B(n188), .C(n182), .D(n220), .Z(n185) );
  ND2 U228 ( .A(temp_reg[3]), .B(n185), .Z(n184) );
  AO7 U229 ( .A(n185), .B(n199), .C(n184), .Z(n114) );
  AO2 U230 ( .A(n188), .B(n187), .C(n186), .D(n220), .Z(n190) );
  ND2 U231 ( .A(temp_reg[2]), .B(n190), .Z(n189) );
  AO7 U232 ( .A(n190), .B(n199), .C(n189), .Z(n113) );
  NR2 U233 ( .A(count2[2]), .B(count2[1]), .Z(n197) );
  AO2 U234 ( .A(n197), .B(n192), .C(n191), .D(n221), .Z(n194) );
  ND2 U235 ( .A(temp_reg[1]), .B(n194), .Z(n193) );
  AO7 U236 ( .A(n194), .B(n199), .C(n193), .Z(n112) );
  AO2 U237 ( .A(n197), .B(n196), .C(n195), .D(n221), .Z(n200) );
  ND2 U238 ( .A(temp_reg[0]), .B(n200), .Z(n198) );
  AO7 U239 ( .A(n200), .B(n199), .C(n198), .Z(n111) );
  ND2 U240 ( .A(data_mosi_i[7]), .B(send_data_i), .Z(n201) );
  AO7 U241 ( .A(send_data_i), .B(n218), .C(n201), .Z(n110) );
  IVP U242 ( .A(send_data_i), .Z(n213) );
  ND2 U243 ( .A(shift_register[6]), .B(n213), .Z(n203) );
  ND2 U244 ( .A(send_data_i), .B(data_mosi_i[6]), .Z(n202) );
  ND2 U245 ( .A(n203), .B(n202), .Z(n109) );
  ND2 U246 ( .A(shift_register[5]), .B(n213), .Z(n205) );
  ND2 U247 ( .A(send_data_i), .B(data_mosi_i[5]), .Z(n204) );
  ND2 U248 ( .A(n205), .B(n204), .Z(n108) );
  ND2 U249 ( .A(shift_register[4]), .B(n213), .Z(n207) );
  ND2 U250 ( .A(send_data_i), .B(data_mosi_i[4]), .Z(n206) );
  ND2 U251 ( .A(n207), .B(n206), .Z(n107) );
  ND2 U252 ( .A(data_mosi_i[3]), .B(send_data_i), .Z(n208) );
  AO7 U253 ( .A(send_data_i), .B(n225), .C(n208), .Z(n106) );
  ND2 U254 ( .A(shift_register[2]), .B(n213), .Z(n210) );
  ND2 U255 ( .A(send_data_i), .B(data_mosi_i[2]), .Z(n209) );
  ND2 U256 ( .A(n210), .B(n209), .Z(n105) );
  ND2 U257 ( .A(shift_register[1]), .B(n213), .Z(n212) );
  ND2 U258 ( .A(send_data_i), .B(data_mosi_i[1]), .Z(n211) );
  ND2 U259 ( .A(n212), .B(n211), .Z(n104) );
  ND2 U260 ( .A(shift_register[0]), .B(n213), .Z(n215) );
  ND2 U261 ( .A(send_data_i), .B(data_mosi_i[0]), .Z(n214) );
  ND2 U262 ( .A(n215), .B(n214), .Z(n103) );
endmodule

