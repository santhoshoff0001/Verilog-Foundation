`timescale 1ns / 1ps


module tb_PISO;
    reg rst,clk,load;
    reg [3:0]p_in;
    wire s_out;
    
    PISO dut (rst,clk,load,p_in,s_out);
    
    initial begin
        {clk,load,p_in} = 6'b0;
    end
    
    always #5 clk = ~clk;
    

    initial begin
        $dumpfile("PISO.vcd");
        $dumpvars(0,tb_PISO);
        $monitor("rst : %b load :%b p_in: %b S_out: %b",rst,load,p_in,s_out);
        rst = 1'b1; #10;

        rst = 1'b0; #20;

        load = 1'b1;
        p_in = 4'b1101; #10;
        
        load = 1'b0; p_in = 4'b0000; #40;
        
        $finish;
        
    end
    
endmodule
