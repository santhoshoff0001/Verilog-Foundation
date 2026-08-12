`timescale 1ns/1ps

module tb_decoder_2to4;
    reg [1:0] i;
    reg en;
    wire [3:0] y;

    decoder_2to4 dut (i, en, y);

    initial begin
        $dumpfile("decoder_2to4.vcd");
        $dumpvars(0,tb_decoder_2to4);
    end

    initial begin
        $monitor("en : %b    i : %b    y : %b",en,i,y);
        en = 1'b0; #10;
        en = 1'b1;
        i = 2'b00; #10;
        i = 2'b01; #10;
        i = 2'b10; #10;
        i = 2'b11; #10;
        $finish;
    end
endmodule