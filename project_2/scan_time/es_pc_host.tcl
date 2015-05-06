# #####################################################################################################
# Eye Scan with MicroBlaze
# TCL functions to execute test
# #####################################################################################################

# #####################################################################################################
# Function: es_host_write_mb
# Description: Wrapper around XMD's mwr function for writing into MicroBlaze IO bus.
#
# Parameters:
# 	base_addr: base address
# 	offset: address offset from base address
# 	val: data to be written
# 	data_size: size of data to be written 
#
# Returns: read-back value
# #####################################################################################################
proc es_host_write_mb {base_addr offset val } {
  set tmp_address [format %.8X [expr {$base_addr + $offset}]]
  set tmp_data [format %.8X $val]
  set_property CMD.ADDR $tmp_address [get_hw_axi_txns my_write]
  set_property CMD.ADDR $tmp_address [get_hw_axi_txns my_read]
  set_property DATA $tmp_data [get_hw_axi_txns my_write]  
  run_hw_axi -quiet [get_hw_axi_txns my_write]
  run_hw_axi -quiet [get_hw_axi_txns my_read]
  set retval [get_property DATA [get_hw_axi_txns my_read]]
	return $retval
}

# #####################################################################################################
# Function: es_host_read_mb
# Description: Wrapper around XMD's mrd function for reading from MicroBlaze IO bus.
#
# Parameters:
# 	base_addr: base address
# 	offset: address offset from base address
# 	len: number of words to read
#
# Returns: read value
# #####################################################################################################
proc es_host_read_mb {base_addr offset len} {

  set tmp_address [expr $base_addr + $offset]
  set loop_cnt 0

  while {$len > 255} {
    set_property CMD.LEN 256 [get_hw_axi_txns my_read]
    set_property CMD.ADDR [format %.8X $tmp_address] [get_hw_axi_txns my_read]
    run_hw_axi -quiet [get_hw_axi_txns my_read]
    set mydata [get_property DATA [get_hw_axi_txns my_read]]
    for { set i 0 } { $i <= 255 } { incr i } {
	   append retval "[format "%x" [expr $tmp_address + 4*$i]]:   [string range $mydata [expr (255-$i)*8] [expr (256-$i)*8-1]] \n"
    }    
    set len [expr $len - 256]
    set tmp_address [expr {$tmp_address + 256*4}]
  }
  if {$len > 0 } {
    set_property CMD.LEN $len [get_hw_axi_txns my_read]
    set_property CMD.ADDR [format %.8X $tmp_address] [get_hw_axi_txns my_read]
    run_hw_axi -quiet [get_hw_axi_txns my_read]
    set mydata [get_property DATA [get_hw_axi_txns my_read]]  
    for { set i 0 } { $i <= $len-1 } { incr i } {
	   append retval "[format "%x" [expr $tmp_address + 4*$i]]:   [string range $mydata [expr ($len-1-$i)*8] [expr ($len-$i)*8-1]] \n"
   }    
  }
  
	return $retval
}

