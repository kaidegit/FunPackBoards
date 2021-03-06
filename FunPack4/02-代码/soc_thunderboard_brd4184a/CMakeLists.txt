cmake_minimum_required(VERSION 3.17)
project(soc_thunderboard_brd4184a C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(autogen)
include_directories(brd4184a)
include_directories(config)
set(SDK_PATH /Applications/SimplicityStudio.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1)
include_directories(
        ${SDK_PATH}/platform/common/toolchain/inc
        ${SDK_PATH}/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart
        ${SDK_PATH}/platform/driver/leddrv/inc
        ${SDK_PATH}/platform/service/iostream/inc
        ${SDK_PATH}/platform/emdrv/nvm3/inc
        ${SDK_PATH}/hardware/driver/si1133/inc
        ${SDK_PATH}/platform/service/device_init/inc
        ${SDK_PATH}/app/bluetooth/common/simple_timer
        ${SDK_PATH}/util/third_party/crypto/sl_component/sl_protocol_crypto/src
        ${SDK_PATH}/platform/common/inc
        ${SDK_PATH}/util/third_party/crypto/mbedtls/include
        ${SDK_PATH}/platform/emlib/inc
        ${SDK_PATH}/app/bluetooth/common/gatt_service_hall
        ${SDK_PATH}/protocol/bluetooth/inc
        ${SDK_PATH}/util/third_party/crypto/sl_component/sl_cryptoacc_library/include
        ${SDK_PATH}/platform/service/hfxo_manager/inc
        ${SDK_PATH}/platform/emdrv/common/inc
        ${SDK_PATH}/hardware/board/inc
        ${SDK_PATH}/platform/service/ram_interrupt_vector_init/inc
        ${SDK_PATH}/app/bluetooth/common/sensor_hall
        ${SDK_PATH}/app/bluetooth/common/app_log
        ${SDK_PATH}/platform/radio/rail_lib/common
        ${SDK_PATH}/platform/radio/rail_lib/protocol/ble
        ${SDK_PATH}/platform/radio/rail_lib/protocol/ieee802154
        ${SDK_PATH}/platform/radio/rail_lib/protocol/zwave
        ${SDK_PATH}/platform/radio/rail_lib/protocol/mfm
        ${SDK_PATH}/platform/radio/rail_lib/chip/efr32/efr32xg2x
        ${SDK_PATH}/util/third_party/crypto/sl_component/se_manager/inc
        ${SDK_PATH}/util/third_party/crypto/sl_component/se_manager/src
        ${SDK_PATH}/app/bluetooth/common/gatt_service_light
        ${SDK_PATH}/hardware/driver/si70xx/inc
        ${SDK_PATH}/util/third_party/printf
        ${SDK_PATH}/util/third_party/printf/inc
        ${SDK_PATH}/util/third_party/crypto/sl_component/sl_alt/include
        ${SDK_PATH}/util/third_party/crypto/sl_component/sl_mbedtls_support/inc
        ${SDK_PATH}/app/bluetooth/common/gatt_service_imu
        ${SDK_PATH}/platform/driver/button/inc
        ${SDK_PATH}/app/bluetooth/common/app_assert
        ${SDK_PATH}/app/bluetooth/common/sensor_light
        ${SDK_PATH}/app/bluetooth/common/sensor_rht
        ${SDK_PATH}/platform/service/sleeptimer/inc
        ${SDK_PATH}/app/bluetooth/common/gatt_service_battery
        ${SDK_PATH}/platform/service/mpu/inc
        ${SDK_PATH}/app/bluetooth/common/gatt_service_rht
        ${SDK_PATH}/platform/service/system/inc
        ${SDK_PATH}/platform/emdrv/gpiointerrupt/inc
        ${SDK_PATH}/app/bluetooth/common/gatt_service_aio
        ${SDK_PATH}/platform/radio/rail_lib/plugin/rail_util_pti
        ${SDK_PATH}/util/third_party/crypto/sl_component/sl_psa_driver/inc
        ${SDK_PATH}/platform/service/udelay/inc
        ${SDK_PATH}/platform/service/power_manager/inc
        ${SDK_PATH}/platform/driver/i2cspm/inc
        ${SDK_PATH}/hardware/driver/si7210/inc
        ${SDK_PATH}/util/silicon_labs/silabs_core/memory_manager
        ${SDK_PATH}/app/bluetooth/common/sensor_select
        ${SDK_PATH}/app/bluetooth/common/sensor_imu
        ${SDK_PATH}/hardware/driver/icm20648/inc
        ${SDK_PATH}/platform/radio/rail_lib/plugin/pa-conversions
        ${SDK_PATH}/platform/radio/rail_lib/plugin/pa-conversions/efr32xg22
        ${SDK_PATH}/app/bluetooth/common/ota_dfu
        ${SDK_PATH}/util/third_party/crypto/sl_component/sl_mbedtls_support/inc/configs
        ${SDK_PATH}/util/third_party/crypto/mbedtls/library
        ${SDK_PATH}/platform/bootloader
        ${SDK_PATH}/platform/bootloader/api
        ${SDK_PATH}/platform/CMSIS/Include
        ${SDK_PATH}/hardware/driver/imu/inc
        ${SDK_PATH}/app/bluetooth/common/power_supply
        ${SDK_PATH}/platform/Device/SiliconLabs/EFR32BG22/Include
)
link_libraries(gcc
        c
        m
        nosys
        ${SDK_PATH}/platform/emdrv/nvm3/lib/libnvm3_CM33_gcc.a
        ${SDK_PATH}/protocol/bluetooth/lib/EFR32BG22/GCC/libbluetooth.a
        ${SDK_PATH}/platform/radio/rail_lib/autogen/librail_release/librail_efr32xg22_gcc_release.a
        ${SDK_PATH}/protocol/bluetooth/lib/EFR32BG22/GCC/binapploader.o)

add_executable(soc_thunderboard_brd4184a
        autogen/gatt_db.c
        autogen/gatt_db.h
        autogen/mbedtls_config_autogen.h
        autogen/RTE_Components.h
        autogen/sl_bluetooth.c
        autogen/sl_bluetooth.h
        autogen/sl_board_default_init.c
        autogen/sl_component_catalog.h
        autogen/sl_device_init_clocks.c
        autogen/sl_event_handler.c
        autogen/sl_event_handler.h
        autogen/sl_i2cspm_init.c
        autogen/sl_i2cspm_instances.h
        autogen/sl_iostream_handles.c
        autogen/sl_iostream_handles.h
        autogen/sl_iostream_init_instances.h
        autogen/sl_iostream_init_usart_instances.c
        autogen/sl_iostream_init_usart_instances.h
        autogen/sl_power_manager_handler.c
        autogen/sl_simple_button_instances.c
        autogen/sl_simple_button_instances.h
        autogen/sl_simple_led_instances.c
        autogen/sl_simple_led_instances.h
        brd4184a/board.h
        config/mbedtls_config.h
        config/nvm3_default_config.h
        config/pin_config.h
        config/sl_app_assert_config.h
        config/sl_app_log_config.h
        config/sl_bluetooth_config.h
        config/sl_board_control_config.h
        config/sl_device_init_dcdc_config.h
        config/sl_device_init_emu_config.h
        config/sl_device_init_hfxo_config.h
        config/sl_device_init_lfrco_config.h
        config/sl_device_init_lfxo_config.h
        config/sl_hfxo_manager_config.h
        config/sl_i2cspm_sensor_config.h
        config/sl_icm20648_config.h
        config/sl_iostream_usart_vcom_config.h
        config/sl_memory_config.h
        config/sl_mx25_flash_shutdown_usart_config.h
        config/sl_power_manager_config.h
        config/sl_rail_util_pa_config.h
        config/sl_rail_util_pti_config.h
        config/sl_simple_button_btn0_config.h
        config/sl_simple_button_config.h
        config/sl_simple_led_led0_config.h
        config/sl_sleeptimer_config.h
        advertise.c
        advertise.h
        app.c
        app.h
        app_properties.c
        main.c)
