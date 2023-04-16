################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../bootsrc/common.c \
../bootsrc/flash_if.c \
../bootsrc/menu.c \
../bootsrc/ymodem.c 

OBJS += \
./bootsrc/common.o \
./bootsrc/flash_if.o \
./bootsrc/menu.o \
./bootsrc/ymodem.o 

C_DEPS += \
./bootsrc/common.d \
./bootsrc/flash_if.d \
./bootsrc/menu.d \
./bootsrc/ymodem.d 


# Each subdirectory must supply rules for building sources it contributes
bootsrc/%.o bootsrc/%.su bootsrc/%.cyclo: ../bootsrc/%.c bootsrc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I"C:/Users/Muhammed/STM32CubeIDE/workspace_1.8.0/IAP_Deneme/bootinc" -I"C:/Users/Muhammed/STM32CubeIDE/workspace_1.8.0/IAP_Deneme/bootsrc" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-bootsrc

clean-bootsrc:
	-$(RM) ./bootsrc/common.cyclo ./bootsrc/common.d ./bootsrc/common.o ./bootsrc/common.su ./bootsrc/flash_if.cyclo ./bootsrc/flash_if.d ./bootsrc/flash_if.o ./bootsrc/flash_if.su ./bootsrc/menu.cyclo ./bootsrc/menu.d ./bootsrc/menu.o ./bootsrc/menu.su ./bootsrc/ymodem.cyclo ./bootsrc/ymodem.d ./bootsrc/ymodem.o ./bootsrc/ymodem.su

.PHONY: clean-bootsrc

