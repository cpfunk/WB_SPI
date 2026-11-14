source ./scripts/run_synth.tcl

syn_gen -effort high
syn_map -effort high
syn_opt -effort high

report_timing > timing.rpt
report_area > area.rpt
report_power > power.rpt

exit

