----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/29/2023 08:42:19 PM
-- Design Name: 
-- Module Name: Instruction_Decoder - Behavioral
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

entity Instruction_Decoder is
    Port ( Instruct_Bus : in STD_LOGIC_VECTOR (11 downto 0);
           Jump_Check_Zero : in STD_LOGIC ;
           Reg_EN : out STD_LOGIC_VECTOR (2 downto 0);
           Reg_Sel_1 : out STD_LOGIC_VECTOR (2 downto 0);
           Reg_Sel_2 : out STD_LOGIC_VECTOR (2 downto 0);
           Load_Sel : out STD_LOGIC;
           Add_Sub_Sel : out STD_LOGIC;
           Immediate_Val : out STD_LOGIC_VECTOR (3 downto 0);
           Jump_Flag : out STD_LOGIC;
           Jump_Addr : out STD_LOGIC_VECTOR (2 downto 0));
end Instruction_Decoder;

architecture Behavioral of Instruction_Decoder is

begin

Reg_EN <= Instruct_Bus(9 downto 7);
Reg_Sel_1 <= Instruct_Bus(9 downto 7);
Reg_Sel_2 <= Instruct_Bus(6 downto 4);
Jump_Addr <= Instruct_Bus(2 downto 0);
Immediate_Val <= Instruct_Bus(3 downto 0);

Load_Sel <= Instruct_Bus(11) and (not Instruct_Bus(10));
Add_Sub_Sel <= Instruct_Bus(10) and (not Instruct_Bus(11));
Jump_Flag <= Instruct_Bus(10) and Instruct_Bus(11) and Jump_Check_Zero;

end Behavioral;