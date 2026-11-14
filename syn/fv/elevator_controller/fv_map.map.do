
//input ports
add mapped point clk clk -type PI PI
add mapped point rst rst -type PI PI
add mapped point i_current_floor[2] i_current_floor[2] -type PI PI
add mapped point i_current_floor[1] i_current_floor[1] -type PI PI
add mapped point i_current_floor[0] i_current_floor[0] -type PI PI
add mapped point i_requested_floor[2] i_requested_floor[2] -type PI PI
add mapped point i_requested_floor[1] i_requested_floor[1] -type PI PI
add mapped point i_requested_floor[0] i_requested_floor[0] -type PI PI
add mapped point i_complete i_complete -type PI PI

//output ports
add mapped point o_trigger o_trigger -type PO PO
add mapped point o_up o_up -type PO PO
add mapped point o_down o_down -type PO PO

//inout ports




//Sequential Pins
add mapped point o_trigger/q o_trigger_reg/Q -type DFF DFF
add mapped point o_up/q o_up_reg/Q -type DFF DFF
add mapped point o_down/q o_down_reg/Q -type DFF DFF
add mapped point old_requested_floor[1]/q old_requested_floor_reg[1]/Q -type DFF DFF
add mapped point old_requested_floor[2]/q old_requested_floor_reg[2]/Q -type DFF DFF
add mapped point old_current_floor[0]/q old_current_floor_reg[0]/Q -type DFF DFF
add mapped point old_current_floor[1]/q old_current_floor_reg[1]/Q -type DFF DFF
add mapped point old_current_floor[2]/q old_current_floor_reg[2]/Q -type DFF DFF
add mapped point old_complete/q old_complete_reg/Q -type DFF DFF
add mapped point old_requested_floor[0]/q old_requested_floor_reg[0]/Q -type DFF DFF
add mapped point requested_floor[0]/q requested_floor_reg[0]/Q -type DFF DFF
add mapped point requested_floor[1]/q requested_floor_reg[1]/Q -type DFF DFF
add mapped point requested_floor[2]/q requested_floor_reg[2]/Q -type DFF DFF
add mapped point current_floor[1]/q current_floor_reg[1]/Q -type DFF DFF
add mapped point complete/q complete_reg/Q -type DFF DFF
add mapped point current_floor[0]/q current_floor_reg[0]/Q -type DFF DFF
add mapped point current_floor[2]/q current_floor_reg[2]/Q -type DFF DFF
add mapped point state[0]/q state_reg[0]/Q -type DFF DFF
add mapped point state[1]/q state_reg[1]/Q -type DFF DFF
add mapped point sleep_timer/counter[9]/q sleep_timer_counter_reg[9]/Q -type DFF DFF
add mapped point sleep_timer/counter[3]/q sleep_timer_counter_reg[3]/Q -type DFF DFF
add mapped point sleep_timer/counter[4]/q sleep_timer_counter_reg[4]/Q -type DFF DFF
add mapped point sleep_timer/counter[5]/q sleep_timer_counter_reg[5]/Q -type DFF DFF
add mapped point sleep_timer/counter[6]/q sleep_timer_counter_reg[6]/Q -type DFF DFF
add mapped point sleep_timer/counter[7]/q sleep_timer_counter_reg[7]/Q -type DFF DFF
add mapped point sleep_timer/counter[8]/q sleep_timer_counter_reg[8]/Q -type DFF DFF
add mapped point sleep_timer/counter[2]/q sleep_timer_counter_reg[2]/Q -type DFF DFF
add mapped point sleep_timer/counter[10]/q sleep_timer_counter_reg[10]/Q -type DFF DFF
add mapped point sleep_timer/counter[11]/q sleep_timer_counter_reg[11]/Q -type DFF DFF
add mapped point sleep_timer/counter[12]/q sleep_timer_counter_reg[12]/Q -type DFF DFF
add mapped point sleep_timer/counter[1]/q sleep_timer_counter_reg[1]/Q -type DFF DFF
add mapped point sleep_timer/counter[14]/q sleep_timer_counter_reg[14]/Q -type DFF DFF
add mapped point sleep_timer/counter[15]/q sleep_timer_counter_reg[15]/Q -type DFF DFF
add mapped point sleep_timer/counter[16]/q sleep_timer_counter_reg[16]/Q -type DFF DFF
add mapped point sleep_timer/counter[24]/q sleep_timer_counter_reg[24]/Q -type DFF DFF
add mapped point sleep_timer/counter[18]/q sleep_timer_counter_reg[18]/Q -type DFF DFF
add mapped point sleep_timer/counter[19]/q sleep_timer_counter_reg[19]/Q -type DFF DFF
add mapped point sleep_timer/counter[20]/q sleep_timer_counter_reg[20]/Q -type DFF DFF
add mapped point sleep_timer/counter[13]/q sleep_timer_counter_reg[13]/Q -type DFF DFF
add mapped point sleep_timer/counter[22]/q sleep_timer_counter_reg[22]/Q -type DFF DFF
add mapped point sleep_timer/counter[23]/q sleep_timer_counter_reg[23]/Q -type DFF DFF
add mapped point sleep_timer/counter[17]/q sleep_timer_counter_reg[17]/Q -type DFF DFF
add mapped point sleep_timer/counter[21]/q sleep_timer_counter_reg[21]/Q -type DFF DFF
add mapped point sleep_timer/counter[26]/q sleep_timer_counter_reg[26]/Q -type DFF DFF
add mapped point sleep_timer/counter[25]/q sleep_timer_counter_reg[25]/Q -type DFF DFF
add mapped point sleep_timer/counter[27]/q sleep_timer_counter_reg[27]/Q -type DFF DFF
add mapped point sleep_timer/counter[0]/q sleep_timer_counter_reg[0]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
