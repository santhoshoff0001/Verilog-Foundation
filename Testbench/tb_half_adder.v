`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2026 11:55:20 AM
// Design Name: 
// Module Name: tb_half_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tb_half_adder;
  
  reg a_tb,b_tb;
  wire sum_tb,carry_tb;
  
  Half_adder dut(a_tb,b_tb,sum_tb,carry_tb);
  
  initial 
    begin
      $dumpfile("half_adder.vcd");
      $dumpvars(0,tb_half_adder);
  end
  initial
    begin
       
      $monitor(" a : %d  b : %d : sum: %d carry: %d",a_tb,b_tb,sum_tb,carry_tb);
      
      {a_tb,b_tb}=2'b00;#1;
      {a_tb,b_tb}=2'b01;#1;
      {a_tb,b_tb}=2'b10;#1;
      {a_tb,b_tb}=2'b11;#1;
    end
endmodule
   
  