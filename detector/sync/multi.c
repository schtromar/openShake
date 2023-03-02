#include <stdio.h>
#include "pico/stdlib.h"
#include "pico/multicore.h"
#include "hardware/gpio.h"
#include "hardware/pio.h"
#include "hardware/irq.h"

#include "edgeDetector_sh.pio.h"
#include "edgeDetector_ccd.pio.h"

#define GPIO_ON  1
#define GPIO_OFF 0

#define LED_PIN 25

#define CCD_CLOCK_PIN 0
#define PULSE_PIN 1
#define SH_PIN 2


static uint64_t counter = 0;

static uint64_t firstPulse;
static uint64_t lastPulse;

static uint64_t firstPulse_data;
static uint64_t lastPulse_data;


static int beeps = 0;
static int boops = 0;

void commThread(){
	printf("Core 1 running...\n");
	while(true){
		uint msg = multicore_fifo_pop_blocking();
		printf("DT: %d\n", msg);
	}
}




void PIOInterrupt(){
	if(pio0_hw->irq & 1){
		pio0_hw->irq = 1;


		counter++;
		if(gpio_get(PULSE_PIN)){
			if(firstPulse == 0){
				firstPulse = counter;
			}else{
				lastPulse = counter;
			}
		}


/*
		beeps++;
		if(beeps>10000){
			printf("beep\n");
			beeps = 0;
		}
*/
	}else if(pio0_hw->irq & 2){
		pio0_hw->irq = 2;


//		multicore_fifo_push_blocking(firstPulse+((lastPulse-firstPulse)>>1));
		multicore_fifo_push_blocking(lastPulse);

		counter = 0;
		firstPulse = 0;
		lastPulse = 0;

/*
		boops++;
		if(boops>10000){
			printf("boop\n");
			boops = 0;
		}
*/
	}
}

void PIOInterrupt_sh(){
	if(pio0_hw->irq & 2){			//SH
		pio0_hw->irq = 2;
printf("boop\n");

		firstPulse_data = firstPulse;

//		multicore_fifo_push_blocking(firstPulse_data);		//TODO: better, sredina mogoče?
		multicore_fifo_push_blocking(counter);		//TODO: better, sredina mogoče?

//		counter = 0;
		firstPulse = 0;
		lastPulse = 0;

	}
}

void PIOInterrupt_ccd(){
	if(pio0_hw->irq & 1){		//CCD
		pio0_hw->irq = 1;
//printf("beep\n");
		if(gpio_get(PULSE_PIN)){
			if(firstPulse == 0){
				firstPulse = counter;
			}else{
				lastPulse = counter;
			}
		}

		counter++;
	}
}



int main(){
	stdio_init_all();
	sleep_ms(2500);
	printf("INIT...\n");

	printf("PINS...");
	gpio_init(LED_PIN);
	gpio_set_dir(LED_PIN, GPIO_OUT);

	gpio_init(SH_PIN);
	gpio_set_dir(SH_PIN, GPIO_IN);

	gpio_init(PULSE_PIN);
	gpio_set_dir(PULSE_PIN, GPIO_IN);

	printf("DONE\n");
	gpio_put(LED_PIN, GPIO_ON);


	printf("STARTING CORE 1...");

	multicore_launch_core1(commThread);
	sleep_ms(500);
	printf("TEST CORE 1...\n");
	multicore_fifo_push_blocking(1234);

	// Setup PIO
	printf("PIO...");
/*
	PIO pio_sh = pio0;
	uint offset_sh = pio_add_program(pio_sh, &risingEdge_sh_program);		//Load PIO program
	uint sm_sh = pio_claim_unused_sm(pio_sh, &risingEdge_sh_program);		//Find free PIO unit
//	risingEdgeInit_sh(pio_sh, sm_sh, offset_sh, SH_PIN);				//Start PIO program
	risingEdgeInit_sh(pio_sh, sm_sh, offset_sh, CCD_CLOCK_PIN);			//Start PIO program

	PIO pio_ccd = pio0;
	uint offset_ccd = pio_add_program(pio_ccd, &risingEdge_ccd_program);		//Load PIO program
	uint sm_ccd = pio_claim_unused_sm(pio_ccd, &risingEdge_ccd_program);		//Find free PIO unit
	risingEdgeInit_ccd(pio_ccd, sm_ccd, offset_ccd, CCD_CLOCK_PIN);			//Start PIO program

	irq_add_shared_handler(PIO0_IRQ_1, PIOInterrupt_sh, 0xfe);		//Add handler function for interrupt
	irq_set_enabled(PIO0_IRQ_1, true);					//Enable PIO0_IRQ_0 channel
	pio0_hw->inte0 = PIO_IRQ1_INTE_SM0_BITS;				//Enable bits 0 and 1 in pio0_hw.inte0

	irq_add_shared_handler(PIO1_IRQ_0, PIOInterrupt_ccd, 0xff);		//Add handler function for interrupt
	irq_set_enabled(PIO1_IRQ_0, true);					//Enable PIO0_IRQ_0 channel
	pio1_hw->inte0 = PIO_IRQ0_INTE_SM0_BITS;				//Enable bits 0 and 1 in pio0_hw.inte0
*/

	PIO pio = pio0;
	uint offset_sh = pio_add_program(pio, &risingEdge_sh_program);			//Load PIO program
	uint offset_ccd = pio_add_program(pio, &risingEdge_ccd_program);		//Load PIO program

	uint sm_sh = pio_claim_unused_sm(pio, &risingEdge_sh_program);			//Find free PIO unit
	uint sm_ccd = pio_claim_unused_sm(pio, &risingEdge_ccd_program);		//Find free PIO unit

	risingEdgeInit_sh(pio, sm_sh, offset_sh, CCD_CLOCK_PIN);			//Start PIO program
	risingEdgeInit_ccd(pio, sm_ccd, offset_ccd, CCD_CLOCK_PIN);			//Start PIO program

	irq_add_shared_handler(PIO0_IRQ_0, PIOInterrupt, 0xff);				//Add handler function for interrupt
	irq_set_enabled(PIO0_IRQ_0, true);						//Enable PIO0_IRQ_0 channel
	irq_set_enabled(PIO0_IRQ_1, true);						//Enable PIO0_IRQ_0 channel
	pio0_hw->inte0 = PIO_IRQ0_INTE_SM0_BITS | PIO_IRQ0_INTE_SM1_BITS;




	printf("DONE\n");

	sleep_ms(1000);
	gpio_put(LED_PIN, GPIO_OFF);


	printf("CLEARING PIO INTERRUPTS...");
/*
	pio_interrupt_clear(pio_sh, 0);
	pio_interrupt_clear(pio_ccd, 0);
*/
	pio_interrupt_clear(pio, 0);
	pio_interrupt_clear(pio, 1);
	printf("DONE\n");

	uint32_t interruptStatus;
	printf("READY!\n");
	while(true){		// Trap. Only wait for interrupts now.

	}

}

