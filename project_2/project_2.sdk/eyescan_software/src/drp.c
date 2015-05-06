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
#include "drp.h"
#include "xil_io.h"

u32 set_lane_offset (u8* lane_name) {
	u32 drp_offset = lane_name[0] * DRP_COMMON_OFFSET;
  
	return drp_offset;
}


u16 mask_drp_rddata (u16 value, u8 start_bit, u8 end_bit) {
	u8 left_shift = 15 - end_bit;
	u16 new_val = (value << left_shift) >> (start_bit + left_shift);

	return new_val;
}


u16 drp_write (drpModule* p_io_mod, s16 value, u8 attr_name, u8* lane_name, u8* block_name, u8* mode_name) {

	u32 addr = (drp_addr[attr_name] << 2) + set_lane_offset(lane_name);
	//Read
	u16 curr_value = Xil_In16( (p_io_mod->BaseAddress) + addr); //XIOModule_IoReadHalfword(p_io_mod, addr);
	//Modify
	value = ((curr_value & drp_mask[attr_name]) | (value << drp_start_bit[attr_name]));
	//Write
	Xil_Out16( (p_io_mod->BaseAddress) + addr , value);

	return Xil_In16( (p_io_mod->BaseAddress) + addr);

}

u16 drp_read  (drpModule* p_io_mod, u8 attr_name, u8* lane_name, u8* block_name, u8* mode_name){

	u32 addr = (drp_addr[attr_name] << 2) + set_lane_offset(lane_name);
	u16 val = Xil_In16( (p_io_mod->BaseAddress) + addr);

	if(attr_name == ES_PRESCALE){
		val = mask_drp_rddata (val, 11, 15);
	}

	return val;

}
