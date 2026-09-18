`timescale 1ns / 1ps


module demux_1x2(
   input s,i, output reg [1:0]y
    );
   
   always@(*) begin
     case (s)
       0 : {y[1],y[0]} = {1'b0,i};
       1 : {y[1],y[0]} = {i,1'b0};
      endcase
    end
endmodule
