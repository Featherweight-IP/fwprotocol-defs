
`ifndef INCLUDED_RV_MACROS_SVH
`define INCLUDED_RV_MACROS_SVH
	
`define RV_INITIATOR_PORT(PREFIX,DAT_WIDTH) \
	output[DAT_WIDTH-1:0]			PREFIX``dat, \
	output							PREFIX``valid, \
	input							PREFIX``ready
	
`define RV_MONITOR_PORT(PREFIX,DAT_WIDTH) \
	input[DAT_WIDTH-1:0]			PREFIX``dat, \
	input							PREFIX``valid, \
	input							PREFIX``ready
	
`define RV_INITIATOR_PORT_ARR(PREFIX,DAT_WIDTH,SIZE) \
	output[(DAT_WIDTH*SIZE)-1:0]	PREFIX``dat, \
	output[SIZE-1:0]				PREFIX``valid, \
	input[SIZE-1:0]					PREFIX``ready
	
`define RV_TARGET_PORT(PREFIX,DAT_WIDTH) \
	input[DAT_WIDTH-1:0]			PREFIX``dat, \
	input							PREFIX``valid, \
	output							PREFIX``ready
	
`define RV_TARGET_PORT_ARR(PREFIX,DAT_WIDTH,SIZE) \
	input[(DAT_WIDTH*SIZE)-1:0]		PREFIX``dat, \
	input[SIZE-1:0]					PREFIX``valid, \
	output[SIZE-1:0]				PREFIX``ready
	
`define RV_WIRES(PREFIX,DAT_WIDTH) \
	wire[DAT_WIDTH-1:0]				PREFIX``dat; \
	wire							PREFIX``valid; \
	wire							PREFIX``ready
	
`define RV_WIRES_ARR(PREFIX,DAT_WIDTH,SIZE) \
	wire[SIZE*DAT_WIDTH-1:0]				PREFIX``dat; \
	wire[SIZE-1:0]							PREFIX``valid; \
	wire[SIZE-1:0]							PREFIX``ready
	
`define RV_CONNECT(P_PREFIX, W_PREFIX) \
	.P_PREFIX``dat( W_PREFIX``dat ), \
	.P_PREFIX``valid( W_PREFIX``valid ), \
	.P_PREFIX``ready( W_PREFIX``ready )
	
`define RV_CONNECT_ARR(P_PREFIX, W_PREFIX, INDEX, DAT_WIDTH) \
	.P_PREFIX``dat( W_PREFIX``dat[(INDEX)*(DAT_WIDTH)+:(DAT_WIDTH)] ), \
	.P_PREFIX``valid( W_PREFIX``valid[INDEX] ), \
	.P_PREFIX``ready( W_PREFIX``ready[INDEX] )
	
`endif /* INCLUDED_RV_ADDR_LINE_EN_MACROS_SVH */
