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

entity address_generator is
--  Port ( );
    port (	
			 clk           : in  std_logic;
             rst           : in  std_logic;
             
             go            : in  std_logic;
			 size          : in std_logic_vector(16 downto 0);
             start_addr    : in  std_logic_vector(14 downto 0);
             stall         : in  std_logic;
			 
			 dram_ready    : in  std_logic;
             dram_rd_en    : out std_logic;
             dram_rd_addr  : out std_logic_vector(14 downto 0);
             dram_rd_flush : out std_logic;
			 fifo_flush    : out std_logic;
			 
			 done          : out std_logic
             );
end address_generator;

architecture Behavioral of address_generator is

    type state_type is (S_INIT, S_SEND);
    signal state, next_state : state_type;
    
    signal addr, next_addr  : std_logic_vector(14 downto 0);
    signal count, next_count: unsigned(16 downto 0);
    signal cap, next_cap    : unsigned(16 downto 0);
    
begin
    process(clk, rst)
    begin
        if(rst = '1') then
            addr <= (others => '0');
            count<= (others => '0'); 
            cap  <= (others => '0');
            state<= S_INIT;
        elsif(rising_edge(clk)) then
            addr <= next_addr;
            count<= next_count;
            cap  <= next_cap;
            state<= next_state;
        end if;
    end process;
    
    process(addr, count, cap, state, go, size, start_addr, stall, dram_ready)
    begin
        next_addr <= addr;
        next_count <= count;
        next_cap <= cap;
        next_state <= state;
        
        dram_rd_addr <= addr;
        dram_rd_flush <= '0';
        fifo_flush <= '0';
        dram_rd_en <= '0';
        done <= '1';
        
        case state is 
            when S_INIT =>
                next_count <= (others => '0');
                next_addr  <= start_addr;
                
                if(size(0) = '1') then
                    next_cap <= unsigned('0' & size(16 downto 1)) + 1;
                else
                    next_cap <= unsigned('0' & size(16 downto 1));
               end if;
                    
                if(go = '1') then
                    done <= '0';
                    dram_rd_flush <= '1';
                    fifo_flush <= '1';
                    next_state <= S_SEND;
                end if;
                
            when S_SEND =>
                done <= '0';
                if(count = cap) then
                    done <= '1';
                    next_state <= S_INIT;
                 
                 elsif( (stall = '0') and (dram_ready = '1')) then
                    dram_rd_en <= '1';
                    next_count <= count + 1;
                    next_addr <= std_logic_vector(unsigned(addr)+1);
                end if;
                
            when others => null;
            
         end case;
   
    end process;
 
end Behavioral;
