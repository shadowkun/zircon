# Copyright 2016 The Fuchsia Authors
#
# Use of this source code is governed by a MIT-style
# license that can be found in the LICENSE file or at
# https://opensource.org/licenses/MIT

LOCAL_DIR := $(GET_LOCAL_DIR)

MODULE := $(LOCAL_DIR)

MODULE_SRCS += \
	$(LOCAL_DIR)/platform.cpp \

ARCH := arm64

KERNEL_DEFINES += \
	PLATFORM_SUPPORTS_PANIC_SHELL=1

MODULE_DEPS += \
	kernel/lib/cbuf \
	kernel/lib/mdi \
	kernel/lib/memory_limit \
	kernel/dev/pcie \
	kernel/dev/pdev \
	kernel/dev/pdev/power \
	kernel/dev/timer/arm_generic \
	kernel/dev/interrupt/arm_gicv2 \
	kernel/dev/interrupt/arm_gicv3 \
	kernel/dev/power/hisi \
	kernel/dev/psci \
	kernel/dev/uart/amlogic_s905 \
	kernel/dev/uart/pl011 \

include make/module.mk
