----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/29/2023 09:43:01 PM
-- Design Name: 
-- Module Name: TB_Instruction_Decoder - Behavioral
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

entity TB_Instruction_Decoder is
--  Port ( );
end TB_Instruction_Decoder;

architecture Behavioral of TB_Instruction_Decoder is

component Instruction_Decoder
    Port ( Instruct_Bus : in STD_LOGIC_VECTOR (11 downto 0);
           Jump_Check_Zero : in STD_LOGIC;
           Reg_EN : out STD_LOGIC_VECTOR (2 downto 0);
           Reg_Sel_1 : out STD_LOGIC_VECTOR (2 downto 0);
           Reg_Sel_2 : out STD_LOGIC_VECTOR (2 downto 0);
           Load_Sel : out STD_LOGIC;
           Add_Sub_Sel : out STD_LOGIC;
           Immediate_Val : out STD_LOGIC_VECTOR (3 downto 0);
           Jump_Flag : out STD_LOGIC;
           Jump_Addr : out STD_LOGIC_VECTOR (2 downto 0));
end component;


signal Instruct_Bus :  STD_LOGIC_VECTOR (11 downto 0);
signal Jump_Check_Zero :  STD_LOGIC;
signal Reg_EN :  STD_LOGIC_VECTOR (2 downto 0);
signal Reg_Sel_1 :  STD_LOGIC_VECTOR (2 downto 0);
signal Reg_Sel_2 :  STD_LOGIC_VECTOR (2 downto 0);
signal Load_Sel :  STD_LOGIC;
signal Add_Sub_Sel :  STD_LOGIC;
signal Immediate_Val :  STD_LOGIC_VECTOR (3 downto 0);
signal Jump_Flag :  STD_LOGIC;
signal Jump_Addr :  STD_LOGIC_VECTOR (2 downto 0);

constant delay : time    := 150 ns;

begin
UUT : Instruction_Decoder
port map(
    Instruct_Bus => Instruct_Bus ,
    Jump_Check_Zero => Jump_Check_Zero,
    Reg_EN =>  Reg_EN,
    Reg_Sel_1 => Reg_Sel_1,
    Reg_Sel_2 => Reg_Sel_2,
    Load_Sel => Load_Sel,
    Add_Sub_Sel => Add_Sub_Sel,
    Immediate_Val => Immediate_Val,
    Jump_Flag => Jump_Flag,
    Jump_Addr => Jump_Addr
);

process begin
Jump_Check_Zero <= '0';
Instruct_Bus <= "100010000010";
wait for delay;

Instruct_Bus <= "100100000001";
wait for delay;

Instruct_Bus <= "010100000000";
wait for delay;

Instruct_Bus <= "000010100000";
wait for delay;


Instruct_Bus <= "110010000111";
wait for delay;

Jump_Check_Zero <= '1';
Instruct_Bus <= "110000000011";
wait for delay;                               

wait;

end process;

end Behavioral;