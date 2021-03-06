-- Greg Stitt
-- University of Florida

-- Sai Kiran Lade
-- University of Florida

-- Amelia Greco
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.config_pkg.all;
use work.user_pkg.all;

entity user_app is

    port (
        clks   : in  std_logic_vector(NUM_CLKS_RANGE);
        rst    : in  std_logic;
        sw_rst : out std_logic;

        -- memory-map interface
        mmap_wr_en   : in  std_logic;
        mmap_wr_addr : in  std_logic_vector(MMAP_ADDR_RANGE);
        mmap_wr_data : in  std_logic_vector(MMAP_DATA_RANGE);
        mmap_rd_en   : in  std_logic;
        mmap_rd_addr : in  std_logic_vector(MMAP_ADDR_RANGE);
        mmap_rd_data : out std_logic_vector(MMAP_DATA_RANGE);

        -- DMA interface for RAM 0
        -- read interface
        ram0_rd_rd_en : out std_logic;
        ram0_rd_clear : out std_logic;
        ram0_rd_go    : out std_logic;
        ram0_rd_valid : in  std_logic;
        ram0_rd_data  : in  std_logic_vector(RAM0_RD_DATA_RANGE);
        ram0_rd_addr  : out std_logic_vector(RAM0_ADDR_RANGE);
        ram0_rd_size  : out std_logic_vector(RAM0_RD_SIZE_RANGE);
        ram0_rd_done  : in  std_logic;
        -- write interface
        ram0_wr_ready : in  std_logic;
        ram0_wr_clear : out std_logic;
        ram0_wr_go    : out std_logic;
        ram0_wr_valid : out std_logic;
        ram0_wr_data  : out std_logic_vector(RAM0_WR_DATA_RANGE);
        ram0_wr_addr  : out std_logic_vector(RAM0_ADDR_RANGE);
        ram0_wr_size  : out std_logic_vector(RAM0_WR_SIZE_RANGE);
        ram0_wr_done  : in  std_logic;

        -- DMA interface for RAM 1
        -- read interface
        ram1_rd_rd_en : out std_logic;
        ram1_rd_clear : out std_logic;
        ram1_rd_go    : out std_logic;
        ram1_rd_valid : in  std_logic;
        ram1_rd_data  : in  std_logic_vector(RAM1_RD_DATA_RANGE);
        ram1_rd_addr  : out std_logic_vector(RAM1_ADDR_RANGE);
        ram1_rd_size  : out std_logic_vector(RAM1_RD_SIZE_RANGE);
        ram1_rd_done  : in  std_logic;
        -- write interface
        ram1_wr_ready : in  std_logic;
        ram1_wr_clear : out std_logic;
        ram1_wr_go    : out std_logic;
        ram1_wr_valid : out std_logic;
        ram1_wr_data  : out std_logic_vector(RAM1_WR_DATA_RANGE);
        ram1_wr_addr  : out std_logic_vector(RAM1_ADDR_RANGE);
        ram1_wr_size  : out std_logic_vector(RAM1_WR_SIZE_RANGE);
        ram1_wr_done  : in  std_logic
        
        );
end user_app;

architecture default of user_app is

    signal go        : std_logic;
    signal sw_rst_s  : std_logic;
    signal rst_s     : std_logic;
    signal size      : std_logic_vector(RAM0_RD_SIZE_RANGE);
--    signal ram0_rd_addr : std_logic_vector(RAM0_ADDR_RANGE);
--    signal ram1_wr_addr : std_logic_vector(RAM1_ADDR_RANGE);
    signal done      : std_logic;
    
    signal dp_en        : std_logic;
    signal dp_out       : std_logic_vector((2*16 + 7 - 1) downto 0);
    signal dp_valid_in  : std_logic;
    
    signal clip_data_out    : std_logic_vector(15 downto 0);
    
    signal s_buff_rd_en       : std_logic;
    signal s_buff_wr_en       : std_logic;      
    signal s_buff_data_out    : std_logic_vector((128*16 - 1) downto 0);
    signal s_buff_empty       : std_logic;
    signal s_buff_full        : std_logic;
    
    signal k_buff_data_in     : std_logic_vector(15 downto 0);
    signal k_buff_rd_en       : std_logic;
    signal k_buff_wr_en       : std_logic;
    signal k_buff_data_out    : std_logic_vector((128*16 - 1) downto 0);
    signal k_buff_empty       : std_logic;
    signal k_buff_full        : std_logic;
    

