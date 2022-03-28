-- Sai Kiran Lade
-- University of Florida

-- Amelia Greco
-- University of Florida


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

use work.config_pkg.all;
use work.user_pkg.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity signal_buffer is
--  Port ( );
    port (
          clk       : in  std_logic;
          rst       : in  std_logic;
          wr_data   : in  std_logic_vector(15 downto 0);
          wr_en     : in  std_logic;
          rd_en     : in  std_logic;
          rd_data  : out std_logic_vector(16*128 - 1 downto 0);
          empty     : out std_logic;
          full      : out std_logic
          );
end signal_buffer;

architecture Behavioral of signal_buffer is

    type reg_array is array(integer range<>) of std_logic_vector(15 downto 0);
    signal elements_array   : reg_array(0 to 127);
    signal count            : std_logic_vector(7 downto 0);
    signal empty_s          : std_logic;
    signal full_s           : std_logic;
    
    
    
begin

    process(clk, rst)
    begin
        if(rst = '1') then
            for i in 0 to 127 loop
                    elements_array(i) <= x"0000";
                end loop;
              
        elsif(rising_edge(clk)) then
            
            if(wr_en = '1') then
                elements_array(0) <= wr_data;
                for i in 0 to 126 loop
                    elements_array(i+1) <= elements_array(i);
                end loop;
                
            end if;
            
        end if;
    end process;
    
    process(clk, rst)
    variable temp : unsigned(7 downto 0);
    begin   
        
        if(rst = '1') then
            count <= (others => '0');
            temp  := (others => '0');
        elsif(rising_edge(clk)) then
            temp := unsigned(count);
            if((wr_en = '1') and (full_s = '0')) then
                temp := temp + 1;
            end if;
            if((rd_en = '1') and (unsigned(count) /= 0)) then
                temp := temp - 1;
            end if;
            count <= std_logic_vector(temp);
        end if;
            
    end process;
    
    process(rst, count, rd_en)
    begin
        empty_s <= '0';
        full_s <= '0';
        if(unsigned(count) < 128) then
            empty_s <= '1';
        end if;
        if((unsigned(count) = 128) and (rd_en = '0')) then
            full_s <= '1';
        end if;            
   
    end process;
    
    process(rd_en, rst, elements_array)
    begin
        rd_data <= (others => '0');
        if(rst = '1') then
            rd_data <= (others => '0');
        
        elsif(rd_en = '1') then
            for i in 0 to 127 loop
                rd_data((127-i)*16 + 16 - 1 downto (127-i)*16) <= elements_array(i);
            end loop;
        end if;
        
    end process;

    empty <= empty_s;
    full <= full_s;
end Behavioral;
