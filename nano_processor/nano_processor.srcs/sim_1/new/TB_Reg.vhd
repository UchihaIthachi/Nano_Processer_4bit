----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/21/2023 09:13:04 PM
-- Design Name: 
-- Module Name: TB_Reg - Behavioral
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

entity TB_Reg is
--  Port ( );
end TB_Reg;

architecture Behavioral of TB_Reg is

component Reg_4
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
           EN : in STD_LOGIC;
           CLR: in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal D : STD_LOGIC_VECTOR (3 downto 0);
signal EN : STD_LOGIC;
signal CLR : STD_LOGIC;
signal CLK : STD_LOGIC;
signal Q : STD_LOGIC_VECTOR (3 downto 0);

signal clock_delay : time := 7ns;

begin
UUT: Reg_4
port map(
    D => D,
    EN => EN,
    CLR => CLR,
    CLK => CLK,
    Q => Q
);

process begin
    
    EN <= '0';
    CLK <= '0';
    CLR <= '0';
    
    
    D <= "0000";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "0001";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "0010";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "0011";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "0100";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "0101";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "0110";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "0111";
        
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "1000";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "1001";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "1010";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "1011";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "1100";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "1101";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "1110";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "1111";
        
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
  ------------------------
  
      EN <= '0';
      CLK <= '0';
      CLR <= '1';
      
      
      D <= "0000";
      
      CLK <= '1';
      EN <= '0';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      CLK <= '1';
      EN <= '1';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      
      D <= "0001";
      
      CLK <= '1';
      EN <= '0';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      CLK <= '1';
      EN <= '1';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      
      D <= "0010";
      
      CLK <= '1';
      EN <= '0';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      CLK <= '1';
      EN <= '1';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      
      D <= "0011";
      
      CLK <= '1';
      EN <= '0';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      CLK <= '1';
      EN <= '1';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      
      D <= "0100";
      
      CLK <= '1';
      EN <= '0';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      CLK <= '1';
      EN <= '1';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      
      D <= "0101";
      
      CLK <= '1';
      EN <= '0';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      CLK <= '1';
      EN <= '1';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      
      D <= "0110";
      
      CLK <= '1';
      EN <= '0';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      CLK <= '1';
      EN <= '1';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      
      D <= "0111";
          
      CLK <= '1';
      EN <= '0';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      CLK <= '1';
      EN <= '1';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      
      D <= "1000";
      
      CLK <= '1';
      EN <= '0';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      CLK <= '1';
      EN <= '1';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      
      D <= "1001";
      
      CLK <= '1';
      EN <= '0';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      CLK <= '1';
      EN <= '1';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      
      D <= "1010";
      
      CLK <= '1';
      EN <= '0';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      CLK <= '1';
      EN <= '1';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      
      D <= "1011";
      
      CLK <= '1';
      EN <= '0';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      CLK <= '1';
      EN <= '1';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      
      D <= "1100";
      
      CLK <= '1';
      EN <= '0';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      CLK <= '1';
      EN <= '1';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      
      D <= "1101";
      
      CLK <= '1';
      EN <= '0';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      CLK <= '1';
      EN <= '1';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      
      D <= "1110";
      
      CLK <= '1';
      EN <= '0';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      CLK <= '1';
      EN <= '1';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      
      D <= "1111";
          
      CLK <= '1';
      EN <= '0';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      CLK <= '1';
      EN <= '1';
      wait for clock_delay;
      CLK <= '0';
      wait for clock_delay;
      
      
      
  ------------------------  
  
    D <= "0000";
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;

    
    wait;
    
end process;


end Behavioral;
