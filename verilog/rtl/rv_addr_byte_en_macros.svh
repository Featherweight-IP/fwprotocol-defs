
`ifndef INCLUDED_RV_ADDR_BYTE_EN_MACROS_SVH
`define INCLUDED_RV_ADDR_BYTE_EN_MACROS_SVH
	
`define RV_ADDR_BYTE_EN_INITIATOR_PORT(PREFIX,ADR_WIDTH,DAT_WIDTH) \
	output[ADR_WIDTH-1:0]			PREFIX``adr, \
	output[DAT_WIDTH-1:0]			PREFIX``dat_w, \
	input[DAT_WIDTH-1:0]			PREFIX``dat_r, \
	output[DAT_WIDTH/8-1:0]			PREFIX``sel, \
	output							PREFIX``we, \
	output							PREFIX``valid, \
	input							PREFIX``ready
	
`define RV_ADDR_BYTE_EN_TARGET_PORT(PREFIX,ADR_WIDTH,DAT_WIDTH) \
	input[ADR_WIDTH-1:0]			PREFIX``adr, \
	input[DAT_WIDTH-1:0]			PREFIX``dat_w, \
	output[DAT_WIDTH-1:0]			PREFIX``dat_r, \
	input[DAT_WIDTH/8-1:0]			PREFIX``sel, \
	input							PREFIX``we, \
	input							PREFIX``valid, \
	output							PREFIX``ready
	
`define RV_ADDR_BYTE_EN_WIRES(PREFIX,ADR_WIDTH,DAT_WIDTH) \
	wire[ADR_WIDTH-1:0]				PREFIX``adr, \
	wire[DAT_WIDTH-1:0]				PREFIX``dat_w, \
	wire[DAT_WIDTH-1:0]				PREFIX``dat_r, \
	wire[DAT_WIDTH/8-1:0]			PREFIX``sel, \
	wire							PREFIX``we, \
	wire							PREFIX``valid, \
	wire							PREFIX``ready
	
`endif /* INCLUDED_RV_ADDR_BYTE_EN_MACROS_SVH */
