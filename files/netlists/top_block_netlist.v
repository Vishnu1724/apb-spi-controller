/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sun Aug 17 17:34:12 2025
/////////////////////////////////////////////////////////////


module top_block ( PCLK, PRESET_n, PADDR_i, PWRITE_i, PSEL_i, PENABLE_i, 
        PWDATA_i, miso_i, ss_o, sclk_o, PREADY_o, PSLVERR_o, PRDATA_o, 
        spi_interrupt_request_o, mosi_o );
  input [2:0] PADDR_i;
  input [7:0] PWDATA_i;
  output [7:0] PRDATA_o;
  input PCLK, PRESET_n, PWRITE_i, PSEL_i, PENABLE_i, miso_i;
  output ss_o, sclk_o, PREADY_o, PSLVERR_o, spi_interrupt_request_o, mosi_o;
  wire   spiswai, cpol, cpha, miso_receive_sclk, miso_receive_sclk0, mstr,
         send_data, receive_data, lsbfe, \D1/N143 , \D1/N142 , \D1/N74 ,
         \D1/N73 , \D1/N72 , \D1/N71 , \D1/N70 , \D1/N69 , \D1/N68 , \D1/N67 ,
         \D1/N66 , \D1/N65 , \D1/N64 , \D1/N63 , \D2/N140 , \D2/N139 ,
         \D2/N138 , \D2/N137 , \D2/N136 , \D2/N135 , \D2/N134 , \D2/N133 ,
         \D2/N132 , \D2/N131 , \D2/N130 , \D2/N129 , \D2/N128 , \D2/N127 ,
         \D2/N126 , \D2/N125 , \D2/N54 , \D2/N28 , \D2/rcv , \D3/SPI_CR_2_0 ,
         \D3/SPI_CR_1_1 , \D3/next_mode[1] , \D3/next_state[1] , \D4/N73 ,
         \D4/N72 , \D4/N71 , \D4/N70 , \D4/N69 , \D4/N68 , \D4/N67 , \D4/N66 ,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
         n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666,
         n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, n677,
         n678, n679, n680, n681, n682, n683, n684, n685, n686, n687, n688,
         n689, n690, n691, n692, n693, n694, n695, n696, n697, n698, n699,
         n700, n701, n702, n703, n704, n705, n706, n707, n708, n709, n710,
         n711, n712, n713, n714, n715, n716, n717, n718, n719, n720, n721,
         n722, n723, n724, n725, n726, n727, n728, n729, n730, n731, n732,
         n733, n734, n735, n736, n737, n738, n739, n740, n741, n742, n743,
         n744, n745, n746, n747, n748, n749, n750, n751, n752, n753, n754,
         n755, n756, n757, n758, n759, n760, n761, n762, n763, n764, n765,
         n766, n767, n768, n769, n770, n771, n772, n773, n774, n775, n776,
         n777, n778, n779, n780, n781, n782, n783, n784, n785, n786, n787;
  wire   [2:0] sppr;
  wire   [2:0] spr;
  wire   [1:0] spi_mode;
  wire   [7:0] miso_data;
  wire   [7:0] mosi_data;
  wire   [11:0] \D1/count_s ;
  wire   [15:0] \D2/count ;
  wire   [7:0] \D3/SPI_DR ;
  wire   [7:2] \D3/SPI_CR_2 ;
  wire   [7:5] \D3/SPI_CR_1 ;
  wire   [1:0] \D3/STATE ;
  wire   [2:0] \D4/count3 ;
  wire   [2:0] \D4/count2 ;
  wire   [2:0] \D4/count1 ;
  wire   [2:0] \D4/count ;
  wire   [7:0] \D4/temp_reg ;
  wire   [7:0] \D4/shift_register ;

  FD2 \D3/STATE_reg[1]  ( .D(\D3/next_state[1] ), .CP(PCLK), .CD(PRESET_n), 
        .Q(\D3/STATE [1]), .QN(n753) );
  FD2 \D3/STATE_reg[0]  ( .D(n369), .CP(PCLK), .CD(PRESET_n), .Q(\D3/STATE [0]) );
  FD2 \D3/SPI_BR_reg[6]  ( .D(n368), .CP(PCLK), .CD(PRESET_n), .Q(sppr[2]) );
  FD2 \D3/SPI_BR_reg[5]  ( .D(n367), .CP(PCLK), .CD(PRESET_n), .QN(n766) );
  FD2 \D3/SPI_BR_reg[4]  ( .D(n366), .CP(PCLK), .CD(PRESET_n), .Q(sppr[0]), 
        .QN(n740) );
  FD2 \D3/SPI_BR_reg[2]  ( .D(n365), .CP(PCLK), .CD(PRESET_n), .Q(spr[2]), 
        .QN(n760) );
  FD2 \D3/SPI_BR_reg[1]  ( .D(n364), .CP(PCLK), .CD(PRESET_n), .Q(spr[1]), 
        .QN(n749) );
  FD2 \D3/SPI_BR_reg[0]  ( .D(n363), .CP(PCLK), .CD(PRESET_n), .Q(spr[0]), 
        .QN(n771) );
  FD2 \D3/SPI_CR_2_reg[1]  ( .D(n362), .CP(PCLK), .CD(PRESET_n), .Q(spiswai), 
        .QN(n772) );
  FD2 \D3/SPI_CR_2_reg[3]  ( .D(n361), .CP(PCLK), .CD(PRESET_n), .Q(
        \D3/SPI_CR_2 [3]) );
  FD2 \D3/SPI_CR_2_reg[4]  ( .D(n360), .CP(PCLK), .CD(PRESET_n), .Q(
        \D3/SPI_CR_2 [4]), .QN(n780) );
  FD2 \D3/SPI_CR_2_reg[0]  ( .D(n359), .CP(PCLK), .CD(PRESET_n), .Q(
        \D3/SPI_CR_2_0 ) );
  FD2 \D3/SPI_CR_1_reg[7]  ( .D(n358), .CP(PCLK), .CD(PRESET_n), .Q(
        \D3/SPI_CR_1 [7]), .QN(n754) );
  FD2 \D3/SPI_CR_1_reg[6]  ( .D(n357), .CP(PCLK), .CD(PRESET_n), .Q(
        \D3/SPI_CR_1 [6]) );
  FD2 \D3/spi_mode_o_reg[0]  ( .D(n370), .CP(PCLK), .CD(PRESET_n), .Q(
        spi_mode[0]), .QN(n779) );
  FD2 \D3/spi_mode_o_reg[1]  ( .D(\D3/next_mode[1] ), .CP(PCLK), .CD(PRESET_n), 
        .Q(spi_mode[1]), .QN(n746) );
  FD2 \D3/SPI_CR_1_reg[5]  ( .D(n356), .CP(PCLK), .CD(PRESET_n), .Q(
        \D3/SPI_CR_1 [5]), .QN(n781) );
  FD2 \D3/SPI_CR_1_reg[4]  ( .D(n355), .CP(PCLK), .CD(PRESET_n), .Q(mstr), 
        .QN(n750) );
  FD2 \D3/SPI_CR_1_reg[3]  ( .D(n354), .CP(PCLK), .CD(PRESET_n), .Q(cpol), 
        .QN(n748) );
  FD2 \D3/SPI_CR_1_reg[1]  ( .D(n352), .CP(PCLK), .CD(PRESET_n), .Q(
        \D3/SPI_CR_1_1 ) );
  FD2 \D3/SPI_CR_1_reg[0]  ( .D(n351), .CP(PCLK), .CD(PRESET_n), .Q(lsbfe), 
        .QN(n751) );
  FD2 \D4/data_miso_o_reg[7]  ( .D(\D4/N73 ), .CP(PCLK), .CD(PRESET_n), .Q(
        miso_data[7]) );
  FD2 \D3/send_data_o_reg  ( .D(n334), .CP(PCLK), .CD(PRESET_n), .Q(send_data), 
        .QN(n739) );
  FD2 \D1/count_s_reg[0]  ( .D(\D1/N63 ), .CP(PCLK), .CD(PRESET_n), .Q(
        \D1/count_s [0]), .QN(n763) );
  FD2 \D1/count_s_reg[1]  ( .D(\D1/N64 ), .CP(PCLK), .CD(PRESET_n), .QN(n747)
         );
  FD2 \D1/count_s_reg[2]  ( .D(\D1/N65 ), .CP(PCLK), .CD(PRESET_n), .Q(
        \D1/count_s [2]) );
  FD2 \D1/count_s_reg[3]  ( .D(\D1/N66 ), .CP(PCLK), .CD(PRESET_n), .Q(
        \D1/count_s [3]), .QN(n768) );
  FD2 \D1/count_s_reg[4]  ( .D(\D1/N67 ), .CP(PCLK), .CD(PRESET_n), .Q(
        \D1/count_s [4]), .QN(n764) );
  FD2 \D1/count_s_reg[5]  ( .D(\D1/N68 ), .CP(PCLK), .CD(PRESET_n), .Q(
        \D1/count_s [5]) );
  FD2 \D1/count_s_reg[6]  ( .D(\D1/N69 ), .CP(PCLK), .CD(PRESET_n), .QN(n759)
         );
  FD2 \D1/count_s_reg[7]  ( .D(\D1/N70 ), .CP(PCLK), .CD(PRESET_n), .Q(
        \D1/count_s [7]) );
  FD2 \D1/count_s_reg[8]  ( .D(\D1/N71 ), .CP(PCLK), .CD(PRESET_n), .Q(
        \D1/count_s [8]), .QN(n769) );
  FD2 \D1/count_s_reg[9]  ( .D(\D1/N72 ), .CP(PCLK), .CD(PRESET_n), .Q(
        \D1/count_s [9]) );
  FD2 \D1/count_s_reg[10]  ( .D(\D1/N73 ), .CP(PCLK), .CD(PRESET_n), .Q(
        \D1/count_s [10]), .QN(n770) );
  FD2 \D1/count_s_reg[11]  ( .D(\D1/N74 ), .CP(PCLK), .CD(PRESET_n), .Q(
        \D1/count_s [11]) );
  FD2 \D1/miso_receive_sclk0_o_reg  ( .D(\D1/N143 ), .CP(PCLK), .CD(PRESET_n), 
        .Q(miso_receive_sclk0) );
  FD2 \D1/miso_receive_sclk_o_reg  ( .D(\D1/N142 ), .CP(PCLK), .CD(PRESET_n), 
        .Q(miso_receive_sclk) );
  FD2 \D4/count2_reg[0]  ( .D(n324), .CP(PCLK), .CD(PRESET_n), .Q(
        \D4/count2 [0]), .QN(n787) );
  FD2 \D4/count2_reg[1]  ( .D(n323), .CP(PCLK), .CD(PRESET_n), .Q(
        \D4/count2 [1]), .QN(n752) );
  FD2 \D4/count2_reg[2]  ( .D(n322), .CP(PCLK), .CD(PRESET_n), .Q(
        \D4/count2 [2]), .QN(n774) );
  FD2 \D4/temp_reg_reg[6]  ( .D(n344), .CP(PCLK), .CD(PRESET_n), .Q(
        \D4/temp_reg [6]) );
  FD2 \D4/temp_reg_reg[7]  ( .D(n343), .CP(PCLK), .CD(PRESET_n), .Q(
        \D4/temp_reg [7]) );
  FD2 \D4/temp_reg_reg[4]  ( .D(n346), .CP(PCLK), .CD(PRESET_n), .Q(
        \D4/temp_reg [4]) );
  FD2 \D4/temp_reg_reg[5]  ( .D(n345), .CP(PCLK), .CD(PRESET_n), .Q(
        \D4/temp_reg [5]) );
  FD2 \D4/temp_reg_reg[0]  ( .D(n350), .CP(PCLK), .CD(PRESET_n), .Q(
        \D4/temp_reg [0]) );
  FD2 \D4/temp_reg_reg[2]  ( .D(n348), .CP(PCLK), .CD(PRESET_n), .Q(
        \D4/temp_reg [2]) );
  FD2 \D4/temp_reg_reg[1]  ( .D(n349), .CP(PCLK), .CD(PRESET_n), .Q(
        \D4/temp_reg [1]) );
  FD2 \D4/temp_reg_reg[3]  ( .D(n347), .CP(PCLK), .CD(PRESET_n), .Q(
        \D4/temp_reg [3]) );
  FD2 \D4/count_reg[0]  ( .D(n321), .CP(PCLK), .CD(PRESET_n), .Q(\D4/count [0]), .QN(n775) );
  FD2 \D4/count_reg[1]  ( .D(n320), .CP(PCLK), .CD(PRESET_n), .Q(\D4/count [1]), .QN(n776) );
  FD2 \D4/count_reg[2]  ( .D(n325), .CP(PCLK), .CD(PRESET_n), .Q(\D4/count [2]), .QN(n767) );
  FD2 \D2/rcv_reg  ( .D(\D2/N28 ), .CP(PCLK), .CD(PRESET_n), .Q(\D2/rcv ) );
  FD2 \D2/receive_data_o_reg  ( .D(\D2/rcv ), .CP(PCLK), .CD(PRESET_n), .Q(
        receive_data) );
  FD2 \D4/data_miso_o_reg[0]  ( .D(\D4/N66 ), .CP(PCLK), .CD(PRESET_n), .Q(
        miso_data[0]) );
  FD2 \D4/data_miso_o_reg[1]  ( .D(\D4/N67 ), .CP(PCLK), .CD(PRESET_n), .Q(
        miso_data[1]) );
  FD2 \D4/data_miso_o_reg[2]  ( .D(\D4/N68 ), .CP(PCLK), .CD(PRESET_n), .Q(
        miso_data[2]) );
  FD2 \D4/data_miso_o_reg[3]  ( .D(\D4/N69 ), .CP(PCLK), .CD(PRESET_n), .Q(
        miso_data[3]) );
  FD2 \D4/data_miso_o_reg[4]  ( .D(\D4/N70 ), .CP(PCLK), .CD(PRESET_n), .Q(
        miso_data[4]) );
  FD2 \D4/data_miso_o_reg[5]  ( .D(\D4/N71 ), .CP(PCLK), .CD(PRESET_n), .Q(
        miso_data[5]) );
  FD2 \D4/data_miso_o_reg[6]  ( .D(\D4/N72 ), .CP(PCLK), .CD(PRESET_n), .Q(
        miso_data[6]) );
  FD2 \D3/SPI_DR_reg[0]  ( .D(n342), .CP(PCLK), .CD(PRESET_n), .Q(
        \D3/SPI_DR [0]), .QN(n374) );
  FD2 \D3/SPI_DR_reg[1]  ( .D(n341), .CP(PCLK), .CD(PRESET_n), .Q(
        \D3/SPI_DR [1]), .QN(n741) );
  FD2 \D3/SPI_DR_reg[2]  ( .D(n340), .CP(PCLK), .CD(PRESET_n), .Q(
        \D3/SPI_DR [2]), .QN(n757) );
  FD2 \D3/SPI_DR_reg[3]  ( .D(n339), .CP(PCLK), .CD(PRESET_n), .Q(
        \D3/SPI_DR [3]), .QN(n743) );
  FD2 \D3/SPI_DR_reg[4]  ( .D(n338), .CP(PCLK), .CD(PRESET_n), .Q(
        \D3/SPI_DR [4]), .QN(n373) );
  FD2 \D3/SPI_DR_reg[5]  ( .D(n337), .CP(PCLK), .CD(PRESET_n), .Q(
        \D3/SPI_DR [5]), .QN(n742) );
  FD2 \D3/SPI_DR_reg[6]  ( .D(n336), .CP(PCLK), .CD(PRESET_n), .Q(
        \D3/SPI_DR [6]), .QN(n758) );
  FD2 \D3/SPI_DR_reg[7]  ( .D(n335), .CP(PCLK), .CD(PRESET_n), .Q(
        \D3/SPI_DR [7]), .QN(n744) );
  FD2 \D4/mosi_o_reg  ( .D(n332), .CP(PCLK), .CD(PRESET_n), .Q(mosi_o) );
  FD4 \D3/SPI_CR_1_reg[2]  ( .D(n353), .CP(PCLK), .SD(PRESET_n), .Q(cpha), 
        .QN(n782) );
  FD4 \D2/ss_o_reg  ( .D(\D2/N54 ), .CP(PCLK), .SD(PRESET_n), .Q(ss_o) );
  FD4 \D4/count3_reg[0]  ( .D(n330), .CP(PCLK), .SD(PRESET_n), .Q(
        \D4/count3 [0]), .QN(n784) );
  FD4 \D4/count3_reg[1]  ( .D(n329), .CP(PCLK), .SD(PRESET_n), .Q(
        \D4/count3 [1]), .QN(n783) );
  FD4 \D4/count3_reg[2]  ( .D(n328), .CP(PCLK), .SD(PRESET_n), .Q(
        \D4/count3 [2]), .QN(n762) );
  FD4 \D4/count1_reg[0]  ( .D(n327), .CP(PCLK), .SD(PRESET_n), .Q(
        \D4/count1 [0]), .QN(n773) );
  FD4 \D4/count1_reg[1]  ( .D(n326), .CP(PCLK), .SD(PRESET_n), .Q(
        \D4/count1 [1]) );
  FD4 \D4/count1_reg[2]  ( .D(n331), .CP(PCLK), .SD(PRESET_n), .Q(
        \D4/count1 [2]), .QN(n761) );
  FD4 \D2/count_reg[0]  ( .D(\D2/N125 ), .CP(PCLK), .SD(PRESET_n), .Q(
        \D2/count [0]) );
  FD4 \D2/count_reg[1]  ( .D(\D2/N126 ), .CP(PCLK), .SD(PRESET_n), .Q(
        \D2/count [1]) );
  FD4 \D2/count_reg[2]  ( .D(\D2/N127 ), .CP(PCLK), .SD(PRESET_n), .Q(
        \D2/count [2]) );
  FD4 \D2/count_reg[3]  ( .D(\D2/N128 ), .CP(PCLK), .SD(PRESET_n), .Q(
        \D2/count [3]) );
  FD4 \D2/count_reg[4]  ( .D(\D2/N129 ), .CP(PCLK), .SD(PRESET_n), .Q(
        \D2/count [4]) );
  FD4 \D2/count_reg[5]  ( .D(\D2/N130 ), .CP(PCLK), .SD(PRESET_n), .Q(
        \D2/count [5]), .QN(n756) );
  FD4 \D2/count_reg[6]  ( .D(\D2/N131 ), .CP(PCLK), .SD(PRESET_n), .Q(
        \D2/count [6]) );
  FD4 \D2/count_reg[7]  ( .D(\D2/N132 ), .CP(PCLK), .SD(PRESET_n), .Q(
        \D2/count [7]) );
  FD4 \D2/count_reg[8]  ( .D(\D2/N133 ), .CP(PCLK), .SD(PRESET_n), .Q(
        \D2/count [8]), .QN(n765) );
  FD4 \D2/count_reg[9]  ( .D(\D2/N134 ), .CP(PCLK), .SD(PRESET_n), .Q(
        \D2/count [9]) );
  FD4 \D2/count_reg[10]  ( .D(\D2/N135 ), .CP(PCLK), .SD(PRESET_n), .Q(
        \D2/count [10]) );
  FD4 \D2/count_reg[11]  ( .D(\D2/N136 ), .CP(PCLK), .SD(PRESET_n), .Q(
        \D2/count [11]) );
  FD4 \D2/count_reg[12]  ( .D(\D2/N137 ), .CP(PCLK), .SD(PRESET_n), .Q(
        \D2/count [12]) );
  FD4 \D2/count_reg[13]  ( .D(\D2/N138 ), .CP(PCLK), .SD(PRESET_n), .Q(
        \D2/count [13]) );
  FD4 \D2/count_reg[14]  ( .D(\D2/N139 ), .CP(PCLK), .SD(PRESET_n), .Q(
        \D2/count [14]) );
  FD4 \D2/count_reg[15]  ( .D(\D2/N140 ), .CP(PCLK), .SD(PRESET_n), .Q(
        \D2/count [15]), .QN(n778) );
  FD3 \D1/sclk_o_reg  ( .D(n333), .CP(PCLK), .CD(n318), .SD(n319), .Q(sclk_o), 
        .QN(n777) );
  FD2 \D3/mosi_data_o_reg[0]  ( .D(n317), .CP(PCLK), .CD(PRESET_n), .Q(
        mosi_data[0]) );
  FD2 \D3/mosi_data_o_reg[1]  ( .D(n316), .CP(PCLK), .CD(PRESET_n), .Q(
        mosi_data[1]) );
  FD2 \D3/mosi_data_o_reg[2]  ( .D(n315), .CP(PCLK), .CD(PRESET_n), .Q(
        mosi_data[2]) );
  FD2 \D3/mosi_data_o_reg[3]  ( .D(n314), .CP(PCLK), .CD(PRESET_n), .QN(n785)
         );
  FD2 \D3/mosi_data_o_reg[4]  ( .D(n313), .CP(PCLK), .CD(PRESET_n), .Q(
        mosi_data[4]) );
  FD2 \D3/mosi_data_o_reg[5]  ( .D(n312), .CP(PCLK), .CD(PRESET_n), .Q(
        mosi_data[5]) );
  FD2 \D3/mosi_data_o_reg[6]  ( .D(n311), .CP(PCLK), .CD(PRESET_n), .Q(
        mosi_data[6]) );
  FD2 \D3/mosi_data_o_reg[7]  ( .D(n310), .CP(PCLK), .CD(PRESET_n), .QN(n786)
         );
  FD2 \D4/shift_register_reg[0]  ( .D(n309), .CP(PCLK), .CD(PRESET_n), .Q(
        \D4/shift_register [0]) );
  FD2 \D4/shift_register_reg[1]  ( .D(n308), .CP(PCLK), .CD(PRESET_n), .Q(
        \D4/shift_register [1]) );
  FD2 \D4/shift_register_reg[2]  ( .D(n307), .CP(PCLK), .CD(PRESET_n), .Q(
        \D4/shift_register [2]) );
  FD2 \D4/shift_register_reg[3]  ( .D(n306), .CP(PCLK), .CD(PRESET_n), .Q(
        \D4/shift_register [3]), .QN(n745) );
  FD2 \D4/shift_register_reg[4]  ( .D(n305), .CP(PCLK), .CD(PRESET_n), .Q(
        \D4/shift_register [4]) );
  FD2 \D4/shift_register_reg[5]  ( .D(n304), .CP(PCLK), .CD(PRESET_n), .Q(
        \D4/shift_register [5]) );
  FD2 \D4/shift_register_reg[6]  ( .D(n303), .CP(PCLK), .CD(PRESET_n), .Q(
        \D4/shift_register [6]) );
  FD2 \D4/shift_register_reg[7]  ( .D(n302), .CP(PCLK), .CD(PRESET_n), .Q(
        \D4/shift_register [7]), .QN(n755) );
  NR2 U433 ( .A(\D3/STATE [0]), .B(n753), .Z(PREADY_o) );
  AO4 U434 ( .A(n739), .B(mosi_data[4]), .C(\D4/shift_register [4]), .D(
        send_data), .Z(n375) );
  IVP U435 ( .A(n375), .Z(n305) );
  AO4 U436 ( .A(n739), .B(mosi_data[1]), .C(\D4/shift_register [1]), .D(
        send_data), .Z(n376) );
  IVP U437 ( .A(n376), .Z(n308) );
  AO4 U438 ( .A(n739), .B(mosi_data[0]), .C(\D4/shift_register [0]), .D(
        send_data), .Z(n377) );
  IVP U439 ( .A(n377), .Z(n309) );
  AO4 U440 ( .A(n739), .B(mosi_data[2]), .C(\D4/shift_register [2]), .D(
        send_data), .Z(n378) );
  IVP U441 ( .A(n378), .Z(n307) );
  AO4 U442 ( .A(n739), .B(mosi_data[5]), .C(\D4/shift_register [5]), .D(
        send_data), .Z(n379) );
  IVP U443 ( .A(n379), .Z(n304) );
  AO4 U444 ( .A(n739), .B(mosi_data[6]), .C(\D4/shift_register [6]), .D(
        send_data), .Z(n380) );
  IVP U445 ( .A(n380), .Z(n303) );
  IVP U446 ( .A(PREADY_o), .Z(n524) );
  NR2 U447 ( .A(ss_o), .B(n524), .Z(PSLVERR_o) );
  NR4 U448 ( .A(\D3/SPI_CR_1_1 ), .B(ss_o), .C(n750), .D(n780), .Z(n531) );
  ND4 U449 ( .A(n373), .B(n742), .C(n758), .D(n744), .Z(n382) );
  ND4 U450 ( .A(n374), .B(n741), .C(n757), .D(n743), .Z(n381) );
  NR2 U451 ( .A(n382), .B(n381), .Z(n537) );
  IVP U452 ( .A(n537), .Z(n383) );
  NR2 U453 ( .A(n531), .B(n383), .Z(n384) );
  AO4 U454 ( .A(n754), .B(n384), .C(n781), .D(n383), .Z(
        spi_interrupt_request_o) );
  NR2 U455 ( .A(n746), .B(n779), .Z(n594) );
  NR2 U456 ( .A(spi_mode[1]), .B(spi_mode[0]), .Z(n385) );
  NR4 U457 ( .A(n594), .B(\D3/SPI_CR_1 [6]), .C(n385), .D(n772), .Z(
        \D3/next_mode[1] ) );
  AN4P U458 ( .A(\D3/STATE [0]), .B(PENABLE_i), .C(PSEL_i), .D(n753), .Z(
        \D3/next_state[1] ) );
  OR3 U459 ( .A(spiswai), .B(spi_mode[1]), .C(ss_o), .Z(n690) );
  NR2 U460 ( .A(spr[1]), .B(spr[0]), .Z(n399) );
  ND2 U461 ( .A(spr[1]), .B(spr[0]), .Z(n402) );
  ND2 U462 ( .A(n760), .B(n402), .Z(n393) );
  ND2 U463 ( .A(n399), .B(n393), .Z(n413) );
  NR2 U464 ( .A(n740), .B(n766), .Z(n387) );
  ND2 U465 ( .A(n387), .B(sppr[2]), .Z(n427) );
  AN3 U466 ( .A(spr[2]), .B(spr[0]), .C(n749), .Z(n416) );
  IVP U467 ( .A(n416), .Z(n426) );
  IVP U468 ( .A(n427), .Z(n415) );
  NR2 U469 ( .A(n387), .B(sppr[2]), .Z(n386) );
  NR2 U470 ( .A(n415), .B(n386), .Z(n395) );
  IVP U471 ( .A(n395), .Z(n422) );
  AO4 U472 ( .A(n413), .B(n427), .C(n426), .D(n422), .Z(n389) );
  AO6 U473 ( .A(n740), .B(n766), .C(n387), .Z(n417) );
  IVP U474 ( .A(n417), .Z(n406) );
  NR2 U475 ( .A(n749), .B(spr[0]), .Z(n390) );
  ND2 U476 ( .A(spr[2]), .B(n390), .Z(n425) );
  NR2 U477 ( .A(n406), .B(n425), .Z(n388) );
  NR2 U478 ( .A(n389), .B(n388), .Z(n420) );
  NR2 U479 ( .A(spr[2]), .B(n402), .Z(n414) );
  NR2 U480 ( .A(n406), .B(n413), .Z(n392) );
  ND2 U481 ( .A(n390), .B(n760), .Z(n394) );
  AO4 U482 ( .A(sppr[0]), .B(n426), .C(n394), .D(n427), .Z(n391) );
  AO1P U483 ( .A(n395), .B(n414), .C(n392), .D(n391), .Z(n433) );
  NR2 U484 ( .A(n771), .B(n393), .Z(n398) );
  IVP U485 ( .A(n394), .Z(n405) );
  AO2 U486 ( .A(n415), .B(n398), .C(n405), .D(n395), .Z(n397) );
  ND2 U487 ( .A(n417), .B(n414), .Z(n396) );
  AO3 U488 ( .A(sppr[0]), .B(n413), .C(n397), .D(n396), .Z(n431) );
  IVP U489 ( .A(n398), .Z(n408) );
  NR2 U490 ( .A(n422), .B(n408), .Z(n401) );
  ND2 U491 ( .A(n399), .B(n760), .Z(n407) );
  EON1 U492 ( .A(n407), .B(n427), .C(n740), .D(n414), .Z(n400) );
  AO1P U493 ( .A(n405), .B(n417), .C(n401), .D(n400), .Z(n435) );
  OR2P U494 ( .A(n760), .B(n402), .Z(n409) );
  AO4 U495 ( .A(n427), .B(n409), .C(n422), .D(n407), .Z(n404) );
  NR2 U496 ( .A(n406), .B(n408), .Z(n403) );
  AO1P U497 ( .A(n740), .B(n405), .C(n404), .D(n403), .Z(n438) );
  IVP U498 ( .A(n438), .Z(n412) );
  AO4 U499 ( .A(n409), .B(n406), .C(n407), .D(sppr[0]), .Z(n506) );
  IVP U500 ( .A(n506), .Z(n439) );
  AO4 U501 ( .A(sppr[0]), .B(n408), .C(n407), .D(n406), .Z(n411) );
  NR2 U502 ( .A(n422), .B(n409), .Z(n410) );
  NR2 U503 ( .A(n411), .B(n410), .Z(n436) );
  ND2 U504 ( .A(n439), .B(n436), .Z(n437) );
  NR2 U505 ( .A(n412), .B(n437), .Z(n434) );
  ND2 U506 ( .A(n435), .B(n434), .Z(n430) );
  NR2 U507 ( .A(n431), .B(n430), .Z(n432) );
  ND2 U508 ( .A(n433), .B(n432), .Z(n428) );
  EO1 U509 ( .A(n415), .B(n414), .C(n413), .D(n422), .Z(n419) );
  ND2 U510 ( .A(n417), .B(n416), .Z(n418) );
  AO3 U511 ( .A(sppr[0]), .B(n425), .C(n419), .D(n418), .Z(n429) );
  NR2 U512 ( .A(n428), .B(n429), .Z(n421) );
  EO U513 ( .A(n420), .B(n421), .Z(n476) );
  AN2P U514 ( .A(n421), .B(n420), .Z(n424) );
  AO4 U515 ( .A(n426), .B(n427), .C(n422), .D(n425), .Z(n423) );
  EN U516 ( .A(n424), .B(n423), .Z(n475) );
  AO3 U517 ( .A(n427), .B(n426), .C(n425), .D(n424), .Z(n501) );
  IVP U518 ( .A(n501), .Z(n516) );
  EO U519 ( .A(n429), .B(n428), .Z(n494) );
  EO1 U520 ( .A(n494), .B(n759), .C(n759), .D(n494), .Z(n451) );
  EN U521 ( .A(n431), .B(n430), .Z(n478) );
  IVP U522 ( .A(n478), .Z(n480) );
  AO2 U523 ( .A(n480), .B(n764), .C(\D1/count_s [4]), .D(n478), .Z(n450) );
  EO U524 ( .A(n433), .B(n432), .Z(n481) );
  EO U525 ( .A(n435), .B(n434), .Z(n488) );
  OR2P U526 ( .A(n439), .B(n436), .Z(n484) );
  ND2 U527 ( .A(n437), .B(n484), .Z(n510) );
  EO U528 ( .A(n438), .B(n437), .Z(n492) );
  IVP U529 ( .A(n492), .Z(n507) );
  AO2 U530 ( .A(n439), .B(n763), .C(\D1/count_s [0]), .D(n506), .Z(n441) );
  ND2 U531 ( .A(\D1/count_s [2]), .B(n507), .Z(n440) );
  AO3 U532 ( .A(\D1/count_s [2]), .B(n507), .C(n441), .D(n440), .Z(n442) );
  NR4 U533 ( .A(\D1/count_s [10]), .B(\D1/count_s [11]), .C(\D1/count_s [9]), 
        .D(n442), .Z(n444) );
  ND2 U534 ( .A(n510), .B(n747), .Z(n443) );
  AO3 U535 ( .A(n510), .B(n747), .C(n444), .D(n443), .Z(n446) );
  NR2 U536 ( .A(n488), .B(\D1/count_s [3]), .Z(n445) );
  AO1P U537 ( .A(n488), .B(\D1/count_s [3]), .C(n446), .D(n445), .Z(n448) );
  ND2 U538 ( .A(n481), .B(\D1/count_s [5]), .Z(n447) );
  AO3 U539 ( .A(n481), .B(\D1/count_s [5]), .C(n448), .D(n447), .Z(n449) );
  NR4 U540 ( .A(n516), .B(n451), .C(n450), .D(n449), .Z(n453) );
  ND2 U541 ( .A(n475), .B(\D1/count_s [8]), .Z(n452) );
  AO3 U542 ( .A(n475), .B(\D1/count_s [8]), .C(n453), .D(n452), .Z(n455) );
  NR2 U543 ( .A(n476), .B(\D1/count_s [7]), .Z(n454) );
  AO1P U544 ( .A(n476), .B(\D1/count_s [7]), .C(n455), .D(n454), .Z(n691) );
  OR2P U545 ( .A(n690), .B(n691), .Z(n471) );
  NR2 U546 ( .A(\D1/count_s [0]), .B(n471), .Z(\D1/N63 ) );
  NR2 U547 ( .A(n747), .B(n763), .Z(n457) );
  AO1P U548 ( .A(n747), .B(n763), .C(n457), .D(n471), .Z(\D1/N64 ) );
  NR2 U549 ( .A(\D1/count_s [2]), .B(n457), .Z(n456) );
  AO1P U550 ( .A(\D1/count_s [2]), .B(n457), .C(n471), .D(n456), .Z(\D1/N65 )
         );
  ND2 U551 ( .A(\D1/count_s [2]), .B(n457), .Z(n458) );
  NR2 U552 ( .A(n768), .B(n458), .Z(n459) );
  AO1P U553 ( .A(n768), .B(n458), .C(n459), .D(n471), .Z(\D1/N66 ) );
  IVP U554 ( .A(n459), .Z(n460) );
  NR2 U555 ( .A(n764), .B(n460), .Z(n462) );
  AO1P U556 ( .A(n764), .B(n460), .C(n462), .D(n471), .Z(\D1/N67 ) );
  NR2 U557 ( .A(\D1/count_s [5]), .B(n462), .Z(n461) );
  AO1P U558 ( .A(\D1/count_s [5]), .B(n462), .C(n471), .D(n461), .Z(\D1/N68 )
         );
  ND2 U559 ( .A(\D1/count_s [5]), .B(n462), .Z(n463) );
  NR2 U560 ( .A(n759), .B(n463), .Z(n465) );
  AO1P U561 ( .A(n759), .B(n463), .C(n465), .D(n471), .Z(\D1/N69 ) );
  NR2 U562 ( .A(\D1/count_s [7]), .B(n465), .Z(n464) );
  AO1P U563 ( .A(\D1/count_s [7]), .B(n465), .C(n471), .D(n464), .Z(\D1/N70 )
         );
  ND2 U564 ( .A(\D1/count_s [7]), .B(n465), .Z(n466) );
  NR2 U565 ( .A(n769), .B(n466), .Z(n468) );
  AO1P U566 ( .A(n769), .B(n466), .C(n468), .D(n471), .Z(\D1/N71 ) );
  NR2 U567 ( .A(\D1/count_s [9]), .B(n468), .Z(n467) );
  AO1P U568 ( .A(\D1/count_s [9]), .B(n468), .C(n471), .D(n467), .Z(\D1/N72 )
         );
  ND2 U569 ( .A(\D1/count_s [9]), .B(n468), .Z(n469) );
  NR2 U570 ( .A(n770), .B(n469), .Z(n472) );
  AO1P U571 ( .A(n770), .B(n469), .C(n472), .D(n471), .Z(\D1/N73 ) );
  NR2 U572 ( .A(\D1/count_s [11]), .B(n472), .Z(n470) );
  AO1P U573 ( .A(\D1/count_s [11]), .B(n472), .C(n471), .D(n470), .Z(\D1/N74 )
         );
  AO2 U574 ( .A(cpol), .B(cpha), .C(n782), .D(n748), .Z(n699) );
  AN3 U575 ( .A(n691), .B(sclk_o), .C(n699), .Z(\D1/N143 ) );
  IVP U576 ( .A(n691), .Z(n473) );
  NR3 U577 ( .A(sclk_o), .B(n699), .C(n473), .Z(\D1/N142 ) );
  AO4 U578 ( .A(n501), .B(\D2/count [13]), .C(n475), .D(\D2/count [12]), .Z(
        n474) );
  IVP U579 ( .A(n474), .Z(n518) );
  AO2 U580 ( .A(n476), .B(\D2/count [11]), .C(n475), .D(\D2/count [12]), .Z(
        n499) );
  AO4 U581 ( .A(n494), .B(\D2/count [10]), .C(n476), .D(\D2/count [11]), .Z(
        n477) );
  IVP U582 ( .A(n477), .Z(n513) );
  NR2 U583 ( .A(n478), .B(n765), .Z(n479) );
  AO5 U584 ( .A(n481), .B(\D2/count [9]), .C(n479), .Z(n496) );
  NR2 U585 ( .A(n480), .B(\D2/count [8]), .Z(n483) );
  AO4 U586 ( .A(n481), .B(\D2/count [9]), .C(n488), .D(\D2/count [7]), .Z(n482) );
  NR2 U587 ( .A(n483), .B(n482), .Z(n514) );
  ND2 U588 ( .A(\D2/count [4]), .B(n506), .Z(n486) );
  NR2 U589 ( .A(\D2/count [5]), .B(n484), .Z(n485) );
  AO4 U590 ( .A(n486), .B(n485), .C(n510), .D(n756), .Z(n487) );
  NR2 U591 ( .A(\D2/count [6]), .B(n487), .Z(n491) );
  ND2 U592 ( .A(\D2/count [6]), .B(n487), .Z(n490) );
  ND2 U593 ( .A(n488), .B(\D2/count [7]), .Z(n489) );
  AO3 U594 ( .A(n492), .B(n491), .C(n490), .D(n489), .Z(n493) );
  AO2 U595 ( .A(\D2/count [10]), .B(n494), .C(n514), .D(n493), .Z(n495) );
  ND2 U596 ( .A(n496), .B(n495), .Z(n497) );
  ND2 U597 ( .A(n513), .B(n497), .Z(n498) );
  ND2 U598 ( .A(n499), .B(n498), .Z(n502) );
  OR3 U599 ( .A(\D2/count [13]), .B(\D2/count [15]), .C(\D2/count [14]), .Z(
        n500) );
  AO2 U600 ( .A(n518), .B(n502), .C(n501), .D(n500), .Z(n512) );
  AO3 U601 ( .A(send_data), .B(n512), .C(mstr), .D(n746), .Z(n550) );
  IVP U602 ( .A(n550), .Z(n503) );
  ND2 U603 ( .A(spiswai), .B(spi_mode[0]), .Z(n504) );
  ND2 U604 ( .A(n503), .B(n504), .Z(\D2/N54 ) );
  NR2 U605 ( .A(spi_mode[1]), .B(n750), .Z(n505) );
  ND2 U606 ( .A(\D2/count [0]), .B(\D2/count [1]), .Z(n551) );
  IVP U607 ( .A(n551), .Z(n554) );
  ND2 U608 ( .A(n554), .B(\D2/count [2]), .Z(n553) );
  IVP U609 ( .A(n553), .Z(n557) );
  ND2 U610 ( .A(n557), .B(\D2/count [3]), .Z(n556) );
  IVP U611 ( .A(n556), .Z(n559) );
  ND4 U612 ( .A(n505), .B(n559), .C(n739), .D(n504), .Z(n509) );
  AO4 U613 ( .A(n507), .B(\D2/count [6]), .C(\D2/count [4]), .D(n506), .Z(n508) );
  AO1P U614 ( .A(n756), .B(n510), .C(n509), .D(n508), .Z(n511) );
  ND4 U615 ( .A(n514), .B(n513), .C(n512), .D(n511), .Z(n520) );
  ND2 U616 ( .A(\D2/count [14]), .B(\D2/count [15]), .Z(n515) );
  ND2 U617 ( .A(n516), .B(n515), .Z(n517) );
  ND2 U618 ( .A(n518), .B(n517), .Z(n519) );
  NR2 U619 ( .A(n520), .B(n519), .Z(\D2/N28 ) );
  AN2P U620 ( .A(\D4/temp_reg [0]), .B(receive_data), .Z(\D4/N66 ) );
  AN2P U621 ( .A(\D4/temp_reg [1]), .B(receive_data), .Z(\D4/N67 ) );
  AN2P U622 ( .A(\D4/temp_reg [2]), .B(receive_data), .Z(\D4/N68 ) );
  AN2P U623 ( .A(\D4/temp_reg [3]), .B(receive_data), .Z(\D4/N69 ) );
  AN2P U624 ( .A(\D4/temp_reg [4]), .B(receive_data), .Z(\D4/N70 ) );
  AN2P U625 ( .A(\D4/temp_reg [5]), .B(receive_data), .Z(\D4/N71 ) );
  AN2P U626 ( .A(\D4/temp_reg [6]), .B(receive_data), .Z(\D4/N72 ) );
  AN2P U627 ( .A(\D4/temp_reg [7]), .B(receive_data), .Z(\D4/N73 ) );
  IVP U628 ( .A(PADDR_i[0]), .Z(n521) );
  NR2 U629 ( .A(PADDR_i[1]), .B(n521), .Z(n535) );
  ND2 U630 ( .A(PADDR_i[1]), .B(n521), .Z(n600) );
  NR2 U631 ( .A(PADDR_i[1]), .B(PADDR_i[0]), .Z(n539) );
  IVP U632 ( .A(n539), .Z(n607) );
  AO4 U633 ( .A(n771), .B(n600), .C(n751), .D(n607), .Z(n522) );
  AO6 U634 ( .A(n535), .B(\D3/SPI_CR_2_0 ), .C(n522), .Z(n525) );
  NR2 U635 ( .A(PWRITE_i), .B(n524), .Z(n523) );
  IVP U636 ( .A(PADDR_i[2]), .Z(n599) );
  ND2 U637 ( .A(n523), .B(n599), .Z(n544) );
  ND2 U638 ( .A(n535), .B(PADDR_i[2]), .Z(n667) );
  OR3 U639 ( .A(PWRITE_i), .B(n524), .C(n667), .Z(n549) );
  AO4 U640 ( .A(n525), .B(n544), .C(n374), .D(n549), .Z(PRDATA_o[0]) );
  IVP U641 ( .A(n535), .Z(n603) );
  AO4 U642 ( .A(n772), .B(n603), .C(n749), .D(n600), .Z(n526) );
  AO6 U643 ( .A(n539), .B(\D3/SPI_CR_1_1 ), .C(n526), .Z(n527) );
  AO4 U644 ( .A(n527), .B(n544), .C(n741), .D(n549), .Z(PRDATA_o[1]) );
  NR2 U645 ( .A(n544), .B(n600), .Z(n541) );
  NR2 U646 ( .A(n544), .B(n607), .Z(n545) );
  AO2 U647 ( .A(spr[2]), .B(n541), .C(cpha), .D(n545), .Z(n528) );
  AO7 U648 ( .A(n757), .B(n549), .C(n528), .Z(PRDATA_o[2]) );
  NR2 U649 ( .A(n603), .B(n544), .Z(n529) );
  AO2 U650 ( .A(cpol), .B(n545), .C(\D3/SPI_CR_2 [3]), .D(n529), .Z(n530) );
  AO7 U651 ( .A(n743), .B(n549), .C(n530), .Z(PRDATA_o[3]) );
  ND2 U652 ( .A(PADDR_i[1]), .B(PADDR_i[0]), .Z(n543) );
  ND2 U653 ( .A(PRESET_n), .B(n531), .Z(n532) );
  NR2 U654 ( .A(n543), .B(n532), .Z(n534) );
  AO4 U655 ( .A(n740), .B(n600), .C(n750), .D(n607), .Z(n533) );
  AO1P U656 ( .A(\D3/SPI_CR_2 [4]), .B(n535), .C(n534), .D(n533), .Z(n536) );
  AO4 U657 ( .A(n536), .B(n544), .C(n373), .D(n549), .Z(PRDATA_o[4]) );
  IVP U658 ( .A(PRESET_n), .Z(n593) );
  NR2 U659 ( .A(n537), .B(n593), .Z(n547) );
  AO4 U660 ( .A(n547), .B(n543), .C(n766), .D(n600), .Z(n538) );
  AO6 U661 ( .A(n539), .B(\D3/SPI_CR_1 [5]), .C(n538), .Z(n540) );
  AO4 U662 ( .A(n540), .B(n544), .C(n742), .D(n549), .Z(PRDATA_o[5]) );
  AO2 U663 ( .A(sppr[2]), .B(n541), .C(n545), .D(\D3/SPI_CR_1 [6]), .Z(n542)
         );
  AO7 U664 ( .A(n758), .B(n549), .C(n542), .Z(PRDATA_o[6]) );
  NR2 U665 ( .A(n544), .B(n543), .Z(n546) );
  AO2 U666 ( .A(n547), .B(n546), .C(\D3/SPI_CR_1 [7]), .D(n545), .Z(n548) );
  AO7 U667 ( .A(n744), .B(n549), .C(n548), .Z(PRDATA_o[7]) );
  NR2 U668 ( .A(spiswai), .B(n550), .Z(n592) );
  AO7 U669 ( .A(send_data), .B(\D2/count [0]), .C(n592), .Z(\D2/N125 ) );
  AO3 U670 ( .A(\D2/count [0]), .B(\D2/count [1]), .C(n739), .D(n551), .Z(n552) );
  ND2 U671 ( .A(n592), .B(n552), .Z(\D2/N126 ) );
  AO3 U672 ( .A(n554), .B(\D2/count [2]), .C(n739), .D(n553), .Z(n555) );
  ND2 U673 ( .A(n592), .B(n555), .Z(\D2/N127 ) );
  AO3 U674 ( .A(n557), .B(\D2/count [3]), .C(n739), .D(n556), .Z(n558) );
  ND2 U675 ( .A(n592), .B(n558), .Z(\D2/N128 ) );
  ND2 U676 ( .A(\D2/count [4]), .B(n559), .Z(n561) );
  AO3 U677 ( .A(\D2/count [4]), .B(n559), .C(n739), .D(n561), .Z(n560) );
  ND2 U678 ( .A(n592), .B(n560), .Z(\D2/N129 ) );
  NR2 U679 ( .A(n756), .B(n561), .Z(n564) );
  AO1P U680 ( .A(n756), .B(n561), .C(send_data), .D(n564), .Z(n562) );
  IVP U681 ( .A(n562), .Z(n563) );
  ND2 U682 ( .A(n592), .B(n563), .Z(\D2/N130 ) );
  ND2 U683 ( .A(\D2/count [6]), .B(n564), .Z(n566) );
  AO3 U684 ( .A(\D2/count [6]), .B(n564), .C(n739), .D(n566), .Z(n565) );
  ND2 U685 ( .A(n592), .B(n565), .Z(\D2/N131 ) );
  IVP U686 ( .A(n566), .Z(n567) );
  ND2 U687 ( .A(\D2/count [7]), .B(n567), .Z(n569) );
  AO3 U688 ( .A(\D2/count [7]), .B(n567), .C(n739), .D(n569), .Z(n568) );
  ND2 U689 ( .A(n592), .B(n568), .Z(\D2/N132 ) );
  NR2 U690 ( .A(n765), .B(n569), .Z(n572) );
  AO1P U691 ( .A(n765), .B(n569), .C(send_data), .D(n572), .Z(n570) );
  IVP U692 ( .A(n570), .Z(n571) );
  ND2 U693 ( .A(n592), .B(n571), .Z(\D2/N133 ) );
  ND2 U694 ( .A(\D2/count [9]), .B(n572), .Z(n574) );
  AO3 U695 ( .A(\D2/count [9]), .B(n572), .C(n739), .D(n574), .Z(n573) );
  ND2 U696 ( .A(n592), .B(n573), .Z(\D2/N134 ) );
  IVP U697 ( .A(n574), .Z(n575) );
  ND2 U698 ( .A(\D2/count [10]), .B(n575), .Z(n577) );
  AO3 U699 ( .A(\D2/count [10]), .B(n575), .C(n739), .D(n577), .Z(n576) );
  ND2 U700 ( .A(n592), .B(n576), .Z(\D2/N135 ) );
  IVP U701 ( .A(n577), .Z(n578) );
  ND2 U702 ( .A(\D2/count [11]), .B(n578), .Z(n580) );
  AO3 U703 ( .A(\D2/count [11]), .B(n578), .C(n739), .D(n580), .Z(n579) );
  ND2 U704 ( .A(n592), .B(n579), .Z(\D2/N136 ) );
  IVP U705 ( .A(n580), .Z(n581) );
  ND2 U706 ( .A(\D2/count [12]), .B(n581), .Z(n583) );
  AO3 U707 ( .A(\D2/count [12]), .B(n581), .C(n739), .D(n583), .Z(n582) );
  ND2 U708 ( .A(n592), .B(n582), .Z(\D2/N137 ) );
  IVP U709 ( .A(n583), .Z(n584) );
  ND2 U710 ( .A(\D2/count [13]), .B(n584), .Z(n586) );
  AO3 U711 ( .A(\D2/count [13]), .B(n584), .C(n739), .D(n586), .Z(n585) );
  ND2 U712 ( .A(n592), .B(n585), .Z(\D2/N138 ) );
  IVP U713 ( .A(n586), .Z(n587) );
  ND2 U714 ( .A(\D2/count [14]), .B(n587), .Z(n590) );
  AO3 U715 ( .A(\D2/count [14]), .B(n587), .C(n739), .D(n590), .Z(n588) );
  ND2 U716 ( .A(n592), .B(n588), .Z(\D2/N139 ) );
  ND2 U717 ( .A(n590), .B(n778), .Z(n589) );
  AO3 U718 ( .A(n590), .B(n778), .C(n589), .D(n739), .Z(n591) );
  ND2 U719 ( .A(n592), .B(n591), .Z(\D2/N140 ) );
  ND2 U720 ( .A(cpol), .B(n593), .Z(n319) );
  ND2 U721 ( .A(n748), .B(n593), .Z(n318) );
  EO1 U722 ( .A(n746), .B(n779), .C(spiswai), .D(n594), .Z(n595) );
  NR2 U723 ( .A(\D3/SPI_CR_1 [6]), .B(n595), .Z(n370) );
  IVP U724 ( .A(PSEL_i), .Z(n598) );
  NR2 U725 ( .A(PENABLE_i), .B(\D3/STATE [1]), .Z(n596) );
  NR2 U726 ( .A(PREADY_o), .B(n596), .Z(n597) );
  NR2 U727 ( .A(n598), .B(n597), .Z(n369) );
  ND2 U728 ( .A(PREADY_o), .B(PWRITE_i), .Z(n736) );
  IVP U729 ( .A(n736), .Z(n689) );
  ND2 U730 ( .A(n689), .B(n599), .Z(n606) );
  NR2 U731 ( .A(n600), .B(n606), .Z(n602) );
  IVP U732 ( .A(PWDATA_i[6]), .Z(n649) );
  EO1 U733 ( .A(n602), .B(n649), .C(sppr[2]), .D(n602), .Z(n368) );
  IVP U734 ( .A(PWDATA_i[5]), .Z(n652) );
  IVP U735 ( .A(n602), .Z(n601) );
  AO2 U736 ( .A(n602), .B(n652), .C(n766), .D(n601), .Z(n367) );
  IVP U737 ( .A(PWDATA_i[4]), .Z(n648) );
  AO2 U738 ( .A(n602), .B(n648), .C(n740), .D(n601), .Z(n366) );
  IVP U739 ( .A(PWDATA_i[2]), .Z(n650) );
  AO2 U740 ( .A(n602), .B(n650), .C(n760), .D(n601), .Z(n365) );
  IVP U741 ( .A(PWDATA_i[1]), .Z(n658) );
  AO2 U742 ( .A(n602), .B(n658), .C(n749), .D(n601), .Z(n364) );
  IVP U743 ( .A(PWDATA_i[0]), .Z(n651) );
  AO2 U744 ( .A(n602), .B(n651), .C(n771), .D(n601), .Z(n363) );
  NR2 U745 ( .A(n603), .B(n606), .Z(n605) );
  IVP U746 ( .A(n605), .Z(n604) );
  AO2 U747 ( .A(n605), .B(n658), .C(n772), .D(n604), .Z(n362) );
  IVP U748 ( .A(PWDATA_i[3]), .Z(n653) );
  EO1 U749 ( .A(n605), .B(n653), .C(\D3/SPI_CR_2 [3]), .D(n605), .Z(n361) );
  AO2 U750 ( .A(n605), .B(n648), .C(n780), .D(n604), .Z(n360) );
  EO1 U751 ( .A(n605), .B(n651), .C(\D3/SPI_CR_2_0 ), .D(n605), .Z(n359) );
  NR2 U752 ( .A(n607), .B(n606), .Z(n609) );
  IVP U753 ( .A(PWDATA_i[7]), .Z(n659) );
  IVP U754 ( .A(n609), .Z(n608) );
  AO2 U755 ( .A(n609), .B(n659), .C(n754), .D(n608), .Z(n358) );
  EO1 U756 ( .A(n609), .B(n649), .C(\D3/SPI_CR_1 [6]), .D(n609), .Z(n357) );
  AO2 U757 ( .A(n609), .B(n652), .C(n781), .D(n608), .Z(n356) );
  AO2 U758 ( .A(n609), .B(n648), .C(n750), .D(n608), .Z(n355) );
  AO2 U759 ( .A(n609), .B(n653), .C(n748), .D(n608), .Z(n354) );
  AO2 U760 ( .A(n609), .B(n650), .C(n782), .D(n608), .Z(n353) );
  EO1 U761 ( .A(n609), .B(n658), .C(\D3/SPI_CR_1_1 ), .D(n609), .Z(n352) );
  AO2 U762 ( .A(n609), .B(n651), .C(n751), .D(n608), .Z(n351) );
  IVP U763 ( .A(n699), .Z(n698) );
  AO2 U764 ( .A(n699), .B(miso_receive_sclk0), .C(miso_receive_sclk), .D(n698), 
        .Z(n610) );
  NR2 U765 ( .A(ss_o), .B(n610), .Z(n611) );
  ND2 U766 ( .A(lsbfe), .B(n611), .Z(n723) );
  NR2 U767 ( .A(\D4/count2 [0]), .B(n723), .Z(n722) );
  NR2 U768 ( .A(\D4/count2 [1]), .B(\D4/count2 [2]), .Z(n614) );
  AN2P U769 ( .A(n751), .B(n611), .Z(n713) );
  ND2 U770 ( .A(n713), .B(n784), .Z(n714) );
  NR2 U771 ( .A(\D4/count3 [1]), .B(n714), .Z(n717) );
  AO2 U772 ( .A(n722), .B(n614), .C(n717), .D(n762), .Z(n613) );
  IVP U773 ( .A(miso_i), .Z(n634) );
  ND2 U774 ( .A(\D4/temp_reg [0]), .B(n613), .Z(n612) );
  AO7 U775 ( .A(n613), .B(n634), .C(n612), .Z(n350) );
  NR2 U776 ( .A(n723), .B(n787), .Z(n728) );
  ND2 U777 ( .A(\D4/count3 [0]), .B(n713), .Z(n619) );
  NR2 U778 ( .A(\D4/count3 [1]), .B(n619), .Z(n625) );
  AO2 U779 ( .A(n614), .B(n728), .C(n625), .D(n762), .Z(n616) );
  ND2 U780 ( .A(\D4/temp_reg [1]), .B(n616), .Z(n615) );
  AO7 U781 ( .A(n616), .B(n634), .C(n615), .Z(n349) );
  NR2 U782 ( .A(\D4/count2 [2]), .B(n752), .Z(n727) );
  NR2 U783 ( .A(n783), .B(n714), .Z(n628) );
  AO2 U784 ( .A(n722), .B(n727), .C(n628), .D(n762), .Z(n618) );
  ND2 U785 ( .A(\D4/temp_reg [2]), .B(n618), .Z(n617) );
  AO7 U786 ( .A(n618), .B(n634), .C(n617), .Z(n348) );
  NR2 U787 ( .A(n783), .B(n619), .Z(n632) );
  AO2 U788 ( .A(n727), .B(n728), .C(n632), .D(n762), .Z(n621) );
  ND2 U789 ( .A(\D4/temp_reg [3]), .B(n621), .Z(n620) );
  AO7 U790 ( .A(n621), .B(n634), .C(n620), .Z(n347) );
  NR2 U791 ( .A(\D4/count2 [1]), .B(n774), .Z(n624) );
  AO2 U792 ( .A(n722), .B(n624), .C(n717), .D(\D4/count3 [2]), .Z(n623) );
  ND2 U793 ( .A(\D4/temp_reg [4]), .B(n623), .Z(n622) );
  AO7 U794 ( .A(n623), .B(n634), .C(n622), .Z(n346) );
  AO2 U795 ( .A(\D4/count3 [2]), .B(n625), .C(n728), .D(n624), .Z(n627) );
  ND2 U796 ( .A(\D4/temp_reg [5]), .B(n627), .Z(n626) );
  AO7 U797 ( .A(n627), .B(n634), .C(n626), .Z(n345) );
  NR2 U798 ( .A(n752), .B(n774), .Z(n629) );
  AO2 U799 ( .A(n722), .B(n629), .C(\D4/count3 [2]), .D(n628), .Z(n631) );
  ND2 U800 ( .A(\D4/temp_reg [6]), .B(n631), .Z(n630) );
  AO7 U801 ( .A(n631), .B(n634), .C(n630), .Z(n344) );
  IVP U802 ( .A(n728), .Z(n726) );
  NR2 U803 ( .A(n752), .B(n726), .Z(n730) );
  AO2 U804 ( .A(\D4/count2 [2]), .B(n730), .C(\D4/count3 [2]), .D(n632), .Z(
        n635) );
  ND2 U805 ( .A(\D4/temp_reg [7]), .B(n635), .Z(n633) );
  AO7 U806 ( .A(n635), .B(n634), .C(n633), .Z(n343) );
  EO1 U807 ( .A(miso_data[1]), .B(n741), .C(n741), .D(miso_data[1]), .Z(n637)
         );
  ND2 U808 ( .A(miso_data[0]), .B(n374), .Z(n636) );
  AO3 U809 ( .A(miso_data[0]), .B(n374), .C(n637), .D(n636), .Z(n647) );
  EO1 U810 ( .A(miso_data[3]), .B(n743), .C(n743), .D(miso_data[3]), .Z(n639)
         );
  ND2 U811 ( .A(miso_data[2]), .B(n757), .Z(n638) );
  AO3 U812 ( .A(miso_data[2]), .B(n757), .C(n639), .D(n638), .Z(n646) );
  ND2 U813 ( .A(miso_data[4]), .B(n373), .Z(n641) );
  EO1 U814 ( .A(miso_data[5]), .B(n742), .C(n742), .D(miso_data[5]), .Z(n640)
         );
  AO3 U815 ( .A(miso_data[4]), .B(n373), .C(n641), .D(n640), .Z(n645) );
  ND2 U816 ( .A(miso_data[6]), .B(n758), .Z(n643) );
  EO1 U817 ( .A(miso_data[7]), .B(n744), .C(n744), .D(miso_data[7]), .Z(n642)
         );
  AO3 U818 ( .A(miso_data[6]), .B(n758), .C(n643), .D(n642), .Z(n644) );
  NR4 U819 ( .A(n647), .B(n646), .C(n645), .D(n644), .Z(n666) );
  AO2 U820 ( .A(\D3/SPI_DR [4]), .B(PWDATA_i[4]), .C(n648), .D(n373), .Z(n665)
         );
  AO2 U821 ( .A(\D3/SPI_DR [6]), .B(PWDATA_i[6]), .C(n649), .D(n758), .Z(n664)
         );
  AO2 U822 ( .A(\D3/SPI_DR [2]), .B(PWDATA_i[2]), .C(n650), .D(n757), .Z(n657)
         );
  AO2 U823 ( .A(\D3/SPI_DR [0]), .B(PWDATA_i[0]), .C(n651), .D(n374), .Z(n656)
         );
  AO2 U824 ( .A(\D3/SPI_DR [5]), .B(PWDATA_i[5]), .C(n652), .D(n742), .Z(n655)
         );
  AO2 U825 ( .A(\D3/SPI_DR [3]), .B(PWDATA_i[3]), .C(n653), .D(n743), .Z(n654)
         );
  NR4 U826 ( .A(n657), .B(n656), .C(n655), .D(n654), .Z(n662) );
  AO2 U827 ( .A(\D3/SPI_DR [1]), .B(n658), .C(PWDATA_i[1]), .D(n741), .Z(n661)
         );
  AO2 U828 ( .A(n744), .B(PWDATA_i[7]), .C(n659), .D(\D3/SPI_DR [7]), .Z(n660)
         );
  ND4 U829 ( .A(n662), .B(n746), .C(n661), .D(n660), .Z(n663) );
  OR4P U830 ( .A(n666), .B(n665), .C(n664), .D(n663), .Z(n735) );
  AN4P U831 ( .A(n746), .B(n736), .C(n735), .D(receive_data), .Z(n688) );
  NR2 U832 ( .A(n736), .B(n667), .Z(n684) );
  AO2 U833 ( .A(miso_data[0]), .B(n688), .C(PWDATA_i[0]), .D(n684), .Z(n671)
         );
  ND2 U834 ( .A(receive_data), .B(n746), .Z(n668) );
  AO2 U835 ( .A(PREADY_o), .B(PWRITE_i), .C(n735), .D(n668), .Z(n669) );
  NR2 U836 ( .A(n669), .B(n684), .Z(n685) );
  ND2 U837 ( .A(\D3/SPI_DR [0]), .B(n685), .Z(n670) );
  ND2 U838 ( .A(n671), .B(n670), .Z(n342) );
  AO2 U839 ( .A(miso_data[1]), .B(n688), .C(PWDATA_i[1]), .D(n684), .Z(n673)
         );
  ND2 U840 ( .A(\D3/SPI_DR [1]), .B(n685), .Z(n672) );
  ND2 U841 ( .A(n673), .B(n672), .Z(n341) );
  AO2 U842 ( .A(miso_data[2]), .B(n688), .C(PWDATA_i[2]), .D(n684), .Z(n675)
         );
  ND2 U843 ( .A(\D3/SPI_DR [2]), .B(n685), .Z(n674) );
  ND2 U844 ( .A(n675), .B(n674), .Z(n340) );
  AO2 U845 ( .A(miso_data[3]), .B(n688), .C(PWDATA_i[3]), .D(n684), .Z(n677)
         );
  ND2 U846 ( .A(\D3/SPI_DR [3]), .B(n685), .Z(n676) );
  ND2 U847 ( .A(n677), .B(n676), .Z(n339) );
  AO2 U848 ( .A(miso_data[4]), .B(n688), .C(PWDATA_i[4]), .D(n684), .Z(n679)
         );
  ND2 U849 ( .A(\D3/SPI_DR [4]), .B(n685), .Z(n678) );
  ND2 U850 ( .A(n679), .B(n678), .Z(n338) );
  AO2 U851 ( .A(miso_data[5]), .B(n688), .C(PWDATA_i[5]), .D(n684), .Z(n681)
         );
  ND2 U852 ( .A(\D3/SPI_DR [5]), .B(n685), .Z(n680) );
  ND2 U853 ( .A(n681), .B(n680), .Z(n337) );
  AO2 U854 ( .A(miso_data[6]), .B(n688), .C(PWDATA_i[6]), .D(n684), .Z(n683)
         );
  ND2 U855 ( .A(\D3/SPI_DR [6]), .B(n685), .Z(n682) );
  ND2 U856 ( .A(n683), .B(n682), .Z(n336) );
  AO2 U857 ( .A(miso_data[7]), .B(n688), .C(PWDATA_i[7]), .D(n684), .Z(n687)
         );
  ND2 U858 ( .A(\D3/SPI_DR [7]), .B(n685), .Z(n686) );
  ND2 U859 ( .A(n687), .B(n686), .Z(n335) );
  AO6 U860 ( .A(n689), .B(n739), .C(n688), .Z(n334) );
  MUX31L U861 ( .D0(n777), .D1(sclk_o), .D2(n748), .A(n691), .B(n690), .Z(n333) );
  AO2 U862 ( .A(\D4/count [2]), .B(\D4/shift_register [7]), .C(
        \D4/shift_register [3]), .D(n767), .Z(n693) );
  AO2 U863 ( .A(\D4/count [2]), .B(\D4/shift_register [6]), .C(
        \D4/shift_register [2]), .D(n767), .Z(n692) );
  AO2 U864 ( .A(\D4/count [0]), .B(n693), .C(n692), .D(n775), .Z(n697) );
  AO2 U865 ( .A(\D4/count [2]), .B(\D4/shift_register [5]), .C(
        \D4/shift_register [1]), .D(n767), .Z(n695) );
  AO2 U866 ( .A(\D4/count [2]), .B(\D4/shift_register [4]), .C(
        \D4/shift_register [0]), .D(n767), .Z(n694) );
  AO2 U867 ( .A(\D4/count [0]), .B(n695), .C(n694), .D(n775), .Z(n696) );
  AO2 U868 ( .A(\D4/count [1]), .B(n697), .C(n696), .D(n776), .Z(n711) );
  AO2 U869 ( .A(n699), .B(miso_receive_sclk), .C(miso_receive_sclk0), .D(n698), 
        .Z(n700) );
  OR2P U870 ( .A(ss_o), .B(n700), .Z(n703) );
  NR2 U871 ( .A(n751), .B(n703), .Z(n732) );
  IVP U872 ( .A(n732), .Z(n731) );
  ND2 U873 ( .A(mosi_o), .B(n703), .Z(n710) );
  AO2 U874 ( .A(\D4/count1 [2]), .B(\D4/shift_register [5]), .C(
        \D4/shift_register [1]), .D(n761), .Z(n702) );
  AO2 U875 ( .A(\D4/count1 [2]), .B(\D4/shift_register [4]), .C(
        \D4/shift_register [0]), .D(n761), .Z(n701) );
  AO2 U876 ( .A(\D4/count1 [0]), .B(n702), .C(n701), .D(n773), .Z(n708) );
  NR2 U877 ( .A(lsbfe), .B(n703), .Z(n718) );
  AO2 U878 ( .A(\D4/count1 [2]), .B(\D4/shift_register [6]), .C(
        \D4/shift_register [2]), .D(n761), .Z(n706) );
  AO2 U879 ( .A(\D4/count1 [2]), .B(n755), .C(n745), .D(n761), .Z(n704) );
  ND2 U880 ( .A(\D4/count1 [0]), .B(n704), .Z(n705) );
  AO3 U881 ( .A(n706), .B(\D4/count1 [0]), .C(\D4/count1 [1]), .D(n705), .Z(
        n707) );
  AO3 U882 ( .A(\D4/count1 [1]), .B(n708), .C(n718), .D(n707), .Z(n709) );
  AO3 U883 ( .A(n711), .B(n731), .C(n710), .D(n709), .Z(n332) );
  ND2 U884 ( .A(n718), .B(n773), .Z(n719) );
  NR2 U885 ( .A(\D4/count1 [1]), .B(n719), .Z(n712) );
  IVP U886 ( .A(n712), .Z(n721) );
  AO2 U887 ( .A(\D4/count1 [2]), .B(n712), .C(n721), .D(n761), .Z(n331) );
  AO7 U888 ( .A(n713), .B(n784), .C(n714), .Z(n330) );
  IVP U889 ( .A(n717), .Z(n716) );
  ND2 U890 ( .A(\D4/count3 [1]), .B(n714), .Z(n715) );
  ND2 U891 ( .A(n716), .B(n715), .Z(n329) );
  AO2 U892 ( .A(n717), .B(\D4/count3 [2]), .C(n762), .D(n716), .Z(n328) );
  AO7 U893 ( .A(n718), .B(n773), .C(n719), .Z(n327) );
  ND2 U894 ( .A(\D4/count1 [1]), .B(n719), .Z(n720) );
  ND2 U895 ( .A(n721), .B(n720), .Z(n326) );
  ND2 U896 ( .A(\D4/count [0]), .B(n732), .Z(n734) );
  NR2 U897 ( .A(n776), .B(n734), .Z(n733) );
  EO1 U898 ( .A(\D4/count [2]), .B(n733), .C(n733), .D(\D4/count [2]), .Z(n325) );
  IVP U899 ( .A(n722), .Z(n725) );
  ND2 U900 ( .A(\D4/count2 [0]), .B(n723), .Z(n724) );
  ND2 U901 ( .A(n725), .B(n724), .Z(n324) );
  AO6 U902 ( .A(n752), .B(n726), .C(n730), .Z(n323) );
  ND2 U903 ( .A(n728), .B(n727), .Z(n729) );
  AO7 U904 ( .A(n730), .B(n774), .C(n729), .Z(n322) );
  AO2 U905 ( .A(\D4/count [0]), .B(n732), .C(n731), .D(n775), .Z(n321) );
  AO6 U906 ( .A(n776), .B(n734), .C(n733), .Z(n320) );
  NR2 U907 ( .A(n736), .B(n735), .Z(n738) );
  EO1 U908 ( .A(n738), .B(n374), .C(mosi_data[0]), .D(n738), .Z(n317) );
  EO1 U909 ( .A(n738), .B(n741), .C(mosi_data[1]), .D(n738), .Z(n316) );
  EO1 U910 ( .A(n738), .B(n757), .C(mosi_data[2]), .D(n738), .Z(n315) );
  IVP U911 ( .A(n738), .Z(n737) );
  AO2 U912 ( .A(n738), .B(n743), .C(n785), .D(n737), .Z(n314) );
  EO1 U913 ( .A(n738), .B(n373), .C(mosi_data[4]), .D(n738), .Z(n313) );
  EO1 U914 ( .A(n738), .B(n742), .C(mosi_data[5]), .D(n738), .Z(n312) );
  EO1 U915 ( .A(n738), .B(n758), .C(mosi_data[6]), .D(n738), .Z(n311) );
  AO2 U916 ( .A(n738), .B(n744), .C(n786), .D(n737), .Z(n310) );
  AO2 U917 ( .A(send_data), .B(n785), .C(n745), .D(n739), .Z(n306) );
  AO2 U918 ( .A(send_data), .B(n786), .C(n755), .D(n739), .Z(n302) );
endmodule

