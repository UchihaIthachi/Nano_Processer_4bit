----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/19/2023 06:50:43 PM
-- Design Name: 
-- Module Name: TB_ROM_8_12 - Behavioral
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

entity TB_ROM_8_12 is
--  Port ( );
end TB_ROM_8_12;

architecture Behavioral of TB_ROM_8_12 is

    component ROM_8_12
        Port ( M : in STD_LOGIC_VECTOR (2 downto 0);
                  I : out STD_LOGIC_VECTOR (11 downto 0));
    end component;
    
    signal M: std_logic_vector (2 downto 0);
    signal I   : std_logic_vector (11 downto 0);

begin

    uut: ROM_8_12
        port map ( M => M,
                   I=> I);
    process
        begin
            M<="000";
            wait for 100ns;
            M<="001";
            wait for 100ns;
            M<="010";
            wait for 100ns;
            M<="011";
            wait for 100ns;
            M<="100";
            wait for 100ns;
            M<="101";
            wait for 100ns;
            M<="110";
            wait for 100ns;
            M<="111";
            wait;
     end process;
                                                

end Behavioral;
