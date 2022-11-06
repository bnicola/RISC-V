/*******************************************************************************
 * (c) Copyright 2016-2017 Microsemi SoC Products Group. All rights reserved.
 *
 * This simple example demonstrates how to use the CoreUARTapb driver and
 * CoreGPIO driver. This example application prints Hello World! on Serial
 * Terminal program and blinks LEDs on PolarFire Evaluation Kit.
 *
 */
#include "miv_rv32_hal.h"
#include "core_uart_apb.h"
#include "core_gpio.h"
#include "hw_platform.h"
#include "hw_reg_access.h"

#if 0

#define BUFFER_A_SIZE   512

/* Manufacture and device IDs for Micron MT25QL01GBBB SPI Flash. */
#define FLASH_MANUFACTURER_ID   (uint8_t)0x20
#define FLASH_DEVICE_ID         (uint8_t)0xBB

/*
 * Static global variables
 */
static uint8_t g_flash_wr_buf[BUFFER_A_SIZE];
static uint8_t g_flash_rd_buf[BUFFER_A_SIZE];

/* Local Function. */
static uint8_t verify_write(uint8_t* write_buff, uint8_t* read_buff, uint16_t size);

/***************************************************************************//**
 * Read the date from SPI FLASH and compare the same with write buffer.
 */
static uint8_t verify_write(uint8_t* write_buff, uint8_t* read_buff, uint16_t size)
{
    uint8_t error = 0;
    uint16_t index = 0;

    while(size != 0)
    {
        if(write_buff[index] != read_buff[index])
        {
            error = 1;
            break;
        }
        index++;
        size--;
    }

    return error;
}

#endif


/*
 * Delay loop down counter load value.
 */
#define DELAY_LOAD_VALUE     0x00080000


/******************************************************************************
 * Instruction message. This message will be transmitted over the UART to
 * HyperTerminal when the program starts.
 *****************************************************************************/

uint8_t testmsg[] = {"\r\n\r\nHello World!\0"};

/*-----------------------------------------------------------------------------
 * UART instance data.
 */
UART_instance_t g_uart;

/*-----------------------------------------------------------------------------
 * GPIO instance data.
 */
gpio_instance_t g_gpio_out;


/*-----------------------------------------------------------------------------
 * main
 */
int main()
{
    volatile int32_t delay_count = 0;

#if 1
    /**************************************************************************
     * Initialize the CoreGPIO driver with the base address of the CoreGPIO
     * instance to use and the initial state of the outputs.
     *************************************************************************/
    GPIO_init(&g_gpio_out, COREGPIO_OUT_BASE_ADDR, GPIO_APB_32_BITS_BUS);

    /**************************************************************************
     * Configure the GPIOs.
     *************************************************************************/
//    GPIO_config( &g_gpio_out, GPIO_0, GPIO_OUTPUT_MODE );
//    GPIO_config( &g_gpio_out, GPIO_1, GPIO_OUTPUT_MODE );
//    GPIO_config( &g_gpio_out, GPIO_2, GPIO_OUTPUT_MODE );
//    GPIO_config( &g_gpio_out, GPIO_3, GPIO_OUTPUT_MODE );

    /**************************************************************************
     * Set the GPIO outputs.
     *************************************************************************/
    GPIO_set_output( &g_gpio_out, GPIO_0,1 );
    GPIO_set_output( &g_gpio_out, GPIO_1,0 );
    GPIO_set_output( &g_gpio_out, GPIO_2,1 );
    GPIO_set_output( &g_gpio_out, GPIO_3,0 );


    /**************************************************************************
     * Initialize CoreUARTapb with its base address, baud value, and line
     * configuration.
     *************************************************************************/
    UART_init(&g_uart,
              COREUARTAPB0_BASE_ADDR,
              BAUD_VALUE_115200,
              (DATA_8_BITS | NO_PARITY));

    /**************************************************************************
     * Send the instructions message.
     *************************************************************************/
    UART_polled_tx_string(&g_uart, (const uint8_t *)&testmsg);

#endif
#if 1
    /*
     * Set initial delay used to blink the LED.
     */
    delay_count = DELAY_LOAD_VALUE;

    /*
     * Infinite loop.
     */
    for(;;)
    {
        uint32_t gpio_pattern;
        /*
         * Decrement delay counter.
         */
        --delay_count;

        /*
         * Check if delay expired.
         */
        if ( delay_count <= 0 )
        {
            /*
             * Reload delay counter.
             */
            delay_count = DELAY_LOAD_VALUE;

            /*
             * Toggle GPIO output pattern by doing an exclusive OR of all
             * pattern bits with ones.
             */
            gpio_pattern = GPIO_get_outputs( &g_gpio_out );
            gpio_pattern ^= 0x0000000F;
            GPIO_set_outputs( &g_gpio_out, gpio_pattern );
        }
    }

#endif

    return 0;

}

