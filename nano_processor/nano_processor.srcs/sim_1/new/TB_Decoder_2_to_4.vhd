----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/23/2023 06:29:30 AM
-- Design Name: 
-- Module Name: TB_Decoder_2_to_4 - Behavioral
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

entity TB_Decoder_2_to_4 is
--  Port ( );
end TB_Decoder_2_to_4;

architecture Behavioral of TB_Decoder_2_to_4 is

COMPONENT Decoder_2_to_4 
    PORT(I: IN STD_LOGIC_VECTOR (1 downto 0);
     EN: IN STD_LOGIC;
     Y: OUT STD_LOGIC_VECTOR (3 downto 0)
     );
END COMPONENT;

signal I : STD_LOGIC_VECTOR (1 downto 0);
signal Y : STD_LOGIC_VECTOR (3 downto 0);
signal EN : STD_LOGIC;


begin

UUT: Decoder_2_to_4  PORT MAP(
    I => I,
    EN => EN,
    Y => Y
);

process
begin
    EN <= '1';
    
    I(0) <= '0';
    I(1) <= '0';
    wait for 100 ns;
    
    I(0) <= '1';
    I(1) <= '0';
    wait for 100 ns;
    
    I(0) <= '0';
    I(1) <= '1';
    wait for 100 ns;
    
    I(0) <= '1';
    I(1) <= '1';
    wait for 100 ns;
    
    EN <= '0';
    
    I(0) <= '0';
    I(1) <= '0';
    wait for 100 ns;
    
    I(0) <= '1';
    I(1) <= '0';
    wait for 100 ns;
    
    I(0) <= '0';
    I(1) <= '1';
    wait for 100 ns;
    
    I(0) <= '1';
    I(1) <= '1';
    wait for 100 ns;
    
    
    I(0) <= '0';
    I(1) <= '0';
    wait;
    
end process;

end Behavioral;