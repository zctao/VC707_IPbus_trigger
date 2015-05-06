/*
 * Copyright (c) 2009 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */


#include "xparameters.h"
#include "es_controller.h"
#include "es_simple_eye_acq.h"
#include "drp.h"
#include "xil_io.h"
#include "platform.h"

/*
 * Function: init_eye_scan
 * Description: Initialize eye_scan data struct members and write related attributes through DRP
 *
 * Parameters:
 * p_lane: pointer to eye scan data structure
 * p_io_mod: pointer to MCS IO module data structure
 * lane_offset: starting address for the lane's eye scan data storage in BRAM
 *
 * Returns: None
 */
void init_eye_scan (eye_scan* p_lane, u8 lane_name, drpModule* p_io_mod, u32 lane_offset)
{
	u16 data_width;
	u8 i;

	//Load scan parameters from BRAM
	p_lane->lpm_mode        = Xil_In32( lane_offset + LPM_MODE_OFFSET);
	p_lane->horz_step_size  = Xil_In16( lane_offset + HORZ_STEP_OFFSET);
	p_lane->max_horz_offset = Xil_In32( lane_offset + RATE_OFFSET);
	p_lane->vert_step_size  = Xil_In16( lane_offset + VERT_STEP_OFFSET);
	p_lane->max_prescale    = Xil_In16( lane_offset + MAX_PRESCALE_OFFSET);
	data_width              = Xil_In16( lane_offset + DWIDTH_OFFSET);

	p_lane->p_upload_rdy    = lane_offset + UPLOAD_RDY_OFFSET;//Initialize pointer with BRAM address location for upload ready
	Xil_Out32( p_lane->p_upload_rdy, 0 );

	//Initialize other struct members to default values
	p_lane->data_ready = 0;
	p_lane->state = RESET_STATE;
	p_lane->error_count = 0;
	p_lane->sample_count = 0;

	p_lane->horz_offset = 0;
	p_lane->vert_offset = 0;
	p_lane->ut_sign = 0;
	p_lane->pixel_count = 0;

	p_lane->lane_name[0] = lane_name;
	p_lane->block_name[0] = '0';
	p_lane->mode_name[0] = '0';

	p_lane->prescale = 0;

	//Write ES_ERRDET_EN, ES_EYESCAN_EN attributes to enable eye scan
	drp_write(p_io_mod, 0x1, ES_EYESCAN_EN, &lane_name, 0, 0);
	drp_write(p_io_mod, 0x1, ES_PMA_RSV2, &lane_name, 0, 0);
	drp_write(p_io_mod, 0x1, ES_ERRDET_EN, &lane_name, 0, 0);

	//Write ES_SDATA_MASK0-1 attribute based on parallel data width
	switch (data_width)
		{
		  case 40: {
			  drp_write(p_io_mod, 0x0000, ES_SDATA_MASK0, &lane_name, 0, 0);
			  drp_write(p_io_mod, 0x0000, ES_SDATA_MASK1, &lane_name, 0, 0);}
			  break;
		  case 32: {
			  drp_write(p_io_mod, 0x00FF, ES_SDATA_MASK0, &lane_name, 0, 0);
			  drp_write(p_io_mod, 0x0000, ES_SDATA_MASK1, &lane_name, 0, 0);}
			  break;
		  case 20: {
			  drp_write(p_io_mod, 0xFFFF, ES_SDATA_MASK0, &lane_name, 0, 0);
			  drp_write(p_io_mod, 0x000F, ES_SDATA_MASK1, &lane_name, 0, 0);}
			  break;
		  case 16: {
			  drp_write(p_io_mod, 0xFFFF, ES_SDATA_MASK0, &lane_name, 0, 0);
			  drp_write(p_io_mod, 0x00FF, ES_SDATA_MASK1, &lane_name, 0, 0);}
			  break;
		  default:{
			  drp_write(p_io_mod, 0xFFFF, ES_SDATA_MASK0, &lane_name, 0, 0);
			  drp_write(p_io_mod, 0xFFFF, ES_SDATA_MASK1, &lane_name, 0, 0);}
		      break;
		}

	//Write SDATA_MASK2-4 attributes.  Values are same for all data widths (16, 20,32,40)
	drp_write(p_io_mod, 0xFF00, ES_SDATA_MASK2, &lane_name, 0, 0);
	for(i=ES_SDATA_MASK3; i <= ES_SDATA_MASK4; i++){
			drp_write(p_io_mod, 0xFFFF, i, &lane_name, 0, 0);
	}

	//Write ES_PRESCALE attribute to 0
	drp_write(p_io_mod, 0x0000, ES_PRESCALE, &lane_name, 0, 0);

	//Write ES_QUAL_MASK attribute to all 1's
	for(i = ES_QUAL_MASK0; i <= ES_QUAL_MASK4; i++){
		drp_write(p_io_mod, 0xFFFF, i, &lane_name, 0, 0);
	}

}

/*
 * Function: write_es_data
 * Description: Writes eye scan results to data storage BRAM
 *
 * Parameters:
 * p_lane: pointer to eye scan data structure
 * p_io_mod: pointer to MCS IO module data structure
 * lane_offset: starting address for a given lane's eye-scan data storage in BRAM
 *
 * Returns: None
 */
