----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2023 11:33:03 AM
-- Design Name: 
-- Module Name: Reg_Bank - Behavioral
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

entity Reg_Bank is
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
           EN : in STD_LOGIC_VECTOR (2 downto 0);
           CLK : in STD_LOGIC;
           CLR : in STD_LOGIC;
           O0 : out STD_LOGIC_VECTOR (3 downto 0);
           O1 : out STD_LOGIC_VECTOR (3 downto 0);
           O2 : out STD_LOGIC_VECTOR (3 downto 0);
           O3 : out STD_LOGIC_VECTOR (3 downto 0);
           O4 : out STD_LOGIC_VECTOR (3 downto 0);
           O5 : out STD_LOGIC_VECTOR (3 downto 0);
           O6 : out STD_LOGIC_VECTOR (3 downto 0);
           O7 : out STD_LOGIC_VECTOR (3 downto 0));
end Reg_Bank;


architecture Behavioral of Reg_Bank is

    component Reg_4
    port (
        D : in STD_LOGIC_VECTOR (3 downto 0);
        EN : in STD_LOGIC;
        CLR : in STD_LOGIC;
        CLK : in STD_LOGIC;
        Q : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    component Decoder_3_to_8
    port (
        I : in STD_LOGIC_VECTOR (2 downto 0);
        Y : out STD_LOGIC_VECTOR (7 downto 0));
    end component;

signal DecodedEN : std_logic_vector (7 downto 0);


begin

    Decoder_3_to_8_1 : Decoder_3_to_8
    port map(
        I => EN,
        Y => DecodedEN
    );
    
    Reg_4_0 : Reg_4
    port map(
        D => D,
        EN => DecodedEN(0),
        CLR => CLR,
        CLK => CLK
        --Q => O0 -- Set R0 to zero
    );
    
    Reg_4_1 : Reg_4
        port map(
            D => D,
            EN => DecodedEN(1),
            CLR => CLR,
            CLK => CLK,
            Q => O1
        );
        
    Reg_4_2 : Reg_4
        port map(
            D => D,
            EN => DecodedEN(2),
            CLR => CLR,
            CLK => CLK,
            Q => O2
        );
            
    Reg_4_3 : Reg_4
    port map(
        D => D,
        EN => DecodedEN(3),
        CLR => CLR,
        CLK => CLK,
        Q => O3
    );
        
    Reg_4_4 : Reg_4
    port map(
        D => D,
        EN => DecodedEN(4),
        CLR => CLR,
        CLK => CLK,
        Q => O4
    );
    
    Reg_4_5 : Reg_4
    port map(
        D => D,
        EN => DecodedEN(5),
        CLR => CLR,
        CLK => CLK,
        Q => O5
    );
    
    Reg_4_6 : Reg_4
    port map(
        D => D,
        EN => DecodedEN(6),
        CLR => CLR,
        CLK => CLK,
        Q => O6
    );
    
    Reg_4_7 : Reg_4
    port map(
        D => D,
        EN => DecodedEN(7),
        CLR => CLR,
        CLK => CLK,
        Q => O7
    );
    
 O0<="0000";


end Behavioral;
