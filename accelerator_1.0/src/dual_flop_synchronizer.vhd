-- Sai Kiran Lade
-- University of Florida

-- Amelia Greco
-- University of Florida


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dual_flop_synchronizer is
--  Port ( );
port(
    clk_s, clk_d    :in     std_logic;
    rst_s, rst_d    :in     std_logic;
    input           :in     std_logic;
    output          :out    std_logic
    );
end dual_flop_synchronizer;

architecture Behavioral of dual_flop_synchronizer is
    
    signal reg1, reg2, reg3 :   std_logic;
    
begin

     process(clk_s, rst_s)
    begin  
        if(rst_s = '1') then
            reg1 <= '0';
        elsif(rising_edge(clk_s)) then
            reg1 <= input;
        end if;
    end process;
    
     process(clk_d, rst_d)
    begin  
        if(rst_d = '1') then
            reg2 <= '0';
            reg3 <= '0';
        elsif(rising_edge(clk_d)) then
            reg2 <= input;
            reg3 <= reg2;
        end if;
    end process;  
    
    output <= reg3;

end Behavioral;
