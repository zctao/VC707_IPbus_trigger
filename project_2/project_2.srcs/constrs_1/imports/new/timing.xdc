#200 MHz system clock
# 'SYSCLK' in the VC709 manual, 'clk200' in this project
create_clock -period 5.000 -name clk200 -waveform {0.000 2.500} [get_ports clk200_p]

# trigger system clocks
# We convert the 200 MHz clock to something representing 40 MHz bunch crossing clock,
# and something representing the faster processing clock, maybe 15 times as fast.
# They are currently 10 MHz and 150 MHz
create_clock -period 100.000 -name cross_clk
create_clock -period 2.500 -name proc_clk -waveform {0.000 1.250}

# programmable oscillator
# 'USER_CLOCK' in the VC709 manual, 'prog_clk' in this project
# The oscillator should be programmed for 125 MHz. However, in this
# design, it runs at the default 156.25 MHz. Internally, it is changes to
# 125 MHz. The chip is configured to drive, rather than receive, the
# USER_SMA connectors. A pair of cables will loop this back to the GTH_SMA connectors.
create_clock -period 6.400 -name prog_clk [get_ports prog_clk_p]
create_clock -period 8.000 -name gt_clk [get_ports gt_clkp]

# specify what clocks are asynchronous to others
set_clock_groups -asynchronous -group [get_clocks clk200]
set_clock_groups -asynchronous -group [get_clocks cross_clk]
set_clock_groups -asynchronous -group [get_clocks proc_clk]
set_clock_groups -asynchronous -group [get_clocks prog_clk]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks gt_clk]

###### CDC in RESET_LOGIC from INIT_CLK to USER_CLK ##############
set_false_path -through [get_pins -hier *cdc_to*]

















set_false_path -from [get_pins slaves/slave6/trigger_top/baseline/aurora_test_top/LinkProjPhiMinus/data_io/tx_fifo/inst/gen_fifo_generator.fifo_generator_inst/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_reg/C] -to [get_pins slaves/slave6/trigger_top/baseline/aurora_test_top/timer_m2p/run_reg/D]
set_false_path -from [get_pins slaves/slave6/trigger_top/baseline/aurora_test_top/LinkProjPhiMinus/aurora_8b10b_1/inst/rx_ll_i/rx_ll_pdu_datapath_i/RX_SRC_RDY_N_reg_inv/C] -to [get_pins slaves/slave6/trigger_top/baseline/aurora_test_top/timer_p2m/run_reg/D]
set_false_path -from [get_pins slaves/slave6/trigger_top/baseline/aurora_test_top/LinkProjPhiMinus/aurora_8b10b_1/inst/rx_ll_i/rx_ll_pdu_datapath_i/RX_SRC_RDY_N_reg_inv/C] -to [get_pins slaves/slave6/trigger_top/baseline/aurora_test_top/timer_p2m/run_reg/D]
set_false_path -from [get_pins slaves/slave6/trigger_top/baseline/aurora_test_top/LinkProjPhiPlus/data_io/tx_fifo/inst/gen_fifo_generator.fifo_generator_inst/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_reg/C] -to [get_pins slaves/slave6/trigger_top/baseline/aurora_test_top/timer_p2m/run_reg/D]
set_false_path -from [get_pins slaves/slave6/trigger_top/baseline/aurora_test_top/LinkProjPhiPlus/aurora_8b10b_0/inst/rx_ll_i/rx_ll_pdu_datapath_i/RX_SRC_RDY_N_reg_inv/C] -to [get_pins slaves/slave6/trigger_top/baseline/aurora_test_top/timer_m2p/run_reg/D]
set_false_path -from [get_pins slaves/slave6/trigger_top/baseline/aurora_test_top/LinkProjPhiMinus/data_io/tx_fifo/inst/gen_fifo_generator.fifo_generator_inst/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_reg/C] -to [get_pins slaves/slave6/trigger_top/baseline/aurora_test_top/timer_m2p/run_reg/D]
set_false_path -from [get_pins slaves/slave6/trigger_top/baseline/aurora_test_top/LinkProjPhiMinus/aurora_8b10b_1/inst/rx_ll_i/rx_ll_pdu_datapath_i/RX_SRC_RDY_N_reg_inv/C] -to [get_pins slaves/slave6/trigger_top/baseline/aurora_test_top/timer_p2m/run_reg/D]
set_false_path -from [get_pins slaves/slave6/trigger_top/baseline/aurora_test_top/LinkProjPhiMinus/aurora_8b10b_1/inst/rx_ll_i/rx_ll_pdu_datapath_i/RX_SRC_RDY_N_reg_inv/C] -to [get_pins slaves/slave6/trigger_top/baseline/aurora_test_top/timer_p2m/run_reg/D]
set_false_path -from [get_pins slaves/slave6/trigger_top/baseline/aurora_test_top/LinkProjPhiPlus/data_io/tx_fifo/inst/gen_fifo_generator.fifo_generator_inst/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.rfwft/empty_fwft_i_reg/C] -to [get_pins slaves/slave6/trigger_top/baseline/aurora_test_top/timer_p2m/run_reg/D]
set_false_path -from [get_pins slaves/slave6/trigger_top/baseline/aurora_test_top/LinkProjPhiPlus/aurora_8b10b_0/inst/rx_ll_i/rx_ll_pdu_datapath_i/RX_SRC_RDY_N_reg_inv/C] -to [get_pins slaves/slave6/trigger_top/baseline/aurora_test_top/timer_m2p/run_reg/D]
