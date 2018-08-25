# Kernel
include vendor/cygnus/configs/BoardConfigKernel.mk

# Qcom-specific bits
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/cygnus/configs/BoardConfigQcom.mk
endif

# Soong
include vendor/cygnus/configs/BoardConfigSoong.mk
