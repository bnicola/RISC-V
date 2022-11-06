/*
 * Volkh EMMC Demo
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include "string.h"
#include <time.h>
#include "CMSIS/system_m2sxxx.h"
#include "drivers/mss_uart/mss_uart.h"
#include "drivers/mss_gpio/mss_gpio.h"
#include "main.h"
#include "drivers/mss_timer/mss_timer.h"
#include "drivers_config/sys_config/sys_config_mss_clocks.h"


static uint32_t ten_ms_sys_tick = 0;
void Init_data_buf(uint32_t * data_buf);
static uint32_t GetTickCount(void);
uint8_t multi_write(uint32_t sector, uint32_t pattern);

mmc_instance_t g_mmc1;
mmc_params_t g_mmc1_param;

void Initialise()
{

    // MSSUART0 Init: UART to interface with Master Perun
    MSS_UART_init(&g_mss_uart0, MSS_UART_115200_BAUD, MSS_UART_DATA_8_BITS |MSS_UART_NO_PARITY | MSS_UART_ONE_STOP_BIT);
    MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Test Project Init\n");


    //GPIO Init
    MSS_GPIO_config(EMMC1_PWR_EN, MSS_GPIO_OUTPUT_MODE);
    MSS_GPIO_config(EMMC2_PWR_EN, MSS_GPIO_OUTPUT_MODE);
    MSS_GPIO_config(EMMC1_RST, MSS_GPIO_OUTPUT_MODE);
    MSS_GPIO_config(EMMC2_RST, MSS_GPIO_OUTPUT_MODE);
    MSS_GPIO_config(MUX, MSS_GPIO_OUTPUT_MODE);
    //GPIO Interrupt for CoreMMC
    MSS_GPIO_config(INT, MSS_GPIO_INPUT_MODE | MSS_GPIO_IRQ_EDGE_POSITIVE);

    MSS_GPIO_init();
    MSS_GPIO_set_output(EMMC1_PWR_EN, 0);
    MSS_GPIO_set_output(EMMC2_PWR_EN, 0);
    MSS_GPIO_set_output(EMMC1_RST, 0);
    MSS_GPIO_set_output(EMMC2_RST, 0);
    MSS_GPIO_set_output(MUX, 0);

    /*-------------------------------------------------------------------------
     * Initialize the system tick for 10mS operation or 1 tick every 100th of
     * a second and also make sure it is lower priority than the CoreMMC IRQs.
    */
    NVIC_SetPriority(SysTick_IRQn, 0xFFu);     /* Lowest possible priority */
    SysTick_Config(MSS_SYS_M3_CLK_FREQ / 100);

}


/*==============================================================================
 * main() function.
 */
