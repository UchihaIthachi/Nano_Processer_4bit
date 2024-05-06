----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2023 08:52:22 PM
-- Design Name: 
-- Module Name: TB_MUX_2_to_1 - Behavioral
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

entity TB_MUX_2_to_1 is
--  Port ( );
end TB_MUX_2_to_1;

architecture Behavioral of TB_MUX_2_to_1 is

component MUX_2_to_1
    port(
        I : in STD_LOGIC_VECTOR (1 downto 0);
        S : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end component;  

signal I :  STD_LOGIC_VECTOR (1 downto 0);
signal S,Y :  STD_LOGIC;    


begin
UUT : MUX_2_to_1
port map(
    I => I,
    S => S,
    Y => Y
);

process begin

    I <= "00";
    S <= '0';
    wait for 125ns;
    S <= '1';
    wait for 125ns;
    
    I <= "01";
    S <= '0';
    wait for 125ns;
    S <= '1';
    wait for 125ns;
    
    I <= "10";
    S <= '0';
    wait for 125ns;
    S <= '1';
    wait for 125ns;
    
    I <= "11";
    S <= '0';
    wait for 125ns;
    S <= '1';
    wait for 125ns;
    
    wait;

end process;

end Behavioral;