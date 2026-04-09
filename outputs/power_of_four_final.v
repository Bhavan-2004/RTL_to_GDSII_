// IC Compiler II Version W-2024.09 Verilog Writer
// Generated on 4/5/2026 at 16:34:56
// Library Name: POWER_OF_FOUR_LIB
// Block Name: power_of_four
// User Label: 
// Write Command: write_verilog -exclude { pg_objects } ./outputs/power_of_four_final.v
module power_of_four_rtl ( clk , x , y ) ;
input  clk ;
input  [1:0] x ;
output [6:0] y ;

wire copt_net_1 ;
wire copt_net_3 ;
wire copt_net_4 ;
wire n3 ;
wire [1:0] x_reg ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;

assign y[5] = 1'b0 ;
assign y[3] = 1'b0 ;
assign y[1] = 1'b0 ;

DFFX1_RVT \x_reg_reg[1] ( .D ( x[1] ) , .CLK ( clk ) , .Q ( x_reg[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) ) ;
DFFX1_RVT \x_reg_reg[0] ( .D ( x[0] ) , .CLK ( clk ) , .Q ( x_reg[0] ) , 
    .QN ( n3 ) ) ;
DFFSSRX1_RVT \y_reg[6] ( .D ( copt_net_3 ) , .SETB ( 1'b1 ) , 
    .RSTB ( copt_net_1 ) , .CLK ( clk ) , .Q ( y[6] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) ) ;
DFFSSRX1_RVT \y_reg[0] ( .D ( 1'b0 ) , .SETB ( copt_net_1 ) , 
    .RSTB ( copt_net_4 ) , .CLK ( clk ) , .Q ( y[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) ) ;
DFFSSRX1_RVT \y_reg[4] ( .D ( 1'b0 ) , .SETB ( copt_net_3 ) , 
    .RSTB ( copt_net_1 ) , .CLK ( clk ) , .Q ( y[4] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_4 ) ) ;
DFFSSRX1_RVT \y_reg[2] ( .D ( 1'b0 ) , .SETB ( copt_net_1 ) , 
    .RSTB ( copt_net_3 ) , .CLK ( clk ) , .Q ( y[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) ) ;
DELLN3X2_RVT copt_h_inst_1251 ( .A ( x_reg[1] ) , .Y ( copt_net_1 ) ) ;
DELLN3X2_RVT copt_h_inst_1253 ( .A ( x_reg[0] ) , .Y ( copt_net_3 ) ) ;
DELLN2X2_RVT copt_h_inst_1254 ( .A ( n3 ) , .Y ( copt_net_4 ) ) ;
endmodule


