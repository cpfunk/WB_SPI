`include "spi_types.sv"

//FIXME: Finish this...

module spi_sv
    import  spi_types::*;
(
    // Wishbone ports
    input  wire         wb_clk_i,
    input  wire         wb_rst_i,
    input  wire         wbs_stb_i,
    input  wire         wbs_cyc_i,
    input  wire         wbs_we_i,
    input  wire [3:0]   wbs_sel_i,
    input  wire [31:0]  wbs_dat_i,
    input  wire [31:0]  wbs_adr_i,
    output wire         wbs_ack_o,
    output wire [31:0]  wbs_dat_o,

    // SPI ports
    inout wire          sclk_io,
    inout wire          spi_cs_io,
    inout wire [3:0]    spi_mosi_io,
    inout wire [3:0]    spi_miso_io
);

    // common wires
    t_spi_regfile   regfile;

    // Master wires
    t_spi_signals   slave_signals;

    // Slave wires
    t_spi_signals   master_signals;

    // Note: The SPI inputs should feature two
    //       DFF stages to ensure that asynchronous
    //       input data recieved is stabalized.
    spi_master_input_buffer master_buffer(
        .spi_miso_i(slave_signals),
        .spi_miso_o(spi_miso_buffered)
    );

    spi_slave_input_buffer slave_buffer(
        .sclk_i(sclk_i),
        .spi_cs_i(spi_cs_i),
        .spi_mosi_i(spi_mosi_i),
        .spi_miso_o(spi_miso_o)
    );

    // Mux for switching between Slave and Master SPI modes
    spi_mode_select_mux mode_mux(
        .spi_regfile(regfile),
        // inout ports
        .sclk_io(sclk_io),
        .spi_cs_io(spi_cs_io),
        .spi_mosi_io(spi_mosi_io),
        .spi_miso_io(spi_miso_io),
        // Master ports
        .master_signals(master_signals),
        // Slave ports
        .slave_signals(slave_signals)
    );

    spi_wb_config_reg wb_config_reg(
        .wb_clk_i(wb_clk_i),
        .wb_rst_i(wb_rst_i),
        .wbs_stb_i(wbs_stb_i),
        .wbs_cyc_i(wbs_cyc_i),
        .wbs_we_i(wbs_we_i),
        .wbs_sel_i(wbs_sel_i),
        .wbs_dat_i(wbs_dat_i),
        .wbs_adr_i(wbs_adr_i),
        .wbs_ack_o(wbs_ack_o),
        .wbs_dat_o(wbs_dat_o),
        .spi_regfile(regfile)
    );

    spi_master_fsm master_fsm(
        .spi_signals(master_signals),
        .spi_regfile(regfile)
    );

    spi_slave_fsm slave_fsm(
        .spi_signals(slave_signals),
        .spi_regfile(regfile)
    );

endmodule