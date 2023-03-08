// -------------------------------------------------- //
// This file is autogenerated by pioasm; do not edit! //
// -------------------------------------------------- //

#pragma once

#if !PICO_NO_HARDWARE
#include "hardware/pio.h"
#endif

// -------------- //
// risingEdge_ccd //
// -------------- //

#define risingEdge_ccd_wrap_target 0
#define risingEdge_ccd_wrap 2

static const uint16_t risingEdge_ccd_program_instructions[] = {
            //     .wrap_target
    0x2020, //  0: wait   0 pin, 0                   
    0x20a0, //  1: wait   1 pin, 0                   
    0xc020, //  2: irq    wait 0                     
            //     .wrap
};

#if !PICO_NO_HARDWARE
static const struct pio_program risingEdge_ccd_program = {
    .instructions = risingEdge_ccd_program_instructions,
    .length = 3,
    .origin = -1,
};

static inline pio_sm_config risingEdge_ccd_program_get_default_config(uint offset) {
    pio_sm_config c = pio_get_default_sm_config();
    sm_config_set_wrap(&c, offset + risingEdge_ccd_wrap_target, offset + risingEdge_ccd_wrap);
    return c;
}

	static inline void risingEdgeInit_ccd(PIO pio, uint sm, uint offset, uint clock_pin){
		pio_sm_config c = risingEdge_ccd_program_get_default_config(offset);
		sm_config_set_in_pins(&c, clock_pin);					//Set base IN pin
		pio_sm_set_consecutive_pindirs(pio, sm, clock_pin, 1, false);		//Set direction of 1 pin to IN
		pio_gpio_init(pio, clock_pin);						//Connect GPIO to PIO block
		pio_sm_init(pio, sm, offset, &c);					//Load config and jump to start of program
		pio_sm_set_enabled(pio, sm, true);					//Start PIO block
	}

#endif
