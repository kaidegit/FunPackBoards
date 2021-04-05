####################################################################
# Automatically-generated file. Do not edit!                       #
####################################################################

BASE_SDK_PATH = /Applications/SimplicityStudio.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1
UNAME:=$(shell uname -s | sed -e 's/^\(CYGWIN\).*/\1/' | sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_3.1.0

PROJECT_SOURCE_FILES = \
 advertise.c \
 advertise.h \
 app.c \
 app.h \
 app_properties.c \
 autogen/.crc_config.crc \
 autogen/gatt_db.c \
 autogen/gatt_db.h \
 autogen/linkerfile.ld \
 autogen/mbedtls_config_autogen.h \
 autogen/RTE_Components.h \
 autogen/sl_bluetooth.c \
 autogen/sl_bluetooth.h \
 autogen/sl_board_default_init.c \
 autogen/sl_component_catalog.h \
 autogen/sl_device_init_clocks.c \
 autogen/sl_event_handler.c \
 autogen/sl_event_handler.h \
 autogen/sl_i2cspm_init.c \
 autogen/sl_i2cspm_instances.h \
 autogen/sl_iostream_handles.c \
 autogen/sl_iostream_handles.h \
 autogen/sl_iostream_init_instances.h \
 autogen/sl_iostream_init_usart_instances.c \
 autogen/sl_iostream_init_usart_instances.h \
 autogen/sl_power_manager_handler.c \
 autogen/sl_simple_button_instances.c \
 autogen/sl_simple_button_instances.h \
 autogen/sl_simple_led_instances.c \
 autogen/sl_simple_led_instances.h \
 brd4184a/board.h \
 config/btconf/gatt_configuration.btconf \
 config/btconf/gatt_service_aio.xml \
 config/btconf/gatt_service_battery.xml \
 config/btconf/gatt_service_hall.xml \
 config/btconf/gatt_service_imu.xml \
 config/btconf/gatt_service_light.xml \
 config/btconf/gatt_service_rht.xml \
 config/btconf/ota_dfu.xml \
 config/mbedtls_config.h \
 config/nvm3_default_config.h \
 config/sl_app_assert_config.h \
 config/sl_app_log_config.h \
 config/sl_bluetooth_config.h \
 config/sl_board_control_config.h \
 config/sl_device_init_dcdc_config.h \
 config/sl_device_init_emu_config.h \
 config/sl_device_init_hfxo_config.h \
 config/sl_device_init_lfrco_config.h \
 config/sl_device_init_lfxo_config.h \
 config/sl_hfxo_manager_config.h \
 config/sl_i2cspm_sensor_config.h \
 config/sl_icm20648_config.h \
 config/sl_iostream_usart_vcom_config.h \
 config/sl_memory_config.h \
 config/sl_mx25_flash_shutdown_usart_config.h \
 config/sl_power_manager_config.h \
 config/sl_rail_util_pa_config.h \
 config/sl_rail_util_pti_config.h \
 config/sl_simple_button_btn0_config.h \
 config/sl_simple_button_config.h \
 config/sl_simple_led_led0_config.h \
 config/sl_sleeptimer_config.h \
 create_bl_files.bat \
 create_bl_files.sh \
 main.c \
 readme.html \
 readme_img0.png \
 readme_img1.png \
 readme_img2.png \
 readme_img3.png \
 readme_img4.png \
 readme_img5.png \
 readme_img6.png \


C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DSL_SIMPLE_BUTTON_COUNT=1' \
 '-DSL_SIMPLE_LED_COUNT=1' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' \
 '-DEFR32BG22C224F512IM40=1'

ASM_DEFS += \
 '-DSL_SIMPLE_BUTTON_COUNT=1' \
 '-DSL_SIMPLE_LED_COUNT=1' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' \
 '-DEFR32BG22C224F512IM40=1'

INCLUDES += \
 -Iconfig \
 -I. \
 -Ibrd4184a \
 -I$(SDK_PATH)/platform/common/toolchain/inc \
 -I$(SDK_PATH)/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart \
 -I$(SDK_PATH)/platform/driver/leddrv/inc \
 -I$(SDK_PATH)/platform/service/iostream/inc \
 -I$(SDK_PATH)/platform/emdrv/nvm3/inc \
 -I$(SDK_PATH)/hardware/driver/si1133/inc \
 -I$(SDK_PATH)/platform/service/device_init/inc \
 -I$(SDK_PATH)/app/bluetooth/common/simple_timer \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src \
 -I$(SDK_PATH)/platform/common/inc \
 -I$(SDK_PATH)/util/third_party/crypto/mbedtls/include \
 -I$(SDK_PATH)/platform/emlib/inc \
 -I$(SDK_PATH)/app/bluetooth/common/gatt_service_hall \
 -I$(SDK_PATH)/protocol/bluetooth/inc \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/include \
 -I$(SDK_PATH)/platform/service/hfxo_manager/inc \
 -I$(SDK_PATH)/platform/emdrv/common/inc \
 -I$(SDK_PATH)/hardware/board/inc \
 -I$(SDK_PATH)/platform/service/ram_interrupt_vector_init/inc \
 -I$(SDK_PATH)/app/bluetooth/common/sensor_hall \
 -I$(SDK_PATH)/app/bluetooth/common/app_log \
 -I$(SDK_PATH)/platform/radio/rail_lib/common \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/ble \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/ieee802154 \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/zwave \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/mfm \
 -I$(SDK_PATH)/platform/radio/rail_lib/chip/efr32/efr32xg2x \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/inc \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src \
 -I$(SDK_PATH)/app/bluetooth/common/gatt_service_light \
 -I$(SDK_PATH)/hardware/driver/si70xx/inc \
 -I$(SDK_PATH)/util/third_party/printf \
 -I$(SDK_PATH)/util/third_party/printf/inc \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/sl_alt/include \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/inc \
 -I$(SDK_PATH)/app/bluetooth/common/gatt_service_imu \
 -I$(SDK_PATH)/platform/driver/button/inc \
 -I$(SDK_PATH)/app/bluetooth/common/app_assert \
 -I$(SDK_PATH)/app/bluetooth/common/sensor_light \
 -I$(SDK_PATH)/app/bluetooth/common/sensor_rht \
 -I$(SDK_PATH)/platform/service/sleeptimer/inc \
 -I$(SDK_PATH)/app/bluetooth/common/gatt_service_battery \
 -I$(SDK_PATH)/platform/service/mpu/inc \
 -I$(SDK_PATH)/app/bluetooth/common/gatt_service_rht \
 -I$(SDK_PATH)/platform/service/system/inc \
 -I$(SDK_PATH)/platform/emdrv/gpiointerrupt/inc \
 -I$(SDK_PATH)/app/bluetooth/common/gatt_service_aio \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/inc \
 -I$(SDK_PATH)/platform/service/udelay/inc \
 -I$(SDK_PATH)/platform/service/power_manager/inc \
 -I$(SDK_PATH)/platform/driver/i2cspm/inc \
 -I$(SDK_PATH)/hardware/driver/si7210/inc \
 -I$(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager \
 -I$(SDK_PATH)/app/bluetooth/common/sensor_select \
 -I$(SDK_PATH)/app/bluetooth/common/sensor_imu \
 -I$(SDK_PATH)/hardware/driver/icm20648/inc \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/efr32xg22 \
 -I$(SDK_PATH)/app/bluetooth/common/ota_dfu \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/inc/configs \
 -I$(SDK_PATH)/util/third_party/crypto/mbedtls/library \
 -I$(SDK_PATH)/platform/bootloader \
 -I$(SDK_PATH)/platform/bootloader/api \
 -I$(SDK_PATH)/platform/CMSIS/Include \
 -I$(SDK_PATH)/hardware/driver/imu/inc \
 -I$(SDK_PATH)/app/bluetooth/common/power_supply \
 -I$(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Include \
 -Iautogen

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lgcc \
 -lc \
 -lm \
 -lnosys \
 $(SDK_PATH)/platform/emdrv/nvm3/lib/libnvm3_CM33_gcc.a \
 $(SDK_PATH)/protocol/bluetooth/lib/EFR32BG22/GCC/libbluetooth.a \
 $(SDK_PATH)/platform/radio/rail_lib/autogen/librail_release/librail_efr32xg22_gcc_release.a \
 $(SDK_PATH)/protocol/bluetooth/lib/EFR32BG22/GCC/binapploader.o

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

C_FLAGS += \
 --specs=nano.specs \
 -g \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -fno-builtin \
 -imacros sl_gcc_preinclude.h

CXX_FLAGS += \
 --specs=nano.specs \
 -g \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c++11 \
 -fno-rtti \
 -fno-exceptions \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -fno-builtin \
 -imacros sl_gcc_preinclude.h

ASM_FLAGS += \
 -x assembler-with-cpp \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -imacros sl_gcc_preinclude.h

LD_FLAGS += \
 -Wl,--gc-sections \
 -Xlinker -Map=$(OUTPUT_DIR)/$(PROJECTNAME).map \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -T"autogen/linkerfile.ld" \
 --specs=nano.specs


####################################################################
# SDK Build Rules                                                  #
####################################################################

$(OUTPUT_DIR)/sdk/app/bluetooth/common/gatt_service_aio/sl_gatt_service_aio.o: $(SDK_PATH)/app/bluetooth/common/gatt_service_aio/sl_gatt_service_aio.c
	@echo 'Building $(SDK_PATH)/app/bluetooth/common/gatt_service_aio/sl_gatt_service_aio.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/gatt_service_aio/sl_gatt_service_aio.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/gatt_service_aio/sl_gatt_service_aio.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/gatt_service_aio/sl_gatt_service_aio.o

$(OUTPUT_DIR)/sdk/app/bluetooth/common/gatt_service_battery/sl_gatt_service_battery.o: $(SDK_PATH)/app/bluetooth/common/gatt_service_battery/sl_gatt_service_battery.c
	@echo 'Building $(SDK_PATH)/app/bluetooth/common/gatt_service_battery/sl_gatt_service_battery.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/gatt_service_battery/sl_gatt_service_battery.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/gatt_service_battery/sl_gatt_service_battery.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/gatt_service_battery/sl_gatt_service_battery.o

$(OUTPUT_DIR)/sdk/app/bluetooth/common/gatt_service_hall/sl_gatt_service_hall.o: $(SDK_PATH)/app/bluetooth/common/gatt_service_hall/sl_gatt_service_hall.c
	@echo 'Building $(SDK_PATH)/app/bluetooth/common/gatt_service_hall/sl_gatt_service_hall.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/gatt_service_hall/sl_gatt_service_hall.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/gatt_service_hall/sl_gatt_service_hall.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/gatt_service_hall/sl_gatt_service_hall.o

$(OUTPUT_DIR)/sdk/app/bluetooth/common/gatt_service_imu/sl_gatt_service_imu.o: $(SDK_PATH)/app/bluetooth/common/gatt_service_imu/sl_gatt_service_imu.c
	@echo 'Building $(SDK_PATH)/app/bluetooth/common/gatt_service_imu/sl_gatt_service_imu.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/gatt_service_imu/sl_gatt_service_imu.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/gatt_service_imu/sl_gatt_service_imu.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/gatt_service_imu/sl_gatt_service_imu.o

$(OUTPUT_DIR)/sdk/app/bluetooth/common/gatt_service_light/sl_gatt_service_light.o: $(SDK_PATH)/app/bluetooth/common/gatt_service_light/sl_gatt_service_light.c
	@echo 'Building $(SDK_PATH)/app/bluetooth/common/gatt_service_light/sl_gatt_service_light.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/gatt_service_light/sl_gatt_service_light.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/gatt_service_light/sl_gatt_service_light.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/gatt_service_light/sl_gatt_service_light.o

$(OUTPUT_DIR)/sdk/app/bluetooth/common/gatt_service_rht/sl_gatt_service_rht.o: $(SDK_PATH)/app/bluetooth/common/gatt_service_rht/sl_gatt_service_rht.c
	@echo 'Building $(SDK_PATH)/app/bluetooth/common/gatt_service_rht/sl_gatt_service_rht.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/gatt_service_rht/sl_gatt_service_rht.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/gatt_service_rht/sl_gatt_service_rht.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/gatt_service_rht/sl_gatt_service_rht.o

$(OUTPUT_DIR)/sdk/app/bluetooth/common/ota_dfu/sl_ota_dfu.o: $(SDK_PATH)/app/bluetooth/common/ota_dfu/sl_ota_dfu.c
	@echo 'Building $(SDK_PATH)/app/bluetooth/common/ota_dfu/sl_ota_dfu.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/ota_dfu/sl_ota_dfu.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/ota_dfu/sl_ota_dfu.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/ota_dfu/sl_ota_dfu.o

$(OUTPUT_DIR)/sdk/app/bluetooth/common/power_supply/sl_power_supply.o: $(SDK_PATH)/app/bluetooth/common/power_supply/sl_power_supply.c
	@echo 'Building $(SDK_PATH)/app/bluetooth/common/power_supply/sl_power_supply.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/power_supply/sl_power_supply.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/power_supply/sl_power_supply.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/power_supply/sl_power_supply.o

$(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_hall/sl_sensor_hall.o: $(SDK_PATH)/app/bluetooth/common/sensor_hall/sl_sensor_hall.c
	@echo 'Building $(SDK_PATH)/app/bluetooth/common/sensor_hall/sl_sensor_hall.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/sensor_hall/sl_sensor_hall.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_hall/sl_sensor_hall.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_hall/sl_sensor_hall.o

$(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_imu/sl_sensor_imu.o: $(SDK_PATH)/app/bluetooth/common/sensor_imu/sl_sensor_imu.c
	@echo 'Building $(SDK_PATH)/app/bluetooth/common/sensor_imu/sl_sensor_imu.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/sensor_imu/sl_sensor_imu.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_imu/sl_sensor_imu.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_imu/sl_sensor_imu.o

$(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_light/sl_sensor_light.o: $(SDK_PATH)/app/bluetooth/common/sensor_light/sl_sensor_light.c
	@echo 'Building $(SDK_PATH)/app/bluetooth/common/sensor_light/sl_sensor_light.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/sensor_light/sl_sensor_light.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_light/sl_sensor_light.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_light/sl_sensor_light.o

$(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_rht/sl_sensor_rht.o: $(SDK_PATH)/app/bluetooth/common/sensor_rht/sl_sensor_rht.c
	@echo 'Building $(SDK_PATH)/app/bluetooth/common/sensor_rht/sl_sensor_rht.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/sensor_rht/sl_sensor_rht.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_rht/sl_sensor_rht.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_rht/sl_sensor_rht.o

$(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_select/sl_sensor_select.o: $(SDK_PATH)/app/bluetooth/common/sensor_select/sl_sensor_select.c
	@echo 'Building $(SDK_PATH)/app/bluetooth/common/sensor_select/sl_sensor_select.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/sensor_select/sl_sensor_select.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_select/sl_sensor_select.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/sensor_select/sl_sensor_select.o

$(OUTPUT_DIR)/sdk/app/bluetooth/common/simple_timer/sl_simple_timer.o: $(SDK_PATH)/app/bluetooth/common/simple_timer/sl_simple_timer.c
	@echo 'Building $(SDK_PATH)/app/bluetooth/common/simple_timer/sl_simple_timer.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/simple_timer/sl_simple_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/simple_timer/sl_simple_timer.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/simple_timer/sl_simple_timer.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o: $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
	@echo 'Building $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o: $(SDK_PATH)/hardware/board/src/sl_board_init.c
	@echo 'Building $(SDK_PATH)/hardware/board/src/sl_board_init.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/board/src/sl_board_init.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o

$(OUTPUT_DIR)/sdk/hardware/driver/icm20648/src/sl_icm20648.o: $(SDK_PATH)/hardware/driver/icm20648/src/sl_icm20648.c
	@echo 'Building $(SDK_PATH)/hardware/driver/icm20648/src/sl_icm20648.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/icm20648/src/sl_icm20648.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/icm20648/src/sl_icm20648.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/icm20648/src/sl_icm20648.o

$(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu.o: $(SDK_PATH)/hardware/driver/imu/src/sl_imu.c
	@echo 'Building $(SDK_PATH)/hardware/driver/imu/src/sl_imu.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/imu/src/sl_imu.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu.o

$(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_dcm.o: $(SDK_PATH)/hardware/driver/imu/src/sl_imu_dcm.c
	@echo 'Building $(SDK_PATH)/hardware/driver/imu/src/sl_imu_dcm.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/imu/src/sl_imu_dcm.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_dcm.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_dcm.o

$(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_fuse.o: $(SDK_PATH)/hardware/driver/imu/src/sl_imu_fuse.c
	@echo 'Building $(SDK_PATH)/hardware/driver/imu/src/sl_imu_fuse.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/imu/src/sl_imu_fuse.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_fuse.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_fuse.o

$(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_math.o: $(SDK_PATH)/hardware/driver/imu/src/sl_imu_math.c
	@echo 'Building $(SDK_PATH)/hardware/driver/imu/src/sl_imu_math.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/imu/src/sl_imu_math.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_math.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_math.o

$(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o: $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
	@echo 'Building $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o

$(OUTPUT_DIR)/sdk/hardware/driver/si1133/src/sl_si1133.o: $(SDK_PATH)/hardware/driver/si1133/src/sl_si1133.c
	@echo 'Building $(SDK_PATH)/hardware/driver/si1133/src/sl_si1133.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/si1133/src/sl_si1133.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/si1133/src/sl_si1133.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/si1133/src/sl_si1133.o

$(OUTPUT_DIR)/sdk/hardware/driver/si70xx/src/sl_si70xx.o: $(SDK_PATH)/hardware/driver/si70xx/src/sl_si70xx.c
	@echo 'Building $(SDK_PATH)/hardware/driver/si70xx/src/sl_si70xx.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/si70xx/src/sl_si70xx.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/si70xx/src/sl_si70xx.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/si70xx/src/sl_si70xx.o

$(OUTPUT_DIR)/sdk/hardware/driver/si7210/src/sl_si7210.o: $(SDK_PATH)/hardware/driver/si7210/src/sl_si7210.c
	@echo 'Building $(SDK_PATH)/hardware/driver/si7210/src/sl_si7210.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/si7210/src/sl_si7210.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/si7210/src/sl_si7210.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/si7210/src/sl_si7210.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o: $(SDK_PATH)/platform/bootloader/api/btl_interface.c
	@echo 'Building $(SDK_PATH)/platform/bootloader/api/btl_interface.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/api/btl_interface.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o: $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
	@echo 'Building $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(SDK_PATH)/platform/common/src/sl_slist.c
	@echo 'Building $(SDK_PATH)/platform/common/src/sl_slist.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o: $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
	@echo 'Building $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG22/Source/GCC/startup_efr32bg22.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Source/GCC/startup_efr32bg22.c
	@echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Source/GCC/startup_efr32bg22.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Source/GCC/startup_efr32bg22.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG22/Source/GCC/startup_efr32bg22.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG22/Source/GCC/startup_efr32bg22.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG22/Source/system_efr32bg22.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Source/system_efr32bg22.c
	@echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Source/system_efr32bg22.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Source/system_efr32bg22.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG22/Source/system_efr32bg22.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG22/Source/system_efr32bg22.o

$(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_button.o: $(SDK_PATH)/platform/driver/button/src/sl_button.c
	@echo 'Building $(SDK_PATH)/platform/driver/button/src/sl_button.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/button/src/sl_button.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_button.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_button.o

$(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_simple_button.o: $(SDK_PATH)/platform/driver/button/src/sl_simple_button.c
	@echo 'Building $(SDK_PATH)/platform/driver/button/src/sl_simple_button.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/button/src/sl_simple_button.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_simple_button.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_simple_button.o

$(OUTPUT_DIR)/sdk/platform/driver/i2cspm/src/sl_i2cspm.o: $(SDK_PATH)/platform/driver/i2cspm/src/sl_i2cspm.c
	@echo 'Building $(SDK_PATH)/platform/driver/i2cspm/src/sl_i2cspm.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/i2cspm/src/sl_i2cspm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/i2cspm/src/sl_i2cspm.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/i2cspm/src/sl_i2cspm.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.o: $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c
	@echo 'Building $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.o: $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c
	@echo 'Building $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.o

$(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o: $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
	@echo 'Building $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
	@echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c
	@echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c
	@echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_assert.o: $(SDK_PATH)/platform/emlib/src/em_assert.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_assert.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_assert.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o: $(SDK_PATH)/platform/emlib/src/em_burtc.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_burtc.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o: $(SDK_PATH)/platform/emlib/src/em_cmu.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_cmu.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_cmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o: $(SDK_PATH)/platform/emlib/src/em_core.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_core.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_core.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o: $(SDK_PATH)/platform/emlib/src/em_emu.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_emu.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_emu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o: $(SDK_PATH)/platform/emlib/src/em_gpio.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_gpio.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_i2c.o: $(SDK_PATH)/platform/emlib/src/em_i2c.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_i2c.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_i2c.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_i2c.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_i2c.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_iadc.o: $(SDK_PATH)/platform/emlib/src/em_iadc.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_iadc.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_iadc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_iadc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_iadc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o: $(SDK_PATH)/platform/emlib/src/em_msc.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_msc.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_msc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o: $(SDK_PATH)/platform/emlib/src/em_rtcc.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_rtcc.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_se.o: $(SDK_PATH)/platform/emlib/src/em_se.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_se.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_se.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_se.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_se.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o: $(SDK_PATH)/platform/emlib/src/em_system.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_system.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o: $(SDK_PATH)/platform/emlib/src/em_usart.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_usart.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
	@echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c
	@echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c
	@echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s2.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s2.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfrco.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfrco.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfrco.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfrco.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfrco.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfrco.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s2.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s2.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o

$(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager.o: $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager.c
	@echo 'Building $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager.o

$(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.o: $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c
	@echo 'Building $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
	@echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
	@echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
	@echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o

$(OUTPUT_DIR)/sdk/platform/service/mpu/src/sl_mpu.o: $(SDK_PATH)/platform/service/mpu/src/sl_mpu.c
	@echo 'Building $(SDK_PATH)/platform/service/mpu/src/sl_mpu.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/mpu/src/sl_mpu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/mpu/src/sl_mpu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/mpu/src/sl_mpu.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.o: $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c
	@echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.o: $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c
	@echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s2.o: $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s2.c
	@echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s2.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/ram_interrupt_vector_init/src/sl_ram_interrupt_vector_init.o: $(SDK_PATH)/platform/service/ram_interrupt_vector_init/src/sl_ram_interrupt_vector_init.c
	@echo 'Building $(SDK_PATH)/platform/service/ram_interrupt_vector_init/src/sl_ram_interrupt_vector_init.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/ram_interrupt_vector_init/src/sl_ram_interrupt_vector_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/ram_interrupt_vector_init/src/sl_ram_interrupt_vector_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/ram_interrupt_vector_init/src/sl_ram_interrupt_vector_init.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
	@echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
	@echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c
	@echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
	@echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(SDK_PATH)/platform/service/system/src/sl_system_init.c
	@echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_init.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o: $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c
	@echo 'Building $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o: $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
	@echo 'Building $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S'
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
ASMDEPS_S += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_mbedtls_context.o: $(SDK_PATH)/protocol/bluetooth/src/sl_bt_mbedtls_context.c
	@echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sl_bt_mbedtls_context.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sl_bt_mbedtls_context.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_mbedtls_context.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_mbedtls_context.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o: $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
	@echo 'Building $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/aes.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/aes.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/aes.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/aes.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/aes.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/aes.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/bignum.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/bignum.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/bignum.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/bignum.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/bignum.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/bignum.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ccm.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ccm.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ccm.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ccm.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ccm.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ccm.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher_wrap.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher_wrap.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher_wrap.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher_wrap.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher_wrap.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher_wrap.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cmac.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cmac.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cmac.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cmac.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cmac.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cmac.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ctr_drbg.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ctr_drbg.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ctr_drbg.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ctr_drbg.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ctr_drbg.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ctr_drbg.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecdh.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecdh.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecdh.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecdh.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecdh.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecdh.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecdsa.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecdsa.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecdsa.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecdsa.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecdsa.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecdsa.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecp.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecp.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecp.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecp.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecp.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecp.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecp_curves.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecp_curves.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecp_curves.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecp_curves.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecp_curves.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecp_curves.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/entropy.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/entropy.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/entropy.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/entropy.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/entropy.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/entropy.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/error.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/error.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/error.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/error.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/error.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/error.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/platform.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/platform.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/platform.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform_util.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/platform_util.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/platform_util.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/platform_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform_util.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/sha256.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/sha256.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/sha256.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/sha256.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/sha256.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/sha256.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/threading.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/threading.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/threading.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/threading.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/threading.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/threading.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager.o: $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_attestation.o: $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_attestation.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_attestation.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_attestation.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_attestation.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_attestation.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_cipher.o: $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_cipher.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_cipher.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_entropy.o: $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_entropy.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_entropy.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_entropy.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_entropy.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_entropy.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_hash.o: $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_hash.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_hash.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_hash.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_hash.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_derivation.o: $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_derivation.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_derivation.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_derivation.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_handling.o: $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_handling.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_handling.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_handling.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_handling.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_handling.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_signature.o: $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_signature.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_signature.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_signature.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_signature.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_signature.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_util.o: $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_util.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_util.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_util.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_alt/source/sl_entropy.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_alt/source/sl_entropy.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_alt/source/sl_entropy.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_alt/source/sl_entropy.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_alt/source/sl_entropy.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_alt/source/sl_entropy.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba414ep_config.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba414ep_config.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba414ep_config.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba414ep_config.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba414ep_config.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba414ep_config.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba431_config.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba431_config.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba431_config.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba431_config.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba431_config.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba431_config.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptodma_internal.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptodma_internal.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptodma_internal.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptodma_internal.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptodma_internal.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptodma_internal.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptolib_types.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptolib_types.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptolib_types.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptolib_types.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptolib_types.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptolib_types.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_aes.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_aes.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_aes.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_aes.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_aes.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_aes.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_blk_cipher.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_blk_cipher.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_blk_cipher.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_blk_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_blk_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_blk_cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_dh_alg.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_dh_alg.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_dh_alg.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_dh_alg.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_dh_alg.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_dh_alg.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_curves.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_curves.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_curves.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_curves.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_curves.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_curves.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_keygen_alg.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_keygen_alg.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_keygen_alg.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_keygen_alg.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_keygen_alg.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_keygen_alg.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecdsa_alg.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecdsa_alg.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecdsa_alg.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecdsa_alg.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecdsa_alg.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecdsa_alg.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_hash.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_hash.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_hash.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_hash.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_hash.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_math.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_math.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_math.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_math.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_math.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_math.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcmp.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcmp.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcmp.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcmp.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcmp.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcmp.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcpy.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcpy.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcpy.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcpy.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcpy.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcpy.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_primitives.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_primitives.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_primitives.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_primitives.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_primitives.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_primitives.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_rng.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_rng.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_rng.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_rng.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_rng.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_rng.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_trng.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_trng.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_trng.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_trng.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_trng.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_trng.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_aes.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_aes.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_aes.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_aes.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_aes.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_aes.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_ccm.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_ccm.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_ccm.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_ccm.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_ccm.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_ccm.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_gcm.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_gcm.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_gcm.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_gcm.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_gcm.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_gcm.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_ecdsa_ecdh.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_ecdsa_ecdh.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_ecdsa_ecdh.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_ecdsa_ecdh.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_ecdsa_ecdh.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_ecdsa_ecdh.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_radioaes_management.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_radioaes_management.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_radioaes_management.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_radioaes_management.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_radioaes_management.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_radioaes_management.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/cryptoacc_management.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/cryptoacc_management.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/cryptoacc_management.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/cryptoacc_management.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/cryptoacc_management.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/cryptoacc_management.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_aead.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_aead.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_aead.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_aead.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_cipher.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_cipher.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_cipher.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_hash.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_hash.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_hash.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_hash.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_hash.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_derivation.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_derivation.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_derivation.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_derivation.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_management.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_management.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_management.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_management.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_management.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_management.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_mac.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_mac.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_mac.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_mac.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_signature.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_signature.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_signature.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_signature.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_signature.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_signature.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o: $(SDK_PATH)/util/third_party/printf/printf.c
	@echo 'Building $(SDK_PATH)/util/third_party/printf/printf.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/printf/printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o: $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c
	@echo 'Building $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA