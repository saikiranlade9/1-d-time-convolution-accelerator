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

entity fifo is
--  Port ( );
    port (
        wr_clk    : in  std_logic;
        rd_clk    : in  std_logic;
        rst       : in  std_logic; 
        empty     : out std_logic;
        full      : out std_logic;
        prog_full : out std_logic;
        rd_en     : in  std_logic;
        wr_en     : in  std_logic;
        din       : in  std_logic_vector(31 downto 0);
        dout      : out std_logic_vector(15 downto 0));
end fifo;

architecture Behavioral of fifo is
    signal rd_rst_busy : std_logic;
    signal wr_rst_busy : std_logic;
COMPONENT fifo_32w_16r

  port (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    prog_full : OUT STD_LOGIC;
    wr_rst_busy: OUT STD_LOGIC;
    rd_rst_busy: OUT STD_LOGIC
  );
  
END COMPONENT;
begin

    U_FIFO: fifo_32w_16r
      port map (
        rst => rst,
        wr_clk => wr_clk,
        rd_clk => rd_clk,
        din => din,
        wr_en => wr_en,
        rd_en => rd_en,
        dout => dout,
        full => full,
        empty => empty,
        prog_full => prog_full,
        wr_rst_busy => wr_rst_busy,
        rd_rst_busy => rd_rst_busy
      );

end Behavioral;
