#****************************************************************************
#* MKDV defs_rules.mk for fwprotocol-defs
#****************************************************************************
FWPROTOCOL_DEFS_RTL_DIR := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

ifneq (1,$(RULES))

MKDV_VL_INCDIRS += $(FWPROTOCOL_DEFS_RTL_DIR)


else # Rules

endif