# pins.xdc
# for each I/O signal, define what pin it connects to, and what type of
# signal it is.

#200 MHz system clock
# 'SYSCLK' in the VC707 manual, 'clk200' in this project
set_property IOSTANDARD LVDS [get_ports clk200_p]
set_property PACKAGE_PIN E18 [get_ports clk200_n]
set_property IOSTANDARD LVDS [get_ports clk200_n]

# programmable oscillator
# 'USER_CLOCK' in the VC707 manual, 'prog_clk' in this project
set_property IOSTANDARD LVDS [get_ports prog_clk_p]
set_property PACKAGE_PIN AL34 [get_ports prog_clk_n]
set_property IOSTANDARD LVDS [get_ports prog_clk_n]

# USER SMA
# USER_SMA_CLOCK in the VC707 manual, 'sma_clk' in this project
# These are outputs in this design!
set_property IOSTANDARD LVDS [get_ports sma_clk_p]
set_property PACKAGE_PIN AK32 [get_ports sma_clk_n]
set_property IOSTANDARD LVDS [get_ports sma_clk_n]

# MGTREFCLK1 SMA
# SMA_MGT_REFCLK in the VC707 manual, 'gt_clkp, gt_clkn' in this project
# These are externally looped back from the 'sma_clk'
set_property PACKAGE_PIN AK7 [get_ports gt_clkn]

#### FIGURE OUT WHERE THIS GOES
# INST eth/phy/*/gthe2_i LOC=GTHE2_CHANNEL_X1Y13;

# SFP2 - cage labeled 'P2', with a 1 Gbit module.
#set_property PACKAGE_PIN AM7 [get_ports gt_rxn]
# SFP2_LOS_LS in the VC709 manual, 'sfp_los' in this project
#set_property PACKAGE_PIN AA40 [get_ports sfp_los]
#set_property IOSTANDARD LVCMOS18 [get_ports sfp_los]
# SFP2_MOD_DETECT_LST_REFCLK in the VC709 manual, 'sfp_mod_det' in this project
#set_property PACKAGE_PIN AA42 [get_ports sfp_mod_det]
#set_property IOSTANDARD LVCMOS18 [get_ports sfp_mod_det]
# SFP2_RS0_LS in the VC709 manual, 'sfp_rs0' in this project
#set_property PACKAGE_PIN AB38 [get_ports sfp_rs0]
#set_property IOSTANDARD LVCMOS18 [get_ports sfp_rs0]
# SFP2_RS1_LS in the VC709 manual, 'sfp_rs1' in this project
#set_property PACKAGE_PIN AB39 [get_ports sfp_rs1]
#set_property IOSTANDARD LVCMOS18 [get_ports sfp_rs1]
# SFP2_TX_DISABLE_LS_B in the VC709 manual, 'sfp_tx_disable' in this project
#set_property PACKAGE_PIN Y42 [get_ports sfp_tx_disable]
#set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_disable]

#SFP
set_property PACKAGE_PIN AP33 [get_ports sfp_tx_disable]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_disable]
set_property PACKAGE_PIN BB38 [get_ports sfp_los]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_los]
#set_property PACKAGE_PIN AM4 [get_ports SFP_TX_P]
#set_property PACKAGE_PIN AL6 [get_ports SFP_RX_P]
#set_property PACKAGE_PIN AM3 [get_ports SFP_TX_N]
set_property PACKAGE_PIN AL5 [get_ports gt_rxn]

