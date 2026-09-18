`timescale 1ns / 1ps

module rca(
    input [3:0]a_rca,b_rca,input cin_rca,
    output [3:0]sum_rca,output cout_rca
    );
    wire w1,w2,w3;
    
    full_adder fa1(a_rca[0],b_rca[0],cin_rca,sum_rca[0],w1);
    full_adder fa2(a_rca[1],b_rca[1],w1,sum_rca[1],w2);
    full_adder fa3(a_rca[2],b_rca[2],w2,sum_rca[2],w3);
    full_adder fa4(a_rca[3],b_rca[3],w3,sum_rca[3],cout_rca);
    
endmodule
