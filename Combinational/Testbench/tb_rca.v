`timescale 1ns / 1ps


module tb_rca;
    reg [3:0] a_rca_tb,b_rca_tb;
    reg cin_rca_tb;
    wire [3:0] sum_rca_tb;
    wire cout_rca_tb;
    
    rca dut (a_rca_tb,b_rca_tb,cin_rca_tb,sum_rca_tb,cout_rca_tb);

    initial begin
        $dumpfile("rca.vcd");
        $dumpvars(0,tb_rca);
    end
    
    initial begin 
        $monitor("sum : %d  carry : %d ",sum_rca_tb,cout_rca_tb);
        {a_rca_tb,b_rca_tb,cin_rca_tb}={4'b0000,4'b0000,1'b0};#10;
        {a_rca_tb,b_rca_tb,cin_rca_tb}={4'b1111,4'b0000,1'b1};#10;
        {a_rca_tb,b_rca_tb,cin_rca_tb}={4'b1111,4'b1111,1'b1};#10;
    end         
       
endmodule
