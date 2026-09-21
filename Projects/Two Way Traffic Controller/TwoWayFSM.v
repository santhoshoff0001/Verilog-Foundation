`timescale 1ns/1ps

module TwoWayFSM(
    input wire clk,
    input wire one_hz_tick,
    input wire rst,
    output reg [2:0] NS_light,
    output reg [2:0] EW_light
);

localparam NS_green =  2'd0;
localparam NS_yellow = 2'd1;
localparam EW_green = 2'd2;
localparam EW_yellow = 2'd3;

reg [1:0] state,next_state;
reg [3:0] timer;

always@(posedge clk) begin
    if(rst) begin
        state <= NS_green;
        timer <= 4'd0;
    end
    else if(one_hz_tick) begin
        if(next_state == state) begin
            timer <= timer + 1'd1;
        end
        else begin
            state <= next_state;
            timer <= 4'd0;
        end
    end
end

always@(*) begin
    next_state = state;
    case(state)
        NS_green : begin
            if(timer >= 4'd9)
                next_state = NS_yellow;
        end
        NS_yellow : begin
            if(timer >= 4'd2)
                next_state = EW_green;
        end
        EW_green : begin
            if(timer >= 4'd9)
                next_state = EW_yellow;
        end
        EW_yellow : begin
            if(timer >= 4'd2)
                next_state = NS_green;
        end
    endcase
end

always@(*) begin
    case(state)
        NS_green : begin
            NS_light = 3'b001;
            EW_light = 3'b100;
        end
        NS_yellow : begin
            NS_light = 3'b010;
            EW_light = 3'b100;
        end
        EW_green : begin
            NS_light = 3'b100;
            EW_light = 3'b001;
        end
        EW_yellow : begin
            NS_light = 3'b100;
            EW_light = 3'b010;
        end
        default : begin
            NS_light = 3'b100;
            EW_light = 3'b100;
        end

    endcase
end
endmodule