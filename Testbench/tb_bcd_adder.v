`timescale 1ns / 1ps

module tb_bcd_adder;
  reg [3:0] a_tb,b_tb;
  reg cin_tb;
  wire [3:0] sum;
  wire cout_tb;
  
  bcd_adder dut (a_tb,b_tb,cin_tb,sum,cout_tb);

  initial begin
    $dumpfile("bcd_adder.vcd");
    $dumpvars(0,tb_bcd_adder);
  end
  
  initial
    begin
      $monitor(" a : %d   b :%d  cin : %d  sum : %d  cout : %d",a_tb,b_tb,cin_tb,sum,cout_tb);
      {a_tb,b_tb,cin_tb} = {4'b1001,4'b1000,1'b1};#10;
      {a_tb,b_tb,cin_tb} = {4'b1001,4'b0000,1'b0};#10;
      {a_tb,b_tb,cin_tb} = {4'b1001,4'b0110,1'b1};#10;
      
    end
endmodule