void write_es_data (eye_scan* p_lane, drpModule* p_io_mod, u32 lane_offset) {
	u8 temp = 0;

	/////////////////////////////////////////////////////////////////////////////
	//Each pixel occupies two words
	/////////////////////////////////////////////////////////////////////////////
	//First word contains error and sample counts.
	/////////////////////////////////////////////////////////////////////////////
	//Write error count into 1st & 2nd bytes
	Xil_Out16( lane_offset + ES_DATA_OFFSET + ( 8 * p_lane->pixel_count ), p_lane->error_count );
	//Write sample count into 3rd & 4th bytes
	Xil_Out16( lane_offset + ES_DATA_OFFSET + ( 8 * p_lane->pixel_count ) + 2, p_lane->sample_count );

	/////////////////////////////////////////////////////////////////////////////
	//Second word contains horizontal offset, vertical offset, ut-sign, prescale.
	/////////////////////////////////////////////////////////////////////////////
	//Write horz offset into 1st & 2nd bytes
	Xil_Out16( lane_offset + ES_DATA_OFFSET + ( 8 * p_lane->pixel_count + 4), p_lane->horz_offset );
	//Write vert offset into 3rd byte
	Xil_Out16( lane_offset + ES_DATA_OFFSET + ( 8 * p_lane->pixel_count + 4) + 2, p_lane->vert_offset );
	//Write ut sign and prescale into 4th byte
	if(p_lane->ut_sign == 1) {
		temp = 128; //ut_sign occupies bit [7]. Prescale occupies bits [4:0]
	}
	temp += p_lane->prescale;
	Xil_Out8( lane_offset + ES_DATA_OFFSET + ( 8 * p_lane->pixel_count + 4) + 3, temp);


}

int main(void)
{
	//MCS IO Bus data structure
	init_platform();
	drpModule io_mod;

    //Eye scan data structure
    eye_scan eye_scan_lanes[NUM_LANES];
    u8 curr_lane;

    u32 lane_offset[NUM_LANES]; //LANE*_OFFSET stores starting address for each lane within Data Storage BRAM
    u8 lane_names[NUM_LANES];//

    u8 test_enable[NUM_LANES];  //Array to keep track of which lanes are being scanned

    //Initialization after startup or reset
    for(curr_lane=0;curr_lane < NUM_LANES;curr_lane++){
    	test_enable[curr_lane] = FALSE;
    	lane_names[curr_lane] = curr_lane;
    	lane_offset[curr_lane] = DATA_STORE_OFFSET + DATA_LANE_OFFSET * curr_lane;//Store starting address of BRAM where eye scan data are stored
        eye_scan_lanes[curr_lane].state = WAIT_STATE;//Initialize each lane's state to WAIT_STATE
    }
    io_mod.BaseAddress = XPAR_DRP_BRIDGE_HIER_DRP_BRIDGE_0_BASEADDR;

    //Main Loop
    while (1)
    {
    	for(curr_lane=0; curr_lane<NUM_LANES ;curr_lane++){
    		//Check if PC has set the current lane to be scanned
    		if(Xil_In32( lane_offset[curr_lane] + TEST_ENABLE_OFFSET) == 1){
    			//Start a new scan if it's not currently running
    			if(test_enable[curr_lane] == FALSE) {
    				init_eye_scan(&eye_scan_lanes[curr_lane], lane_names[curr_lane], &io_mod, lane_offset[curr_lane]);//Initialize scan parameters
    				test_enable[curr_lane] = TRUE;
    			}

    			//Call es_simple_eye_acq if data storage is not full and state is not wait (WAIT_STATE is entered when scan is done)
    			if(Xil_In32( eye_scan_lanes[curr_lane].p_upload_rdy) == 0 && eye_scan_lanes[curr_lane].state != WAIT_STATE){
    				es_simple_eye_acq(&eye_scan_lanes[curr_lane], &io_mod);

    				if(eye_scan_lanes[curr_lane].data_ready == 1) {//Write data to BRAM
        				write_es_data (&eye_scan_lanes[curr_lane], &io_mod, lane_offset[curr_lane]);

    					eye_scan_lanes[curr_lane].data_ready = 0;
    					eye_scan_lanes[curr_lane].pixel_count++;

    					if(eye_scan_lanes[curr_lane].pixel_count == MAX_PIXEL_COUNT) {//Check if data storage is full
    						Xil_Out32( eye_scan_lanes[curr_lane].p_upload_rdy, 1 );//Indicate to PC that BRAM is full and data should be uploaded
        					eye_scan_lanes[curr_lane].pixel_count = 0;
        				}

    				}
    				if(eye_scan_lanes[curr_lane].state == WAIT_STATE) {//Check if eye scan is complete.
    					Xil_Out32( lane_offset[curr_lane] + ES_DATA_OFFSET + ( 8 * eye_scan_lanes[curr_lane].pixel_count ), 0x00000000 ); //Write all zero's to indicate last data point in BRAM
    					Xil_Out32( eye_scan_lanes[curr_lane].p_upload_rdy, 2 );//Indicate to PC that scan is done and data should be uploaded
    					eye_scan_lanes[curr_lane].pixel_count = 0;
    				}
    			}
    		}
    		else { //PC has not enabled scan for the lane
    			eye_scan_lanes[curr_lane].state = WAIT_STATE;
    			test_enable[curr_lane] = FALSE;
    		}
    	}
    }
    return 0;
}
