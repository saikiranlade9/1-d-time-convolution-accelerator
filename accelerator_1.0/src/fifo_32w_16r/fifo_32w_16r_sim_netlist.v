// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Dec  2 12:27:00 2021
// Host        : DESKTOP-TVM0Q3C running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/saikiranlade/Documents/RC_PROJECT_Version2/provided_code/provided_code/dram_test/accelerator_1.0/src/fifo_32w_16r/fifo_32w_16r_sim_netlist.v
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
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
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
SkYK/A==
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
