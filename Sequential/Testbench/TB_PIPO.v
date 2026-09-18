`timescale 1ns / 1ps

module TB_PIPO;
    reg rst,clk,load;
    reg [3:0] p_in;
    wire [3:0] p_out;
    
    PIPO dut (rst,clk,load,p_in,p_out);
    
    initial begin
        {clk,load} =2'b0;
    end
    
    always #5 clk = ~clk;
    
    initial begin
        $monitor("rst =%b  clk=%b  load=%b  p_in=%b  p_out=%b",rst,clk,load,p_in,p_out);
        $dumpfile("PIPO.vcd");
        $dumpvars(0,TB_PIPO);

        rst = 1'b1; #10;
        
        rst = 1'b0; load = 1'b1;
        p_in = 4'b1101; #10;
        
        p_in=4'b0000; load = 1'b0; #15;
        
        $finish;
    end
endmodule
