## I would strongly suggest you to understand this file, then you can modify it easily after understanding what each command does according to your needs!


## This sets the name of the directory in which area/timing/power reports 
## and synthesized (mapped) netlists are stored.
set OUTPUT_DIR ./run_dir
if { ![file exists ${OUTPUT_DIR}] }  { sh mkdir ${OUTPUT_DIR} }


#### Step 1 ####
## This tells the compiler where to look for the libraries
set_attribute lib_search_path ../libdir

## This defines the libraries to use
set_attribute library {tcbn65gpluswc.lib}
##set_attribute library {tcbn65gplustc.lib}
##set_attribute library {tcbn90ghpbc_ccs.lib}
##set_attribute lp_insert_clock_gating true 

set_attribute lp_insert_clock_gating true

#set_attribute lp_insert_operand_isolation true 

#### Step 2 ####
##This must point to your VHDL/verilog file
source ./scripts/read_rtl.tcl


#### Step 3 ####
## This builds the general block
elaborate

#set_attribute dft_scan_style {muxed_scan|clocked_lssd_scan} 
#define_dft  test_mode test_mode_signal -active high
#define_dft shift_enable shift_enable_signal -active high
#check_dft_rules

#### Step 4 ####
## This allows you to define a clock and the maximum allowable delays
## READ MORE ABOUT THIS SO THAT YOU CAN PROPERLY CREATE A TIMING FILE
#set clock [define_clock -period 300 -name clk]
#external delay -input 300 -edge rise clk
#external delay -output 2000 -edge rise p1

dc::set_time_unit -picoseconds
dc::set_load_unit -picofarads

define_clock -period 1000000 -name clk [dc::get_ports {clk}] -rise 0 -fall 50