# #####################################################################################################
# Function: es_check_range
# Description: Checks user input parameters to ensure they are within expected range.
#
# Parameters: (Note: all arrays must have length of 4, with array names correponding to lane names 0,1,2,3)
# 	test_ch_a: array reference to indicate if a lane is being scanned
# 	horz_step_a: array reference to indicate horizontal scan step size
# 	vert_step_a: array reference to indicate vertical scan step size
# 	lpm_mode_a: array reference to indicate equalizer mode 
# 	rate_a: array reference to indicate rate mode (e.g. full-rate, half-rate, etc)
# 	max_prescale_a: array reference to indicate maximum prescale allowed (for dynamic prescaling)
# 	data_width_a: array reference to indicate parallel data width
#
# Returns: 1 if all parameters are within range. 0 if any parameter is out of range.
# 
# #####################################################################################################
proc es_host_check_range {test_ch_a horz_step_a vert_step_a lpm_mode_a rate_a max_prescale_a data_width_a} {
	upvar $test_ch_a  test_ch
	upvar $horz_step_a horz_step
	upvar $vert_step_a vert_step
	upvar $lpm_mode_a lpm_mode
	upvar $rate_a rate
	upvar $max_prescale_a max_prescale
	upvar $data_width_a data_width
	
	
	foreach curr_ch [array names test_ch] {
		set entries [list $curr_ch $test_ch($curr_ch) $horz_step($curr_ch) $vert_step($curr_ch) $lpm_mode($curr_ch) $rate($curr_ch) $max_prescale($curr_ch) $data_width($curr_ch)]
		foreach curr_entry $entries {
			if {[string is integer -strict $curr_entry] == 0} {
				puts "ERROR. All entries must be integer. $curr_entry is not."
				return 0
			}
		}
	}
	set valid_rates {32 64 128 256 512} 
	set valid_widths {16 20 32 40}
	
	foreach curr_ch [array names test_ch] {
		if { $curr_ch > 8 || $curr_ch < 0 } {
			puts "ERROR. test_ch array key/name (channel name) must be 0,1,2,or 3 (Value given $curr_ch)"
			return 0
		}
		
		if { $test_ch($curr_ch) > 1 || $test_ch($curr_ch) < 0 } {
			puts "ERROR. test_ch value must be 0 or 1 (Value given $test_ch($curr_ch))"
			return 0
		}		
		if { $horz_step($curr_ch) < 1 || $horz_step($curr_ch) > $rate($curr_ch) } {
			puts "ERROR. Horizontal step size must be > 0 and <= $rate($curr_ch) (Value given $horz_step($curr_ch))"
			return 0
		}
		
		if { $vert_step($curr_ch) < 1 || $vert_step($curr_ch) > 127 } {
			puts "ERROR. Vertical step size must be > 0 and <= 127 (Value given $vert_step($curr_ch))"
			return 0
		}
		
		if { $lpm_mode($curr_ch) < 0 || $lpm_mode($curr_ch) > 1 } {
			puts "ERROR. LPM mode must be 0 or 1 (Value given $lpm_mode($curr_ch))"
			return 0
		}
		
		if { [lsearch $valid_rates $rate($curr_ch)] == -1 } {
			puts "ERROR. Valid rates are $valid_rates (Value given $rate($curr_ch))"
			return 0
		}
		
		if {$max_prescale($curr_ch) < 0 || $max_prescale($curr_ch) > 31} {
			puts "ERROR. Prescale must be >=0 and <=31 (Value given $max_prescale($curr_ch))"
			return 0
		}
		
		if { [lsearch $valid_widths $data_width($curr_ch)] == -1 } {
			puts "ERROR. Valid widths are $valid_widths (Value given $data_width($curr_ch))"
			return 0
		}
	}
	
	return 1
}

