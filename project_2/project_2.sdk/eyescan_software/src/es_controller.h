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
#include "xil_types.h"
#include "xparameters.h"
#include "drp.h"

#define MAX_PIXEL_COUNT    253
#define NUM_LANES          1


#define WAIT_STATE         0
#define RESET_STATE        16

#define LPM_MODE 0
#define DFE_MODE 1

//Address offset definitions
#define DATA_STORE_OFFSET XPAR_BRAM_0_BASEADDR //Starting address of data storage BRAM wrt DRP Bridges, look at Address Map
#define DATA_LANE_OFFSET  0x0800

//Following are address offset's for various parameters within a lane's data storage (see Table 3 in application note)
#define TEST_ENABLE_OFFSET 0
#define RATE_OFFSET        4
#define LPM_MODE_OFFSET    8
#define UPLOAD_RDY_OFFSET  12
#define HORZ_STEP_OFFSET   16
#define DWIDTH_OFFSET      18
#define VERT_STEP_OFFSET   20
#define MAX_PRESCALE_OFFSET 22
#define ES_DATA_OFFSET     24  //Starting address for eye scan results storage


typedef struct {
	//Scan parameters defined by user:
	u8  lpm_mode;			//Equalizer mode: 1 for LPM. 0 for DFE
	u8  horz_step_size;		//Horizontal scan step size
	u8  vert_step_size;		//Vertical scan step size
	u8  max_prescale;		//Maximum prescale value (for dynamic prescaling)
	u16 max_horz_offset;	//Maximum horizontal offset value. Depends on rate mode (e.g. full, half, etc)

	//Eye scan data:
	u16 error_count;		//Error count for current pixel/eye location
	u16 sample_count;		//Sample count for current pixel/eye location
	s16 horz_offset;		//Horizontal offset for current pixel
	s16 vert_offset;		//Vertical offset for current pixel
	s16 ut_sign;			//UT sign for current pixel
	u8  prescale;			//Prescale for current pixel

	//Status indicators:
	u32 p_upload_rdy;		//Flag to indicate PC should upload data from BRAM
	u8  data_ready;			//Flag to indicate current pixel is complete
	u16 state;				//State of es_simple_eye_acq
	u16 pixel_count;		//Count of number of pixels currently stored in the BRAM

	//Names:
	u8  lane_name[6];		//Lane name string
	u8  block_name[7];		//Block name string (placeholder only)
	u8  mode_name[9];		//Mode name string (placeholder only)
} eye_scan;

void write_es_data (eye_scan* p_lane, drpModule* p_io_mod, u32 lane_offset);
void init_eye_scan (eye_scan* p_lane, u8 lane_name, drpModule* p_io_mod, u32 lane_offset);
