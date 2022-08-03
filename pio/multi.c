#include <stdio.h>
#include "pico/stdlib.h"
#include "pico/multicore.h"
#include "hardware/gpio.h"
#include "hardware/pio.h"
#include "hardware/irq.h"

#include "edgeDetector.pio.h"

#define GPIO_ON  1
#define GPIO_OFF 0

#define LED_PIN 25

#define SH_PIN 9
//15
#define PULSE_PIN 13
//16


static uint count = 5555;




void commThread(){
	printf("Core 1 running...\n");
	while(true){
		uint msg = multicore_fifo_pop_blocking();
		printf("DT: %d\n", msg);
	}
}



void risingEdgeInterrupt(){
	if(pio0_hw->irq & 1){
		pio0_hw->irq = 1;
		count = 0;
//		gpio_put(LED_PIN, GPIO_ON);
	}else if(pio0_hw->irq & 2){
		pio0_hw->irq = 2;
//		gpio_put(LED_PIN, GPIO_OFF);
//		uint data = count;
//		multicore_fifo_push_blocking(data);
		multicore_fifo_push_blocking(count);
		count = 0;

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


//	gpio_set_irq_enabled_with_callback(CLOCK_PIN, GPIO_IRQ_EDGE_RISE, true, &highCallback);

	printf("PIO...");
	PIO pio = pio0;
	uint offset = pio_add_program(pio, &risingEdge_program);		//Load PIO program
	uint sm = pio_claim_unused_sm(pio, &risingEdge_program);		//Find free PIO unit
	risingEdgeInit(pio, sm, offset, SH_PIN, PULSE_PIN);			//Start PIO program

//	irq_add_shared_handler(PIO0_IRQ_0, risingEdgeInterrupt, PICO_SHARED_IRQ_HANDLER_DEFAULT_ORDER_PRIORITY);	//Add handler function for interrupt
	irq_add_shared_handler(PIO0_IRQ_0, risingEdgeInterrupt, 0xff);	//Add handler function for interrupt
	irq_set_enabled(PIO0_IRQ_0, true);										//Enable PIO0_IRQ_0 channel
	pio0_hw->inte0 = PIO_IRQ0_INTE_SM0_BITS | PIO_IRQ0_INTE_SM1_BITS;						//Enable bits 0 and 1 in pio0_hw.inte0
	printf("DONE\n");

	sleep_ms(1000);
	gpio_put(LED_PIN, GPIO_OFF);


	printf("CLEARING PIO INTERRUPTS...");
	pio_interrupt_clear(pio, 0);
	pio_interrupt_clear(pio, 1);
	printf("DONE\n");

	uint32_t interruptStatus;

	printf("READY!\n");
	while(true){
		interruptStatus = save_and_disable_interrupts();
		count++;
		restore_interrupts(interruptStatus);

		sleep_us(1);
//		__asm volatile ("nop":);
//		asmSleep();

	}





/*
	while(1)
	{
		uint32_t command = multicore_fifo_pop_blocking();
		gpio_put(LED_PIN, command);
	}
*/
}

