----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/21/2023 06:47:19 PM
-- Design Name: 
-- Module Name: Reg_4 - Behavioral
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

library UNISIM;
use UNISIM.Vcomponents.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Reg_4 is
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
           EN : in STD_LOGIC;
           CLR : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end Reg_4;

architecture Behavioral of Reg_4 is

 component D_FF
    port (
        D : in STD_LOGIC;
        Clk : in STD_LOGIC;
        Clr : in STD_LOGIC;
        En : in STD_LOGIC;
        Q : out STD_LOGIC);
    end component;
 
signal D_IN : std_logic_vector(3 downto 0);   
signal EN_CLOCK : std_logic;

begin


    D_FF0 : D_FF
    port map (
        D => D(0),
        En => EN,
        Clr => CLR,
        Clk => CLK,
        Q => Q(0));
        
    D_FF1 : D_FF
    port map (
        D => D(1),
        En => EN,
        Clr => CLR,
        Clk => CLK,
        Q => Q(1));
        
    D_FF2 : D_FF
    port map (
        D => D(2),
        En => EN,
        Clr => CLR,
        Clk => CLK,
        Q => Q(2));
        
    D_FF3 : D_FF
    port map (
        D => D(3),
        En => EN,
        Clr => CLR,
        Clk => CLK,
        Q => Q(3));
        

end Behavioral;