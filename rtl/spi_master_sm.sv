module spi_master_sm
    import  spi_types::*;
(
    input clk,
    input rst, // active high reset
    input en,
    t_spi_signals signals
);

localparam [1:0] STATE_IDLE     = 0;
localparam [1:0] STATE_START    = 1;
localparam [1:0] STATE_TRANSMIT = 2;

reg  [1:0] state;
wire [1:0] next_state;

// Next state cotroller
always @(*) begin
    case (state)
        STATE_START: begin
            next_state = STATE_TRANSMIT; // FIXME
        end
        STATE_TRANSMIT: begin
            next_state = STATE_IDLE; // FIXME
        end
        default: begin // STATE_IDLE
            next_state = STATE_TRANSMIT; // FIXME
        end
    endcase
end

always @(clk) begin
    if (reset) begin
        state <= STATE_IDLE;
    end
    else if (en) begin
        state <= next_state;
    end
end

endmodule