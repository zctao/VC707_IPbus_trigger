
################################################################
# This is a generated script based on design: eyescan_subsystem
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2014.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source eyescan_subsystem_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7vx690tffg1761-2
#    set_property BOARD_PART xilinx.com:vc709:part0:1.0 [current_project]


# CHANGE DESIGN NAME HERE
set design_name eyescan_subsystem

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}


# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: microblaze_1_local_memory
proc create_hier_cell_microblaze_1_local_memory { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_microblaze_1_local_memory() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I LMB_Clk
  create_bd_pin -dir I -from 0 -to 0 LMB_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list CONFIG.C_ECC {0} CONFIG.C_MASK {0x40000000}  ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list CONFIG.C_ECC {0} CONFIG.C_MASK {0x00000000}  ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.2 lmb_bram ]
  set_property -dict [ list CONFIG.Enable_32bit_Address {true} CONFIG.Enable_B {Use_ENB_Pin} CONFIG.Memory_Type {True_Dual_Port_RAM} CONFIG.Port_B_Clock {100} CONFIG.Port_B_Enable_Rate {100} CONFIG.Port_B_Write_Rate {50} CONFIG.Register_PortA_Output_of_Memory_Primitives {false} CONFIG.Use_RSTA_Pin {true} CONFIG.Use_RSTB_Pin {true} CONFIG.use_bram_block {BRAM_Controller}  ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_1_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_1_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_1_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_1_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_1_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_1_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net microblaze_1_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]
  connect_bd_net -net proc_sys_reset_1_bus_struct_reset [get_bd_pins LMB_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: mb_ps
proc create_hier_cell_mb_ps { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_mb_ps() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_DP
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  # Create pins
  create_bd_pin -dir I -type clk S_AXI_ACLK
  create_bd_pin -dir O -from 0 -to 0 -type rst S_AXI_ARESETN
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn

  # Create instance: axi_bram_ctrl_1, and set properties
  set axi_bram_ctrl_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_1 ]
  set_property -dict [ list CONFIG.SUPPORTS_NARROW_BURST {0}  ] $axi_bram_ctrl_1

  # Create instance: blk_mem_gen_1, and set properties
  set blk_mem_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.2 blk_mem_gen_1 ]
  set_property -dict [ list CONFIG.Enable_32bit_Address {true} CONFIG.Enable_B {Use_ENB_Pin} CONFIG.Memory_Type {True_Dual_Port_RAM} CONFIG.Port_B_Clock {100} CONFIG.Port_B_Enable_Rate {100} CONFIG.Port_B_Write_Rate {50} CONFIG.Register_PortA_Output_of_Memory_Primitives {false} CONFIG.Use_RSTA_Pin {true} CONFIG.Use_RSTB_Pin {true} CONFIG.use_bram_block {BRAM_Controller}  ] $blk_mem_gen_1

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]

  # Create instance: microblaze_1, and set properties
  set microblaze_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:9.4 microblaze_1 ]
  set_property -dict [ list CONFIG.C_AREA_OPTIMIZED {1} CONFIG.C_DEBUG_ENABLED {1} CONFIG.C_D_AXI {1} CONFIG.C_D_LMB {1} CONFIG.C_FAULT_TOLERANT {0} CONFIG.C_FREQ {100000000} CONFIG.C_I_LMB {1} CONFIG.C_M_AXI_DC_USER_SIGNALS {0} CONFIG.C_M_AXI_IC_USER_SIGNALS {0} CONFIG.C_NUMBER_OF_PC_BRK {0} CONFIG.C_USE_EXT_BRK {0} CONFIG.C_USE_EXT_NM_BRK {0} CONFIG.C_USE_INTERRUPT {0} CONFIG.C_USE_REORDER_INSTR {0} CONFIG.G_TEMPLATE_LIST {1}  ] $microblaze_1

  # Create instance: microblaze_1_local_memory
  create_hier_cell_microblaze_1_local_memory $hier_obj microblaze_1_local_memory

  # Create instance: proc_sys_reset_1, and set properties
  set proc_sys_reset_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1 ]
  set_property -dict [ list CONFIG.C_AUX_RESET_HIGH {0} CONFIG.USE_BOARD_FLOW {false}  ] $proc_sys_reset_1

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_bram_porta [get_bd_intf_pins axi_bram_ctrl_1/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_1/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_bram_portb [get_bd_intf_pins axi_bram_ctrl_1/BRAM_PORTB] [get_bd_intf_pins blk_mem_gen_1/BRAM_PORTB]
  connect_bd_intf_net -intf_net mdm_1_mbdebug_0 [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_1/DEBUG]
  connect_bd_intf_net -intf_net microblaze_1_axi_dp [get_bd_intf_pins M_AXI_DP] [get_bd_intf_pins microblaze_1/M_AXI_DP]
  connect_bd_intf_net -intf_net microblaze_1_axi_periph_m08_axi [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_bram_ctrl_1/S_AXI]
  connect_bd_intf_net -intf_net microblaze_1_dlmb [get_bd_intf_pins microblaze_1/DLMB] [get_bd_intf_pins microblaze_1_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_1_ilmb [get_bd_intf_pins microblaze_1/ILMB] [get_bd_intf_pins microblaze_1_local_memory/ILMB]

  # Create port connections
  connect_bd_net -net axi_aclk_1 [get_bd_pins S_AXI_ACLK] [get_bd_pins axi_bram_ctrl_1/s_axi_aclk] [get_bd_pins microblaze_1/Clk] [get_bd_pins microblaze_1_local_memory/LMB_Clk] [get_bd_pins proc_sys_reset_1/slowest_sync_clk]
  connect_bd_net -net m07_aresetn_1 [get_bd_pins interconnect_aresetn] [get_bd_pins proc_sys_reset_1/interconnect_aresetn]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins proc_sys_reset_1/mb_debug_sys_rst]
  connect_bd_net -net proc_sys_reset_1_bus_struct_reset [get_bd_pins microblaze_1_local_memory/LMB_Rst] [get_bd_pins proc_sys_reset_1/bus_struct_reset]
  connect_bd_net -net proc_sys_reset_1_mb_reset [get_bd_pins microblaze_1/Reset] [get_bd_pins proc_sys_reset_1/mb_reset]
  connect_bd_net -net proc_sys_reset_1_peripheral_aresetn [get_bd_pins S_AXI_ARESETN] [get_bd_pins axi_bram_ctrl_1/s_axi_aresetn] [get_bd_pins proc_sys_reset_1/peripheral_aresetn]
  connect_bd_net -net reset_1 [get_bd_pins ext_reset_in] [get_bd_pins proc_sys_reset_1/ext_reset_in]
  connect_bd_net -net xlconstant_1_const [get_bd_pins proc_sys_reset_1/aux_reset_in] [get_bd_pins proc_sys_reset_1/dcm_locked] [get_bd_pins xlconstant_1/dout]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: DRP_Bridge_hier
proc create_hier_cell_DRP_Bridge_hier { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_DRP_Bridge_hier() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 AXI1
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 AXI2
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 AXI3
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 AXI4
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 AXI5
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 AXI6
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 AXI7
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:drp_rtl:1.0 DRP
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:drp_rtl:1.0 DRP1
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:drp_rtl:1.0 DRP2
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:drp_rtl:1.0 DRP3
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:drp_rtl:1.0 DRP4
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:drp_rtl:1.0 DRP5
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:drp_rtl:1.0 DRP6
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:drp_rtl:1.0 DRP7

  # Create pins
  create_bd_pin -dir I -type clk AXI_aclk
  create_bd_pin -dir I -from 0 -to 0 -type rst AXI_aresetn

  # Create instance: drp_bridge_0, and set properties
  set drp_bridge_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:drp_bridge:1.0 drp_bridge_0 ]
  set_property -dict [ list CONFIG.C_S_AXI_ADDR_WIDTH {24}  ] $drp_bridge_0

  # Create instance: drp_bridge_1, and set properties
  set drp_bridge_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:drp_bridge:1.0 drp_bridge_1 ]
  set_property -dict [ list CONFIG.C_S_AXI_ADDR_WIDTH {24}  ] $drp_bridge_1

  # Create instance: drp_bridge_2, and set properties
  set drp_bridge_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:drp_bridge:1.0 drp_bridge_2 ]
  set_property -dict [ list CONFIG.C_S_AXI_ADDR_WIDTH {24}  ] $drp_bridge_2

  # Create instance: drp_bridge_3, and set properties
  set drp_bridge_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:drp_bridge:1.0 drp_bridge_3 ]
  set_property -dict [ list CONFIG.C_S_AXI_ADDR_WIDTH {24}  ] $drp_bridge_3

  # Create instance: drp_bridge_4, and set properties
  set drp_bridge_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:drp_bridge:1.0 drp_bridge_4 ]
  set_property -dict [ list CONFIG.C_S_AXI_ADDR_WIDTH {24}  ] $drp_bridge_4

  # Create instance: drp_bridge_5, and set properties
  set drp_bridge_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:drp_bridge:1.0 drp_bridge_5 ]
  set_property -dict [ list CONFIG.C_S_AXI_ADDR_WIDTH {24}  ] $drp_bridge_5

  # Create instance: drp_bridge_6, and set properties
  set drp_bridge_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:drp_bridge:1.0 drp_bridge_6 ]
  set_property -dict [ list CONFIG.C_S_AXI_ADDR_WIDTH {24}  ] $drp_bridge_6

  # Create instance: drp_bridge_7, and set properties
  set drp_bridge_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:drp_bridge:1.0 drp_bridge_7 ]
  set_property -dict [ list CONFIG.C_S_AXI_ADDR_WIDTH {24}  ] $drp_bridge_7

  # Create interface connections
  connect_bd_intf_net -intf_net drp_bridge_4_drp [get_bd_intf_pins DRP3] [get_bd_intf_pins drp_bridge_4/DRP]
  connect_bd_intf_net -intf_net drp_bridge_5_drp [get_bd_intf_pins DRP4] [get_bd_intf_pins drp_bridge_5/DRP]
  connect_bd_intf_net -intf_net drp_bridge_6_drp [get_bd_intf_pins DRP5] [get_bd_intf_pins drp_bridge_6/DRP]
  connect_bd_intf_net -intf_net drp_bridge_7_drp [get_bd_intf_pins DRP6] [get_bd_intf_pins drp_bridge_7/DRP]
  connect_bd_intf_net -intf_net drp_mux_0_gt_drp [get_bd_intf_pins DRP7] [get_bd_intf_pins drp_bridge_0/DRP]
  connect_bd_intf_net -intf_net drp_mux_1_gt_drp [get_bd_intf_pins DRP] [get_bd_intf_pins drp_bridge_1/DRP]
  connect_bd_intf_net -intf_net drp_mux_2_gt_drp [get_bd_intf_pins DRP1] [get_bd_intf_pins drp_bridge_2/DRP]
  connect_bd_intf_net -intf_net drp_mux_3_gt_drp [get_bd_intf_pins DRP2] [get_bd_intf_pins drp_bridge_3/DRP]
  connect_bd_intf_net -intf_net microblaze_1_axi_periph_m00_axi [get_bd_intf_pins AXI7] [get_bd_intf_pins drp_bridge_0/AXI]
  connect_bd_intf_net -intf_net microblaze_1_axi_periph_m01_axi [get_bd_intf_pins AXI] [get_bd_intf_pins drp_bridge_1/AXI]
  connect_bd_intf_net -intf_net microblaze_1_axi_periph_m02_axi [get_bd_intf_pins AXI1] [get_bd_intf_pins drp_bridge_2/AXI]
  connect_bd_intf_net -intf_net microblaze_1_axi_periph_m03_axi [get_bd_intf_pins AXI2] [get_bd_intf_pins drp_bridge_3/AXI]
  connect_bd_intf_net -intf_net microblaze_1_axi_periph_m04_axi [get_bd_intf_pins AXI3] [get_bd_intf_pins drp_bridge_4/AXI]
  connect_bd_intf_net -intf_net microblaze_1_axi_periph_m05_axi [get_bd_intf_pins AXI4] [get_bd_intf_pins drp_bridge_5/AXI]
  connect_bd_intf_net -intf_net microblaze_1_axi_periph_m06_axi [get_bd_intf_pins AXI5] [get_bd_intf_pins drp_bridge_6/AXI]
  connect_bd_intf_net -intf_net microblaze_1_axi_periph_m07_axi [get_bd_intf_pins AXI6] [get_bd_intf_pins drp_bridge_7/AXI]

  # Create port connections
  connect_bd_net -net axi_aclk_1 [get_bd_pins AXI_aclk] [get_bd_pins drp_bridge_0/AXI_aclk] [get_bd_pins drp_bridge_1/AXI_aclk] [get_bd_pins drp_bridge_2/AXI_aclk] [get_bd_pins drp_bridge_3/AXI_aclk] [get_bd_pins drp_bridge_4/AXI_aclk] [get_bd_pins drp_bridge_5/AXI_aclk] [get_bd_pins drp_bridge_6/AXI_aclk] [get_bd_pins drp_bridge_7/AXI_aclk]
  connect_bd_net -net proc_sys_reset_1_peripheral_aresetn [get_bd_pins AXI_aresetn] [get_bd_pins drp_bridge_0/AXI_aresetn] [get_bd_pins drp_bridge_1/AXI_aresetn] [get_bd_pins drp_bridge_2/AXI_aresetn] [get_bd_pins drp_bridge_3/AXI_aresetn] [get_bd_pins drp_bridge_4/AXI_aresetn] [get_bd_pins drp_bridge_5/AXI_aresetn] [get_bd_pins drp_bridge_6/AXI_aresetn] [get_bd_pins drp_bridge_7/AXI_aresetn]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set gt_drp_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:drp_rtl:1.0 gt_drp_0 ]
  set gt_drp_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:drp_rtl:1.0 gt_drp_1 ]
  set gt_drp_2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:drp_rtl:1.0 gt_drp_2 ]
  set gt_drp_3 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:drp_rtl:1.0 gt_drp_3 ]
  set gt_drp_4 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:drp_rtl:1.0 gt_drp_4 ]
  set gt_drp_5 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:drp_rtl:1.0 gt_drp_5 ]
  set gt_drp_6 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:drp_rtl:1.0 gt_drp_6 ]
  set gt_drp_7 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:drp_rtl:1.0 gt_drp_7 ]

  # Create ports
  set AXI_aclk [ create_bd_port -dir I AXI_aclk ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list CONFIG.POLARITY {ACTIVE_HIGH}  ] $reset

  # Create instance: DRP_Bridge_hier
  create_hier_cell_DRP_Bridge_hier [current_bd_instance .] DRP_Bridge_hier

  # Create instance: jtag_axi_0, and set properties
  set jtag_axi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:jtag_axi:1.0 jtag_axi_0 ]

  # Create instance: mb_ps
  create_hier_cell_mb_ps [current_bd_instance .] mb_ps

  # Create instance: microblaze_1_axi_periph, and set properties
  set microblaze_1_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_1_axi_periph ]
  set_property -dict [ list CONFIG.NUM_MI {9} CONFIG.NUM_SI {2} CONFIG.STRATEGY {1}  ] $microblaze_1_axi_periph

  # Create interface connections
  connect_bd_intf_net -intf_net drp_bridge_4_drp [get_bd_intf_ports gt_drp_4] [get_bd_intf_pins DRP_Bridge_hier/DRP3]
  connect_bd_intf_net -intf_net drp_bridge_5_drp [get_bd_intf_ports gt_drp_5] [get_bd_intf_pins DRP_Bridge_hier/DRP4]
  connect_bd_intf_net -intf_net drp_bridge_6_drp [get_bd_intf_ports gt_drp_6] [get_bd_intf_pins DRP_Bridge_hier/DRP5]
  connect_bd_intf_net -intf_net drp_bridge_7_drp [get_bd_intf_ports gt_drp_7] [get_bd_intf_pins DRP_Bridge_hier/DRP6]
  connect_bd_intf_net -intf_net drp_mux_0_gt_drp [get_bd_intf_ports gt_drp_0] [get_bd_intf_pins DRP_Bridge_hier/DRP7]
  connect_bd_intf_net -intf_net drp_mux_1_gt_drp [get_bd_intf_ports gt_drp_1] [get_bd_intf_pins DRP_Bridge_hier/DRP]
  connect_bd_intf_net -intf_net drp_mux_2_gt_drp [get_bd_intf_ports gt_drp_2] [get_bd_intf_pins DRP_Bridge_hier/DRP1]
  connect_bd_intf_net -intf_net drp_mux_3_gt_drp [get_bd_intf_ports gt_drp_3] [get_bd_intf_pins DRP_Bridge_hier/DRP2]
  connect_bd_intf_net -intf_net jtag_axi_0_m_axi [get_bd_intf_pins jtag_axi_0/M_AXI] [get_bd_intf_pins microblaze_1_axi_periph/S01_AXI]
  connect_bd_intf_net -intf_net microblaze_1_axi_dp [get_bd_intf_pins mb_ps/M_AXI_DP] [get_bd_intf_pins microblaze_1_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_1_axi_periph_m00_axi [get_bd_intf_pins DRP_Bridge_hier/AXI7] [get_bd_intf_pins microblaze_1_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_1_axi_periph_m01_axi [get_bd_intf_pins DRP_Bridge_hier/AXI] [get_bd_intf_pins microblaze_1_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_1_axi_periph_m02_axi [get_bd_intf_pins DRP_Bridge_hier/AXI1] [get_bd_intf_pins microblaze_1_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_1_axi_periph_m03_axi [get_bd_intf_pins DRP_Bridge_hier/AXI2] [get_bd_intf_pins microblaze_1_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net microblaze_1_axi_periph_m04_axi [get_bd_intf_pins DRP_Bridge_hier/AXI3] [get_bd_intf_pins microblaze_1_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net microblaze_1_axi_periph_m05_axi [get_bd_intf_pins DRP_Bridge_hier/AXI4] [get_bd_intf_pins microblaze_1_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net microblaze_1_axi_periph_m06_axi [get_bd_intf_pins DRP_Bridge_hier/AXI5] [get_bd_intf_pins microblaze_1_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net microblaze_1_axi_periph_m07_axi [get_bd_intf_pins DRP_Bridge_hier/AXI6] [get_bd_intf_pins microblaze_1_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net microblaze_1_axi_periph_m08_axi [get_bd_intf_pins mb_ps/S_AXI] [get_bd_intf_pins microblaze_1_axi_periph/M08_AXI]

  # Create port connections
  connect_bd_net -net axi_aclk_1 [get_bd_ports AXI_aclk] [get_bd_pins DRP_Bridge_hier/AXI_aclk] [get_bd_pins jtag_axi_0/aclk] [get_bd_pins mb_ps/S_AXI_ACLK] [get_bd_pins microblaze_1_axi_periph/ACLK] [get_bd_pins microblaze_1_axi_periph/M00_ACLK] [get_bd_pins microblaze_1_axi_periph/M01_ACLK] [get_bd_pins microblaze_1_axi_periph/M02_ACLK] [get_bd_pins microblaze_1_axi_periph/M03_ACLK] [get_bd_pins microblaze_1_axi_periph/M04_ACLK] [get_bd_pins microblaze_1_axi_periph/M05_ACLK] [get_bd_pins microblaze_1_axi_periph/M06_ACLK] [get_bd_pins microblaze_1_axi_periph/M07_ACLK] [get_bd_pins microblaze_1_axi_periph/M08_ACLK] [get_bd_pins microblaze_1_axi_periph/S00_ACLK] [get_bd_pins microblaze_1_axi_periph/S01_ACLK]
  connect_bd_net -net m07_aresetn_1 [get_bd_pins jtag_axi_0/aresetn] [get_bd_pins mb_ps/interconnect_aresetn] [get_bd_pins microblaze_1_axi_periph/ARESETN] [get_bd_pins microblaze_1_axi_periph/M00_ARESETN] [get_bd_pins microblaze_1_axi_periph/M01_ARESETN] [get_bd_pins microblaze_1_axi_periph/M02_ARESETN] [get_bd_pins microblaze_1_axi_periph/M03_ARESETN] [get_bd_pins microblaze_1_axi_periph/M04_ARESETN] [get_bd_pins microblaze_1_axi_periph/M05_ARESETN] [get_bd_pins microblaze_1_axi_periph/M06_ARESETN] [get_bd_pins microblaze_1_axi_periph/M07_ARESETN] [get_bd_pins microblaze_1_axi_periph/M08_ARESETN] [get_bd_pins microblaze_1_axi_periph/S00_ARESETN] [get_bd_pins microblaze_1_axi_periph/S01_ARESETN]
  connect_bd_net -net proc_sys_reset_1_peripheral_aresetn [get_bd_pins DRP_Bridge_hier/AXI_aresetn] [get_bd_pins mb_ps/S_AXI_ARESETN]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins mb_ps/ext_reset_in]

  # Create address segments
  create_bd_addr_seg -range 0x4000 -offset 0xC2000000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs mb_ps/axi_bram_ctrl_1/S_AXI/Mem0] SEG_axi_bram_ctrl_1_Mem0
  create_bd_addr_seg -range 0x1000 -offset 0xC0000000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs DRP_Bridge_hier/drp_bridge_0/AXI/reg0] SEG_drp_bridge_0_reg0
  create_bd_addr_seg -range 0x1000 -offset 0xC0001000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs DRP_Bridge_hier/drp_bridge_1/AXI/reg0] SEG_drp_bridge_1_reg0
  create_bd_addr_seg -range 0x1000 -offset 0xC0002000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs DRP_Bridge_hier/drp_bridge_2/AXI/reg0] SEG_drp_bridge_2_reg0
  create_bd_addr_seg -range 0x1000 -offset 0xC0003000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs DRP_Bridge_hier/drp_bridge_3/AXI/reg0] SEG_drp_bridge_3_reg0
  create_bd_addr_seg -range 0x1000 -offset 0xC0004000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs DRP_Bridge_hier/drp_bridge_4/AXI/reg0] SEG_drp_bridge_4_reg0
  create_bd_addr_seg -range 0x1000 -offset 0xC0005000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs DRP_Bridge_hier/drp_bridge_5/AXI/reg0] SEG_drp_bridge_5_reg0
  create_bd_addr_seg -range 0x1000 -offset 0xC0006000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs DRP_Bridge_hier/drp_bridge_6/AXI/reg0] SEG_drp_bridge_6_reg0
  create_bd_addr_seg -range 0x1000 -offset 0xC0007000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs DRP_Bridge_hier/drp_bridge_7/AXI/reg0] SEG_drp_bridge_7_reg0
  create_bd_addr_seg -range 0x4000 -offset 0x0 [get_bd_addr_spaces mb_ps/microblaze_1/Instruction] [get_bd_addr_segs mb_ps/microblaze_1_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG1
  create_bd_addr_seg -range 0x4000 -offset 0x0 [get_bd_addr_spaces mb_ps/microblaze_1/Data] [get_bd_addr_segs mb_ps/microblaze_1_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG2
  create_bd_addr_seg -range 0x4000 -offset 0xC2000000 [get_bd_addr_spaces mb_ps/microblaze_1/Data] [get_bd_addr_segs mb_ps/axi_bram_ctrl_1/S_AXI/Mem0] SEG_axi_bram_ctrl_1_Mem0
  create_bd_addr_seg -range 0x1000 -offset 0xC0000000 [get_bd_addr_spaces mb_ps/microblaze_1/Data] [get_bd_addr_segs DRP_Bridge_hier/drp_bridge_0/AXI/reg0] SEG_drp_bridge_0_reg0
  create_bd_addr_seg -range 0x1000 -offset 0xC0001000 [get_bd_addr_spaces mb_ps/microblaze_1/Data] [get_bd_addr_segs DRP_Bridge_hier/drp_bridge_1/AXI/reg0] SEG_drp_bridge_1_reg0
  create_bd_addr_seg -range 0x1000 -offset 0xC0002000 [get_bd_addr_spaces mb_ps/microblaze_1/Data] [get_bd_addr_segs DRP_Bridge_hier/drp_bridge_2/AXI/reg0] SEG_drp_bridge_2_reg0
  create_bd_addr_seg -range 0x1000 -offset 0xC0003000 [get_bd_addr_spaces mb_ps/microblaze_1/Data] [get_bd_addr_segs DRP_Bridge_hier/drp_bridge_3/AXI/reg0] SEG_drp_bridge_3_reg0
  create_bd_addr_seg -range 0x1000 -offset 0xC0004000 [get_bd_addr_spaces mb_ps/microblaze_1/Data] [get_bd_addr_segs DRP_Bridge_hier/drp_bridge_4/AXI/reg0] SEG_drp_bridge_4_reg0
  create_bd_addr_seg -range 0x1000 -offset 0xC0005000 [get_bd_addr_spaces mb_ps/microblaze_1/Data] [get_bd_addr_segs DRP_Bridge_hier/drp_bridge_5/AXI/reg0] SEG_drp_bridge_5_reg0
  create_bd_addr_seg -range 0x1000 -offset 0xC0006000 [get_bd_addr_spaces mb_ps/microblaze_1/Data] [get_bd_addr_segs DRP_Bridge_hier/drp_bridge_6/AXI/reg0] SEG_drp_bridge_6_reg0
  create_bd_addr_seg -range 0x1000 -offset 0xC0007000 [get_bd_addr_spaces mb_ps/microblaze_1/Data] [get_bd_addr_segs DRP_Bridge_hier/drp_bridge_7/AXI/reg0] SEG_drp_bridge_7_reg0
  

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