begin

    U_MMAP : entity work.memory_map
        port map (
            clk     => clks(C_CLK_USER),
            rst     => rst,
            wr_en   => mmap_wr_en,
            wr_addr => mmap_wr_addr,
            wr_data => mmap_wr_data,
            rd_en   => mmap_rd_en,
            rd_addr => mmap_rd_addr,
            rd_data => mmap_rd_data,

            -- dma interface for accessing DRAM from software
            ram0_wr_ready => ram0_wr_ready,
            ram0_wr_clear => ram0_wr_clear,
            ram0_wr_go    => ram0_wr_go,
            ram0_wr_valid => ram0_wr_valid,
            ram0_wr_data  => ram0_wr_data,
            ram0_wr_addr  => ram0_wr_addr,
            ram0_wr_size  => ram0_wr_size,
            ram0_wr_done  => ram0_wr_done,

            ram1_rd_rd_en => ram1_rd_rd_en,
            ram1_rd_clear => ram1_rd_clear,
            ram1_rd_go    => ram1_rd_go,
            ram1_rd_valid => ram1_rd_valid,
            ram1_rd_data  => ram1_rd_data,
            ram1_rd_addr  => ram1_rd_addr,
            ram1_rd_size  => ram1_rd_size,
            ram1_rd_done  => ram1_rd_done,

            -- circuit interface from software
            go          => go,
            sw_rst      => sw_rst_s,
            signal_size => size,
            kernel_data => k_buff_data_in,
            kernel_load => k_buff_wr_en,
            kernel_loaded => k_buff_full,
            done      => done
            );

    rst_s  <= rst or sw_rst_s;
    sw_rst <= rst or sw_rst_s;

    U_CTRL : entity work.ctrl
        port map (
            clk           => clks(C_CLK_USER),
            rst           => rst_s,
            go            => go,
            mem_in_go     => ram0_rd_go,
            mem_out_go    => ram1_wr_go,
            mem_in_clear  => ram0_rd_clear,
            mem_out_clear => ram1_wr_clear,
            mem_out_done  => ram1_wr_done,
            done          => done);

    ram0_rd_size  <= std_logic_vector(2*127 + unsigned(size));
    ram0_rd_addr  <= (others => '0');
    ram1_wr_size  <= std_logic_vector(unsigned(size) + 128 - 1);
    ram1_wr_addr  <= (others => '0');
    ram1_wr_data  <= clip_data_out;
    
    U_SIGNAL_BUFFER: entity work.signal_buffer
        port map (
            clk      => clks(C_CLK_USER),
            rst      => rst,
            wr_en    => s_buff_wr_en,
            wr_data  => ram0_rd_data,
            rd_en    => s_buff_rd_en,
            rd_data  => s_buff_data_out,
            empty    => s_buff_empty,
            full     => s_buff_full
            );
            
    
    U_KERNEL_BUFFER: entity work.kernal_buffer
    port map (
        clk     => clks(C_CLK_USER),
        rst     => rst,
        wr_en   => k_buff_wr_en,
        wr_data => k_buff_data_in,
        rd_en   => k_buff_rd_en,
        rd_data => k_buff_data_out,
        empty   => k_buff_empty,
        full    => k_buff_full
        );
            
    
    U_MULT_ADD_TREE: entity work.mult_add_tree(unsigned_arch)
    generic map (
        num_inputs      => 128,
        input1_width    => 16,
        input2_width    => 16
        )
    port map (
        clk     => clks(C_CLK_USER),
        rst     => rst,
        en      => dp_en,
        input1  => s_buff_data_out,
        input2  => k_buff_data_out,
        output  => dp_out
        );
       
    
    
    U_VALID_CHECK: entity work.valid_check
    port map (
        clk         => clks(C_CLK_USER),
        rst         => rst,
        en          => dp_en,
        valid_in    => dp_valid_in,
        valid_out   => ram1_wr_valid
            );
    dp_valid_in <= s_buff_rd_en;
    
    U_CLIPPING_LOGIC: entity work.clipping_logic
    port map (
        data_in  => dp_out,
        data_out => clip_data_out
        ); 
        
    U_DP_CONTROL:   entity work.control_dp
    port map (
        s_buff_full     => s_buff_full,
        s_buff_empty    => s_buff_empty,
        k_buff_full     => k_buff_full,
        k_buff_empty    => k_buff_empty,
        ram0_rd_valid   => ram0_rd_valid,
        ram1_wr_ready   => ram1_wr_ready,
        dp_en           => dp_en,
        s_buff_rd_en    => s_buff_rd_en,
        s_buff_wr_en    => s_buff_wr_en,
        k_buff_rd_en    => k_buff_rd_en,
        ram0_rd_rd_en   => ram0_rd_rd_en             
        );
    
               
            
        

end default;
