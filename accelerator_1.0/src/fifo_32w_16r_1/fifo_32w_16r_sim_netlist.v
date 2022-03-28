// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat Dec 11 18:23:00 2021
// Host        : DESKTOP-TVM0Q3C running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/saikiranlade/Documents/RC_PROJECT_Version2/provided_code/provided_code/dram_test/accelerator_1.0/src/fifo_32w_16r_1/fifo_32w_16r_sim_netlist.v
// Design      : fifo_32w_16r
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_32w_16r,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module fifo_32w_16r
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    prog_full,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output prog_full;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [31:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [6:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "16" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "2" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "2" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "2" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "32" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "31" *) 
  (* C_PROG_FULL_TYPE = "1" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "7" *) 
  (* C_RD_DEPTH = "128" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "7" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "64" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "6" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_32w_16r_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(prog_full),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[6:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_32w_16r_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [5:0]src_in_bin;
  input dest_clk;
  output [5:0]dest_out_bin;

  wire [5:0]async_path;
  wire [4:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[1] ;
  wire [5:0]dest_out_bin;
  wire [4:0]gray_enc;
  wire src_clk;
  wire [5:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[5]),
        .Q(async_path[5]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_32w_16r_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [6:0]src_in_bin;
  input dest_clk;
  output [6:0]dest_out_bin;

  wire [6:0]async_path;
  wire [5:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[1] ;
  wire [6:0]dest_out_bin;
  wire [5:0]gray_enc;
  wire src_clk;
  wire [6:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[6]),
        .Q(async_path[6]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_32w_16r_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_32w_16r_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module fifo_32w_16r_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module fifo_32w_16r_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sbNGmomEbP78s1hfxgX3P1Jo01EKJk0i0C7iGpF+Yibr9EK0s4mcIifHDN/ag4jpPwW3bPllMHvn
U8AEY3mO8hCXVVoilrcRuCaEna/98GycCzy4G7FnYMfowsJb5k9ifRdE2jnurzeTLFbupUSpDF0H
Rl3Ci3DTGeExAZZ9UQE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zZZZoIprBFYfDWmCCcduELBM7HU98/+rvP9g8+y1mYyD3r3HEDm4ZwehwZvPoYWqoGXYoFqWZh3h
utt0abIfUW9/oF2vJ9hXn7nArtcm/Eui18rPYqp3aj/AItPNVXojk9zp7uFZLPTqcyig5v3Jtenl
qPnLi1Z84ZCW7NIRw6Y0bgmw6z26E8VPbYrZHs+0YW8Sztjo6CdIrQeEL5WBDolA0aHoKHWRZyFs
l5eRDmBAolj2uF07t/3eY3J7cYJmEDaoZ0TR1qcz25VFNu0OlcrEJ19IT+QdAxTah4jqJtknGZrT
6lUMwDZ7dBQwF1EuaE6p90gGNERhGAsbHLdvaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUbz0Iu2faeWqD6HFeuGLtSOAlqZmpKCCJfzym8tkcWUUNgNMn2mYvx6PTM7j4tyig8JdUG3uZYs
NfPgAsNXQtTI7b19u9CkMks9jR+oEzX1rW7QtTvSj/nHZLg2smoFwuB5Ieb7/B8IIs1NTUrIz6Rc
itLQVG+L+GMziamsrx4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G7XYdRx9VGclyxTEtwMG+rjJHV8bfBxEGdkcN82UL3koN3Dt0M5AWkzEvHcskt1W0hTOjyYgmvYj
/p70w1nz96tlg226+e4UubpRmBH9QXBBX6UmqIwSiHj9H+XI1yNfTIdlwBKGQvfzwCAMwBwrrrGL
/804k5Ux3RhWRvwezZB4+sj9DFm4akREVXmNpfeqjI2X02LU/MxWMUbKxvjJnD9YxikAAO6ccTd6
8DKv76V76MEFVyXc7E2FeQDToW3lqkRTa6MTpIXbYSekRihQC+qPVuhPUneA4kepvQDfgFYE8/Ir
gu5gK+s/qNfuXhJUAqyLjslrUcY4+XD9ckpSvQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YXkYRXpUPv/tETnwnThdQ46UaPmI23lN9vrxHQjIOhq3WNJCuz7TYZK9hyzSdo6k0U6QE9ihQy2L
rYZg68RGbrK8bzlcnQ41r18LZb4GYlAn9PH7IrF1B+aHm3578doOZHf8wzUE2s+d1aHQIn6VIZjL
14pCTAjErJfMO13fgX6h8sgxb4GFC3eIORmkrq2J/fB9HALyh/qdGiLi7DejMfmdsssbOcPQTZUh
6Belf7fHTkIEr9B44rFZgMyrMVx4N9p0XpXD3JPe7Xeg6a3jxdqxHATaMuLdIa4s+ZiAz1TRx0EO
FFihCnLLb7weBBITQyTIncRL817BrF/ZXZD8Yw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g7FbNw1ywd4TBNHq8OmK/4zoKI/t7vKmyT8R8SeiyUtKywhn0/7DZ/lV0Lf4IhY8X5MYsKtOQ5l6
DIl3fxtOhxpi8NHn9Nw3Nfb8NnS38Zuy6DSpwOL0f/GSmUSf2/YdB5Ben6xibQT0Oy//oBl5/1kR
pV5fWjj8WRgI6cnmfyj3g1MxepxPu1A/UHxlm1/i9yUHHi114N/hEQ0iujjrn6GxfZSiJUVF+r6c
rnxD//eOAl/YaxhdU/KhUkfsMn+MxtA5m6hTYYE0bnze8rpmEU5UGYKyY0p8KUs+MgsdTe+m/7gV
HSf6puBqQmEa1qksRfl742aL9B9y169or7Jp9Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kd1A2zIphLxXB0RyfHIqLkHXfWl0n38vROERuDghYrhK0ItcWGEP0XBrri6k1VZCSPYwiSu//pM6
83BfcPKbk09/A+ksvDIa3xS8Tg7DJK2AS+0pdnzBSjVWh+QD+glA3Hjk6LG9OMbjXyqD3hnMKacA
VRMwxKktV+KT5NXj5a7fMxXjo9exc0xM+woUJiSYs8onoUSwfBeH5/xhUy+iu+w0/OOydQE2LXZ0
1y+RObiz5C22dD4GGCfuvUCGAthYpUf633ZxRYN45mmAn5PxPsH4o+l2GhH/50Gu/VPVoAWDhgXQ
e93oPri++HinkK2uvDhDl4PI9HtRkq11Ky3uXQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gDrrFgXHVyBo+Cn0bYn+SOSOCXPg7besukY6l0JmA/nu4gap105Wxbg11c7TJZ9ctHVLc5DXAxr+
EIvFpAIepoZBREtMjTlaIdNJ8k1nUpwAv2jaQeseq1TudTjugV1jtOYYk0RKd88z/6SJ8t9urDW0
yKqsfEWU3PwGcUGHOWtTn2hfAceNznmEIFWLmFmzSQJ1hQNdsIQn3jHnfMVYu8cAz5xvPVQWYyJW
pMHXhNYk6GyAjIshh991slb1g01K1ilR2tKD1EmxH5WGrX9BEUqBjHQo6uluC/d3mvcEQ5nJ1v+P
hIlj4qzUQT1wXjpk6d/BvNx7LyWmj5iq35dzNm+cdhfGwaFGG//vgmB6D/dFfs2BYSjHsa6VlpVM
7e2OgoFenuG9p1SVPI6gAs2MuFtnDKfxW7jS3RGhvsquS3tg1iFCDH/OU7E5aWfY7twF3yyN6G10
l72RZw62DfNoCdyUMG9sA8nc4qf6dEhyrr5S6XxpJhoBDJvkeq0TCUQZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XR7vRF1m+9DS2Pv4r/O4uHwmvtXkChnKbsJCYczn1dvkZbcZSbBm/2UH78dXUaNorOh9XAuCvSjb
ER73y7e0anAfaIf1tJ9Y9pIb8EuNxGS/Pqdvg36cWarwGac9tsscdv/HWfb5Z+qWEk0/uFcLI7pH
CZO7fF2/ONQjA0NtUFBjW4idlx8WrySIuJgDs4jyGkMhbHR3U/ghF1YhMhwgwsbbcptfC1XLrIqQ
OecZnZu8E2hyc5eK/ccYdKcHnXoL55z1p5amI6Fuvz0wKTz2QQ/mwXodfGjEC1ZRWwTn7zCFM91M
qrA1Is49i6pSa7/VICjgn8ULMT1oKGfJLPm7hg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 112864)
`pragma protect data_block
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
VM+LBQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
