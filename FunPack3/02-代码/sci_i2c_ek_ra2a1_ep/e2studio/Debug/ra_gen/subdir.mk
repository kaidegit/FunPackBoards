################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ra_gen/common_data.c \
../ra_gen/hal_data.c \
../ra_gen/main.c \
../ra_gen/pin_data.c \
../ra_gen/vector_data.c 

OBJS += \
./ra_gen/common_data.o \
./ra_gen/hal_data.o \
./ra_gen/main.o \
./ra_gen/pin_data.o \
./ra_gen/vector_data.o 

C_DEPS += \
./ra_gen/common_data.d \
./ra_gen/hal_data.d \
./ra_gen/main.d \
./ra_gen/pin_data.d \
./ra_gen/vector_data.d 


# Each subdirectory must supply rules for building sources it contributes
ra_gen/%.o: ../ra_gen/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m23 -mthumb -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -D_RENESAS_RA_ -I"C:\ek_ra2a1\sci_i2c\sci_i2c_ek_ra2a1_ep\e2studio\ra\fsp\inc" -I"C:\ek_ra2a1\sci_i2c\sci_i2c_ek_ra2a1_ep\e2studio\ra\fsp\inc\api" -I"C:\ek_ra2a1\sci_i2c\sci_i2c_ek_ra2a1_ep\e2studio\ra\fsp\inc\instances" -I"C:\ek_ra2a1\sci_i2c\sci_i2c_ek_ra2a1_ep\e2studio\ra\arm\CMSIS_5\CMSIS\Core\Include" -I"C:\ek_ra2a1\sci_i2c\sci_i2c_ek_ra2a1_ep\e2studio\ra_gen" -I"C:\ek_ra2a1\sci_i2c\sci_i2c_ek_ra2a1_ep\e2studio\ra_cfg\fsp_cfg" -I"C:\ek_ra2a1\sci_i2c\sci_i2c_ek_ra2a1_ep\e2studio\ra_cfg\fsp_cfg\bsp" -I"C:\ek_ra2a1\sci_i2c\sci_i2c_ek_ra2a1_ep\e2studio\src" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" -x c "$<"
	@echo 'Finished building: $<'
	@echo ' '


