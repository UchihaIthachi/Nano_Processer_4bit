----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2023 09:25:58 PM
-- Design Name: 
-- Module Name: TB_MUX_2_to_1_4bit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_MUX_2_to_1_4bit is
--  Port ( );
end TB_MUX_2_to_1_4bit;

architecture Behavioral of TB_MUX_2_to_1_4bit is

component MUX_2_to_1_4bit
    port (
        I0 : in STD_LOGIC_VECTOR (3 downto 0);
        I1 : in STD_LOGIC_VECTOR (3 downto 0);
        O : out STD_LOGIC_VECTOR (3 downto 0);
        S : in STD_LOGIC
    );
end component;

SIGNAL I0 :  STD_LOGIC_VECTOR (3 downto 0);
SIGNAL I1 :  STD_LOGIC_VECTOR (3 downto 0);
SIGNAL O : STD_LOGIC_VECTOR (3 downto 0);
SIGNAL S : STD_LOGIC;

begin
UUT : MUX_2_to_1_4bit
port map(
    I0 => I0,
    I1 => I1,
    O => O,
    S => S
);

process begin
    
    I0 <= "1010";
    I1 <= "1111";
    
    S <= '0';
    wait for 500ns;
    
    S <= '1';
    wait for 500ns;
    
    wait;
    
end process;

end Behavioral;