int main()
{

    uint8_t cmd_complete = 0;
    uint8_t pos = 0;
    uint8_t rx_buf[50];
    uint8_t cmd_buf[50]="\0";
    uint8_t rx_size = 0;
    uint8_t delay;

    uint32_t data_buf[128];
    uint32_t read_buf[128] = {0};

    mmc_transfer_status_t resp_reg;

    Initialise();
    Init_data_buf(data_buf);

    g_mmc1_param.clk_rate_div = 176;
    g_mmc1_param.init_clk_rate_div = 176;
    g_mmc1_param.data_timeout = 0x3FFFFFFF;

    while(1)
    {
        // Finish any TX in progress
        while (!(MSS_UART_TEMT & MSS_UART_get_tx_status(&g_mss_uart0))) {}

        while ( cmd_complete  == 0)
        {
            rx_size = MSS_UART_get_rx(&g_mss_uart0, rx_buf, 1);
            if (rx_size)
            {
                cmd_buf[pos] = rx_buf[0];
                pos = pos + 1;
                if (rx_buf[0] == '\n')
                {
                    cmd_complete = 1;
                    cmd_buf[pos-1] = '\0';
                    pos = 0;
                }
            }
        }
        cmd_complete = 0;


        // Process Command
        if (strcmp(cmd_buf, "EMMC ON") == 0) {
            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Power ON\n");
            MSS_GPIO_set_output(EMMC1_PWR_EN, 1);
        }
        else if (strcmp(cmd_buf, "EMMC OFF") == 0) {
            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC1 Power OFF\n");
            MSS_GPIO_set_output(EMMC1_PWR_EN, 0);
        }
//        else if (strcmp(cmd_buf, "EMMC2 ON") == 0) {
//            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC2 Power ON\n");
//            MSS_GPIO_set_output(EMMC2_PWR_EN, 1);
//            for (delay=255;delay>0;delay--);
//            MSS_GPIO_set_output(MUX, 1);
//            for (delay=255;delay>0;delay--);
//            MSS_GPIO_set_output(EMMC2_RST, 1);
//        }
//        else if (strcmp(cmd_buf, "EMMC2 OFF") == 0) {
//            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC2 Power OFF\n");
//            MSS_GPIO_set_output(EMMC2_RST, 0);
//            MSS_GPIO_set_output(MUX, 0);
//            MSS_GPIO_set_output(EMMC2_PWR_EN, 0);
//        }
//        else if (strcmp(cmd_buf, "EMMC1 RST ON") == 0) {
//            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC1 RESET Asserted\n");
//            MSS_GPIO_set_output(EMMC1_RST, 0);
//        }
//        else if (strcmp(cmd_buf, "EMMC1 RST OFF") == 0) {
//            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC1 RESET De-Asserted\n");
//            MSS_GPIO_set_output(EMMC1_RST, 1);
//        }
        else if (strcmp(cmd_buf, "EMMC INIT") == 0) 
        {
            MMC_param_config(&g_mmc1_param);
            g_mmc1_param.clk_rate_div = 0; // 50 MHz at 100 MHz
            g_mmc1_param.init_clk_rate_div = 170;
            g_mmc1_param.data_timeout = 0x3FFFFFFF;

            resp_reg = MMC_init(&g_mmc1, EMMC1_BASE_ADDR, &g_mmc1_param);
            if(MMC_INIT_SUCCESS == resp_reg)
            {
                MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Init Success!\n");
            } 
            else
            {
                MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Init Failed!\n");
            }
        }
        else if (strcmp(cmd_buf, "EMMC WRITES") == 0) 
        {
            /* Write single block */
            resp_reg = MMC_single_block_write(&g_mmc1, data_buf, 1);
            if (resp_reg == MMC_TRANSFER_SUCCESS) 
            {
                /* Read back and verify block */
                resp_reg = MMC_single_block_read(&g_mmc1, 1, read_buf);
                if (resp_reg == MMC_TRANSFER_SUCCESS) 
                {
                    /* Compare read and write buffers */
                    int k;
                    for (k = 0; k < 128; k++) 
                    {
                        if (data_buf[k] != read_buf[k]) 
                        {
                            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Write Verify Failed!\n");
                            break;
                        }
                    }
                    MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Write Success!\n");
                } 
                else 
                {
                    MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Read Failed!\n");
                }
            } 
            else 
            {
                MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Write Failed!\n");
            }

        }

        else if (strcmp(cmd_buf, "EMMC WRITES TEST") == 0) 
        {
            /* Write single block */
            int j = 0;
            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Write Test Started!\n");
            for (j = 0; j < 20480; j++) 
            {
                /* Loop over 10 megabytes (20480 * 512 bytes) */
                resp_reg = MMC_single_block_write(&g_mmc1, data_buf, j);
                if (resp_reg != MMC_TRANSFER_SUCCESS) 
                {
                    MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Write Failed!\n");
                    break;
                }
            }
            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Write Test Finished!\n");
        }

        else if (strcmp(cmd_buf, "EMMC TEST") == 0)
        {
            if (multi_write(1, 0xAAAABBBB) == 0) 
            {
                MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Function Writem Success\n");
            } 
            else 
            {
                MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Function Writem Fail\n");
            }
        }

        else if (strncmp(cmd_buf, "EMMC READS", 10) == 0 ) 
        {
            /* Single block sector read and display */
            /* need to parse sector number argument first */
            char *token = strtok(cmd_buf, " ");
            token = strtok(NULL, " ");
            token = strtok(NULL, " ");
            uint32_t sector = strtol(token, NULL, 10);
            //sprintf(cmd_buf, "%d\n", sector);
            //MSS_UART_polled_tx_string(&g_mss_uart0, cmd_buf);
            resp_reg = MMC_single_block_read(&g_mmc1, sector, data_buf);
            if (resp_reg != MMC_TRANSFER_SUCCESS) 
            {
                MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Read Failed!\n");
                break;
            }

            for (int i = 0; i < 128; i++) 
            {
                sprintf(cmd_buf, "Word: %d    Value: %d\n", i, data_buf[i]);
                MSS_UART_polled_tx_string(&g_mss_uart0, cmd_buf);
            }
        }
        else if (strcmp(cmd_buf, "EMMC WRITEM") == 0) 
        {
            /* Write multiple blocks */
            volatile uint32_t *pFifoData;
            uint32_t iCount, value;
            uint32_t numblocks = 16;
            uint32_t bytenum = 0;


            /* Clear any previously pended interrupts */
            //NVIC_ClearPendingIRQ(FabricIrq0_IRQn);
            MSS_GPIO_clear_irq( INT );

            /* Get FIFO address from Core */
            pFifoData = (uint32_t *)MMC_get_fifo_write_address(&g_mmc1);
            /* Init FIFO and clear */
            MMC_init_fifo( &g_mmc1);
            /* Fill FIFO with data, max number of blocks is FIFO size in HW */
            for (int k = 0; k < ((numblocks*512)/4); k++) {
                //*pFifoData = bytenum;
                *pFifoData = 15;
                bytenum++;
            }
            /* FIFO data ready, can multi write now */
            resp_reg = MMC_multi_block_write( &g_mmc1, numblocks, 1, GetTickCount(), 1000);
            /* Enable CoreMMC interrupt in NVIC */
            //NVIC_EnableIRQ(FabricIrq0_IRQn);
            MSS_GPIO_enable_irq( INT );
            while(MMC_CMD_PROCESSING == resp_reg)
            {
                resp_reg = MMC_status(&g_mmc1,GetTickCount());
            }
            // Should be done here, can turn off IRQ
            MSS_GPIO_disable_irq(INT);
            /* Check status and act accordingly */
            if (MMC_TRANSFER_SUCCESS == resp_reg) {
                MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Write Multi Success!\n");
            } else {
                /* Error */
                MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Write Multi Failed!\n");
                break;
            }
        }

        else if (strcmp(cmd_buf, "EMMC WRITEMULTI TEST1") == 0)
        {
            int sector;
            uint32_t start_sector = 0;
            uint8_t ret = 1;
            uint32_t tick_start, tick_end;
            uint32_t pattern = 0xFAFAFAFA;
            int c = 0;

            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Write Multi Test Start!\n");
            tick_start = GetTickCount();
            for (sector =  0; sector < 640; sector++) 
            {
                /* 32 sectors on each iteration
                 * each sector 512 bytes so 32 sectors is 16 kbytes
                 * 16 kbyte * 640 = 10_240 kbytes = 10 Mbytes
                 */
                ret = multi_write(start_sector+(sector*32), pattern);// 32 sectors - 16 kbytes
                if (ret) 
                {
                    sprintf(cmd_buf, "EMMC Write Multi Test failed at iter=%d\n", sector);
                    MSS_UART_polled_tx_string(&g_mss_uart0, cmd_buf);
                    break;
                }
            }
            tick_end = GetTickCount();
            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Write Multi Test Write Finished!\n");
            sprintf(cmd_buf, "Time Taken = %d msec\n", (tick_end - tick_start)*10);
            MSS_UART_polled_tx_string(&g_mss_uart0, cmd_buf);

            /* READBACK PHASE */
            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Write Multi Test Readback / Verify phase start\n");
            for (sector = start_sector; sector < (start_sector+20480); sector++) 
            {
                //sprintf(cmd_buf, "Iteration %d of %d\n", sector, (start_sector+20480));
                //MSS_UART_polled_tx_string(&g_mss_uart0, cmd_buf);
                if (c == 100) 
                {
                    MSS_UART_polled_tx_string(&g_mss_uart0, ".");
                    c = 0;
                }
                c++;
                resp_reg = MMC_single_block_read(&g_mmc1, sector, data_buf);
                if (resp_reg != MMC_TRANSFER_SUCCESS) 
                {
                    MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Read Failed!\n");
                    break;
                }
                for (int i = 0; i < 128; i++) 
                {
                    /* verify */
                    if (data_buf[i] != pattern) 
                    {
                        MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Verify Failed!\n");
                        break;
                    }
                }
            }
            MSS_UART_polled_tx_string(&g_mss_uart0, "\nEMMC Write Multi Test Readback / Verify phase end\n");
            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Write Multi Test End!\n");
        }

        else if (strcmp(cmd_buf, "EMMC WRITEMULTI TEST2") == 0) 
        {
            int sector;
            uint32_t start_sector = 10000;
            uint8_t ret = 1;
            uint32_t tick_start, tick_end;
            uint32_t pattern = 0xABABABAB;
            int c = 0;

            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Write Multi Test Start!\n");
            tick_start = GetTickCount();
            for (sector =  0; sector < 640; sector++) 
            {
                /* 32 sectors on each iteration
                 * each sector 512 bytes so 32 sectors is 16 kbytes
                 * 16 kbyte * 640 = 10_240 kbytes = 10 Mbytes
                 */
                ret = multi_write(start_sector+(sector*32), pattern);// 32 sectors - 16 kbytes
                if (ret) 
                {
                    sprintf(cmd_buf, "EMMC Write Multi Test failed at iter=%d\n", sector);
                    MSS_UART_polled_tx_string(&g_mss_uart0, cmd_buf);
                    break;
                }
            }
            tick_end = GetTickCount();
            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Write Multi Test Write Finished!\n");
            sprintf(cmd_buf, "Time Taken = %d msec\n", (tick_end - tick_start)*10);
            MSS_UART_polled_tx_string(&g_mss_uart0, cmd_buf);

            /* READBACK PHASE */
            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Write Multi Test Readback / Verify phase start\n");
            for (sector = start_sector; sector < (start_sector+20480); sector++) 
            {
                //sprintf(cmd_buf, "Iteration %d of %d\n", sector, (start_sector+20480));
                //MSS_UART_polled_tx_string(&g_mss_uart0, cmd_buf);
                if (c == 100) 
                {
                    MSS_UART_polled_tx_string(&g_mss_uart0, ".");
                    c = 0;
                }
                c++;
                resp_reg = MMC_single_block_read(&g_mmc1, sector, data_buf);
                if (resp_reg != MMC_TRANSFER_SUCCESS) 
                {
                    MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Read Failed!\n");
                    break;
                }
                for (int i = 0; i < 128; i++) 
                {
                    /* verify */
                    if (data_buf[i] != pattern) 
                    {
                        MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Verify Failed!\n");
                        break;
                    }
                }
            }
            MSS_UART_polled_tx_string(&g_mss_uart0, "\nEMMC Write Multi Test Readback / Verify phase end\n");
            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Write Multi Test End!\n");
        }

        else if (strcmp(cmd_buf, "EMMC WRITEMULTI TEST3") == 0) 
        {
            int sector;
            uint32_t start_sector = 1000000;
            uint8_t ret = 1;
            uint32_t tick_start, tick_end;
            uint32_t pattern = 0xDBDBDBDB;
            int c = 0;

            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Write Multi Test Start!\n");
            tick_start = GetTickCount();
            for (sector =  0; sector < 640; sector++) 
            {
                /* 32 sectors on each iteration
                 * each sector 512 bytes so 32 sectors is 16 kbytes
                 * 16 kbyte * 640 = 10_240 kbytes = 10 Mbytes
                 */
                ret = multi_write(start_sector+(sector*32), pattern);// 32 sectors - 16 kbytes
                if (ret) 
                {
                    sprintf(cmd_buf, "EMMC Write Multi Test failed at iter=%d\n", sector);
                    MSS_UART_polled_tx_string(&g_mss_uart0, cmd_buf);
                    break;
                }
            }
            tick_end = GetTickCount();
            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Write Multi Test Write Finished!\n");
            sprintf(cmd_buf, "Time Taken = %d msec\n", (tick_end - tick_start)*10);
            MSS_UART_polled_tx_string(&g_mss_uart0, cmd_buf);

            /* READBACK PHASE */
            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Write Multi Test Readback / Verify phase start\n");
            for (sector = start_sector; sector < (start_sector+20480); sector++)
            {
                //sprintf(cmd_buf, "Iteration %d of %d\n", sector, (start_sector+20480));
                //MSS_UART_polled_tx_string(&g_mss_uart0, cmd_buf);
                if (c == 100) 
                {
                    MSS_UART_polled_tx_string(&g_mss_uart0, ".");
                    c = 0;
                }
                c++;
                resp_reg = MMC_single_block_read(&g_mmc1, sector, data_buf);
                if (resp_reg != MMC_TRANSFER_SUCCESS) {
                    MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Read Failed!\n");
                    break;
                }
                for (int i = 0; i < 128; i++) 
                {
                    /* verify */
                    if (data_buf[i] != pattern) 
                    {
                        MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Verify Failed!\n");
                        break;
                    }
                }
            }
            MSS_UART_polled_tx_string(&g_mss_uart0, "\nEMMC Write Multi Test Readback / Verify phase end\n");
            MSS_UART_polled_tx_string(&g_mss_uart0, "EMMC Write Multi Test End!\n");
        }

        else 
        {
            MSS_UART_polled_tx_string(&g_mss_uart0, "Unknown Command\n");
        }
    }
}