# #####################################################################################################
# Function: es_host_run
# Description: Runs the eye scan
# 
# Parameters: (Note: all arrays must have length of 4, with array names correponding to lane names 0,1,2,3)
# 	test_ch_a: array reference to indicate if a lane is being scanned
# 	horz_step_a: array reference to indicate horizontal scan step size
# 	vert_step_a: array reference to indicate vertical scan step size
# 	lpm_mode_a: array reference to indicate equalizer mode 
# 	rate_a: array reference to indicate rate mode (e.g. full-rate, half-rate, etc)
# 	max_prescale_a: array reference to indicate maximum prescale allowed (for dynamic prescaling)
# 	data_width_a: array reference to indicate parallel data width
# 	out_file_a: array reference to indicate file names for output raw dump
#
# Returns: 1 when test is completed
# 
# #####################################################################################################
proc es_host_run {test_ch_a horz_step_a vert_step_a lpm_mode_a rate_a max_prescale_a data_width_a out_file_a} {

	upvar $test_ch_a  test_ch
	upvar $horz_step_a horz_step
	upvar $vert_step_a vert_step
	upvar $lpm_mode_a lpm_mode
	upvar $rate_a rate
	upvar $out_file_a out_file
	upvar $max_prescale_a max_prescale
	upvar $data_width_a data_width

	set valid_entry [es_host_check_range test_ch horz_step vert_step lpm_mode rate max_prescale data_width]
	if {$valid_entry == 0} {
		return 0
	}
	
	 
  # Base Address of AXI BRAM
  set axi_bram_addr 0xC2000000
  #Variable addresses in MB address space
  foreach curr_ch [array names test_ch] {
    array set LANE_OFFSET [list $curr_ch [format 0x%.8X [expr $axi_bram_addr + 0x800 * $curr_ch]]]
  }
  
	set TEST_ENABLE_OFFSET 0
	set RATE_OFFSET        4
	set LPM_MODE_OFFSET    8
	set UPLOAD_RDY_OFFSET  12
  
	set HORZ_STEP_OFFSET   16
	set DWIDTH_OFFSET      18
  
	set VERT_STEP_OFFSET   20
	set MAX_PRESCALE_OFFSET 22
  
	set ES_DATA_OFFSET     24
	set NUM_PIXELS 506
	
	# Stop processor to access processor
	#stop
	foreach curr_ch [array names test_ch] {
		if {$test_ch($curr_ch) == 1} {
			puts "Writing settings to channel $curr_ch ..."
			
			set test_done($curr_ch) 0
			
			# Write settings into FPGA
			#es_host_write_mb $LANE_OFFSET($curr_ch) $MAX_PRESCALE_OFFSET $max_prescale($curr_ch) "h"
			es_host_write_mb $LANE_OFFSET($curr_ch) $HORZ_STEP_OFFSET   [expr $horz_step($curr_ch) + 0x10000 * $data_width($curr_ch)]
			#es_host_write_mb $LANE_OFFSET($curr_ch) $DWIDTH_OFFSET       $data_width($curr_ch) "h"
			es_host_write_mb $LANE_OFFSET($curr_ch) $VERT_STEP_OFFSET   [expr $vert_step($curr_ch) + 0x10000 * $max_prescale($curr_ch)] 
			es_host_write_mb $LANE_OFFSET($curr_ch) $LPM_MODE_OFFSET     $lpm_mode($curr_ch)
			es_host_write_mb $LANE_OFFSET($curr_ch) $RATE_OFFSET         $rate($curr_ch)
			
			# Start test
			es_host_write_mb $LANE_OFFSET($curr_ch) $TEST_ENABLE_OFFSET 0
			es_host_write_mb $LANE_OFFSET($curr_ch) $TEST_ENABLE_OFFSET 1
			
			# Write settings into output file; Overwrite if exists
			set dumpfile [open $out_file($curr_ch) w]
			puts $dumpfile "# Horz_step: $horz_step($curr_ch)"
			puts $dumpfile "# Vert_step: $vert_step($curr_ch)"
			puts $dumpfile "# LPM_mode: $lpm_mode($curr_ch)"
			puts $dumpfile "# Rate: $rate($curr_ch)"
			close $dumpfile
			
		} else {
			set test_done($curr_ch) 1
		}
	}

	
	set wait_time 10
	
	while {1} {
		# Poll status for each channel
		puts "Sleeping for $wait_time ms"
		after $wait_time
		set increase_wait 1
		foreach curr_ch [array names test_ch] {
			if {$test_done($curr_ch) == 0} {

        set curr_status_str [es_host_read_mb $LANE_OFFSET($curr_ch) $UPLOAD_RDY_OFFSET 1]
				set curr_status [lindex [split $curr_status_str ": "] 4]
				if {$curr_status != 0} {
					puts "Channel $curr_ch: Uploading data"
					# Append data to previously created file
					set dumpfile [open $out_file($curr_ch) a]
					set es_data [es_host_read_mb $LANE_OFFSET($curr_ch) $ES_DATA_OFFSET $NUM_PIXELS]
					puts $dumpfile $es_data
					close $dumpfile
					if {$curr_status > 1} {
						puts "SCAN IS DONE"
						# Test is done
						set test_done($curr_ch) 1
						# Reset FPGA start bit
						es_host_write_mb $LANE_OFFSET($curr_ch) $TEST_ENABLE_OFFSET 0
					}
					# Reset status bit
					es_host_write_mb $LANE_OFFSET($curr_ch) $UPLOAD_RDY_OFFSET 0
					
					# Don't increase wait time if were able to upload from any channel
					set increase_wait 0

				}
			}
		}
		
		if {$increase_wait == 1} {
			# If all channels were not ready to upload, increase wait time
			set wait_time [expr $wait_time + 50]
		}
		
		set all_ch_done 1
		foreach curr_ch [array names test_ch] {
			if {$test_done($curr_ch) == 0} {
				set all_ch_done 0
			}
		}
		if {$all_ch_done == 1} {
			break;
		}
		
	}
	
	puts "ALL TEST COMPLETED!"
	return 1

}

