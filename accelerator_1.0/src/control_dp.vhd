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

entity control_dp is
--  Port ( );
    port (
        
        s_buff_full     : in std_logic;
        s_buff_empty    : in std_logic;
        
        k_buff_full     : in std_logic;
        k_buff_empty    : in std_logic;
        
        ram0_rd_valid   : in std_logic;
        ram1_wr_ready   : in std_logic;
        
        dp_en           : out std_logic;
        s_buff_rd_en    : out std_logic;
        s_buff_wr_en    : out std_logic;
        k_buff_rd_en    : out std_logic;
        
        ram0_rd_rd_en   : out std_logic 
        );
end control_dp;

architecture Behavioral of control_dp is
    
begin
    ram0_rd_rd_en <= ram0_rd_valid and (not s_buff_full);
    
    s_buff_wr_en <= ram0_rd_valid and (not s_buff_full);
    s_buff_rd_en <= (not s_buff_empty) and ram1_wr_ready;
    
    k_buff_rd_en <= ram1_wr_ready and k_buff_full;
    
    dp_en <= (not s_buff_empty) and ram1_wr_ready;
    
    
    

end Behavioral;
