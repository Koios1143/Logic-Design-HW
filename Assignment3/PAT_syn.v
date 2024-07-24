/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09
// Date      : Sun May 29 01:12:12 2022
/////////////////////////////////////////////////////////////


module D_FF_0 ( D, clk, rst, Q, Qbar );
  input D, clk, rst;
  output Q, Qbar;
  wire   n1, n2;

  DFFSX1 Qbar_reg ( .D(n2), .CK(clk), .SN(n1), .Q(Qbar) );
  CLKINVX1 U3 ( .A(rst), .Y(n1) );
  DFFRX1 Q_reg ( .D(D), .CK(clk), .RN(n1), .Q(Q) );
  CLKINVX1 U4 ( .A(D), .Y(n2) );
endmodule


module D_FF_1 ( D, clk, rst, Q, Qbar );
  input D, clk, rst;
  output Q, Qbar;
  wire   n3, n4;

  DFFSX1 Qbar_reg ( .D(n3), .CK(clk), .SN(n4), .Q(Qbar) );
  CLKINVX1 U3 ( .A(rst), .Y(n4) );
  DFFRX1 Q_reg ( .D(D), .CK(clk), .RN(n4), .Q(Q) );
  CLKINVX1 U4 ( .A(D), .Y(n3) );
endmodule


module D_FF_2 ( D, clk, rst, Q, Qbar );
  input D, clk, rst;
  output Q, Qbar;
  wire   n3, n4;

  DFFSX1 Qbar_reg ( .D(n3), .CK(clk), .SN(n4), .Q(Qbar) );
  CLKINVX1 U3 ( .A(rst), .Y(n4) );
  DFFRX1 Q_reg ( .D(D), .CK(clk), .RN(n4), .Q(Q) );
  CLKINVX1 U4 ( .A(D), .Y(n3) );
endmodule


module D_FF_3 ( D, clk, rst, Q, Qbar );
  input D, clk, rst;
  output Q, Qbar;
  wire   n3, n4;

  DFFSX1 Qbar_reg ( .D(n3), .CK(clk), .SN(n4), .Q(Qbar) );
  CLKINVX1 U3 ( .A(rst), .Y(n4) );
  DFFRX1 Q_reg ( .D(D), .CK(clk), .RN(n4), .Q(Q) );
  CLKINVX1 U4 ( .A(D), .Y(n3) );
endmodule


module PAT ( clk, reset, data, flag );
  input clk, reset, data;
  output flag;
  wire   AQbar, BQ, CQ, DQ, N0, _0_net_, AQ, BQbar, CQbar, DQbar, _1_net_,
         _2_net_, _3_net_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21;

  D_FF_0 A ( .D(_0_net_), .clk(clk), .rst(reset), .Q(AQ), .Qbar(AQbar) );
  D_FF_3 B ( .D(_1_net_), .clk(clk), .rst(reset), .Q(BQ), .Qbar(BQbar) );
  D_FF_2 C ( .D(_2_net_), .clk(clk), .rst(reset), .Q(CQ), .Qbar(CQbar) );
  D_FF_1 D ( .D(_3_net_), .clk(clk), .rst(reset), .Q(DQ), .Qbar(DQbar) );
  CLKINVX1 U3 ( .A(reset), .Y(n1) );
  DFFRX1 flag_reg ( .D(N0), .CK(clk), .RN(n1), .Q(flag) );
  CLKINVX1 U29 ( .A(n17), .Y(n7) );
  CLKINVX1 U30 ( .A(n20), .Y(n2) );
  NOR2X1 U31 ( .A(n8), .B(n9), .Y(n17) );
  NOR3X1 U32 ( .A(n7), .B(n20), .C(n5), .Y(N0) );
  NAND2X1 U33 ( .A(n8), .B(n6), .Y(n16) );
  NAND2X1 U34 ( .A(CQ), .B(AQbar), .Y(n20) );
  OAI221XL U35 ( .A0(n14), .A1(n4), .B0(n3), .B1(n8), .C0(n15), .Y(_2_net_) );
  CLKINVX1 U36 ( .A(AQ), .Y(n3) );
  NAND4X1 U37 ( .A(data), .B(BQ), .C(AQbar), .D(n16), .Y(n15) );
  AOI32X1 U38 ( .A0(n2), .A1(n9), .A2(DQbar), .B0(n17), .B1(CQbar), .Y(n14) );
  OAI211X1 U39 ( .A0(n18), .A1(n7), .B0(n19), .C0(n12), .Y(_1_net_) );
  NAND3X1 U40 ( .A(BQ), .B(n9), .C(DQbar), .Y(n19) );
  AOI221XL U41 ( .A0(CQbar), .A1(BQ), .B0(BQbar), .B1(n2), .C0(AQ), .Y(n18) );
  OAI33X1 U42 ( .A0(n8), .A1(n6), .A2(n5), .B0(n21), .B1(n9), .B2(n4), .Y(
        _0_net_) );
  NAND3X1 U43 ( .A(AQ), .B(DQbar), .C(CQbar), .Y(n21) );
  OAI211X1 U44 ( .A0(data), .A1(n10), .B0(n11), .C0(n12), .Y(_3_net_) );
  OAI21XL U45 ( .A0(BQbar), .A1(DQ), .B0(AQ), .Y(n11) );
  AOI22X1 U46 ( .A0(AQbar), .A1(n13), .B0(AQ), .B1(DQbar), .Y(n10) );
  OAI2BB1X1 U47 ( .A0N(BQ), .A1N(CQbar), .B0(n4), .Y(n13) );
  NAND3X1 U48 ( .A(BQ), .B(n2), .C(DQbar), .Y(n12) );
  CLKINVX1 U49 ( .A(BQbar), .Y(n4) );
  CLKINVX1 U50 ( .A(DQ), .Y(n8) );
  CLKINVX1 U51 ( .A(CQ), .Y(n6) );
  CLKINVX1 U52 ( .A(BQ), .Y(n5) );
  CLKINVX1 U53 ( .A(data), .Y(n9) );
endmodule

