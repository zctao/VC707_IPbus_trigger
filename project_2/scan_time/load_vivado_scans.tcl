#to source this file, make sure to have at least Vivado 2013.1 or newer
#Type the following:
#vivado -mode gui -source load_vivado_scans.tcl

#open_hw
remove_hw_sio_scan [get_hw_sio_scan]
read_hw_sio_scan ./Ch0_viv.csv
read_hw_sio_scan ./Ch1_viv.csv
read_hw_sio_scan ./Ch2_viv.csv
read_hw_sio_scan ./Ch3_viv.csv
read_hw_sio_scan ./Ch4_viv.csv
read_hw_sio_scan ./Ch5_viv.csv
read_hw_sio_scan ./Ch6_viv.csv
read_hw_sio_scan ./Ch7_viv.csv
display_hw_sio_scan [get_hw_sio_scans *]