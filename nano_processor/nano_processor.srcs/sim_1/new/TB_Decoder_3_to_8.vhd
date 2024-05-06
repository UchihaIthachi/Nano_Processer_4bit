----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/23/2023 07:24:47 AM
-- Design Name: 
-- Module Name: TB_Decoder_3_to_8 - Behavioral
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

entity TB_Decoder_3_to_8 is
--  Port ( );
end TB_Decoder_3_to_8;

architecture Behavioral of TB_Decoder_3_to_8 is

COMPONENT Decoder_3_to_8
    PORT(I: IN STD_LOGIC_VECTOR(2 downto 0);
     Y: OUT STD_LOGIC_VECTOR(7 downto 0));
END COMPONENT;

signal I: STD_LOGIC_VECTOR(2 downto 0);
signal Y: STD_LOGIC_VECTOR(7 downto 0);

begin
UUT: Decoder_3_to_8 PORT MAP(
    I => I,
    Y => Y
);

process 
begin
    
    I(0) <= '0';
    I(1) <= '0';
    I(2) <= '0';
    wait for 60 ns;
    
    I(0) <= '1';
    I(1) <= '0';
    I(2) <= '0';
    wait for 60 ns;
    
    I(0) <= '0';
    I(1) <= '1';
    I(2) <= '0';
    wait for 60 ns;
    
    I(0) <= '1';
    I(1) <= '1';
    I(2) <= '0';
    wait for 60 ns;
    
    I(0) <= '0';
    I(1) <= '0';
    I(2) <= '1';
    wait for 60 ns;
    
    I(0) <= '1';
    I(1) <= '0';
    I(2) <= '1';
    wait for 60 ns;
    
    I(0) <= '0';
    I(1) <= '1';
    I(2) <= '1';
    wait for 60 ns;
    
    I(0) <= '1';
    I(1) <= '1';
    I(2) <= '1';
    wait for 60 ns;
    
    
    wait;
    
end process;
end Behavioral;