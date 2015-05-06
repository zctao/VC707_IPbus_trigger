set src_sts [get_cells -hierarchical -filter { NAME =~ "*status_reg_datain_reg*" && ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG || PRIMITIVE_TYPE =~ REGISTER.SDR.*  ) }]
set dest_sts [get_cells -hierarchical -filter { NAME =~ "*status_reg_datain_ff_reg*" && ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG || PRIMITIVE_TYPE =~ REGISTER.SDR.*  ) }]
#set_multicycle_path -setup 2 -from $src_sts -to $dest_sts; 
#set_multicycle_path -hold 1 -from $src_sts -to $dest_sts; 
set_false_path -from $src_sts -to $dest_sts; 

#set_max_delay -from $src_sts -to $dest_sts -datapath_only 40.0

set src_wrst [get_cells -hierarchical -filter { NAME =~ "*axi_wr_reset_xsdb_ff_reg*" && ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG || PRIMITIVE_TYPE =~ REGISTER.SDR.*  ) }]
set dest_wrst [get_cells -hierarchical -filter { NAME =~ "*axi_wr_reset_ff_reg*" && ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG || PRIMITIVE_TYPE =~ REGISTER.SDR.*  ) }]
#set_multicycle_path -setup 2 -from $src_wrst -to $dest_wrst; 
#set_multicycle_path -hold 1 -from $src_wrst -to $dest_wrst; 
set_false_path -from $src_wrst -to $dest_wrst;

set src_rdrst [get_cells -hierarchical -filter { NAME =~ "*axi_rd_reset_xsdb_ff_reg*" && ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG || PRIMITIVE_TYPE =~ REGISTER.SDR.*  ) }]
set dest_rdrst [get_cells -hierarchical -filter { NAME =~ "*axi_rd_reset_ff_reg*" && ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG || PRIMITIVE_TYPE =~ REGISTER.SDR.*  ) }]
#set_multicycle_path -setup 2 -from $src_rdrst -to $dest_rdrst; 
#set_multicycle_path -hold 1 -from $src_rdrst -to $dest_rdrst; 
set_false_path -from $src_rdrst -to $dest_rdrst;

set src_wren [get_cells -hierarchical -filter { NAME =~ "*wr_axi_en_exec_reg*" && ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG || PRIMITIVE_TYPE =~ REGISTER.SDR.*  ) }]
set dest_wren [get_cells -hierarchical -filter { NAME =~ "*wr_axi_en_exec_ff_reg*" && ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG || PRIMITIVE_TYPE =~ REGISTER.SDR.*  ) }]
#set_multicycle_path -setup 2 -from $src_wren -to $dest_wren; 
#set_multicycle_path -hold 1 -from $src_wren -to $dest_wren; 
set_false_path -from $src_wren -to $dest_wren;

set src_rden [get_cells -hierarchical -filter { NAME =~ "*rd_axi_en_exec_reg*" && ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG || PRIMITIVE_TYPE =~ REGISTER.SDR.*  ) }]
set dest_rden [get_cells -hierarchical -filter { NAME =~ "*rd_axi_en_exec_ff_reg*" && ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG || PRIMITIVE_TYPE =~ REGISTER.SDR.*  ) }]
#set_multicycle_path -setup 2 -from $src_rden -to $dest_rden; 
#set_multicycle_path -hold 1 -from $src_rden -to $dest_rden; 
set_false_path -from $src_rden -to $dest_rden;
