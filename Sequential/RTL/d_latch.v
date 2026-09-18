`timescale 1ns / 1ps

module d_latch(
   input rst,enb,d, output reg q,q_bar
    );
    always@(*) begin
        if(rst)
           q=1'b0;
        else if(enb)
              q=d;
           
      q_bar= ~q;
      end    
      
endmodule 
