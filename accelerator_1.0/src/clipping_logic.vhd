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

entity clipping_logic is
--  Port ( );
    port (
        data_in : in  std_logic_vector((2*16 + 7 - 1) downto 0);
        data_out: out std_logic_vector(15 downto 0)
        );
end clipping_logic;

architecture Behavioral of clipping_logic is
   
begin
    process(data_in)
    begin
        if(unsigned(data_in(38 downto 16)) > 0) then
            data_out <= "1111111111111111";
        else
            data_out <= data_in(15 downto 0);
        end if;
    end process;

end Behavioral;
