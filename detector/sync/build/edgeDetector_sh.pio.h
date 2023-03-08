// -------------------------------------------------- //
// This file is autogenerated by pioasm; do not edit! //
// -------------------------------------------------- //

#pragma once

#if !PICO_NO_HARDWARE
#include "hardware/pio.h"
#endif

// ------------- //
// risingEdge_sh //
// ------------- //

#define risingEdge_sh_wrap_target 0
#define risingEdge_sh_wrap 2

static const uint16_t risingEdge_sh_program_instructions[] = {
            //     .wrap_target
    0x2022, //  0: wait   0 pin, 2                   
    0x20a2, //  1: wait   1 pin, 2                   
    0xc021, //  2: irq    wait 1                     
            //     .wrap
};

#if !PICO_NO_HARDWARE
static const struct pio_program risingEdge_sh_program = {
    .instructions = risingEdge_sh_program_instructions,
    .length = 3,
    .origin = -1,
};

static inline pio_sm_config risingEdge_sh_program_get_default_config(uint offset) {
    pio_sm_config c = pio_get_default_sm_config();
    sm_config_set_wrap(&c, offset + risingEdge_sh_wrap_target, offset + risingEdge_sh_wrap);
    return c;
}

	static inline void risingEdgeInit_sh(PIO pio, uint sm, uint offset, uint clock_pin){
		pio_sm_config c = risingEdge_sh_program_get_default_config(offset);
		sm_config_set_in_pins(&c, clock_pin);					//Set base IN pin
		pio_sm_set_consecutive_pindirs(pio, sm, clock_pin, 1, false);		//Set direction of 1 pin to IN
		pio_gpio_init(pio, clock_pin);						//Connect GPIO to PIO block
		pio_sm_init(pio, sm, offset, &c);					//Load config and jump to start of program
		pio_sm_set_enabled(pio, sm, true);					//Start PIO block
	}

#endif
