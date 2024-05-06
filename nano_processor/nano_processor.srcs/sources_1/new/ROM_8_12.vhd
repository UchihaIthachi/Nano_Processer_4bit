----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/19/2023 06:42:40 PM
-- Design Name: 
-- Module Name: ROM_8_12 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM_8_12 is
    Port ( M : in STD_LOGIC_VECTOR (2 downto 0);
           I : out STD_LOGIC_VECTOR (11 downto 0));
end ROM_8_12;

architecture Behavioral of ROM_8_12 is

type rom_type is array (0 to 7) of std_logic_vector(11 downto 0);
    signal ROM_12 : rom_type :=("100010000011",--0rom address 000
                                "100100000001",--1rom address 001
                                "010100000000",--2rom address 010
                                "001110010000",--3rom address 011
                                "000010100000",--4rom address 100
                                "110010000111",--5rom address 101
                                "110000000001",--6rom address 110
                                "110000000111" --7rom address 111
                                );

begin
I <= ROM_12(to_integer(unsigned(M)));

end Behavioral;
