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


entity kernal_buffer_tb is
--  Port ( );
end kernal_buffer_tb;

architecture Behavioral of kernal_buffer_tb is
    
    signal clk      : std_logic := '0';
    signal rst      : std_logic;
    signal wr_en    : std_logic := '0';
    signal wr_data  : std_logic_vector(15 downto 0);
    signal rd_en    : std_logic := '0';
    signal rd_data  : std_logic_vector(128*16 - 1 downto 0);
    signal empty    : std_logic;
    signal full     : std_logic;
    
    signal sim_done : std_logic := '0';
begin
    
    UUT: entity work.kernal_buffer
    port map (
        clk     => clk,
        rst     => rst,
        wr_en   => wr_en,
        wr_data => wr_data,
        rd_en   => rd_en,
        rd_data => rd_data,
        empty   => empty,
        full    => full);
        
        
     clk    <= not clk after 5 ns when sim_done = '0' else clk;
     
     process
     begin
        rst <= '1';
        
        for i in 0 to 20 loop
            wait until rising_edge(clk);
        end loop;
        
        rst <= '0';
        
        for i in 0 to 20 loop
            wait until rising_edge(clk);
        end loop;
        
        wr_en <= '1';
        for i in 0 to 127 loop
            wr_data <= std_logic_vector(to_unsigned(i, 16));
            wait until rising_edge(clk);
        end loop;
        wr_en <= '0';
        
        for i in 0 to 20 loop
            wait until rising_edge(clk);
        end loop;
        
        rd_en <= '1';
        
        for i in 0 to 20 loop
            wait until rising_edge(clk);
        end loop;
        
        rd_en <= '0';
        
        report "SIMULATION FINISHED!!!";
        sim_done <= '1';
        wait;
        
     end process;
     
        

end Behavioral;
