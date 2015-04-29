#-----------------------
#Creating new core.
ipx::create_core {xilinx.com} {ip} {eyescan_subsystem} {1.0}
#-----------------------
set_property root_directory {} [ipx::current_core]
ipx::add_user_parameter Component_Name [ipx::current_core]
set_property {value_resolve_type} {user} [ipx::get_user_parameters  Component_Name -of_objects [ipx::current_core]]
set_property {value_format} {string} [ipx::get_user_parameters  Component_Name -of_objects [ipx::current_core]]
#-----------------------
# SUPORTED FAMILIES     
#-----------------------
set_property supported_families {{virtex7} {Production}} [ipx::current_core]

#-----------------------
# OTHER ATTRIBUTES      
#-----------------------
set_property taxonomy {{/Packaged_BlockDiagram_Designs}} [ipx::current_core]
set_property company_url {http://www.xilinx.com} [ipx::current_core]
set_property description {eyescan_subsystem} [ipx::current_core]
set_property display_name {eyescan_subsystem} [ipx::current_core]

ipx::remove_all_port [ipx::current_core]
ipx::remove_all_file_group [ipx::current_core]
ipx::remove_all_bus_interface [ipx::current_core]

#-----------------------
# SYNTHESIS FILESET
#-----------------------
ipx::add_file_group {xilinx_verilogsynthesis} [ipx::current_core]
ipx::add_file eyescan_subsystem.bmm [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file eyescan_subsystem_ooc.xdc [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file hw_handoff/eyescan_subsystem.hwh [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file hw_handoff/eyescan_subsystem_bd.tcl [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_auto_pc_0/eyescan_subsystem_auto_pc_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_auto_pc_1/eyescan_subsystem_auto_pc_1.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_auto_pc_2/eyescan_subsystem_auto_pc_2.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_auto_pc_3/eyescan_subsystem_auto_pc_3.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_auto_pc_4/eyescan_subsystem_auto_pc_4.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_auto_pc_5/eyescan_subsystem_auto_pc_5.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_auto_pc_6/eyescan_subsystem_auto_pc_6.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_auto_pc_7/eyescan_subsystem_auto_pc_7.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_auto_pc_8/eyescan_subsystem_auto_pc_8.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_axi_bram_ctrl_1_0/eyescan_subsystem_axi_bram_ctrl_1_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_blk_mem_gen_1_0/eyescan_subsystem_blk_mem_gen_1_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_dlmb_bram_if_cntlr_0/eyescan_subsystem_dlmb_bram_if_cntlr_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_dlmb_v10_0/eyescan_subsystem_dlmb_v10_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_drp_bridge_0_0/eyescan_subsystem_drp_bridge_0_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_drp_bridge_1_0/eyescan_subsystem_drp_bridge_1_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_drp_bridge_2_0/eyescan_subsystem_drp_bridge_2_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_drp_bridge_3_0/eyescan_subsystem_drp_bridge_3_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_drp_bridge_4_0/eyescan_subsystem_drp_bridge_4_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_drp_bridge_5_0/eyescan_subsystem_drp_bridge_5_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_drp_bridge_6_0/eyescan_subsystem_drp_bridge_6_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_drp_bridge_7_0/eyescan_subsystem_drp_bridge_7_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_ilmb_bram_if_cntlr_0/eyescan_subsystem_ilmb_bram_if_cntlr_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_ilmb_v10_0/eyescan_subsystem_ilmb_v10_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_jtag_axi_0_0/eyescan_subsystem_jtag_axi_0_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_lmb_bram_0/eyescan_subsystem_lmb_bram_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_mdm_1_0/eyescan_subsystem_mdm_1_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_microblaze_1_0/eyescan_subsystem_microblaze_1_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_proc_sys_reset_1_0/eyescan_subsystem_proc_sys_reset_1_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_xbar_0/eyescan_subsystem_xbar_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_xlconstant_1_0/eyescan_subsystem_xlconstant_1_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file hdl/eyescan_subsystem.v [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
set_property {model_name} {eyescan_subsystem} [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]

#-----------------------
# SIMULATION FILESET
#-----------------------
ipx::add_file_group {xilinx_verilogbehavioralsimulation} [ipx::current_core]
ipx::add_file eyescan_subsystem.bmm [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file eyescan_subsystem_ooc.xdc [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file hw_handoff/eyescan_subsystem.hwh [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file hw_handoff/eyescan_subsystem_bd.tcl [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_auto_pc_0/eyescan_subsystem_auto_pc_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_auto_pc_1/eyescan_subsystem_auto_pc_1.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_auto_pc_2/eyescan_subsystem_auto_pc_2.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_auto_pc_3/eyescan_subsystem_auto_pc_3.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_auto_pc_4/eyescan_subsystem_auto_pc_4.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_auto_pc_5/eyescan_subsystem_auto_pc_5.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_auto_pc_6/eyescan_subsystem_auto_pc_6.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_auto_pc_7/eyescan_subsystem_auto_pc_7.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_auto_pc_8/eyescan_subsystem_auto_pc_8.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_axi_bram_ctrl_1_0/eyescan_subsystem_axi_bram_ctrl_1_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_blk_mem_gen_1_0/eyescan_subsystem_blk_mem_gen_1_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_dlmb_bram_if_cntlr_0/eyescan_subsystem_dlmb_bram_if_cntlr_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_dlmb_v10_0/eyescan_subsystem_dlmb_v10_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_drp_bridge_0_0/eyescan_subsystem_drp_bridge_0_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_drp_bridge_1_0/eyescan_subsystem_drp_bridge_1_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_drp_bridge_2_0/eyescan_subsystem_drp_bridge_2_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_drp_bridge_3_0/eyescan_subsystem_drp_bridge_3_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_drp_bridge_4_0/eyescan_subsystem_drp_bridge_4_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_drp_bridge_5_0/eyescan_subsystem_drp_bridge_5_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_drp_bridge_6_0/eyescan_subsystem_drp_bridge_6_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_drp_bridge_7_0/eyescan_subsystem_drp_bridge_7_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_ilmb_bram_if_cntlr_0/eyescan_subsystem_ilmb_bram_if_cntlr_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_ilmb_v10_0/eyescan_subsystem_ilmb_v10_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_jtag_axi_0_0/eyescan_subsystem_jtag_axi_0_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_lmb_bram_0/eyescan_subsystem_lmb_bram_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_mdm_1_0/eyescan_subsystem_mdm_1_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_microblaze_1_0/eyescan_subsystem_microblaze_1_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_proc_sys_reset_1_0/eyescan_subsystem_proc_sys_reset_1_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_xbar_0/eyescan_subsystem_xbar_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/eyescan_subsystem_xlconstant_1_0/eyescan_subsystem_xlconstant_1_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file hdl/eyescan_subsystem.v [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
set_property {model_name} {eyescan_subsystem} [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]

#-----------------------
# PORTS 
#-----------------------
ipx::add_ports_from_hdl [::ipx::current_core] -top_level_hdl_file ./hdl/eyescan_subsystem.v -top_module_name eyescan_subsystem

#-----------------------
# BUS INTERFACES 
#-----------------------
#------------------
#   Adding gt_drp_0
#------------------
ipx::add_bus_interface {gt_drp_0} [ipx::current_core]
set_property interface_mode {master} [ipx::get_bus_interfaces {gt_drp_0} -of_objects [ipx::current_core]]
set_property display_name {gt_drp_0} [ipx::get_bus_interfaces {gt_drp_0} -of_objects [ipx::current_core]]

#   Adding Bus Type VNLV xilinx.com:interface:drp:1.0
set_property {bus_type_vlnv} {xilinx.com:interface:drp:1.0}  [ipx::get_bus_interfaces gt_drp_0 -of_objects [ipx::current_core]]

#   Adding Abstraction VNLV xilinx.com:interface:drp_rtl:1.0
set_property {abstraction_type_vlnv} {xilinx.com:interface:drp_rtl:1.0}  [ipx::get_bus_interfaces gt_drp_0 -of_objects [ipx::current_core]]

#   Adding PortMaps
set_property {physical_name} {gt_drp_0_do} [ipx::add_port_map {DO}  [ipx::get_bus_interfaces {gt_drp_0} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_0_di} [ipx::add_port_map {DI}  [ipx::get_bus_interfaces {gt_drp_0} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_0_den} [ipx::add_port_map {DEN}  [ipx::get_bus_interfaces {gt_drp_0} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_0_dwe} [ipx::add_port_map {DWE}  [ipx::get_bus_interfaces {gt_drp_0} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_0_drdy} [ipx::add_port_map {DRDY}  [ipx::get_bus_interfaces {gt_drp_0} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_0_daddr} [ipx::add_port_map {DADDR}  [ipx::get_bus_interfaces {gt_drp_0} -of_objects [ipx::current_core]]]
#------------------
#------------------
#   Adding gt_drp_1
#------------------
ipx::add_bus_interface {gt_drp_1} [ipx::current_core]
set_property interface_mode {master} [ipx::get_bus_interfaces {gt_drp_1} -of_objects [ipx::current_core]]
set_property display_name {gt_drp_1} [ipx::get_bus_interfaces {gt_drp_1} -of_objects [ipx::current_core]]

#   Adding Bus Type VNLV xilinx.com:interface:drp:1.0
set_property {bus_type_vlnv} {xilinx.com:interface:drp:1.0}  [ipx::get_bus_interfaces gt_drp_1 -of_objects [ipx::current_core]]

#   Adding Abstraction VNLV xilinx.com:interface:drp_rtl:1.0
set_property {abstraction_type_vlnv} {xilinx.com:interface:drp_rtl:1.0}  [ipx::get_bus_interfaces gt_drp_1 -of_objects [ipx::current_core]]

#   Adding PortMaps
set_property {physical_name} {gt_drp_1_do} [ipx::add_port_map {DO}  [ipx::get_bus_interfaces {gt_drp_1} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_1_di} [ipx::add_port_map {DI}  [ipx::get_bus_interfaces {gt_drp_1} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_1_den} [ipx::add_port_map {DEN}  [ipx::get_bus_interfaces {gt_drp_1} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_1_dwe} [ipx::add_port_map {DWE}  [ipx::get_bus_interfaces {gt_drp_1} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_1_drdy} [ipx::add_port_map {DRDY}  [ipx::get_bus_interfaces {gt_drp_1} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_1_daddr} [ipx::add_port_map {DADDR}  [ipx::get_bus_interfaces {gt_drp_1} -of_objects [ipx::current_core]]]
#------------------
#------------------
#   Adding gt_drp_2
#------------------
ipx::add_bus_interface {gt_drp_2} [ipx::current_core]
set_property interface_mode {master} [ipx::get_bus_interfaces {gt_drp_2} -of_objects [ipx::current_core]]
set_property display_name {gt_drp_2} [ipx::get_bus_interfaces {gt_drp_2} -of_objects [ipx::current_core]]

#   Adding Bus Type VNLV xilinx.com:interface:drp:1.0
set_property {bus_type_vlnv} {xilinx.com:interface:drp:1.0}  [ipx::get_bus_interfaces gt_drp_2 -of_objects [ipx::current_core]]

#   Adding Abstraction VNLV xilinx.com:interface:drp_rtl:1.0
set_property {abstraction_type_vlnv} {xilinx.com:interface:drp_rtl:1.0}  [ipx::get_bus_interfaces gt_drp_2 -of_objects [ipx::current_core]]

#   Adding PortMaps
set_property {physical_name} {gt_drp_2_do} [ipx::add_port_map {DO}  [ipx::get_bus_interfaces {gt_drp_2} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_2_di} [ipx::add_port_map {DI}  [ipx::get_bus_interfaces {gt_drp_2} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_2_den} [ipx::add_port_map {DEN}  [ipx::get_bus_interfaces {gt_drp_2} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_2_dwe} [ipx::add_port_map {DWE}  [ipx::get_bus_interfaces {gt_drp_2} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_2_drdy} [ipx::add_port_map {DRDY}  [ipx::get_bus_interfaces {gt_drp_2} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_2_daddr} [ipx::add_port_map {DADDR}  [ipx::get_bus_interfaces {gt_drp_2} -of_objects [ipx::current_core]]]
#------------------
#------------------
#   Adding gt_drp_3
#------------------
ipx::add_bus_interface {gt_drp_3} [ipx::current_core]
set_property interface_mode {master} [ipx::get_bus_interfaces {gt_drp_3} -of_objects [ipx::current_core]]
set_property display_name {gt_drp_3} [ipx::get_bus_interfaces {gt_drp_3} -of_objects [ipx::current_core]]

#   Adding Bus Type VNLV xilinx.com:interface:drp:1.0
set_property {bus_type_vlnv} {xilinx.com:interface:drp:1.0}  [ipx::get_bus_interfaces gt_drp_3 -of_objects [ipx::current_core]]

#   Adding Abstraction VNLV xilinx.com:interface:drp_rtl:1.0
set_property {abstraction_type_vlnv} {xilinx.com:interface:drp_rtl:1.0}  [ipx::get_bus_interfaces gt_drp_3 -of_objects [ipx::current_core]]

#   Adding PortMaps
set_property {physical_name} {gt_drp_3_do} [ipx::add_port_map {DO}  [ipx::get_bus_interfaces {gt_drp_3} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_3_di} [ipx::add_port_map {DI}  [ipx::get_bus_interfaces {gt_drp_3} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_3_den} [ipx::add_port_map {DEN}  [ipx::get_bus_interfaces {gt_drp_3} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_3_dwe} [ipx::add_port_map {DWE}  [ipx::get_bus_interfaces {gt_drp_3} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_3_drdy} [ipx::add_port_map {DRDY}  [ipx::get_bus_interfaces {gt_drp_3} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_3_daddr} [ipx::add_port_map {DADDR}  [ipx::get_bus_interfaces {gt_drp_3} -of_objects [ipx::current_core]]]
#------------------
#------------------
#   Adding gt_drp_4
#------------------
ipx::add_bus_interface {gt_drp_4} [ipx::current_core]
set_property interface_mode {master} [ipx::get_bus_interfaces {gt_drp_4} -of_objects [ipx::current_core]]
set_property display_name {gt_drp_4} [ipx::get_bus_interfaces {gt_drp_4} -of_objects [ipx::current_core]]

#   Adding Bus Type VNLV xilinx.com:interface:drp:1.0
set_property {bus_type_vlnv} {xilinx.com:interface:drp:1.0}  [ipx::get_bus_interfaces gt_drp_4 -of_objects [ipx::current_core]]

#   Adding Abstraction VNLV xilinx.com:interface:drp_rtl:1.0
set_property {abstraction_type_vlnv} {xilinx.com:interface:drp_rtl:1.0}  [ipx::get_bus_interfaces gt_drp_4 -of_objects [ipx::current_core]]

#   Adding PortMaps
set_property {physical_name} {gt_drp_4_do} [ipx::add_port_map {DO}  [ipx::get_bus_interfaces {gt_drp_4} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_4_di} [ipx::add_port_map {DI}  [ipx::get_bus_interfaces {gt_drp_4} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_4_den} [ipx::add_port_map {DEN}  [ipx::get_bus_interfaces {gt_drp_4} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_4_dwe} [ipx::add_port_map {DWE}  [ipx::get_bus_interfaces {gt_drp_4} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_4_drdy} [ipx::add_port_map {DRDY}  [ipx::get_bus_interfaces {gt_drp_4} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_4_daddr} [ipx::add_port_map {DADDR}  [ipx::get_bus_interfaces {gt_drp_4} -of_objects [ipx::current_core]]]
#------------------
#------------------
#   Adding gt_drp_5
#------------------
ipx::add_bus_interface {gt_drp_5} [ipx::current_core]
set_property interface_mode {master} [ipx::get_bus_interfaces {gt_drp_5} -of_objects [ipx::current_core]]
set_property display_name {gt_drp_5} [ipx::get_bus_interfaces {gt_drp_5} -of_objects [ipx::current_core]]

#   Adding Bus Type VNLV xilinx.com:interface:drp:1.0
set_property {bus_type_vlnv} {xilinx.com:interface:drp:1.0}  [ipx::get_bus_interfaces gt_drp_5 -of_objects [ipx::current_core]]

#   Adding Abstraction VNLV xilinx.com:interface:drp_rtl:1.0
set_property {abstraction_type_vlnv} {xilinx.com:interface:drp_rtl:1.0}  [ipx::get_bus_interfaces gt_drp_5 -of_objects [ipx::current_core]]

#   Adding PortMaps
set_property {physical_name} {gt_drp_5_do} [ipx::add_port_map {DO}  [ipx::get_bus_interfaces {gt_drp_5} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_5_di} [ipx::add_port_map {DI}  [ipx::get_bus_interfaces {gt_drp_5} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_5_den} [ipx::add_port_map {DEN}  [ipx::get_bus_interfaces {gt_drp_5} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_5_dwe} [ipx::add_port_map {DWE}  [ipx::get_bus_interfaces {gt_drp_5} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_5_drdy} [ipx::add_port_map {DRDY}  [ipx::get_bus_interfaces {gt_drp_5} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_5_daddr} [ipx::add_port_map {DADDR}  [ipx::get_bus_interfaces {gt_drp_5} -of_objects [ipx::current_core]]]
#------------------
#------------------
#   Adding gt_drp_6
#------------------
ipx::add_bus_interface {gt_drp_6} [ipx::current_core]
set_property interface_mode {master} [ipx::get_bus_interfaces {gt_drp_6} -of_objects [ipx::current_core]]
set_property display_name {gt_drp_6} [ipx::get_bus_interfaces {gt_drp_6} -of_objects [ipx::current_core]]

#   Adding Bus Type VNLV xilinx.com:interface:drp:1.0
set_property {bus_type_vlnv} {xilinx.com:interface:drp:1.0}  [ipx::get_bus_interfaces gt_drp_6 -of_objects [ipx::current_core]]

#   Adding Abstraction VNLV xilinx.com:interface:drp_rtl:1.0
set_property {abstraction_type_vlnv} {xilinx.com:interface:drp_rtl:1.0}  [ipx::get_bus_interfaces gt_drp_6 -of_objects [ipx::current_core]]

#   Adding PortMaps
set_property {physical_name} {gt_drp_6_do} [ipx::add_port_map {DO}  [ipx::get_bus_interfaces {gt_drp_6} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_6_di} [ipx::add_port_map {DI}  [ipx::get_bus_interfaces {gt_drp_6} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_6_den} [ipx::add_port_map {DEN}  [ipx::get_bus_interfaces {gt_drp_6} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_6_dwe} [ipx::add_port_map {DWE}  [ipx::get_bus_interfaces {gt_drp_6} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_6_drdy} [ipx::add_port_map {DRDY}  [ipx::get_bus_interfaces {gt_drp_6} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_6_daddr} [ipx::add_port_map {DADDR}  [ipx::get_bus_interfaces {gt_drp_6} -of_objects [ipx::current_core]]]
#------------------
#------------------
#   Adding gt_drp_7
#------------------
ipx::add_bus_interface {gt_drp_7} [ipx::current_core]
set_property interface_mode {master} [ipx::get_bus_interfaces {gt_drp_7} -of_objects [ipx::current_core]]
set_property display_name {gt_drp_7} [ipx::get_bus_interfaces {gt_drp_7} -of_objects [ipx::current_core]]

#   Adding Bus Type VNLV xilinx.com:interface:drp:1.0
set_property {bus_type_vlnv} {xilinx.com:interface:drp:1.0}  [ipx::get_bus_interfaces gt_drp_7 -of_objects [ipx::current_core]]

#   Adding Abstraction VNLV xilinx.com:interface:drp_rtl:1.0
set_property {abstraction_type_vlnv} {xilinx.com:interface:drp_rtl:1.0}  [ipx::get_bus_interfaces gt_drp_7 -of_objects [ipx::current_core]]

#   Adding PortMaps
set_property {physical_name} {gt_drp_7_do} [ipx::add_port_map {DO}  [ipx::get_bus_interfaces {gt_drp_7} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_7_di} [ipx::add_port_map {DI}  [ipx::get_bus_interfaces {gt_drp_7} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_7_den} [ipx::add_port_map {DEN}  [ipx::get_bus_interfaces {gt_drp_7} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_7_dwe} [ipx::add_port_map {DWE}  [ipx::get_bus_interfaces {gt_drp_7} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_7_drdy} [ipx::add_port_map {DRDY}  [ipx::get_bus_interfaces {gt_drp_7} -of_objects [ipx::current_core]]]
set_property {physical_name} {gt_drp_7_daddr} [ipx::add_port_map {DADDR}  [ipx::get_bus_interfaces {gt_drp_7} -of_objects [ipx::current_core]]]
#------------------
#------------------
#   Adding RST.reset
#------------------
ipx::add_bus_interface {RST.reset} [ipx::current_core]
set_property display_name {Reset} [ipx::get_bus_interfaces {RST.reset} -of_objects [ipx::current_core]]
set_property interface_mode {slave} [ipx::get_bus_interfaces {RST.reset} -of_objects [ipx::current_core]]

#   Adding Bus Type VNLV xilinx.com:signal:reset:1.0
set_property {bus_type_vlnv} {xilinx.com:signal:reset:1.0}  [ipx::get_bus_interfaces RST.reset -of_objects [ipx::current_core]]

#   Adding Abstraction VNLV xilinx.com:signal:reset_rtl:1.0
set_property {abstraction_type_vlnv} {xilinx.com:signal:reset_rtl:1.0}  [ipx::get_bus_interfaces RST.reset -of_objects [ipx::current_core]]

#   Adding PortMap
set_property {physical_name} {reset} [ipx::add_port_map {RST}  [ipx::get_bus_interfaces {RST.reset} -of_objects [ipx::current_core]]]
#   Adding Parameters

#-----------------------
# SAVE CORE TO REPOS
#-----------------------
ipx::create_default_gui_files [ipx::current_core]
ipx::save_core [ipx::current_core]
ipx::check_integrity  [ipx::current_core]
update_ip_catalog
