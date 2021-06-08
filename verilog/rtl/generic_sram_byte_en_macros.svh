
`ifndef INCLUDED_GENERIC_SRAM_BYTE_EN_MACROS_SVH
`define INCLUDED_GENERIC_SRAM_BYTE_EN_MACROS_SVH


`define GENERIC_SRAM_BYTE_EN_TARGET_PORT(PREFIX,NUM_ADDR_BITS,NUM_DATA_BITS) \
input[NUM_ADDR_BITS-1:0]			PREFIX``addr, \
output[NUM_DATA_BITS-1:0]			PREFIX``read_data, \
input[NUM_DATA_BITS-1:0]			PREFIX``write_data, \
input								PREFIX``write_en, \
input[NUM_DATA_BITS/8-1:0]			PREFIX``byte_en, \
input								PREFIX``read_en 

`define GENERIC_SRAM_BYTE_EN_INITIATOR_PORT(PREFIX,NUM_ADDR_BITS,NUM_DATA_BITS) \
output[NUM_ADDR_BITS-1:0]			PREFIX``addr, \
input[NUM_DATA_BITS-1:0]			PREFIX``read_data, \
output[NUM_DATA_BITS-1:0]			PREFIX``write_data, \
output								PREFIX``write_en, \
output[NUM_DATA_BITS/8-1:0]			PREFIX``byte_en, \
output								PREFIX``read_en 

`define GENERIC_SRAM_BYTE_EN_WIRES(PREFIX,NUM_ADDR_BITS,NUM_DATA_BITS) \
wire[NUM_ADDR_BITS-1:0]			PREFIX``addr; \
wire[NUM_DATA_BITS-1:0]			PREFIX``read_data; \
wire[NUM_DATA_BITS-1:0]			PREFIX``write_data; \
wire								PREFIX``write_en; \
wire[NUM_DATA_BITS/8-1:0]			PREFIX``byte_en; \
wire								PREFIX``read_en 

`define GENERIC_SRAM_BYTE_EN_WIRES_ARR(PREFIX,ADR_WIDTH,DAT_WIDTH,SIZE) \
wire[(ADR_WIDTH)*(SIZE)-1:0]		PREFIX``addr; \
wire[(DAT_WIDTH)*(SIZE)-1:0]		PREFIX``read_data; \
wire[(DAT_WIDTH)*(SIZE)-1:0]		PREFIX``write_data; \
wire[(SIZE)-1:0]					PREFIX``write_en; \
wire[((DAT_WIDTH)/8)*(SIZE)-1:0]	PREFIX``byte_en; \
wire[(SIZE)-1:0]					PREFIX``read_en 

`define GENERIC_SRAM_BYTE_EN_CONNECT(P_PREFIX,W_PREFIX) \
.P_PREFIX``addr(W_PREFIX``addr), \
.P_PREFIX``read_data(W_PREFIX``read_data), \
.P_PREFIX``write_data(W_PREFIX``write_data), \
.P_PREFIX``write_en(W_PREFIX``write_en), \
.P_PREFIX``byte_en(W_PREFIX``byte_en), \
.P_PREFIX``read_en(W_PREFIX``read_en)

`define GENERIC_SRAM_BYTE_EN_CONNECT_ARR(P_PREFIX,W_PREFIX,INDEX,ADR_WIDTH,DAT_WIDTH) \
.P_PREFIX``addr(W_PREFIX``addr[(ADR_WIDTH)*(INDEX)+:(ADR_WIDTH)]), \
.P_PREFIX``read_data(W_PREFIX``read_data[(DAT_WIDTH)*(INDEX)+:(DAT_WIDTH)]), \
.P_PREFIX``write_data(W_PREFIX``write_data[(DAT_WIDTH)*(INDEX)+:(DAT_WIDTH)]), \
.P_PREFIX``write_en(W_PREFIX``write_en[(INDEX)]), \
.P_PREFIX``byte_en(W_PREFIX``byte_en[((DAT_WIDTH)/8)*(INDEX)+:((DAT_WIDTH)/8)]), \
.P_PREFIX``read_en(W_PREFIX``read_en[(INDEX)])

`endif /* INCLUDED_GENERIC_SRAM_BYTE_EN_MACROS_SVH */
