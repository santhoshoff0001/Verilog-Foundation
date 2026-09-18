`timescale 1ns / 1ps


module jk_latch(
    input rst,enb,j,k, output reg q,qbar
    );
    
    always@(*) 
        begin
            if(rst)
                q=1'b0;
            else if(enb)
                begin
                   case({j,k})
                        2'b00: ;  //hold
                        2'b01: q =1'b0;  //reset 
                        2'b10: q =1'b1;  //set
                        2'b11: q = ~q;   //toggle
                        default : q=1'b0;
                       endcase
                end
                qbar = ~q;
        end                         
endmodule
