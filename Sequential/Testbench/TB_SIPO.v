`timescale 1ns / 1ps


module TB_SIPO;
    reg clk,rst,shift,s_in;
    wire [3:0] p_out;
    
    SIPO dut (rst,clk,shift,s_in,p_out);
    initial begin
        clk=1'b0;
    end
    always #5 clk = ~clk;

    
    initial begin
        $dumpfile("SIPO.vcd");
        $dumpvars(0,TB_SIPO);
        $monitor("rst=%b shift=%b s_in=%b p_out=%b",rst,shift,s_in,p_out);
        rst = 1'b1; #10;
        
        rst = 1'b0; shift = 1'b1;
        s_in = 1'b1; #10; //lsb
        s_in = 1'b0; #10;
        s_in = 1'b1; #10;
        s_in = 1'b1; #10; //msb
        
        
        shift=1'b0; #15;
        $finish;
        
       
        
    end
endmodule
