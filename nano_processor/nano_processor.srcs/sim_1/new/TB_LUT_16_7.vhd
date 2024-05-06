----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/02/2023 03:24:48 PM
-- Design Name: 
-- Module Name: LUT_Sim - Behavioral
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

entity TB_LUT_16_7 is
--  Port ( );
end TB_LUT_16_7;

architecture Behavioral of TB_LUT_16_7 is
component LUT_16_7
    port(
    address : in STD_LOGIC_VECTOR (3 downto 0);
    data : out STD_LOGIC_VECTOR (6 downto 0));
end component;
signal address: STD_LOGIC_VECTOR (3 downto 0);
signal data : STD_LOGIC_VECTOR (6 downto 0);

begin
UUT: LUT_16_7
    Port Map ( address => address,
           data => data);
           
process 
    begin
       address <= "0010";--2
       wait for 100ns;
       address <="0001";--1
       wait for 100ns;
       address <="0000";--0
       wait for 100ns;
       address <="0100";--4
       wait for 100ns;
       address <="1000";--8
       wait for 100ns;
       address <="0011";--3
       wait for 100ns;
       address <="0111";--7
       wait for 100ns;
       address <="0110";--6
       wait for 100ns;
       address <="1111";--F
       wait;
    end process;

end Behavioral;
