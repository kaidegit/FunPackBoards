#include "delay.h"
#include "stdio.h"
#include "metal/gpio.h"
#include "metal/pwm.h"
#include "metal/uart.h"
#include "metal/i2c.h"
#include "oled.h"
struct metal_uart *uart;

void my_print(char *str) {
   int i = 0;
   while (str[i] != '\0') {
       metal_uart_putc(uart, str[i]);
       i++;
   }
}

//struct metal_i2c *i2c;

int main() {
//    struct metal_gpio *led;
//    led = metal_gpio_get_device(0);
//    metal_gpio_disable_input(led,5);
//    metal_gpio_enable_output(led,5);
//    metal_gpio_disable_pinmux(led,5);

    // struct metal_pwm *pwm;
    // pwm = metal_pwm_get_device(1);
    // metal_pwm_enable(pwm);
    // metal_pwm_set_freq(pwm,1,50000);
    // metal_pwm_trigger(pwm,1,METAL_PWM_CONTINUOUS);
    // int speed;
   printf("DCV16(10,100,'HelloWorld',1);\n");

   uart = metal_uart_get_device(1);
   metal_uart_init(uart, 115200);
   my_print("DCV16(10,100,'HelloWorld',1);\r\n");

//    i2c = metal_i2c_get_device(0);
//    metal_i2c_init(i2c,100000,METAL_I2C_MASTER);
//    uint8_t str[] = "Hello World";
//    OLED_Init();
//    OLED_Display_On();
//    OLED_Clear();
//    OLED_ShowString(0,0,str,sizeof(str));


    while (1) {
//        metal_gpio_set_pin(led,5,0);
//        delay_ms(1000);
//        metal_gpio_set_pin(led,5,1);
//        delay_ms(1000);


    //    for (int i =0;i<100;i++){
    //        delay_ms(10);
    //        metal_pwm_set_duty(pwm,1,i,METAL_PWM_PHASE_CORRECT_DISABLE);
    //    }
    //    printf("upok\n");
    //    for (int i = 0; i < 100; i++) {
    //        delay_ms(10);
    //        metal_pwm_set_duty(pwm, 1, 100-i, METAL_PWM_PHASE_CORRECT_DISABLE);
    //    }
    //    printf("dowmok\n");
    }
}
