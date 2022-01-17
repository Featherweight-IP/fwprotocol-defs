
`ifndef INCLUDED_SKY130_OPENRAM_DEFINES
`define INCLUDED_SKY130_OPENRAM_DEFINES
	
`define SKY130_OPENRAM_RW_INITIATOR_PORT(PREFIX, ADR_WIDTH, DAT_WIDTH) \
	output							PREFIX``csb, \
	output							PREFIX``web, \
	output[((DAT_WIDTH)/8)-1:0]		PREFIX``wmask, \
	output[ADR_WIDTH-1:0]			PREFIX``addr, \
	output[DAT_WIDTH-1:0]			PREFIX``dat_w, \
	input[DAT_WIDTH-1:0]			PREFIX``dat_r
	
`define SKY130_OPENRAM_RW_INITIATOR_PORT_ARR(PREFIX, ADR_WIDTH, DAT_WIDTH, SIZE) \
	output[(SIZE)-1:0]							PREFIX``csb, \
	output[(SIZE)-1:0]							PREFIX``web, \
	output[(((DAT_WIDTH)*(SIZE))/8)-1:0]		PREFIX``wmask, \
	output[((ADR_WIDTH)*(SIZE))-1:0]			PREFIX``addr, \
	output[((DAT_WIDTH)*(SIZE))-1:0]			PREFIX``dat_w, \
	input[((DAT_WIDTH)*(SIZE))-1:0]				PREFIX``dat_r
	
`define SKY130_OPENRAM_RW_TARGET_PORT(PREFIX, ADR_WIDTH, DAT_WIDTH) \
	input							PREFIX``csb, \
	input							PREFIX``web, \
	input[((DAT_WIDTH)/8)-1:0]		PREFIX``wmask, \
	input[ADR_WIDTH-1:0]			PREFIX``addr, \
	input[DAT_WIDTH-1:0]			PREFIX``dat_w, \
	output[DAT_WIDTH-1:0]			PREFIX``dat_r
	
`define SKY130_OPENRAM_RW_WIRES(PREFIX, ADR_WIDTH, DAT_WIDTH) \
	wire							PREFIX``csb; \
	wire							PREFIX``web; \
	wire[((DAT_WIDTH)/8)-1:0]		PREFIX``wmask; \
	wire[ADR_WIDTH-1:0]				PREFIX``addr; \
	wire[DAT_WIDTH-1:0]				PREFIX``dat_w; \
	wire[DAT_WIDTH-1:0]				PREFIX``dat_r
	
`define SKY130_OPENRAM_RW_WIRES_ARR(PREFIX, ADR_WIDTH, DAT_WIDTH, SIZE) \
	wire[(SIZE)-1:0]					PREFIX``csb; \
	wire[(SIZE)-1:0]					PREFIX``web; \
	wire[((DAT_WIDTH)/8)*(SIZE)-1:0]	PREFIX``wmask; \
	wire[(ADR_WIDTH)*(SIZE)-1:0]		PREFIX``addr; \
	wire[(DAT_WIDTH)*(SIZE)-1:0]		PREFIX``dat_w; \
	wire[(DAT_WIDTH)*(SIZE)-1:0]		PREFIX``dat_r
	
`define SKY130_OPENRAM_RW_CONNECT(P_PREFIX, W_PREFIX) \
	.P_PREFIX``csb(W_PREFIX``csb), \
	.P_PREFIX``web(W_PREFIX``web), \
	.P_PREFIX``wmask(W_PREFIX``wmask), \
	.P_PREFIX``addr(W_PREFIX``addr), \
	.P_PREFIX``dat_w(W_PREFIX``dat_w), \
	.P_PREFIX``dat_r(W_PREFIX``dat_r)
	
`define SKY130_OPENRAM_RW_CONNECT_ARR(P_PREFIX, W_PREFIX, INDEX, ADR_WIDTH, DAT_WIDTH) \
	.P_PREFIX``csb(W_PREFIX``csb[INDEX]), \
	.P_PREFIX``web(W_PREFIX``web[INDEX]), \
	.P_PREFIX``wmask(W_PREFIX``wmask[((DAT_WIDTH)/8)*(INDEX)+:((DAT_WIDTH)/8)]), \
	.P_PREFIX``addr(W_PREFIX``addr[(ADR_WIDTH)*(INDEX)+:(ADR_WIDTH)]), \
	.P_PREFIX``dat_w(W_PREFIX``dat_w[(DAT_WIDTH)*(INDEX)+:(DAT_WIDTH)]), \
	.P_PREFIX``dat_r(W_PREFIX``dat_r[(DAT_WIDTH)*(INDEX)+:(DAT_WIDTH)])
	
	
	
`endif /* INCLUDED_SKY130_OPENRAM_DEFINES */
