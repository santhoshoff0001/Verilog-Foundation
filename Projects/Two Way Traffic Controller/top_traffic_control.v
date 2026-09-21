`timescale 1ns/1ps

 module top_traffic_control(
    input wire CLK100MHZ,
    input wire Reset_BTN,
    output wire [1:0] NS_LED,
    output wire [1:0] EW_LED
 );
    wire one_hz_tick;
    clk_divider u_clk_div(
        .clk(CLK100MHZ),
        .rst(Reset_BTN),
        .one_hz_tick(one_hz_tick)
    );
    TwoWayFSM u_FSM(
        .clk(CLK100MHZ),
        .rst(Reset_BTN),
        .one_hz_tick(one_hz_tick),
        .NS_light(NS_LED),
        .EW_light(EW_LED)
    );
 endmodule