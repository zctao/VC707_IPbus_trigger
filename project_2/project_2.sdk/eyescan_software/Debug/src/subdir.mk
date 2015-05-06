################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/drp.c \
../src/es_simple_eye_acq.c \
../src/eyescan_main.c \
../src/platform.c 

OBJS += \
./src/drp.o \
./src/es_simple_eye_acq.o \
./src/eyescan_main.o \
./src/platform.o 

C_DEPS += \
./src/drp.d \
./src/es_simple_eye_acq.d \
./src/eyescan_main.d \
./src/platform.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../eyescan_software_bsp/mb_ps_microblaze_1/include -mno-xl-reorder -mlittle-endian -mcpu=v9.2 -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


