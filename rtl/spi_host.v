// Top-level Verilog wrapper for SystemVerilog SPI peripheral

module spi(
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
    output wire         spi_sclk_io,
    output wire         spi_cs_io,
    output wire [3:0]   spi_mosi_io,
    input  wire [3:0]   spi_miso_io
);

spi_host_sv spi_sv(
    // Wishbone ports
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
    
    // SPI ports
    .spi_sclk_io(sclk_io),
    .spi_cs_io(spi_cs_io),
    .spi_mosi_io(spi_mosi_io),
    .spi_miso_io(spi_miso_io)
);

endmodule