uint8_t multi_write(uint32_t sector, uint32_t pattern) 
{
    /* Write multiple blocks to specified sector*/
    volatile uint32_t *pFifoData;
    // uint32_t iCount, value;
    uint32_t numblocks = 32;
    // uint32_t seed = 0;

    mmc_transfer_status_t resp_reg;

    /* Clear any previously pended interrupts */
    //NVIC_ClearPendingIRQ(FabricIrq0_IRQn);
    MSS_GPIO_clear_irq( INT );

    /* Get FIFO address from Core */
    pFifoData = (uint32_t *)MMC_get_fifo_write_address(&g_mmc1);
    /* Init FIFO and clear */
    MMC_init_fifo( &g_mmc1);
    /* Fill FIFO with data, max number of blocks is FIFO size in HW */
    /* WRITES 16 kbytes  (32 sectors/blocks) in multi mode */
    for (int k = 0; k < ((numblocks*512)/4); k++) 
    {
        *pFifoData = pattern;
        //seed++;
    }
    /* FIFO data ready, can multi write now */
    resp_reg = MMC_multi_block_write( &g_mmc1, numblocks, sector, GetTickCount(), 1000);
    /* Enable CoreMMC interrupt in NVIC */
    //NVIC_EnableIRQ(FabricIrq0_IRQn);
    MSS_GPIO_enable_irq( INT );
    while(MMC_CMD_PROCESSING == resp_reg)
    {
        resp_reg = MMC_status(&g_mmc1,GetTickCount());
    }
    // Should be done here, can turn off IRQ
    MSS_GPIO_disable_irq(INT);
    /* Check status and act accordingly */
    if (MMC_TRANSFER_SUCCESS == resp_reg) {
        return 0;
    } else {
        /* Error */
        return 1;
    }
}

