----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2023 06:31:00 AM
-- Design Name: 
-- Module Name: TB_D_FF - Behavioral
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

entity TB_D_FF is
--  Port ( );
end TB_D_FF;

architecture Behavioral of TB_D_FF is

component D_FF
    Port ( D : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Clr : in STD_LOGIC;
           En : in STD_LOGIC;
           Q : out STD_LOGIC);
end component;

signal D,Clr,En: STD_LOGIC;
signal Q: STD_LOGIC;
signal Clk:STD_LOGIC:='0';

begin
UUT: D_FF PORT MAP(
   D => D,
   Clr => Clr,
   Clk => Clk,
   En => En,
   Q => Q
);

process
begin
wait for 50 ns;
Clk <= not Clk;

end process;

process
begin
    En <= '1';
    D <= '0';
    Clr <= '0';
    wait for 50ns;
    
    D <= '0';
    Clr <= '0';
    wait for 50ns;
    

    D <= '0';
    Clr <= '1';
    wait for 50ns;
    
 
    D <= '0';
    Clr <= '1';
    wait for 50ns;
   

    D <= '1';
    Clr <= '0';
    wait for 50ns;
    

    D <= '1';
    Clr <= '0';
    wait for 50ns;
    

    D <= '1';
    Clr <= '1';
    wait for 50ns;
    

    D <= '1';
    Clr <= '1';
    wait for 50ns;
    
    D <= '0';
    Clr <= '0';   
    
    
    wait;
    
end process;

end Behavioral;
