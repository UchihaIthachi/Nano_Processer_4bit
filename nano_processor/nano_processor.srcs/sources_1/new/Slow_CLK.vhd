----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 02:22:37 PM
-- Design Name: 
-- Module Name: Slow_CLK - Behavioral
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

entity Slow_CLK is
    Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
end Slow_CLK;

architecture Behavioral of Slow_CLK is

signal count : integer := 1;
signal clk_status:  std_logic :='0';


begin
    
--For 100 MHz input clock this g nerates 1 Hz clock
    process (Clk_in) begin
        if (rising_edge(Clk_in)) then
            count <= count + 1;
            if(count = 5) then                --Increment: counter
            --if(count = 50000000) then        --Count 50M pluses (l/2 of period)
                clk_status <= not clk_status; -- Inve-rt clock status
                Clk_out <= clk_status;
                count<= 1;                          --RE.se-c councer end if;
            end if;
        end if;
    end process;

end Behavioral;
