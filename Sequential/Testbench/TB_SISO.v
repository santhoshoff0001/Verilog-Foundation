`timescale 1ns / 1ps

module TB_SISO;
    reg rst,clk,shift,s_in;
    wire s_out;
    
    SISO dut (rst,clk,shift,s_in,s_out);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        $dumpfile("SISO.vcd");
        $dumpvars(0,TB_SISO);
        $monitor("rst=%b, clk=%b, shift=%b, s_in=%b, s_out=%b",rst,clk,shift,s_in,s_out);
        rst = 1;shift = 0;s_in = 0; #10;
        
        rst = 0; shift = 0; #10
        
        shift = 1;
        s_in = 1; #10; //msb
        s_in = 0; #10;
        s_in = 1; #10;
        s_in = 1; #10; //lsb
        
        s_in = 0; #40;
        $finish;
        
     end
         
endmodule
