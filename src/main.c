#define _CONFIG_BITS_SOURCE
#include "defs.h"
#include "pins.h"

static void init_pins(void)
{
    /*
     * AN0 no MCA048 está em RA0.
     * RA1 fica reservado para o LED amarelo externo.
     */
    ANSELA = 0x0000;
    ANSELB = 0x0000;
    ANSELC = 0x0000;
    ANSELD = 0x0000;

    ANSELAbits.ANSA0 = 1;
    TRISAbits.TRISA0 = 1;

    RLED_DIR = 0;
    GLED_DIR = 0;
    YLED_DIR = 0;
    LEDs_ClearAll();
}

int main(void)
{
    init_pins();
    init_OSC();
    init_TMR2();
    init_ADC();

    INTCONSET = _INTCON_MVEC_MASK;
    __builtin_enable_interrupts();

    while (1)
    {
        if (g_adc0_new_sample != 0u)
        {
            g_adc0_new_sample = 0u;
            analog_process_sample();
        }
    }

    return 0;
}