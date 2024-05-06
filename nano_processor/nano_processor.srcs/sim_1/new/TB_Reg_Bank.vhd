----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2023 12:10:17 PM
-- Design Name: 
-- Module Name: TB_Reg_Bank - Behavioral
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

entity TB_Reg_Bank is
--  Port ( );
end TB_Reg_Bank;

architecture Behavioral of TB_Reg_Bank is

    component Reg_Bank
    Port (
        D : in STD_LOGIC_VECTOR (3 downto 0);
        EN : in STD_LOGIC_VECTOR (2 downto 0);
        CLK : in STD_LOGIC:='1';
        CLR : in STD_LOGIC;
        O0 : out STD_LOGIC_VECTOR (3 downto 0);
        O1 : out STD_LOGIC_VECTOR (3 downto 0);
        O2 : out STD_LOGIC_VECTOR (3 downto 0);
        O3 : out STD_LOGIC_VECTOR (3 downto 0);
        O4 : out STD_LOGIC_VECTOR (3 downto 0);
        O5 : out STD_LOGIC_VECTOR (3 downto 0);
        O6 : out STD_LOGIC_VECTOR (3 downto 0);
        O7 : out STD_LOGIC_VECTOR (3 downto 0)
    );
    end component;

    signal D :  STD_LOGIC_VECTOR (3 downto 0);
    signal EN :  STD_LOGIC_VECTOR (2 downto 0);
    signal CLK :  STD_LOGIC:='1';
    signal CLR :  STD_LOGIC;
    signal O0 :  STD_LOGIC_VECTOR (3 downto 0);
    signal O1 :  STD_LOGIC_VECTOR (3 downto 0);
    signal O2 :  STD_LOGIC_VECTOR (3 downto 0);
    signal O3 :  STD_LOGIC_VECTOR (3 downto 0);
    signal O4 :  STD_LOGIC_VECTOR (3 downto 0);
    signal O5 :  STD_LOGIC_VECTOR (3 downto 0);
    signal O6 :  STD_LOGIC_VECTOR (3 downto 0);
    signal O7 :  STD_LOGIC_VECTOR (3 downto 0);

    signal clock_delay : time := 25ns;

begin

    UUT: Reg_Bank
    port map(
        D => D,
        EN => EN,
        CLK => CLK,
        CLR => CLR,
        O0 => O0,
        O1 => O1,
        O2 => O2,
        O3 => O3,
        O4 => O4,
        O5 => O5,
        O6 => O6,
        O7 => O7
    );
process
    begin
    wait for 25 ns;
    CLK <= not CLK;
    
    end process;

    process begin
         -- our indexes are 210176F and 210483T
    -- In this test bench we are storing each digits of 21, 176, and 483
       CLR<='1';
       wait for clock_delay;
       
       wait for clock_delay;
       CLR <= '0';
       
       
       wait for clock_delay;
       EN <= "001";
       wait for clock_delay;
       D <= "0010";
       
       
       
      wait for clock_delay;
      EN <= "010";
       wait for clock_delay;
       D <= "0001";
       
       
       
       
       wait for clock_delay;
        EN <= "011";
       wait for clock_delay;
       D <= "0111";
      
      
       
       
       wait for clock_delay;
        EN <= "100";
       wait for clock_delay;
       D <= "0110";
      
      
       
       
       wait for clock_delay;
        EN <= "101";
       wait for clock_delay;
       D <= "0100";
      
       
       
       
       wait for clock_delay;
       EN <= "110";
       wait for clock_delay;
       D <= "1000";
       
    
      
       
       wait for clock_delay;
       EN <= "111";
       wait for clock_delay;
       D <= "1111";
       
       

          
       wait;
    end process;

end Behavioral;

