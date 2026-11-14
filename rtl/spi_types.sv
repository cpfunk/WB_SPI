package spi_types;
    typedef struct packed {
        logic        valid; // FIXME: CHANGE
        logic [7:0]  data;  // FIXME: CHANGE
        logic [3:0]  addr;  // FIXME: CHANGE
    } t_spi_regfile;

    typedef struct packed {
        logic sclk;
        logic cs;
        logic mosi;
        logic miso;
    } t_spi_signals;

endpackage