# LEDs
# GPIO_LED_n_LS in the VC709 manual, 'leds<n>' in this project
set_property PACKAGE_PIN AM39 [get_ports {leds[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[0]}]
set_property PACKAGE_PIN AN39 [get_ports {leds[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[1]}]
set_property PACKAGE_PIN AR37 [get_ports {leds[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[2]}]
set_property PACKAGE_PIN AT37 [get_ports {leds[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[3]}]
set_property PACKAGE_PIN AR35 [get_ports {leds[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[4]}]
set_property PACKAGE_PIN AP41 [get_ports {leds[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[5]}]
set_property PACKAGE_PIN AP42 [get_ports {leds[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[6]}]
set_property PACKAGE_PIN AU39 [get_ports {leds[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[7]}]

# Switch to enable and turn on LED
set_property PACKAGE_PIN AU38 [get_ports en_proc_switch]
set_property IOSTANDARD LVCMOS18 [get_ports en_proc_switch]

#GPIO_DIP_SW
set_property PACKAGE_PIN AV30 [get_ports GPIO_DIP_SW0]
set_property IOSTANDARD LVCMOS18 [get_ports GPIO_DIP_SW0]
set_property PACKAGE_PIN AY33 [get_ports GPIO_DIP_SW1]
set_property IOSTANDARD LVCMOS18 [get_ports GPIO_DIP_SW1]

#LCD
#RS
set_property PACKAGE_PIN AN41 [get_ports {lcd[0]}] 
set_property IOSTANDARD LVCMOS18 [get_ports {lcd[0]}]
#E
set_property PACKAGE_PIN AT40 [get_ports {lcd[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {lcd[1]}]
#RW
set_property PACKAGE_PIN AR42 [get_ports {lcd[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {lcd[2]}]
#DB4
set_property PACKAGE_PIN AT42 [get_ports {lcd[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {lcd[3]}]
#DB5
set_property PACKAGE_PIN AR38 [get_ports {lcd[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {lcd[4]}]
#DB6
set_property PACKAGE_PIN AR39 [get_ports {lcd[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {lcd[5]}]
#DB7
set_property PACKAGE_PIN AN40 [get_ports {lcd[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {lcd[6]}]

#FMC1
#GT Clock
#FMC1_HPC_GBTCLK1_M2C_C_P(N) in VC707 manual. FMC1_GBTCLK1_P(N) in this project
set_property PACKAGE_PIN E10 [get_ports FMC1_GBTCLK1_P]
set_property PACKAGE_PIN E9 [get_ports FMC1_GBTCLK1_N]
#SFP4
#FMC1_HPC_DP7_C2M_P(N) in VC707 manual. FMC_SFP4_TX_P(N) in this project
set_property PACKAGE_PIN F4 [get_ports FMC_SFP4_TX_P]
set_property PACKAGE_PIN F3 [get_ports FMC_SFP4_TX_N]
#FMC1_HPC_DP7_M2C_P(N) in VC707 manual. FMC_SFP4_RX_P(N) in this project
set_property PACKAGE_PIN E6 [get_ports FMC_SFP4_RX_P]
set_property PACKAGE_PIN E5 [get_ports FMC_SFP4_RX_N]
#FMC1_HPC_LA33_P in VC707 manual. FMC_SFP4_TX_DISABLE in this project
set_property PACKAGE_PIN U31 [get_ports FMC_SFP4_TX_DISABLE]
set_property IOSTANDARD LVCMOS18 [get_ports FMC_SFP4_TX_DISABLE]
#FMC1_HPC_LA30_N in VC707 manual. FMC_SFP4_LOS in this project
set_property PACKAGE_PIN V31 [get_ports FMC_SFP4_LOS]
set_property IOSTANDARD LVCMOS18 [get_ports FMC_SFP4_LOS]
#FMC1_HPC_LA31_P in VC707 manual. FMC_SFP4_RS in this project
set_property PACKAGE_PIN M28 [get_ports FMC_SFP4_RS]
set_property IOSTANDARD LVCMOS18 [get_ports FMC_SFP4_RS]

#SFP7
#FMC1_HPC_DP4_C2M_P(N) in VC707 manual. FMC_SFP7_TX_P(N)
set_property PACKAGE_PIN J2 [get_ports FMC_SFP7_TX_P]
set_property PACKAGE_PIN J1 [get_ports FMC_SFP7_TX_N]
#FMC1_HPC_DP4_M2C_P(N) in VC707 manual. FMC_SFP7_RX_P(N)
set_property PACKAGE_PIN H8 [get_ports FMC_SFP7_RX_P]
set_property PACKAGE_PIN H7 [get_ports FMC_SFP7_RX_N]
#FMC1_HPC_LA22_N in VC707 manual. FMC_SFP7_TX_DISABLE in this project
set_property PACKAGE_PIN P28 [get_ports FMC_SFP7_TX_DISABLE]
set_property IOSTANDARD LVCMOS18 [get_ports FMC_SFP7_TX_DISABLE]
#FMC1_HPC_LA20_P in VC707 manual. FMC_SFP7_LOS in this project
set_property PACKAGE_PIN Y29 [get_ports FMC_SFP7_LOS]
set_property IOSTANDARD LVCMOS18 [get_ports FMC_SFP7_LOS]
#FMC1_HPC_LA20_N in VC707 manual. FMC_SFP7_RS in this project
set_property PACKAGE_PIN Y30 [get_ports FMC_SFP7_RS]
set_property IOSTANDARD LVCMOS18 [get_ports FMC_SFP7_RS]

#FMC_LEDs
#FMC1_HPC_LA18_CC_P in HPC connection. LED-D1 on FMC. fmc_leds[0] in this project
set_property PACKAGE_PIN M32 [get_ports {fmc_leds[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {fmc_leds[0]}]
#FMC1_HPC_LA18_CC_N in HPC connection. LED-D2 on FMC. fmc_leds[1] in this project
set_property PACKAGE_PIN L32 [get_ports {fmc_leds[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {fmc_leds[1]}]
#FMC1_HPC_LA19_P in HPC connection. LED-D3 on FMC. fmc_leds[2] in this project
set_property PACKAGE_PIN W30 [get_ports {fmc_leds[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {fmc_leds[2]}]
#FMC1_HPC_LA19_N in HPC connection. LED-D4 on FMC. fmc_leds[3] in this project
set_property PACKAGE_PIN W31 [get_ports {fmc_leds[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {fmc_leds[3]}]
#FMC1_HPC_HA00_CC_N in HPC connection. LED-D5 on FMC. fmc_leds[4] in this project
set_property PACKAGE_PIN E35 [get_ports {fmc_leds[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {fmc_leds[4]}]
#FMC1_HPC_HA00_CC_P in HPC connection. LED-D6 on FMC. fmc_leds[5] in this project
set_property PACKAGE_PIN E34 [get_ports {fmc_leds[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {fmc_leds[5]}]
#FMC1_HPC_HA01_CC_N in HPC connection. LED-D7 on FMC. fmc_leds[6] in this project
set_property PACKAGE_PIN D36 [get_ports {fmc_leds[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {fmc_leds[6]}]
#FMC1_HPC_HA01_CC_P in HPC connection. LED-D8 on FMC. fmc_leds[7] in this project
set_property PACKAGE_PIN D35 [get_ports {fmc_leds[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {fmc_leds[7]}]