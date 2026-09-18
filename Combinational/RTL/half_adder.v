`timescale 1ns / 1ps

module Half_adder(input a,b,output reg sum,carry);
  
  always@(a,b)
    begin
      sum= a^b;
      carry= a&b;
    end 
endmodule
