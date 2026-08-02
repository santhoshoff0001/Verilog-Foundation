`timescale 1ns / 1ps

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
   
  