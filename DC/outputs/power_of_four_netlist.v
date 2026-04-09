/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : W-2024.09
// Date      : Sun Apr  5 16:12:48 2026
/////////////////////////////////////////////////////////////


module power_of_four_rtl ( clk, x, y );
  input [1:0] x;
  output [6:0] y;
  input clk;
  wire   n3;
  wire   [1:0] x_reg;
  assign y[1] = 1'b0;
  assign y[3] = 1'b0;
  assign y[5] = 1'b0;

  DFFX1_RVT \x_reg_reg[1]  ( .D(x[1]), .CLK(clk), .Q(x_reg[1]) );
  DFFX1_RVT \x_reg_reg[0]  ( .D(x[0]), .CLK(clk), .Q(x_reg[0]), .QN(n3) );
  DFFSSRX1_RVT \y_reg[6]  ( .D(x_reg[0]), .SETB(1'b1), .RSTB(x_reg[1]), .CLK(
        clk), .Q(y[6]) );
  DFFSSRX1_RVT \y_reg[0]  ( .D(1'b0), .SETB(x_reg[1]), .RSTB(n3), .CLK(clk), 
        .Q(y[0]) );
  DFFSSRX1_RVT \y_reg[4]  ( .D(1'b0), .SETB(x_reg[0]), .RSTB(x_reg[1]), .CLK(
        clk), .Q(y[4]) );
  DFFSSRX1_RVT \y_reg[2]  ( .D(1'b0), .SETB(x_reg[1]), .RSTB(x_reg[0]), .CLK(
        clk), .Q(y[2]) );
endmodule

