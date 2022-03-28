-- Sai Kiran Lade
-- University of Florida

-- Amelia Greco
-- University of Florida

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
use work.config_pkg.all;
use work.user_pkg.all;


entity dram_rd_ram0_v is
        port(dram_clk   : in  std_logic;
             user_clk   : in  std_logic;
             rst        : in  std_logic;
             clear      : in  std_logic;
             go         : in  std_logic;
             rd_en      : in  std_logic;
             stall      : in  std_logic;
             start_addr : in  std_logic_vector(14 downto 0);
             size       : in  std_logic_vector(16 downto 0); 
             valid      : out std_logic;
             data       : out std_logic_vector(15 downto 0);
             done       : out std_logic;

             dram_ready    : in  std_logic;
             dram_rd_en    : out std_logic;
             dram_rd_addr  : out std_logic_vector(14 downto 0);
             dram_rd_data  : in  std_logic_vector(31 downto 0);
             dram_rd_valid : in  std_logic;
             dram_rd_flush : out std_logic
             );
end dram_rd_ram0_v;

architecture Behavioral of dram_rd_ram0_v is
  
    signal go_sync      : std_logic;
    signal size_reg     : std_logic_vector(16 downto 0);
    signal start_add_reg: std_logic_vector(14 downto 0);
    
    signal stall_add_gen: std_logic;
    signal fifo_flush   : std_logic;
    
    signal fifo_rst     : std_logic;
    signal fifo_full    : std_logic;
    signal fifo_empty   : std_logic;
    signal fifo_data_in : std_logic_vector(31 downto 0);
    
    signal done_s       :std_logic;
    

begin
    
   
  -----------------------------dram_clk-------------------------------------------   
    
    U_ADDRESS_GENERATOR: entity work.address_generator
    port map(	
			 clk          => dram_clk, 
             rst          => rst,
             go           => go_sync,
			 size         => size_reg,
             start_addr   => start_add_reg,
             stall        => stall_add_gen,
             dram_ready   => dram_ready,
             dram_rd_en   => dram_rd_en,
             dram_rd_addr => dram_rd_addr,
             dram_rd_flush=> dram_rd_flush,
			 fifo_flush   => fifo_flush,
			 done         => open);

  -----------------------------synchronizers-------------------------------------------  			 
    
    
    U_HANDSHAKE_FOR_GO: entity work.handshake
    port map(
             clk_src   => user_clk,
             clk_dest  => dram_clk,
             rst       => rst,
             go        => go,
             delay_ack => C_0,
             rcv 	   => go_sync,	
             ack       => open);
             
    U_FIFO_32W_16R: entity work.fifo
    port map(
            rst         => fifo_rst,
            wr_clk      => dram_clk,
            rd_clk      => user_clk,
            din         => fifo_data_in,
            wr_en       => dram_rd_valid,
            rd_en       => rd_en,
            dout        => data,
            full        => fifo_full,
            empty       => fifo_empty,
            prog_full   => stall_add_gen);
            

  -----------------------------user_clk-------------------------------------------  
  
    U_COUNTER:  entity work.counter
    port map(
            clk         => user_clk,
            rst         => rst,
            go          => rd_en,
            max_count   => size,
            done => done_s);
    
    U_SIZE_REG: entity work.reg
    generic map (
            width => 17)
    port map (
            clk     => user_clk,
            rst     => rst,
            en      => go,
            input   => size,
            output  => size_reg);
            
            
    U_START_ADDR_REG: entity work.reg
    generic map (
            width => 15)
    port map (
            clk     => user_clk,
            rst     => rst,
            en      => go,
            input   => start_addr,
            output  => start_add_reg);
            
    ------------------------------------------------------------------------------------
    
    fifo_data_in <= dram_rd_data(15 downto 0) & dram_rd_data(31 downto 16);      
    valid <= not fifo_empty;
    fifo_rst <= go and done_s;
    done <= done_s;        
   
            
    
                    
    
end Behavioral;