void Init_data_buf(uint32_t * data_buf) {
    uint16_t i;

    for (i = 0; i < 128; i++)
    {
        data_buf[i] = i;
    }
}

/***************************************************************************//**
 * Ten millisecond sys tick
 */
static uint32_t GetTickCount(void)
{
    return(ten_ms_sys_tick);
}

/***************************************************************************//**
 * Increment tick every ten milliseconds.
 */
void SysTick_Handler(void)
{
    ten_ms_sys_tick++;
}

/***************************************************************************//**
 *    isr related to CoreMMC. See core_mmc.h for details.
 */
void FabricIrq0_IRQHandler(void)
{
    /*
     * The parameter of the function MMC_isr() must use the application declared instance
     */
    MMC_isr(&g_mmc1);
    NVIC_ClearPendingIRQ(FabricIrq0_IRQn);
}

void GPIO8_IRQHandler( void )
{
    MMC_isr(&g_mmc1);
    MSS_GPIO_clear_irq( INT );
}

/***************************************************************************//**
 *    isr related to CoreMMC. See core_mmc.h for details.
 */
void FabricIrq1_IRQHandler(void)
{
    /*
     * The parameter of the function MMC_isr() must use the application declared instance
     */
    MMC_isr(&g_mmc1);
}

/***************************************************************************//**
 *    isr related to CoreMMC. See core_mmc.h for details.
 */
void FabricIrq2_IRQHandler(void)
{
    /*
     * The parameter of the function MMC_isr() must use the application declared instance
     */
    MMC_isr(&g_mmc1);
}
