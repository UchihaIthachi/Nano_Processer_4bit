----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2023 05:05:44 PM
-- Design Name: 
-- Module Name: TB_PC_3 - Behavioral
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

entity TB_PC_3 is
--  Port ( );
end TB_PC_3;

architecture Behavioral of TB_PC_3 is

component PC_3
    Port ( D : in STD_LOGIC_VECTOR (2 downto 0);
           CLR: in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal D : STD_LOGIC_VECTOR (2 downto 0);
signal CLR : STD_LOGIC;
signal CLK : STD_LOGIC:='0';
signal Q : STD_LOGIC_VECTOR (2 downto 0);

signal clock_delay : time := 50ns;

begin
UUT: PC_3
port map(
    D => D,
    CLR => CLR,
    CLK => CLK,
    Q => Q
);

process
    begin
    wait for 25 ns;
    CLK <= not CLK;
    
    end process;
     process begin
            -- our indexes are 210176F and 210483T
       -- In this test bench we are storing each digits of 21, 176, and 483
          
         
          CLR <= '0';
          D <= "010";
          
          
          wait for clock_delay;
          D <= "001";
          
          wait for clock_delay;
          D <= "111";
         
         
          wait for clock_delay;
          D <= "110";
         
          wait for clock_delay;
          D <= "100";
         
          
          wait for clock_delay;
          D <= "111";
          wait for clock_delay;
          CLR<='1';
          wait for clock_delay;
          
          
   
             
          wait;
       
   end process;
   
   
   end Behavioral;
