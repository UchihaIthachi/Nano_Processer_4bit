----------------------------------------------------------------------------------
-- Company: 
-- Engineer: MALINDU GAMAGE
-- 
-- Create Date: 05/28/2023 08:18:31 PM
-- Design Name: 
-- Module Name: TB_RCAS_4 - Behavioral
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

entity TB_RCAS_4 is
  --Port ( );
end TB_RCAS_4;

architecture Behavioral of TB_RCAS_4 is
    COMPONENT RCAS_4
        Port ( A              : in STD_LOGIC_VECTOR (3 DOWNTO 0);
               B              : in STD_LOGIC_VECTOR (3 DOWNTO 0);
               ADD_SUB_SELECT : in STD_LOGIC;
               S              : out STD_LOGIC_VECTOR (3 DOWNTO 0);
               OVERFLOW       : out STD_LOGIC;
               ZERO           : out STD_LOGIC);
    END COMPONENT;
    
    SIGNAL A,B,S : STD_LOGIC_VECTOR (3 DOWNTO 0);
    SIGNAL ADD_SUB_SELECT, OVERFLOW, ZERO : STD_LOGIC;
    
begin

UUT: RCAS_4
    Port Map ( A              => A,
               B              => B,
               ADD_SUB_SELECT => ADD_SUB_SELECT,
               S              => S,
               OVERFLOW       => OVERFLOW,
               ZERO           => ZERO);
    PROCESS
        BEGIN
            ADD_SUB_SELECT <='0';
            A <="0000";
            B <="0000";
            WAIT FOR 100NS;
            
            
            A <="0001";
            B <="0000";
            WAIT FOR 100NS;
            
            
            A <="0010";
            B <="0010";
            WAIT FOR 100NS;
            
            
            A <="0111";
            B <="1111";
            WAIT FOR 100NS;
            
            
            A <="0011";
            B <="0001";
            WAIT FOR 100NS;
            
            ADD_SUB_SELECT <='1';
            A <="1111";
            B <="0000";
            WAIT FOR 100NS;
            
            
            A <="1000";
            B <="0001";
            WAIT FOR 100NS;
            
            
            A <="1111";
            B <="1111";
            WAIT FOR 100NS;
            
            
            A <="0001";
            B <="0100";
            WAIT FOR 100NS;
            
            
            A <="0000";
            B <="0000";
            WAIT FOR 100NS;
            
            
    END PROCESS;
    
end Behavioral;