# #####################################################################################################
# Function: process_es_dump
# Description: Given raw dump file, extracts data into given arrays.
# 
# Parameters:
# 	in_file: name of raw dump file
# 	curr_ch: name of current lane
# 	horz_arr_a: reference to array to be populated with horizontal offset values
# 	vert_arr_a: reference to array to be populated with vertical offset values
# 	utsign_arr_a: reference to array to be populated with ut-sign values
# 	sample_count_arr_a: reference to array to be populated with sample count values
# 	error_count_arr_a: reference to array to be populated with error count values
# 	prescale_arr_a: reference to array to be populated with prescale values
# 	data width: parallel data width
#
# Returns: none
# 
# #####################################################################################################
proc es_host_process_dump {in_file curr_ch horz_arr_a vert_arr_a utsign_arr_a sample_count_arr_a error_count_arr_a prescale_arr_a data_width} {
	
	upvar $horz_arr_a horz_arr
	upvar $vert_arr_a vert_arr
	upvar $utsign_arr_a utsign_arr
	upvar $sample_count_arr_a sample_count_arr
	upvar $error_count_arr_a error_count_arr
	upvar $prescale_arr_a prescale_arr
	
	set f_in [open $in_file r]
	
	# Start and end address for eye scan results section in the BRAM for each lane

	set start  [format 0x%.4X [expr { 0x800 * $curr_ch + 0x18 }]] 
	set end    [format 0x%.4X [expr { 0x800 * $curr_ch + 0x7FF }]]
		
	set count 0
	while {[gets $f_in line] >= 0} {
		if {$line != "" && [regexp {^#} $line] != 1} {
			
			# Remove space characters
			regsub -all " " $line "" line
			
			# Separate to address and value fields
			set fields [split $line ":"]
			# Full address
			set addr [lindex $fields 0] 
			# Remove base address
			set curr_offset [es_host_hex_to_dec [es_host_get_hex_char $addr 0 4]]
			set val [lindex $fields 1]
			
			# Parse only entries within a lane's address range.
			if {$curr_offset >= $start && $curr_offset <= $end} {
				# Each pixel occupies 2 words. First word contains error and sample counts. Second word contains horizontal, vertical offsets, ut sign and prescale info.
				set remainder [expr $count % 2]
				if {$remainder == 0} {
					# End of data scan indicated by both sample and error count equal to zero.
					if {[string compare $val "00000000"] == 0} {
						#Indicates last pixel
						break
					}
					# First word contains {16'Sample_count,16'Error_count}
					set error_count [es_host_hex_to_dec [es_host_get_hex_char $val 0 4]]
					set sample_count [es_host_hex_to_dec [es_host_get_hex_char $val 4 4]]
				} else {
					# Second word contains {8'{1'bUT Sign,7'bPrescale},8'Vert_offset,16'Horz_offset}
					set horz_offset [es_host_hex_to_dec [es_host_get_hex_char $val 0 4]]
					
					# Decode 2's complement
					if {$horz_offset > 32768} {
						set horz_offset [expr $horz_offset - 65536]
					}
					
					# Decode 2's complement
					set vert_offset [es_host_hex_to_dec [es_host_get_hex_char $val 4 2]]
					if {$vert_offset > 128} {
						set vert_offset [expr $vert_offset - 256]
					}
					
					# Separate ut-sign and prescale values, which are contained in the same byte
					set ut_sign_prescale [es_host_hex_to_dec [es_host_get_hex_char $val 6 2]]
					#UT sign is bit [7] or MSB
					if {$ut_sign_prescale >= 128} {
						set ut_sign 1
						set prescale [expr $ut_sign_prescale - 128]
					} else {
						set ut_sign 0
						set prescale $ut_sign_prescale
					}
					
					# Get total samples by multiplying sample count with data width and 2^(prescale + 1)
					# set sample_total [expr $sample_count * wide($data_width << ( 1+$prescale )) ]
					
					# Update stored variables
					set sample_count_arr($horz_offset,$vert_offset,$ut_sign) $sample_count
					set error_count_arr($horz_offset,$vert_offset,$ut_sign) $error_count
					set prescale_arr($horz_offset,$vert_offset,$ut_sign) $prescale
					
					# Record horizontal offset, vertical offset, and ut sign values found
					set horz_arr($horz_offset) 1
					set vert_arr($vert_offset) 1
					set utsign_arr($ut_sign) 1
				}
				set count [expr $count + 1]
			}
		}
	}
	close $f_in
}

# #####################################################################################################
# Function: es_host_gen_csv_viv
# Description: Given arrays containing eye scan data, generates csv file that can be opened in Vivado
#
# Parameters:
# 	csv_file: name of output csv file
# 	lpm_mode: equalizer mode 
# 	vert_step: vertical scan step size
# 	horz_arr_a: reference to array populated with horizontal offset values
# 	vert_arr_a: reference to array populated with vertical offset values
# 	utsign_arr_a: reference to array populated with ut-sign values
# 	sample_count_arr_a: reference to array populated with sample count values
# 	error_count_arr_a: reference to array populated with error count values
# 	prescale_arr_a: reference to array populated with prescale values
# 	data width: parallel data width
# 	rate: rate mode (e.g. full-rate, half-rate, etc)
#
# Returns: none
# #####################################################################################################
proc es_host_gen_csv_viv {csv_file lpm_mode vert_step horz_step horz_arr_a vert_arr_a utsign_arr_a sample_count_arr_a error_count_arr_a prescale_arr_a data_width rate start_time} {

	upvar $horz_arr_a horz_arr
	upvar $prescale_arr_a prescale_arr
	upvar $vert_arr_a vert_arr
	upvar $utsign_arr_a utsign_arr
	upvar $sample_count_arr_a sample_count_arr
	upvar $error_count_arr_a error_count_arr
	
	set f_csv [open $csv_file w]
	
	# Generate CSV Header iBERTplotter
	puts $f_csv "SW Version,2013.2.0"
	puts $f_csv "GT Type,7 Series GTX"
	puts $f_csv "Date and Time Started, $start_time"
  puts $f_csv "Date and Time Ended, [clock format [clock seconds] -format {%b. %d %Y %I:%M:%S %p}]"
  puts $f_csv "Scan Name,$csv_file"
  puts $f_csv "Settings,"
  #puts $f_csv "Open Area,3072"
  puts $f_csv "Open Area,N/A"
  puts $f_csv "Dwell,BER"
  puts $f_csv "Dwell BER,1e-$prescale_arr(0,0,0)"
  puts $f_csv "Dwell Time,0"
  puts $f_csv "Horizontal Increment,$vert_step"
  puts $f_csv "Horizontal Range,-0.500 UI to 0.500 UI"
  puts $f_csv "Vertical Increment,$vert_step"
  puts $f_csv "Vertical Range,100%"
  puts $f_csv "Scan Start"
  set first_line [lsort -integer [array names horz_arr]]
  #puts $first_line
  
  puts -nonewline $f_csv "2d statistical," 
  puts $f_csv [join $first_line ","]
	
	set ber 0
	set iter 0
	
	foreach curr_vert [lsort -decreasing -integer [array names vert_arr]] {
    set ber_list $curr_vert
		foreach curr_horz [lsort -integer [array names horz_arr]] {
			if {$lpm_mode == 1} {
				# In LPM mode, only process data with ut-sign of 0
				if {[info exists error_count_arr($curr_horz,$curr_vert,0)] == 1} {
					set curr_err0  $error_count_arr($curr_horz,$curr_vert,0)
					set curr_samp0 $sample_count_arr($curr_horz,$curr_vert,0)
					set curr_prescale0 $prescale_arr($curr_horz,$curr_vert,0)
          
					
					# Get total samples by multiplying sample count with data width and 2^(prescale + 1)
					set curr_tot_samp0 [expr wide($curr_samp0) * ($data_width << (1+$curr_prescale0) )]
					set ber [format "%.2E" [expr double($curr_err0)/double($curr_tot_samp0)]]
					
					# To limit BER floor, assume 1 as minimum number of errors.
					if {$ber == 0} {
						set ber [format "%.2E" [expr 1/double($curr_tot_samp0)]]
					}
          
          lappend ber_list $ber
					
				} else {
					puts $f_csv "Error: X:$curr_horz, Y:$curr_vert, UT:0 data point does not exist!"
				}
			} else {
				# 
				# In DFE mode, average BER for ut-sign 0 and 1
				if {[info exists error_count_arr($curr_horz,$curr_vert,0)] == 1 && [info exists error_count_arr($curr_horz,$curr_vert,1)] == 1} {
					#puts "horz = $curr_horz    vert = $curr_vert"
					set curr_err0  $error_count_arr($curr_horz,$curr_vert,0)
					set curr_samp0 $sample_count_arr($curr_horz,$curr_vert,0)
					set curr_prescale0 $prescale_arr($curr_horz,$curr_vert,0)
					
					# Get total samples by multiplying sample count with data width and 2^(prescale + 1)
					set curr_tot_samp0 [expr wide($curr_samp0) * ($data_width << (1+$curr_prescale0)) ]
					
					# Calculate BER for ut-sign of 0
					set ber0 [expr double($curr_err0)/double($curr_tot_samp0) ]
					
					set curr_err1  $error_count_arr($curr_horz,$curr_vert,1)
					set curr_samp1 $sample_count_arr($curr_horz,$curr_vert,1)
					set curr_prescale1 $prescale_arr($curr_horz,$curr_vert,1)
					
					# Get total samples by multiplying sample count with data width and 2^(prescale + 1)
					set curr_tot_samp1 [expr wide($curr_samp1) * ($data_width << (1+$curr_prescale1)) ]
					
					# Calculate BER for ut-sign of 1
					set ber1 [expr double($curr_err1)/double($curr_tot_samp1) ]
					
					#puts "$curr_err0,$curr_samp0,$curr_prescale0,$curr_tot_samp0"
					
					# Calculate final BER
					set ber [format "%.2E" [expr ($ber0 + $ber1)/2]]
					
					if {$ber == 0} {
						set ber [format "%.2E" [expr 1/(double($curr_tot_samp0) + double($curr_tot_samp1))]]
					}
          lappend ber_list $ber
				} else {
					puts $f_csv "Error: X:$curr_horz, Y:$curr_vert data points do not exist or incomplete (not both UT signs present)!"
				}
			}
			
			
			#puts $f_csv "$iter,NA,NA,NA,NA,$curr_vert,$curr_horz,NA,NA,NA,$ber"
			
			set iter [expr $iter + 1]

		}
    puts $f_csv [join $ber_list ","]
    #puts $ber_list
	}
	puts $f_csv "Scan End"
	close $f_csv
}

# #####################################################################################################
# Function: es_host_gen_csv
# Description: Given arrays containing eye scan data, generates csv file that can be opened in iBERTplotter
#
# Parameters:
# 	csv_file: name of output csv file
# 	lpm_mode: equalizer mode 
# 	vert_step: vertical scan step size
# 	horz_arr_a: reference to array populated with horizontal offset values
# 	vert_arr_a: reference to array populated with vertical offset values
# 	utsign_arr_a: reference to array populated with ut-sign values
# 	sample_count_arr_a: reference to array populated with sample count values
# 	error_count_arr_a: reference to array populated with error count values
# 	prescale_arr_a: reference to array populated with prescale values
# 	data width: parallel data width
# 	rate: rate mode (e.g. full-rate, half-rate, etc)
#
# Returns: none
# #####################################################################################################
proc es_host_gen_csv {csv_file lpm_mode vert_step horz_arr_a vert_arr_a utsign_arr_a sample_count_arr_a error_count_arr_a prescale_arr_a data_width rate} {
	upvar $horz_arr_a horz_arr
	upvar $prescale_arr_a prescale_arr
	upvar $vert_arr_a vert_arr
	upvar $utsign_arr_a utsign_arr
	upvar $sample_count_arr_a sample_count_arr
	upvar $error_count_arr_a error_count_arr
	
	set f_csv [open $csv_file w]
	
	# Generate CSV Header iBERTplotter
	puts $f_csv "gt type,"
	puts $f_csv "device,"
	puts $f_csv "sw version,"
	set samp_per_ui [expr (2 * $rate) + 1]
	puts $f_csv "samples per ui, $samp_per_ui"
	puts $f_csv "ui width,1"
	puts $f_csv "date,"
	puts $f_csv "time,"
	puts $f_csv "voltage interval,$vert_step"
	puts $f_csv "sweep test settings,RX Sampling Point,,,"
	puts $f_csv "sweep test settings,TX Diff Swing,,,"
	puts $f_csv "sweep test settings,TX Pre-Cursor,,,"
	puts $f_csv "sweep test settings,TX Post-Cursor,,,"
	puts $f_csv "=========================================="
	puts $f_csv "Iteration,Elapsed Time,TX Diff Swing,TX Pre-Cursor,TX Post-Cursor,Voltage,RX Sampling Point(tap),Link,ES_VERT_OFFSET,ES_HORZ_OFFSET,BER"
	
	set ber 0
	set iter 0
	
	foreach curr_vert [lsort -integer [array names vert_arr]] {
		foreach curr_horz [lsort -integer [array names horz_arr]] {
			if {$lpm_mode == 1} {
				# In LPM mode, only process data with ut-sign of 0
				if {[info exists error_count_arr($curr_horz,$curr_vert,0)] == 1} {
					set curr_err0  $error_count_arr($curr_horz,$curr_vert,0)
					set curr_samp0 $sample_count_arr($curr_horz,$curr_vert,0)
					set curr_prescale0 $prescale_arr($curr_horz,$curr_vert,0)
					
					# Get total samples by multiplying sample count with data width and 2^(prescale + 1)
					set curr_tot_samp0 [expr wide($curr_samp0) * ($data_width << (1+$curr_prescale0) )]
					set ber [format "%.2E" [expr double($curr_err0)/double($curr_tot_samp0)]]
					
					# To limit BER floor, assume 1 as minimum number of errors.
					if {$ber == 0} {
						set ber [format "%.2E" [expr 1/double($curr_tot_samp0)]]
					}
					
				} else {
					puts $f_csv "Error: X:$curr_horz, Y:$curr_vert, UT:0 data point does not exist!"
				}
			} else {
				# puts "here"
				# In DFE mode, average BER for ut-sign 0 and 1
				if {[info exists error_count_arr($curr_horz,$curr_vert,0)] == 1 && [info exists error_count_arr($curr_horz,$curr_vert,1)] == 1} {
					
					set curr_err0  $error_count_arr($curr_horz,$curr_vert,0)
					set curr_samp0 $sample_count_arr($curr_horz,$curr_vert,0)
					set curr_prescale0 $prescale_arr($curr_horz,$curr_vert,0)
					
					# Get total samples by multiplying sample count with data width and 2^(prescale + 1)
					set curr_tot_samp0 [expr wide($curr_samp0) * ($data_width << (1+$curr_prescale0)) ]
					
					# Calculate BER for ut-sign of 0
					set ber0 [expr double($curr_err0)/double($curr_tot_samp0) ]
					
					set curr_err1  $error_count_arr($curr_horz,$curr_vert,1)
					set curr_samp1 $sample_count_arr($curr_horz,$curr_vert,1)
					set curr_prescale1 $prescale_arr($curr_horz,$curr_vert,1)
					
					# Get total samples by multiplying sample count with data width and 2^(prescale + 1)
					set curr_tot_samp1 [expr wide($curr_samp1) * ($data_width << (1+$curr_prescale1)) ]
					
					# Calculate BER for ut-sign of 1
					set ber1 [expr double($curr_err1)/double($curr_tot_samp1) ]
					
					#puts "$curr_err0,$curr_samp0,$curr_prescale0,$curr_tot_samp0"
					
					# Calculate final BER
					set ber [format "%.2E" [expr ($ber0 + $ber1)/2]]
					
					if {$ber == 0} {
						set ber [format "%.2E" [expr 1/(double($curr_tot_samp0) + double($curr_tot_samp1))]]
					}

				} else {
					puts $f_csv "Error: X:$curr_horz, Y:$curr_vert data points do not exist or incomplete (not both UT signs present)!"
				}
			}
			
			
			puts $f_csv "$iter,NA,NA,NA,NA,$curr_vert,$curr_horz,NA,NA,NA,$ber"
			
			set iter [expr $iter + 1]

		}
	}
	
	close $f_csv
}


# #####################################################################################################
# Function: es_host_plot_ascii_eye
# Description: Given arrays containing eye scan data, generates a text file containing pass/fail ascii eye
#
# Parameters:
# 	f_out: file handle for output file
# 	lpm_mode: equalizer mode 
# 	horz_arr_a: reference to array populated with horizontal offset values
# 	vert_arr_a: reference to array populated with vertical offset values
# 	utsign_arr_a: reference to array populated with ut-sign values
# 	sample_count_arr_a: reference to array populated with sample count values
# 	error_count_arr_a: reference to array populated with error count values
#
# Returns: none
# #####################################################################################################
proc es_host_plot_ascii_eye {f_out lpm_mode horz_arr_a vert_arr_a utsign_arr_a sample_count_arr_a error_count_arr_a} {

	upvar $horz_arr_a horz_arr
	upvar $vert_arr_a vert_arr
	upvar $utsign_arr_a utsign_arr
	upvar $sample_count_arr_a sample_count_arr
	upvar $error_count_arr_a error_count_arr
	
	foreach curr_col [lsort -integer [array names vert_arr]] {
		foreach curr_row [lsort -integer [array names horz_arr]] {
			if {$lpm_mode == 1} {
				# In LPM mode, only process data with ut-sign of 0
				if {[info exists error_count_arr($curr_row,$curr_col,0)] == 1} {
					if {$error_count_arr($curr_row,$curr_col,0) == 0} {
						set curr_pixel " "
					} else {
						set curr_pixel "*"
					}
				} else {
					puts $f_out "Error: X:$curr_row, Y:$curr_col, UT:0 data point does not exist!"
				}
			} else {
				# In DFE mode, average BER for ut-sign 0 and 1
				if {[info exists error_count_arr($curr_row,$curr_col,0)] == 1 && [info exists error_count_arr($curr_row,$curr_col,1)] == 1} {
					if {$error_count_arr($curr_row,$curr_col,0) == 0 && $error_count_arr($curr_row,$curr_col,1) == 0} {
						set curr_pixel " "
					} else {
						set curr_pixel "*"
					}
				} else {
					puts $f_out "Error: X:$curr_row, Y:$curr_col data points do not exist or incomplete (not both UT signs present)!"
				}
			}
			puts -nonewline $f_out $curr_pixel
			puts -nonewline $curr_pixel

		}
		puts $f_out ""
		puts ""
	}
}

# #####################################################################################################
# Function: es_host_get_hex_char
# Description: Given a string of hex characters, extract number of hex characters indicated by "num_bits"
# starting at bit position indicated by "start_bit". Start bit of zero is LSB.
#
# Parameters:
# 	word: input string containing hex word
# 	start_bit: starting bit position
# 	num_bits: number of bits to return
#
# Returns: sub-string of hex characters
# #####################################################################################################
proc es_host_get_hex_char {word start_bit num_bits} {
	set len [string length $word]
	return [string range $word [expr $len - $start_bit - $num_bits] [expr $len - 1 - $start_bit]]
}

# #####################################################################################################
# Function: es_host_hex_to_dec
# Description: Converts hex to decimal

# Parameters:
# 	hex_val: string of hex characters

# Returns: decimal equivalent value
# #####################################################################################################
proc es_host_hex_to_dec {hex_val} {
	return [format %d 0x$hex_val]
}