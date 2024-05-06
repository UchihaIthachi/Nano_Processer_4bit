----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2023 03:52:53 PM
-- Design Name: 
-- Module Name: RCA_4 - Behavioral
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

entity RCAS_4 is
    Port ( A              : in STD_LOGIC_VECTOR (3 DOWNTO 0);
           B              : in STD_LOGIC_VECTOR (3 DOWNTO 0);
           ADD_SUB_SELECT : in STD_LOGIC; --ADD :0 , SUBTRACT :1
           S              : out STD_LOGIC_VECTOR (3 DOWNTO 0);
           OVERFLOW       : out STD_LOGIC;
           ZERO           : out STD_LOGIC);
end RCAS_4;

architecture Behavioral of RCAS_4 is

    component FA
     port (
         A     : in std_logic;
         B     : in std_logic;
         C_IN  : in std_logic;
         S     : out std_logic;
         C_OUT : out std_logic);
     end component;

    SIGNAL  FA0_C, FA1_C, FA2_C ,FA3_C : std_logic; 
    SIGNAL B_1,RESULT : STD_LOGIC_VECTOR (3 DOWNTO 0);

begin
    FA_0 : FA
        port map (
            A => A(0),
            B => B_1(0),
            C_IN => ADD_SUB_SELECT, 
            S => RESULT(0),
            C_OUT => FA0_C);
    FA_1 : FA
        port map (
            A => A(1),
            B => B_1(1),
            C_IN => FA0_C,
            S => RESULT(1),
            C_OUT => FA1_C);
    FA_2 : FA
        port map (
            A => A(2),
            B => B_1(2),
            C_IN => FA1_C,
            S => RESULT(2),
            C_OUT => FA2_C);
    FA_3 : FA
        port map (
            A => A(3),
            B => B_1(3),
            C_IN => FA2_C,
            S => RESULT(3),
            C_OUT => FA3_C);
            
    B_1(0) <= ADD_SUB_SELECT XOR B(0);
    B_1(1) <= ADD_SUB_SELECT XOR B(1);
    B_1(2) <= ADD_SUB_SELECT XOR B(2);
    B_1(3) <= ADD_SUB_SELECT XOR B(3);
    
    S <= RESULT;
    ZERO <= NOT ( RESULT(0) OR RESULT(1) OR RESULT(2) OR RESULT(3) );
    OVERFLOW <= FA2_C XOR FA3_C;
    
 

end Behavioral;