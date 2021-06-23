#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/S4e_Depart_etud.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/S4e_Depart_etud.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/led.c ../src/ssd.c ../src/accel.c ../src/i2c.c ../src/lcd.c ../src/system_config/default/framework/driver/encx24j600/bus/spi/drv_encx24j600_spi_bus.c ../src/system_config/default/framework/driver/encx24j600/closed_state/drv_encx24j600_closed_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_initialization_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_configure_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_detect_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_reset_state.c ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_tx_packet.c ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_rx_packet.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_running_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_change_duplex_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_int_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_status_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_tx_status_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_reset_rx_state.c ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_api.c ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_main_state.c ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_utils.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c ../src/system_config/default/framework/driver/spi/src/dynamic/drv_spi.c ../src/system_config/default/framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../src/system_config/default/framework/driver/tmr/src/dynamic/drv_tmr.c ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static_buffer_queue.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static_read_write.c ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/default/framework/system/command/src/sys_command.c ../src/system_config/default/framework/system/console/src/sys_console.c ../src/system_config/default/framework/system/console/src/sys_console_uart.c ../src/system_config/default/framework/system/devcon/src/sys_devcon.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/default/framework/system/int/src/sys_int_pic32.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/framework/system/random/src/sys_random.c ../src/system_config/default/framework/system/reset/src/sys_reset.c ../src/system_config/default/framework/system/tmr/src/sys_tmr.c ../src/system_config/default/framework/tcpip/src/common/helpers.c ../src/system_config/default/framework/tcpip/src/ipv4.c ../src/system_config/default/framework/tcpip/src/udp.c ../src/system_config/default/framework/tcpip/src/tcpip_heap_alloc.c ../src/system_config/default/framework/tcpip/src/tcpip_heap_internal.c ../src/system_config/default/framework/tcpip/src/arp.c ../src/system_config/default/framework/tcpip/src/dns.c ../src/system_config/default/framework/tcpip/src/hash_fnv.c ../src/system_config/default/framework/tcpip/src/oahash.c ../src/system_config/default/framework/tcpip/src/tcpip_helpers.c ../src/system_config/default/framework/tcpip/src/tcpip_helper_c32.S ../src/system_config/default/framework/tcpip/src/tcpip_manager.c ../src/system_config/default/framework/tcpip/src/tcpip_notify.c ../src/system_config/default/framework/tcpip/src/tcpip_packet.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_tasks.c ../src/app_commands.c ../src/UDP_app.c ../src/main.c ../src/rgbled.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/led.o ${OBJECTDIR}/_ext/1360937237/ssd.o ${OBJECTDIR}/_ext/1360937237/accel.o ${OBJECTDIR}/_ext/1360937237/i2c.o ${OBJECTDIR}/_ext/1360937237/lcd.o ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ${OBJECTDIR}/_ext/915312864/drv_spi.o ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/1298913485/drv_tmr.o ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o ${OBJECTDIR}/_ext/327000265/drv_usart_static.o ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/2001008086/sys_command.o ${OBJECTDIR}/_ext/1544295906/sys_console.o ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/327917790/sys_random.o ${OBJECTDIR}/_ext/68765530/sys_reset.o ${OBJECTDIR}/_ext/1417409628/sys_tmr.o ${OBJECTDIR}/_ext/1881663949/helpers.o ${OBJECTDIR}/_ext/26143033/ipv4.o ${OBJECTDIR}/_ext/26143033/udp.o ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o ${OBJECTDIR}/_ext/26143033/arp.o ${OBJECTDIR}/_ext/26143033/dns.o ${OBJECTDIR}/_ext/26143033/hash_fnv.o ${OBJECTDIR}/_ext/26143033/oahash.o ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o ${OBJECTDIR}/_ext/26143033/tcpip_manager.o ${OBJECTDIR}/_ext/26143033/tcpip_notify.o ${OBJECTDIR}/_ext/26143033/tcpip_packet.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app_commands.o ${OBJECTDIR}/_ext/1360937237/UDP_app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/rgbled.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/led.o.d ${OBJECTDIR}/_ext/1360937237/ssd.o.d ${OBJECTDIR}/_ext/1360937237/accel.o.d ${OBJECTDIR}/_ext/1360937237/i2c.o.d ${OBJECTDIR}/_ext/1360937237/lcd.o.d ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o.d ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o.d ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o.d ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o.d ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o.d ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o.d ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o.d ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o.d ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o.d ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o.d ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o.d ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o.d ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o.d ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o.d ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o.d ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o.d ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o.d ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d ${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d ${OBJECTDIR}/_ext/915312864/drv_spi.o.d ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o.d ${OBJECTDIR}/_ext/1298913485/drv_tmr.o.d ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d ${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o.d ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o.d ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d ${OBJECTDIR}/_ext/2001008086/sys_command.o.d ${OBJECTDIR}/_ext/1544295906/sys_console.o.d ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o.d ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d ${OBJECTDIR}/_ext/327917790/sys_random.o.d ${OBJECTDIR}/_ext/68765530/sys_reset.o.d ${OBJECTDIR}/_ext/1417409628/sys_tmr.o.d ${OBJECTDIR}/_ext/1881663949/helpers.o.d ${OBJECTDIR}/_ext/26143033/ipv4.o.d ${OBJECTDIR}/_ext/26143033/udp.o.d ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o.d ${OBJECTDIR}/_ext/26143033/arp.o.d ${OBJECTDIR}/_ext/26143033/dns.o.d ${OBJECTDIR}/_ext/26143033/hash_fnv.o.d ${OBJECTDIR}/_ext/26143033/oahash.o.d ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o.d ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d ${OBJECTDIR}/_ext/26143033/tcpip_manager.o.d ${OBJECTDIR}/_ext/26143033/tcpip_notify.o.d ${OBJECTDIR}/_ext/26143033/tcpip_packet.o.d ${OBJECTDIR}/_ext/1688732426/system_init.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app_commands.o.d ${OBJECTDIR}/_ext/1360937237/UDP_app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/rgbled.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/led.o ${OBJECTDIR}/_ext/1360937237/ssd.o ${OBJECTDIR}/_ext/1360937237/accel.o ${OBJECTDIR}/_ext/1360937237/i2c.o ${OBJECTDIR}/_ext/1360937237/lcd.o ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ${OBJECTDIR}/_ext/915312864/drv_spi.o ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/1298913485/drv_tmr.o ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o ${OBJECTDIR}/_ext/327000265/drv_usart_static.o ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/2001008086/sys_command.o ${OBJECTDIR}/_ext/1544295906/sys_console.o ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/327917790/sys_random.o ${OBJECTDIR}/_ext/68765530/sys_reset.o ${OBJECTDIR}/_ext/1417409628/sys_tmr.o ${OBJECTDIR}/_ext/1881663949/helpers.o ${OBJECTDIR}/_ext/26143033/ipv4.o ${OBJECTDIR}/_ext/26143033/udp.o ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o ${OBJECTDIR}/_ext/26143033/arp.o ${OBJECTDIR}/_ext/26143033/dns.o ${OBJECTDIR}/_ext/26143033/hash_fnv.o ${OBJECTDIR}/_ext/26143033/oahash.o ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o ${OBJECTDIR}/_ext/26143033/tcpip_manager.o ${OBJECTDIR}/_ext/26143033/tcpip_notify.o ${OBJECTDIR}/_ext/26143033/tcpip_packet.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app_commands.o ${OBJECTDIR}/_ext/1360937237/UDP_app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/rgbled.o

