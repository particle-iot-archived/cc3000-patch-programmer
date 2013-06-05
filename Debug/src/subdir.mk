################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/cc3000_spi.c \
../src/hw_config.c \
../src/main.c \
../src/stm32_it.c \
../src/system_stm32f10x.c 

OBJS += \
./src/cc3000_spi.o \
./src/hw_config.o \
./src/main.o \
./src/stm32_it.o \
./src/system_stm32f10x.o 

C_DEPS += \
./src/cc3000_spi.d \
./src/hw_config.d \
./src/main.d \
./src/stm32_it.d \
./src/system_stm32f10x.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Mac OS X GCC C Compiler'
	arm-none-eabi-gcc -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -I"/Users/zac/code/spark/cc3000-patch-programmer/libraries/CMSIS/Include" -I"/Users/zac/code/spark/cc3000-patch-programmer/libraries/CMSIS/Device/ST/STM32F10x/Include" -I"/Users/zac/code/spark/cc3000-patch-programmer/libraries/STM32F10x_StdPeriph_Driver/inc" -I"/Users/zac/code/spark/cc3000-patch-programmer/inc" -I"/Users/zac/code/spark/cc3000-patch-programmer/libraries/CC3000_Host_Driver" -Os -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


