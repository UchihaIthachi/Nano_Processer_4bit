----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 02:23:54 PM
-- Design Name: 
-- Module Name: TB_Slow_CLK - Behavioral
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

entity TB_Slow_CLK is
--  Port ( );
end TB_Slow_CLK;

architecture Behavioral of TB_Slow_CLK is


component Slow_CLK is
    Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
end component;

signal Clk_in, Clk_out :  STD_LOGIC;
signal clk_status:  std_logic :='0';
signal delay : time := 10 ns;

begin
UUT: Slow_Clk PORT MAP(
   Clk_in => Clk_in,
   Clk_out => Clk_out
);


process
begin 
    
    for i in 1 to 100 loop
        Clk_in <= clk_status;
        clk_status <= not clk_status; 
        wait for delay;
    end loop;    
    
    wait;
end process;

end Behavioral;