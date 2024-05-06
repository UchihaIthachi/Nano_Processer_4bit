----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 01:58:15 PM
-- Design Name: 
-- Module Name: Nano_Processor_4bit - Behavioral
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

entity Nano_Processor_4bit is
    Port ( RES : in STD_LOGIC;
           CLK : in STD_LOGIC;
           O : out STD_LOGIC_VECTOR (3 downto 0);
           OVF : out STD_LOGIC;
           OSD : out STD_LOGIC_VECTOR (6 downto 0);
           Z : out STD_LOGIC);
end Nano_Processor_4bit;

architecture Behavioral of Nano_Processor_4bit is

component Instruction_Decoder is
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
end component;


component ROM_8_12 is
    Port ( M : in STD_LOGIC_VECTOR (2 downto 0);
           I : out STD_LOGIC_VECTOR (11 downto 0));
end component;


component RCAS_4 is
    Port ( A              : in STD_LOGIC_VECTOR (3 DOWNTO 0);
           B              : in STD_LOGIC_VECTOR (3 DOWNTO 0);
           ADD_SUB_SELECT : in STD_LOGIC; --ADD :0 , SUBTRACT :1
           S              : out STD_LOGIC_VECTOR (3 DOWNTO 0);
           OVERFLOW       : out STD_LOGIC;
           ZERO           : out STD_LOGIC);
end component;


component Reg_Bank is
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
end component;


component MUX_2_to_1_4bit is
    Port ( I0 : in STD_LOGIC_VECTOR (3 downto 0);
           I1 : in STD_LOGIC_VECTOR (3 downto 0);
           O : out STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC);
end component;


component MUX_8_to_1_4bit is
    Port ( I1 : in STD_LOGIC_VECTOR (3 downto 0);
           I2 : in STD_LOGIC_VECTOR (3 downto 0);
           I3 : in STD_LOGIC_VECTOR (3 downto 0);
           I4 : in STD_LOGIC_VECTOR (3 downto 0);
           I5 : in STD_LOGIC_VECTOR (3 downto 0);
           I6 : in STD_LOGIC_VECTOR (3 downto 0);
           I7 : in STD_LOGIC_VECTOR (3 downto 0);
           I8 : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end component;


component  MUX_2_to_1_3bit is
    Port ( I1 : in STD_LOGIC_VECTOR (2 downto 0);
           I2 : in STD_LOGIC_VECTOR (2 downto 0);
           O : out STD_LOGIC_VECTOR (2 downto 0);
           S : in STD_LOGIC);
end component;


component PC_3 is
    Port ( D : in STD_LOGIC_VECTOR (2 downto 0);
           CLR : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0));
end component;


component RCA_3 is
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
        B : in STD_LOGIC_VECTOR (2 downto 0);
        S : out STD_LOGIC_VECTOR (2 downto 0);
        C_out : out STD_LOGIC);
end component;


component Slow_CLK is
    Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
end component;

component LUT_16_7 is
    Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
           data : out STD_LOGIC_VECTOR (6 downto 0));
end component;


signal PC_Current_Address, PC_Next_Address, Jump_Address, Adder_Address : std_logic_vector(2 downto 0);

signal Instrction : std_logic_vector(11 downto 0);
signal Immediate_Val, Result_Val ,Data_Val : std_logic_vector(3 downto 0);
signal Reg_En, Reg_Sel_1, Reg_Sel_2 :  std_logic_vector(2 downto 0);
signal Load_Sel,  Add_Sub_Sel : std_logic;
signal Zero : std_logic;
signal REG_0,REG_1,REG_2,REG_3,REG_4,REG_5,REG_6,REG_7 : std_logic_vector(3 downto 0);
signal MUX_REG_0, MUX_REG_1 :  std_logic_vector(3 downto 0);

signal clock : std_logic;
signal Jump_Flag : std_logic;
signal PC_OVF : std_logic;

begin

Slow_CLK_0 : Slow_CLK
    Port map ( 
        Clk_in => CLK,
        Clk_out => clock
   );

PC_3_0 : PC_3
port map(
    D => PC_Next_Address,
    CLR => RES,
    CLK => clock,
    Q => PC_Current_Address
);


 MUX_2_to_1_3bit_0 : MUX_2_to_1_3bit 
    Port map( I1 => Adder_Address,
           I2 => Jump_Address,
           O => PC_Next_Address,
           S =>  Jump_Flag
    );



RCA_3_0 : RCA_3 
    Port map ( A => PC_Current_Address,
        B => "001",
        S => Adder_Address,
        C_out => PC_OVF
    );


ROM_8_12_0 : ROM_8_12
    Port map( M => PC_Current_Address,
           I => Instrction
    );


Instruction_Decoder_0 : Instruction_Decoder 
    Port map( Instruct_Bus =>  Instrction,
           Jump_Check_Zero => Zero,
           Reg_EN =>  Reg_En,
           Reg_Sel_1 => Reg_Sel_1,
           Reg_Sel_2 => Reg_Sel_2 ,
           Load_Sel => Load_Sel,
           Add_Sub_Sel =>  Add_Sub_Sel,
           Immediate_Val =>Immediate_Val ,
           Jump_Flag => Jump_Flag, 
           Jump_Addr => Jump_Address);


MUX_2_to_1_4bit_0 : MUX_2_to_1_4bit 
    Port map( I0 =>  Result_Val, 
           I1 => Immediate_Val,
           O => Data_Val,
           S =>  Load_Sel);


Reg_Bank_0 : Reg_Bank 
    Port map( D => Data_Val,
           EN => Reg_En,
           CLK => clock,
           CLR => RES,
           O0 => REG_0,
           O1 => REG_1,
           O2 => REG_2,
           O3 => REG_3,
           O4 => REG_4,
           O5 => REG_5,
           O6 => REG_6,
           O7 => REG_7
           );


MUX_8_to_1_4bit_0 : MUX_8_to_1_4bit  
    Port map ( I1 => REG_0,
           I2 => REG_1,
           I3 => REG_2,
           I4 => REG_3,
           I5 => REG_4,
           I6 => REG_5,
           I7 => REG_6,
           I8 => REG_7,
           S => Reg_Sel_1,
           Y => MUX_REG_0 );


MUX_8_to_1_4bit_1 : MUX_8_to_1_4bit  
    Port map ( I1 => REG_0,
           I2 => REG_1,
           I3 => REG_2,
           I4 => REG_3,
           I5 => REG_4,
           I6 => REG_5,
           I7 => REG_6,
           I8 => REG_7,
           S => Reg_Sel_2,
           Y => MUX_REG_1 );
           
 
RCAS_4_0 : RCAS_4
   Port map( A => MUX_REG_1,             
          B => MUX_REG_0,        
          ADD_SUB_SELECT => Add_Sub_Sel,
          S => Result_Val,          
          OVERFLOW => OVF,     
          ZERO => Zero);
          
LUT_16_7_0 :  LUT_16_7
    Port map(address => Reg_7,
           data => OSD);      
            
O<=reg_7;
Z<=Zero;

end Behavioral;
