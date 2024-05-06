----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2023 10:27:50 PM
-- Design Name: 
-- Module Name: TB_MUX_8_to_1_4bit - Behavioral
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

entity TB_MUX_8_to_1_4bit is
--  Port ( );
end TB_MUX_8_to_1_4bit;

architecture Behavioral of TB_MUX_8_to_1_4bit is

component MUX_8_to_1_4bit
    port(
        I1 : in STD_LOGIC_VECTOR (3 downto 0);
        I2 : in STD_LOGIC_VECTOR (3 downto 0);
        I3 : in STD_LOGIC_VECTOR (3 downto 0);
        I4 : in STD_LOGIC_VECTOR (3 downto 0);
        I5 : in STD_LOGIC_VECTOR (3 downto 0);
        I6 : in STD_LOGIC_VECTOR (3 downto 0);
        I7 : in STD_LOGIC_VECTOR (3 downto 0);
        I8 : in STD_LOGIC_VECTOR (3 downto 0);
        S : in STD_LOGIC_VECTOR (2 downto 0);
        Y : out STD_LOGIC_VECTOR (3 downto 0)
    );
end component;


signal I1 :  STD_LOGIC_VECTOR (3 downto 0);
signal I2 :  STD_LOGIC_VECTOR (3 downto 0);
signal I3 :  STD_LOGIC_VECTOR (3 downto 0);
signal I4 :  STD_LOGIC_VECTOR (3 downto 0);
signal I5 :  STD_LOGIC_VECTOR (3 downto 0);
signal I6 :  STD_LOGIC_VECTOR (3 downto 0);
signal I7 :  STD_LOGIC_VECTOR (3 downto 0);
signal I8 :  STD_LOGIC_VECTOR (3 downto 0);
signal S :  STD_LOGIC_VECTOR (2 downto 0);
signal Y :  STD_LOGIC_VECTOR (3 downto 0);


begin
UUT : MUX_8_to_1_4bit
port map(
    I1 => I1,
    I2 => I2,
    I3 => I3,
    I4 => I4,
    I5 => I5,
    I6 => I6,
    I7 => I7,
    I8 => I8,
    S => S,
    Y => Y
);


process begin
    I1 <= "0001";
    I2 <= "0010";
    I3 <= "0011";
    I4 <= "0100";
    I5 <= "0101";
    I6 <= "0110";
    I7 <= "0111";
    I8 <= "1000";
    
    
    
    S <= "000";
    wait for 125 ns;
    
    S <= "001";
    wait for 125 ns;
    
    S <= "010";
    wait for 125 ns;
    
    S <= "011";
    wait for 125 ns;
    
    S <= "100";
    wait for 125 ns;
    
    S <= "101";
    wait for 125 ns;
    
    S <= "110";
    wait for 125 ns;
        
    S <= "111";
    wait for 125 ns;
    
    wait;
    
end process;

end Behavioral;
