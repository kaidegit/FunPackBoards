//
// Created by kai on 2020/10/31.
//

#include "delay.h"
#include "time.h"

void delay_us(int number_of_microseconds) {
    int hundred_ns = number_of_microseconds;
    clock_t start_time = clock();
    while (clock() < start_time + hundred_ns);
}

void delay_ms(int time) {
    int hundred_ns = 1000 * time;
    clock_t start_time = clock();
    while (clock() < start_time + hundred_ns);
}
