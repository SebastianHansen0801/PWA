library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity MUX16x8x1_tb is
end;

architecture bench of MUX16x8x1_tb is

  component MUX16x8x1
      Port ( R0, R1, R2, R3, R4, R5, R6, R7 : in STD_LOGIC_VECTOR (7 downto 0);
             R8, R9, R10, R11, R12, R13, R14, R15 : in STD_LOGIC_VECTOR (7 downto 0);
             D_Select : in STD_LOGIC_VECTOR (3 downto 0);
             Y_Data : out STD_LOGIC_VECTOR (7 downto 0));
  end component;

  signal R0, R1, R2, R3, R4, R5, R6, R7: STD_LOGIC_VECTOR (7 downto 0);
  signal R8, R9, R10, R11, R12, R13, R14, R15: STD_LOGIC_VECTOR (7 downto 0);
  signal D_Select: STD_LOGIC_VECTOR (3 downto 0);
  signal Y_Data: STD_LOGIC_VECTOR (7 downto 0);

begin

  uut: MUX16x8x1 port map ( R0       => R0,
                            R1       => R1,
                            R2       => R2,
                            R3       => R3,
                            R4       => R4,
                            R5       => R5,
                            R6       => R6,
                            R7       => R7,
                            R8       => R8,
                            R9       => R9,
                            R10      => R10,
                            R11      => R11,
                            R12      => R12,
                            R13      => R13,
                            R14      => R14,
                            R15      => R15,
                            D_Select => D_Select,
                            Y_Data   => Y_Data );

  stimulus: process
  begin
  
    -- Put initialisation code here


    -- Put test bench stimulus code here

    wait;
  end process;


end;