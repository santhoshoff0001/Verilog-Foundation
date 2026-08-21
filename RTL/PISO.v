`timescale 1ns / 1ps


module PISO(
 input rst,clk,load,
 input [3:0] p_in,
 output s_out
    );
reg [3:0] t;
always@(posedge clk)
begin
    if(rst)
        t <= 4'b0000;
    else if(load)
        t <= p_in;
    else 
        t <= {1'b0,t[3:1]};  //right shift
end
assign s_out=t[0];
endmodule
