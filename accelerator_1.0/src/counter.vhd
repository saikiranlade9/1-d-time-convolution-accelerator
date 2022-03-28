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

entity counter is
--  Port ( );
    port (
    clk         : in std_logic;
    rst         : in std_logic;
    go          : in std_logic;
    max_count   : in std_logic_vector(16 downto 0);
    done        : out std_logic
    );
    
end counter;

architecture Behavioral of counter is

begin
    
    process(clk, rst)
    variable count : unsigned(16 downto 0);
    begin
        if (rst = '1') then
            done <= '0';
            count:= (others => '0');
        elsif (rising_edge(clk)) then
            if(go = '1') then
                if(count = unsigned(max_count)) then
                    done <= '1';
                    count:= (others => '0');
                else
                    count := count + 1;
                    done <= '0';
                end if;
                
            end if;
        
        end if;
    end process;
    
end Behavioral;
