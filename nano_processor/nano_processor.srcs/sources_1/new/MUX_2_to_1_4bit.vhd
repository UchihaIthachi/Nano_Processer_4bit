----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2023 09:16:12 PM
-- Design Name: 
-- Module Name: MUX_2_to_1_4bit - Behavioral
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

entity MUX_2_to_1_4bit is
    Port ( I0 : in STD_LOGIC_VECTOR (3 downto 0);
           I1 : in STD_LOGIC_VECTOR (3 downto 0);
           O : out STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC);
end MUX_2_to_1_4bit;

architecture Behavioral of MUX_2_to_1_4bit is

component MUX_2_to_1
    port(
        I : in STD_LOGIC_VECTOR (1 downto 0);
        S : in STD_LOGIC;
        Y : out STD_LOGIC
    );
    
end component;

begin

MUX_2_to_1_0 : MUX_2_to_1
port map(
    I(0) => I0(0),
    I(1) => I1(0),
    S => S,
    Y => O(0) 
);


MUX_2_to_1_1 : MUX_2_to_1
port map(
    I(0) => I0(1),
    I(1) => I1(1),
    S => S,
    Y => O(1) 
);


MUX_2_to_1_2 : MUX_2_to_1
port map(
    I(0) => I0(2),
    I(1) => I1(2),
    S => S,
    Y => O(2) 
);

MUX_2_to_1_3 : MUX_2_to_1
port map(
    I(0) => I0(3),
    I(1) => I1(3),
    S => S,
    Y => O(3) 
);

end Behavioral;
