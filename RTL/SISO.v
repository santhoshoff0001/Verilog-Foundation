`timescale 1ns / 1ps

module SISO(
    input rst,clk,shift,s_in, output s_out
    );
    
    reg [3:0] t;
    always@(posedge clk) begin
        if(rst)
            t <= 4'b0000;
        else if(shift)
            t <= {s_in,t[3:1]};
     end
     
     assign s_out =  t[0];  
        
endmodule
