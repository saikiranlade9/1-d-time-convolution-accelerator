-- Sai Kiran Lade
-- University of Florida

-- Amelia Greco
-- University of Florida

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity valid_check is
--  Port ( );
    port (
         clk        : in  std_logic;
         rst        : in  std_logic;
         en         : in  std_logic;
         valid_in   : in  std_logic;
         valid_out  : out std_logic
         );
end valid_check;

architecture Behavioral of valid_check is

begin

 U_VALID_CHECK : entity work.delay
    generic map( 
                cycles => 8,
                 width => 1,
                 init => "0")
    port map(
            clk => clk,
            rst => rst,
            en => en,
            input(0) => valid_in,
            output(0) => valid_out);

end Behavioral;
