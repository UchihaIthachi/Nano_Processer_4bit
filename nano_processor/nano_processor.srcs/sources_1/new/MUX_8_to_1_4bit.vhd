----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2023 10:08:00 PM
-- Design Name: 
-- Module Name: MUX_8_to_1_4bit - Behavioral
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

entity MUX_8_to_1_4bit is
    Port ( I1 : in STD_LOGIC_VECTOR (3 downto 0);
           I2 : in STD_LOGIC_VECTOR (3 downto 0);
           I3 : in STD_LOGIC_VECTOR (3 downto 0);
           I4 : in STD_LOGIC_VECTOR (3 downto 0);
           I5 : in STD_LOGIC_VECTOR (3 downto 0);
           I6 : in STD_LOGIC_VECTOR (3 downto 0);
           I7 : in STD_LOGIC_VECTOR (3 downto 0);
           I8 : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end MUX_8_to_1_4bit;

architecture Behavioral of MUX_8_to_1_4bit is

component MUX_8_to_1
    port(
        S : in STD_LOGIC_VECTOR (2 downto 0);
        I : in STD_LOGIC_VECTOR (7 downto 0);
        Y : out STD_LOGIC
    );
end component;

begin

MUX_8_to_1_0 : MUX_8_to_1
port map(
    I(0) => I1(0),
    I(1) => I2(0),
    I(2) => I3(0),
    I(3) => I4(0),
    I(4) => I5(0),
    I(5) => I6(0),
    I(6) => I7(0),
    I(7) => I8(0),
    S => S,
    Y => Y(0)
);

MUX_8_to_1_1 : MUX_8_to_1
port map(
    I(0) => I1(1),
    I(1) => I2(1),
    I(2) => I3(1),
    I(3) => I4(1),
    I(4) => I5(1),
    I(5) => I6(1),
    I(6) => I7(1),
    I(7) => I8(1),
    S => S,
    Y => Y(1)
);


MUX_8_to_1_2 : MUX_8_to_1
port map(
    I(0) => I1(2),
    I(1) => I2(2),
    I(2) => I3(2),
    I(3) => I4(2),
    I(4) => I5(2),
    I(5) => I6(2),
    I(6) => I7(2),
    I(7) => I8(2),
    S => S,
    Y => Y(2)
);

MUX_8_to_1_3 : MUX_8_to_1
port map(
    I(0) => I1(3),
    I(1) => I2(3),
    I(2) => I3(3),
    I(3) => I4(3),
    I(4) => I5(3),
    I(5) => I6(3),
    I(6) => I7(3),
    I(7) => I8(3),
    S => S,
    Y => Y(3)
);


end Behavioral;