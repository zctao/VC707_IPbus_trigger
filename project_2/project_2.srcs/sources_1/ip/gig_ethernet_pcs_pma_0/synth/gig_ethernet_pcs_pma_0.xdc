
#-----------------------------------------------------------
# PCS/PMA Clock period Constraints: please do not relax    -
#-----------------------------------------------------------


# Clock period for the Txout clock
create_clock  -period 16.000 [get_pins -hier -filter {name =~  *pcs_pma_block_i/transceiver_inst/gtwizard_inst/*/gtwizard_i/gt0_GTWIZARD_i/gtxe2_i/TXOUTCLK}]


#-----------------------------------------------------------
# Receive Clock period Constraint: please do not relax
#-----------------------------------------------------------
# Clock period for the recovered Rx clock
create_clock  -period 16.000 [get_pins -hier -filter { name =~ *pcs_pma_block_i/transceiver_inst/gtwizard_inst/*/gtwizard_i/gt0_GTWIZARD_i/gtxe2_i/RXOUTCLK}]



set_false_path  -to [get_pins -hier -filter {name =~  *core_resets_i/pma_reset_pipe_reg*/PRE}]
set_false_path  -to [get_pins -hier -filter {name =~  *core_resets_i/pma_reset_pipe*[0]/D}]


#***********************************************************
# The following constraints target the Transceiver Physical*
# Interface which is instantiated in the Example Design.   *
#***********************************************************


#-----------------------------------------------------------
# PCS/PMA Clock period Constraints: please do not relax    -
#-----------------------------------------------------------





#-----------------------------------------------------------
# GT Initialization circuitry clock domain crossing
#-----------------------------------------------------------

set_false_path -to [get_pins -hier -filter { name =~ */gtwizard_inst/*/gt0_txresetfsm_i/sync_*/*D } ]
set_false_path -to [get_pins -hier -filter { name =~ */gtwizard_inst/*/gt0_rxresetfsm_i/sync_*/*D } ]

set_false_path -to [get_pins -hier -filter { name =~ */gtwizard_inst/*/sync_*/*D } ]

set_false_path -to [get_pins -of [get_cells -hier -filter { name =~ *gtwizard_inst/*/sync_block_gtrxreset/data_sync* } ]  -filter { name =~ *D } ]

set_false_path -from [get_pins  -hier -filter { name =~ */gtwizard_inst/*/gtwizard_i/gt0_GTWIZARD_i/flag_reg/C}] -to [get_pins  -hier -filter { name =~ */gtwizard_inst/*/gtwizard_i/gt0_GTWIZARD_i/data_sync_reg1/D}]
set_false_path -from [get_pins  -hier -filter { name =~ */gtwizard_inst/*/gtwizard_i/gt0_GTWIZARD_i/data_sync_reg6/C}] -to [get_pins  -hier -filter { name =~ */gtwizard_inst/*/gtwizard_i/gt0_GTWIZARD_i/ack_sync_reg1/D}]




# false path constraints to async inputs coming directly to synchronizer
set_false_path -to [get_pins -hier -filter {name =~ *SYNC_*/data_sync*/D }]
set_false_path -to [get_pins -hier -filter {name =~ *pcs_pma_block_i/transceiver_inst/sync_block_data_valid/data_sync*/D }]
set_false_path -to [get_pins -hier -filter {name =~ *sync_block_reset_done/data_sync*/D }]


set_false_path -to [get_pins -hier -filter {name =~ *gpcs_pma_inst/MGT_RESET.RESET_INT_*/PRE }]

set_false_path -to [get_pins -hier -filter {name =~ *reset_sync*/PRE }]


