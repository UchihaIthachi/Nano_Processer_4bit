----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2023 09:53:38 PM
-- Design Name: 
-- Module Name: MUX_8_to_1 - Behavioral
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

entity Mux_8_to_1 is
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           I : in STD_LOGIC_VECTOR (7 downto 0);
           Y : out STD_LOGIC);
end Mux_8_to_1;

architecture Behavioral of Mux_8_to_1 is
     component Decoder_3_to_8
       port(
       I: in STD_LOGIC_VECTOR;
       Y: out STD_LOGIC_VECTOR);         
     end component;
     
signal D1 : STD_LOGIC_VECTOR(7 downto 0);

begin
    Decoder_3_to_8_0 : Decoder_3_to_8
    port map(
            I => S,
            Y => D1);

Y <=  (I(0) AND D1(0)) OR (I(1) AND D1(1)) OR (I(2) AND D1(2)) OR (I(3) AND D1(3)) OR (I(4) AND D1(4)) OR (I(5) AND D1(5)) OR (I(6) AND D1(6)) OR (I(7) AND D1(7));
    
end Behavioral;