# Source Files
SOURCEFILES=../src/led.c ../src/ssd.c ../src/accel.c ../src/i2c.c ../src/lcd.c ../src/system_config/default/framework/driver/encx24j600/bus/spi/drv_encx24j600_spi_bus.c ../src/system_config/default/framework/driver/encx24j600/closed_state/drv_encx24j600_closed_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_initialization_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_configure_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_detect_state.c ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_reset_state.c ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_tx_packet.c ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_rx_packet.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_running_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_change_duplex_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_int_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_status_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_tx_status_state.c ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_reset_rx_state.c ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_api.c ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_main_state.c ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_utils.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c ../src/system_config/default/framework/driver/spi/src/dynamic/drv_spi.c ../src/system_config/default/framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../src/system_config/default/framework/driver/tmr/src/dynamic/drv_tmr.c ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static_buffer_queue.c ../src/system_config/default/framework/driver/usart/src/drv_usart_static_read_write.c ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/default/framework/system/command/src/sys_command.c ../src/system_config/default/framework/system/console/src/sys_console.c ../src/system_config/default/framework/system/console/src/sys_console_uart.c ../src/system_config/default/framework/system/devcon/src/sys_devcon.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/default/framework/system/int/src/sys_int_pic32.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/framework/system/random/src/sys_random.c ../src/system_config/default/framework/system/reset/src/sys_reset.c ../src/system_config/default/framework/system/tmr/src/sys_tmr.c ../src/system_config/default/framework/tcpip/src/common/helpers.c ../src/system_config/default/framework/tcpip/src/ipv4.c ../src/system_config/default/framework/tcpip/src/udp.c ../src/system_config/default/framework/tcpip/src/tcpip_heap_alloc.c ../src/system_config/default/framework/tcpip/src/tcpip_heap_internal.c ../src/system_config/default/framework/tcpip/src/arp.c ../src/system_config/default/framework/tcpip/src/dns.c ../src/system_config/default/framework/tcpip/src/hash_fnv.c ../src/system_config/default/framework/tcpip/src/oahash.c ../src/system_config/default/framework/tcpip/src/tcpip_helpers.c ../src/system_config/default/framework/tcpip/src/tcpip_helper_c32.S ../src/system_config/default/framework/tcpip/src/tcpip_manager.c ../src/system_config/default/framework/tcpip/src/tcpip_notify.c ../src/system_config/default/framework/tcpip/src/tcpip_packet.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_tasks.c ../src/app_commands.c ../src/UDP_app.c ../src/main.c ../src/rgbled.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/S4e_Depart_etud.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX370F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o: ../src/system_config/default/framework/tcpip/src/tcpip_helper_c32.S  .generated_files/b6d7844513199e897c4cbf5bb29a33fa66cdd606.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o ../src/system_config/default/framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 
	@${FIXDEPS} "${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o: ../src/system_config/default/framework/tcpip/src/tcpip_helper_c32.S  .generated_files/9d90f242447480bf7c7b05d7a2e7440318c41e92.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o ../src/system_config/default/framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.asm.d",--gdwarf-2 
	@${FIXDEPS} "${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/26143033/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/led.o: ../src/led.c  .generated_files/ff5cdc4b3bce83d83c0f4c9d25b90554b014f851.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/led.o.d" -o ${OBJECTDIR}/_ext/1360937237/led.o ../src/led.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/ssd.o: ../src/ssd.c  .generated_files/84e73d07d1f7bd0af7eb487ac4ab0fe403d4bea2.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ssd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ssd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ssd.o.d" -o ${OBJECTDIR}/_ext/1360937237/ssd.o ../src/ssd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/accel.o: ../src/accel.c  .generated_files/55060ecffa4681310397229df507f5b8057e580f.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/accel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/accel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/accel.o.d" -o ${OBJECTDIR}/_ext/1360937237/accel.o ../src/accel.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/i2c.o: ../src/i2c.c  .generated_files/8cfc47c9c4c858f2fb5fe651b288c938c388f509.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c.o ../src/i2c.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/lcd.o: ../src/lcd.c  .generated_files/dd406699918f2efad402f38d48ddbd4e62a4b606.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/lcd.o.d" -o ${OBJECTDIR}/_ext/1360937237/lcd.o ../src/lcd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o: ../src/system_config/default/framework/driver/encx24j600/bus/spi/drv_encx24j600_spi_bus.c  .generated_files/22373f209d7faaaa1a919feaa208cd989174c593.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/996065237" 
	@${RM} ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o.d 
	@${RM} ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o.d" -o ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o ../src/system_config/default/framework/driver/encx24j600/bus/spi/drv_encx24j600_spi_bus.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o: ../src/system_config/default/framework/driver/encx24j600/closed_state/drv_encx24j600_closed_state.c  .generated_files/e875555819ff9d3af83b767e005f5ea55d24d782.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1600828880" 
	@${RM} ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o.d" -o ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o ../src/system_config/default/framework/driver/encx24j600/closed_state/drv_encx24j600_closed_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_initialization_state.c  .generated_files/9abf3728be66b2866d125996bce794704bd37afd.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_initialization_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_configure_state.c  .generated_files/9d995a59733ee960097c67c29e25fde89dec6f88.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_configure_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_detect_state.c  .generated_files/ce5b2374cf62de4b158c15bd501d39bfe704ffd2.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_detect_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_reset_state.c  .generated_files/f157f4d28ddd1e4792fbca835f83650b0321ea08.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_reset_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o: ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_tx_packet.c  .generated_files/1610cc84431ab22b21b26c3daff4284f09158d6c.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728422854" 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o.d" -o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_tx_packet.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o: ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_rx_packet.c  .generated_files/70709e16d4babb0b5ce40d450739bafdbca8cebc.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728422854" 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o.d" -o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_rx_packet.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_running_state.c  .generated_files/1d171bc50a95087fc54c3da320bf474169c1304e.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_running_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_change_duplex_state.c  .generated_files/7190ca2d07a5113aff104bd0819f5cbf388c5551.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_change_duplex_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_int_state.c  .generated_files/11777219729f45b4e766d9640006af92d54f019b.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_int_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_status_state.c  .generated_files/ef89894c7589d0a3dfeb64f66a2fd1a3b5fd0b8d.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_status_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_tx_status_state.c  .generated_files/e3b1e2036f1f11a2681708ada33bebf1640d40f4.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_tx_status_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_reset_rx_state.c  .generated_files/6c5b7ce3ac4a4ef4ebae0c30bb940c017a39caf8.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_reset_rx_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o: ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_api.c  .generated_files/31999038acb54dd67aac75fad07fc79abb852a1.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/820865379" 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o.d" -o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_api.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o: ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_main_state.c  .generated_files/46e175ca564c53b9d958a44fa4c2ebc67244a9c3.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/820865379" 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o.d" -o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_main_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o: ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_utils.c  .generated_files/3ddc69fe3227e7588e5b81016601ef96cbb5bf96.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/820865379" 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o.d" -o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_utils.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c  .generated_files/f508e95f691f4b1b7fc9d3b61c1a8f3e6711dbf.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/977502197/drv_spi_api.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c  .generated_files/fca34521c4f1ed2d6722a6b1f1cad4be9dbbd26b.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  .generated_files/4be48c48004af7707b00067810e9155844e8b31d.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/915312864/drv_spi.o: ../src/system_config/default/framework/driver/spi/src/dynamic/drv_spi.c  .generated_files/eea9e555406de8ffc41962e4952d6c4c042c23f7.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/915312864" 
	@${RM} ${OBJECTDIR}/_ext/915312864/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/915312864/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/915312864/drv_spi.o.d" -o ${OBJECTDIR}/_ext/915312864/drv_spi.o ../src/system_config/default/framework/driver/spi/src/dynamic/drv_spi.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o: ../src/system_config/default/framework/driver/spi/src/drv_spi_sys_queue_fifo.c  .generated_files/c391b4af8bea0eae71c44da365ccd35d35eb0317.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2077795248" 
	@${RM} ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o ../src/system_config/default/framework/driver/spi/src/drv_spi_sys_queue_fifo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1298913485/drv_tmr.o: ../src/system_config/default/framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/26b7f3031b4adb61fcf28b7e854ec57d3d8702e9.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1298913485" 
	@${RM} ${OBJECTDIR}/_ext/1298913485/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1298913485/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1298913485/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1298913485/drv_tmr.o ../src/system_config/default/framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c  .generated_files/21ab936cb2cdafe68abea8204aba99e604c279fa.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/327000265/drv_usart_static.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c  .generated_files/c14d026d0bd4afed3b353b72fbaa9af96bbb227b.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static_buffer_queue.c  .generated_files/e671544b65d8d58897af5967d4fec2f0718734c8.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static_buffer_queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static_read_write.c  .generated_files/914cda03bbdbf13915709a840aaf8d8f0a0089f7.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static_read_write.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/9cc32d09ec3cb414f4066e54137744dcfa6f700.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2001008086/sys_command.o: ../src/system_config/default/framework/system/command/src/sys_command.c  .generated_files/6b61eb4c446e4331adf1651a4c69e84987577e92.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2001008086" 
	@${RM} ${OBJECTDIR}/_ext/2001008086/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001008086/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2001008086/sys_command.o.d" -o ${OBJECTDIR}/_ext/2001008086/sys_command.o ../src/system_config/default/framework/system/command/src/sys_command.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1544295906/sys_console.o: ../src/system_config/default/framework/system/console/src/sys_console.c  .generated_files/2c55b4adcef5f33356250098c320f8c31054b710.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1544295906" 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544295906/sys_console.o.d" -o ${OBJECTDIR}/_ext/1544295906/sys_console.o ../src/system_config/default/framework/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1544295906/sys_console_uart.o: ../src/system_config/default/framework/system/console/src/sys_console_uart.c  .generated_files/6f304b9850a4c8b7783a820085d324a8e5beb070.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1544295906" 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544295906/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o ../src/system_config/default/framework/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  .generated_files/336ecfb8b4dab4ee5549abe54e443f82779ac3c2.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/eb601ef1c43248a3877c544a23dcc93904e51d4f.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o: ../src/system_config/default/framework/system/int/src/sys_int_pic32.c  .generated_files/2b379e08d37b4b379893794d8d7e3e63a012a0ea.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1735427962" 
	@${RM} ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o ../src/system_config/default/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  .generated_files/7d98b2671645437eb3382952cf019b8ba86f4591.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/327917790/sys_random.o: ../src/system_config/default/framework/system/random/src/sys_random.c  .generated_files/4149e3e9f21bd59069267a5a0bfefc63131f7f4d.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327917790" 
	@${RM} ${OBJECTDIR}/_ext/327917790/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/327917790/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327917790/sys_random.o.d" -o ${OBJECTDIR}/_ext/327917790/sys_random.o ../src/system_config/default/framework/system/random/src/sys_random.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/68765530/sys_reset.o: ../src/system_config/default/framework/system/reset/src/sys_reset.c  .generated_files/ebd01372266bd20843562dcbe1a2c6637c5b2591.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/68765530" 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68765530/sys_reset.o.d" -o ${OBJECTDIR}/_ext/68765530/sys_reset.o ../src/system_config/default/framework/system/reset/src/sys_reset.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1417409628/sys_tmr.o: ../src/system_config/default/framework/system/tmr/src/sys_tmr.c  .generated_files/cd1f80b6bd0388df011a0833ac3a1170804dbb2.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1417409628" 
	@${RM} ${OBJECTDIR}/_ext/1417409628/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1417409628/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1417409628/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1417409628/sys_tmr.o ../src/system_config/default/framework/system/tmr/src/sys_tmr.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1881663949/helpers.o: ../src/system_config/default/framework/tcpip/src/common/helpers.c  .generated_files/a20b696f9e8de7db2604434a9eec380f0af2ec10.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1881663949" 
	@${RM} ${OBJECTDIR}/_ext/1881663949/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881663949/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881663949/helpers.o.d" -o ${OBJECTDIR}/_ext/1881663949/helpers.o ../src/system_config/default/framework/tcpip/src/common/helpers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/ipv4.o: ../src/system_config/default/framework/tcpip/src/ipv4.c  .generated_files/be78919f8d259360cf9dd4c4523b878630cd5c4d.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/ipv4.o.d" -o ${OBJECTDIR}/_ext/26143033/ipv4.o ../src/system_config/default/framework/tcpip/src/ipv4.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/udp.o: ../src/system_config/default/framework/tcpip/src/udp.c  .generated_files/626858d0505a7bd1483f04767f9b46cfd5fe139d.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/udp.o.d" -o ${OBJECTDIR}/_ext/26143033/udp.o ../src/system_config/default/framework/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o: ../src/system_config/default/framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/d19d0f2376bfa9b515e3d0746d402700f013995.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o ../src/system_config/default/framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o: ../src/system_config/default/framework/tcpip/src/tcpip_heap_internal.c  .generated_files/249333d73c46b3fac5c754c8d3626ce29cc59363.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o ../src/system_config/default/framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/arp.o: ../src/system_config/default/framework/tcpip/src/arp.c  .generated_files/1b172d752077692dc6dfb1e33c4477711566ba44.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/arp.o.d" -o ${OBJECTDIR}/_ext/26143033/arp.o ../src/system_config/default/framework/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/dns.o: ../src/system_config/default/framework/tcpip/src/dns.c  .generated_files/4f7b62156a12a4f083a66304e0ef1a8fd2e06799.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/dns.o.d" -o ${OBJECTDIR}/_ext/26143033/dns.o ../src/system_config/default/framework/tcpip/src/dns.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/hash_fnv.o: ../src/system_config/default/framework/tcpip/src/hash_fnv.c  .generated_files/d8d906a92d9c3a3c18e91c51eaf894cac086dc43.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/26143033/hash_fnv.o ../src/system_config/default/framework/tcpip/src/hash_fnv.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/oahash.o: ../src/system_config/default/framework/tcpip/src/oahash.c  .generated_files/b730f6bbb9dfd82183cab88f2dae37c13c9ebcb4.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/oahash.o.d" -o ${OBJECTDIR}/_ext/26143033/oahash.o ../src/system_config/default/framework/tcpip/src/oahash.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_helpers.o: ../src/system_config/default/framework/tcpip/src/tcpip_helpers.c  .generated_files/51cf351a709e9aa6a6ba0131f23922e604f71f45.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o ../src/system_config/default/framework/tcpip/src/tcpip_helpers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_manager.o: ../src/system_config/default/framework/tcpip/src/tcpip_manager.c  .generated_files/3beb46bbaddde6c07f9fb41acb94f56a336cb5cc.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_manager.o ../src/system_config/default/framework/tcpip/src/tcpip_manager.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_notify.o: ../src/system_config/default/framework/tcpip/src/tcpip_notify.c  .generated_files/136e81a9ce3f94c011e42e5b0c983a37e5a0cfd6.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_notify.o ../src/system_config/default/framework/tcpip/src/tcpip_notify.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_packet.o: ../src/system_config/default/framework/tcpip/src/tcpip_packet.c  .generated_files/415c1668fedf33da350a4c2480d292f7cee9c647.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_packet.o ../src/system_config/default/framework/tcpip/src/tcpip_packet.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  .generated_files/d852977f45b1802a9d097915eb5ae1cacaacedaf.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  .generated_files/93b913ba1d191d751851d8962a7c264b1940bb07.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  .generated_files/b5e66fbe6ab3e2d0f8ffabe84d01bfdf09df5ede.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/app_commands.o: ../src/app_commands.c  .generated_files/599bfffeb88b35e3b56b774fa9508867fc9bafc5.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_commands.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_commands.o ../src/app_commands.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/UDP_app.o: ../src/UDP_app.c  .generated_files/ee0935203afc8aadd541f49926b8362a09112884.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UDP_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UDP_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/UDP_app.o.d" -o ${OBJECTDIR}/_ext/1360937237/UDP_app.o ../src/UDP_app.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/f6cf252e98e355690e35190a6e9495f490b04f03.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/rgbled.o: ../src/rgbled.c  .generated_files/346d0012f32177232b6efa8f9df869a022880f70.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rgbled.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rgbled.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/rgbled.o.d" -o ${OBJECTDIR}/_ext/1360937237/rgbled.o ../src/rgbled.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/1360937237/led.o: ../src/led.c  .generated_files/d54c9f608c24127474e602cd63ca3a29cd019888.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/led.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/led.o.d" -o ${OBJECTDIR}/_ext/1360937237/led.o ../src/led.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/ssd.o: ../src/ssd.c  .generated_files/ddee82dad6b680cf6e5ed555f7cd0f84f338bf4f.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ssd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ssd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ssd.o.d" -o ${OBJECTDIR}/_ext/1360937237/ssd.o ../src/ssd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/accel.o: ../src/accel.c  .generated_files/7f69eb65876438529acaaac7331e57cdc3414b9b.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/accel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/accel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/accel.o.d" -o ${OBJECTDIR}/_ext/1360937237/accel.o ../src/accel.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/i2c.o: ../src/i2c.c  .generated_files/c0971df779daa7e75baf2df196e69c0f06d7c507.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c.o ../src/i2c.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/lcd.o: ../src/lcd.c  .generated_files/9e7db86eda0ec33f4fffd7bc35e16b9434280cbc.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/lcd.o.d" -o ${OBJECTDIR}/_ext/1360937237/lcd.o ../src/lcd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o: ../src/system_config/default/framework/driver/encx24j600/bus/spi/drv_encx24j600_spi_bus.c  .generated_files/178575b814ccbf3100b44662420ee3bb29b4eeff.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/996065237" 
	@${RM} ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o.d 
	@${RM} ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o.d" -o ${OBJECTDIR}/_ext/996065237/drv_encx24j600_spi_bus.o ../src/system_config/default/framework/driver/encx24j600/bus/spi/drv_encx24j600_spi_bus.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o: ../src/system_config/default/framework/driver/encx24j600/closed_state/drv_encx24j600_closed_state.c  .generated_files/6a71a4436c4b41e31413a967104d401e51429a1f.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1600828880" 
	@${RM} ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o.d" -o ${OBJECTDIR}/_ext/1600828880/drv_encx24j600_closed_state.o ../src/system_config/default/framework/driver/encx24j600/closed_state/drv_encx24j600_closed_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_initialization_state.c  .generated_files/7f717404489edbe9dda6dd27b0d62eae6dd5f237.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_initialization_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_initialization_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_configure_state.c  .generated_files/389bb6db5f7ed95b5aed33ee0b48b219732278b6.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_configure_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_configure_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_detect_state.c  .generated_files/6b000ef3e3ca576c7449d20f2b816bae7b170f0c.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_detect_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_detect_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o: ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_reset_state.c  .generated_files/791e6830db1efa81b401c0a1c8aa0a0565770ee8.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/472602724" 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o.d" -o ${OBJECTDIR}/_ext/472602724/drv_encx24j600_reset_state.o ../src/system_config/default/framework/driver/encx24j600/initialization_state/drv_encx24j600_reset_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o: ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_tx_packet.c  .generated_files/c48e8374d57ab830b840670ac49074161f43e4ca.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728422854" 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o.d" -o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_tx_packet.o ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_tx_packet.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o: ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_rx_packet.c  .generated_files/9d82f09f8fe4d4c20c31ffbdb6f35578e32c9cfd.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1728422854" 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o.d" -o ${OBJECTDIR}/_ext/1728422854/drv_encx24j600_rx_packet.o ../src/system_config/default/framework/driver/encx24j600/packet/drv_encx24j600_rx_packet.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_running_state.c  .generated_files/a2247bce58614fabc74e9c3e8354c87a8f0efe27.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_running_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_running_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_change_duplex_state.c  .generated_files/365862e7cb72ed84c62a81f30bdc262eab8dd1dc.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_change_duplex_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_change_duplex_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_int_state.c  .generated_files/998a799c745bf7213b6819433a7c3431b071a977.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_int_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_int_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_status_state.c  .generated_files/96b0a5bf983a411b5dd8daf9c95010f6f86f2a5d.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_status_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_status_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_tx_status_state.c  .generated_files/2f881dad39dad69bf5b4a8a9337970d16b8e7309.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_check_tx_status_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_check_tx_status_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o: ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_reset_rx_state.c  .generated_files/66efff7e998f34692c0fc36ae9f3f2d2a825d38c.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/999618079" 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o.d" -o ${OBJECTDIR}/_ext/999618079/drv_encx24j600_reset_rx_state.o ../src/system_config/default/framework/driver/encx24j600/running_state/drv_encx24j600_reset_rx_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o: ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_api.c  .generated_files/c4fb4312f33c32b6f6e65e25fa04a154bc25b0d8.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/820865379" 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o.d" -o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_api.o ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_api.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o: ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_main_state.c  .generated_files/1ac7daade7c91bd8934f4ba7300c0fb82ef87a91.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/820865379" 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o.d 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o.d" -o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_main_state.o ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_main_state.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o: ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_utils.c  .generated_files/657e4cb12b8b4c9530c686678513c6456a3d382b.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/820865379" 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o.d" -o ${OBJECTDIR}/_ext/820865379/drv_encx24j600_utils.o ../src/system_config/default/framework/driver/encx24j600/drv_encx24j600_utils.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c  .generated_files/717961ae6fba91afcbee9e568b716e994fc5273a.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/977502197/drv_spi_api.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c  .generated_files/53ecf7740ae05e03e31796b50511b9aef59fe37.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_api.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_api.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o: ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  .generated_files/2a148e13ad6f538d73b2faf82d66cb97323383a2.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/977502197" 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/977502197/drv_spi_master_ebm_tasks.o ../src/system_config/default/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/915312864/drv_spi.o: ../src/system_config/default/framework/driver/spi/src/dynamic/drv_spi.c  .generated_files/69dc63c6b45440ce3bf79ad7d63fa8baa67d44d5.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/915312864" 
	@${RM} ${OBJECTDIR}/_ext/915312864/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/915312864/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/915312864/drv_spi.o.d" -o ${OBJECTDIR}/_ext/915312864/drv_spi.o ../src/system_config/default/framework/driver/spi/src/dynamic/drv_spi.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o: ../src/system_config/default/framework/driver/spi/src/drv_spi_sys_queue_fifo.c  .generated_files/c85caa5416f47602da5137e3fc31768ed9967ecc.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2077795248" 
	@${RM} ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/2077795248/drv_spi_sys_queue_fifo.o ../src/system_config/default/framework/driver/spi/src/drv_spi_sys_queue_fifo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1298913485/drv_tmr.o: ../src/system_config/default/framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/29d6cc8037657bf8d3b5bf985c42840b7d4a2f61.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1298913485" 
	@${RM} ${OBJECTDIR}/_ext/1298913485/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1298913485/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1298913485/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1298913485/drv_tmr.o ../src/system_config/default/framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c  .generated_files/20d5a710618eb5e807cf5f2282345deff3d190ad.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_mapping.o ../src/system_config/default/framework/driver/usart/src/drv_usart_mapping.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/327000265/drv_usart_static.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c  .generated_files/c892021b6b2d20b1304a7f499b6ec459f163c042.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static_buffer_queue.c  .generated_files/5091ca419848b3abd34dd4308e6a17273ffa654d.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static_buffer_queue.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static_buffer_queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o: ../src/system_config/default/framework/driver/usart/src/drv_usart_static_read_write.c  .generated_files/2494c61880b8afd216229dd02f75e011635e04d8.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327000265" 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o.d" -o ${OBJECTDIR}/_ext/327000265/drv_usart_static_read_write.o ../src/system_config/default/framework/driver/usart/src/drv_usart_static_read_write.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/80c1f2c7d325b905b05a5fc218e6728ab55ed71d.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2001008086/sys_command.o: ../src/system_config/default/framework/system/command/src/sys_command.c  .generated_files/d29d006bc023e69dbe6aa2c37c163c33a0f2c49c.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2001008086" 
	@${RM} ${OBJECTDIR}/_ext/2001008086/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001008086/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2001008086/sys_command.o.d" -o ${OBJECTDIR}/_ext/2001008086/sys_command.o ../src/system_config/default/framework/system/command/src/sys_command.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1544295906/sys_console.o: ../src/system_config/default/framework/system/console/src/sys_console.c  .generated_files/33de80a3f21619b3bafa60bb77e9d1fc74d14428.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1544295906" 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544295906/sys_console.o.d" -o ${OBJECTDIR}/_ext/1544295906/sys_console.o ../src/system_config/default/framework/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1544295906/sys_console_uart.o: ../src/system_config/default/framework/system/console/src/sys_console_uart.c  .generated_files/36d4dc6e37fa39b23524a22a9f565b2a9369353d.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1544295906" 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1544295906/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1544295906/sys_console_uart.o ../src/system_config/default/framework/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  .generated_files/9e39c5015c38cc28b33e5dfaab8aa511bbe8082e.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/c6a3a7186733bf68a8c2bff0ef68f5c5ff2359d6.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o: ../src/system_config/default/framework/system/int/src/sys_int_pic32.c  .generated_files/dbd86de5d632584b73c65f956178e68bd6a3749b.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1735427962" 
	@${RM} ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1735427962/sys_int_pic32.o ../src/system_config/default/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  .generated_files/1dcff727a33f5f8d1010bdc54e721b59b1766882.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/327917790/sys_random.o: ../src/system_config/default/framework/system/random/src/sys_random.c  .generated_files/1cd084b2bc33de6a1744ad268d24ac6bbb392a18.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/327917790" 
	@${RM} ${OBJECTDIR}/_ext/327917790/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/327917790/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327917790/sys_random.o.d" -o ${OBJECTDIR}/_ext/327917790/sys_random.o ../src/system_config/default/framework/system/random/src/sys_random.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/68765530/sys_reset.o: ../src/system_config/default/framework/system/reset/src/sys_reset.c  .generated_files/c7a709283ec1702f306c2e0c1c7eaa79178b4830.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/68765530" 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/68765530/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/68765530/sys_reset.o.d" -o ${OBJECTDIR}/_ext/68765530/sys_reset.o ../src/system_config/default/framework/system/reset/src/sys_reset.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1417409628/sys_tmr.o: ../src/system_config/default/framework/system/tmr/src/sys_tmr.c  .generated_files/4826162dbaa525d8ae1889ec4f2c4803ea357cbb.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1417409628" 
	@${RM} ${OBJECTDIR}/_ext/1417409628/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1417409628/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1417409628/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1417409628/sys_tmr.o ../src/system_config/default/framework/system/tmr/src/sys_tmr.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1881663949/helpers.o: ../src/system_config/default/framework/tcpip/src/common/helpers.c  .generated_files/17134739b46bab410b4adb4d45e0cb645259c147.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1881663949" 
	@${RM} ${OBJECTDIR}/_ext/1881663949/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881663949/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881663949/helpers.o.d" -o ${OBJECTDIR}/_ext/1881663949/helpers.o ../src/system_config/default/framework/tcpip/src/common/helpers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/ipv4.o: ../src/system_config/default/framework/tcpip/src/ipv4.c  .generated_files/e7d7c2558f8bc1060a65e2b315238551edb9f511.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/ipv4.o.d" -o ${OBJECTDIR}/_ext/26143033/ipv4.o ../src/system_config/default/framework/tcpip/src/ipv4.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/udp.o: ../src/system_config/default/framework/tcpip/src/udp.c  .generated_files/28921b063ca868af82df1b7fd1f4a51ea4e77d82.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/udp.o.d" -o ${OBJECTDIR}/_ext/26143033/udp.o ../src/system_config/default/framework/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o: ../src/system_config/default/framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/3824fe51a28447f3df181a66150d1e298a360852.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_heap_alloc.o ../src/system_config/default/framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o: ../src/system_config/default/framework/tcpip/src/tcpip_heap_internal.c  .generated_files/dce742487d8f64cc58e58e5854dcac31969c1445.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_heap_internal.o ../src/system_config/default/framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/arp.o: ../src/system_config/default/framework/tcpip/src/arp.c  .generated_files/8c6093235668cdea5b2216e383d81831e156d24c.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/arp.o.d" -o ${OBJECTDIR}/_ext/26143033/arp.o ../src/system_config/default/framework/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/dns.o: ../src/system_config/default/framework/tcpip/src/dns.c  .generated_files/4eca68943f32b7f06f5446d957fbe2054a20ab03.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/dns.o.d" -o ${OBJECTDIR}/_ext/26143033/dns.o ../src/system_config/default/framework/tcpip/src/dns.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/hash_fnv.o: ../src/system_config/default/framework/tcpip/src/hash_fnv.c  .generated_files/3e71a99dc7bdf09f3ba883b74cc1c08e72e072c8.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/26143033/hash_fnv.o ../src/system_config/default/framework/tcpip/src/hash_fnv.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/oahash.o: ../src/system_config/default/framework/tcpip/src/oahash.c  .generated_files/f93d2b953d77a3595808487ad254eedd0d0b9211.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/oahash.o.d" -o ${OBJECTDIR}/_ext/26143033/oahash.o ../src/system_config/default/framework/tcpip/src/oahash.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_helpers.o: ../src/system_config/default/framework/tcpip/src/tcpip_helpers.c  .generated_files/76c2e8d296ab8c9ab3eee05d680468394b16c9c1.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_helpers.o ../src/system_config/default/framework/tcpip/src/tcpip_helpers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_manager.o: ../src/system_config/default/framework/tcpip/src/tcpip_manager.c  .generated_files/3500309bf42248c3b24848474846dab7ba03ecff.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_manager.o ../src/system_config/default/framework/tcpip/src/tcpip_manager.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_notify.o: ../src/system_config/default/framework/tcpip/src/tcpip_notify.c  .generated_files/7ad33b2b76c77e66640d2b22d3b1de4c9fc069b1.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_notify.o ../src/system_config/default/framework/tcpip/src/tcpip_notify.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/26143033/tcpip_packet.o: ../src/system_config/default/framework/tcpip/src/tcpip_packet.c  .generated_files/4121b1d5bf6aaa77147f028be156f4ccc2d3ec44.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/26143033" 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/26143033/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26143033/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/26143033/tcpip_packet.o ../src/system_config/default/framework/tcpip/src/tcpip_packet.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  .generated_files/278de6cac4a4dc57c0e3af69fecfe63f9676cf80.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  .generated_files/68e7dd2b516ada5cdcfa7f0a58bf28fe2b37c105.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  .generated_files/f97685b94019a58b7c825eb1de969f5c0b9432bf.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/app_commands.o: ../src/app_commands.c  .generated_files/a1129c6c0dcb9c1a8b53e29f839dba765b3cf460.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_commands.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_commands.o ../src/app_commands.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/UDP_app.o: ../src/UDP_app.c  .generated_files/77e2304c728abf5c1f136b689336751ead78997b.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UDP_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UDP_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/UDP_app.o.d" -o ${OBJECTDIR}/_ext/1360937237/UDP_app.o ../src/UDP_app.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/46ab0cb2c1555293e5a60722d06ea8ecaf61af7a.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/rgbled.o: ../src/rgbled.c  .generated_files/8ded7bb077a638baf8f68c550e6d9343c68b0d08.flag .generated_files/a329993d2892a6260ee68c6e1c8d9ad4fa3be3e0.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rgbled.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rgbled.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../src/system_config/default/framework" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/rgbled.o.d" -o ${OBJECTDIR}/_ext/1360937237/rgbled.o ../src/rgbled.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/S4e_Depart_etud.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/S4e_Depart_etud.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC0275F  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=44960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/S4e_Depart_etud.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/S4e_Depart_etud.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=44960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/S4e_Depart_etud.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
