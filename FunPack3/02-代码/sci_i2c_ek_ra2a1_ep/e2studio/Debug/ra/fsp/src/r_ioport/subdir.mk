################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ra/fsp/src/r_ioport/r_ioport.c 

OBJS += \
./ra/fsp/src/r_ioport/r_ioport.o 

C_DEPS += \
./ra/fsp/src/r_ioport/r_ioport.d 


# Each subdirectory must supply rules for building sources it contributes
ra/fsp/src/r_ioport/%.o: ../ra/fsp/src/r_ioport/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m23 -mthumb -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -D_RENESAS_RA_ -I"C:\ek_ra2a1\sci_i2c\sci_i2c_ek_ra2a1_ep\e2studio\ra\fsp\inc" -I"C:\ek_ra2a1\sci_i2c\sci_i2c_ek_ra2a1_ep\e2studio\ra\fsp\inc\api" -I"C:\ek_ra2a1\sci_i2c\sci_i2c_ek_ra2a1_ep\e2studio\ra\fsp\inc\instances" -I"C:\ek_ra2a1\sci_i2c\sci_i2c_ek_ra2a1_ep\e2studio\ra\arm\CMSIS_5\CMSIS\Core\Include" -I"C:\ek_ra2a1\sci_i2c\sci_i2c_ek_ra2a1_ep\e2studio\ra_gen" -I"C:\ek_ra2a1\sci_i2c\sci_i2c_ek_ra2a1_ep\e2studio\ra_cfg\fsp_cfg" -I"C:\ek_ra2a1\sci_i2c\sci_i2c_ek_ra2a1_ep\e2studio\ra_cfg\fsp_cfg\bsp" -I"C:\ek_ra2a1\sci_i2c\sci_i2c_ek_ra2a1_ep\e2studio\src" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" -x c "$<"
	@echo 'Finished building: $<'
	@echo ' '


