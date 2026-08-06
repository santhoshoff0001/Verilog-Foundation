`timescale 1ns / 1ps


module bcd_adder(
      input [3:0] a_bcd,b_bcd,input cin, output [3:0] sum, output cout
    );
    reg [4:0] temp;
    
    always@(*)
      begin
        temp = a_bcd + b_bcd+cin;
        
        if(temp > 4'd9)
            temp = temp + 4'b0110;
        else
            temp = temp;
    end
    
    assign sum  = temp [3:0];
    assign cout     = temp[4];
    
    
endmodule
