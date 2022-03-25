-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Datapath_tb is
end;

architecture bench of Datapath_tb is

  component Datapath
      Port ( RESET : in STD_LOGIC;
             CLK : in STD_LOGIC;
             RW : in STD_LOGIC;
             DA, AA, BA : in STD_LOGIC_VECTOR (3 downto 0);
             Constant_In : in STD_LOGIC_VECTOR (7 downto 0);
             MB : in STD_LOGIC;
             FS3, FS2, FS1, FS0 : in STD_LOGIC;
             Data_In : in STD_LOGIC_VECTOR(7 downto 0);
             MD : in STD_LOGIC;
             Address_Out : out STD_LOGIC_VECTOR (7 downto 0);
             Data_Out : out STD_LOGIC_VECTOR (7 downto 0);
             V, C, N, Z : out STD_LOGIC);
  end component;

  signal RESET: STD_LOGIC;
  signal CLK: STD_LOGIC;
  signal RW: STD_LOGIC;
  signal DA, AA, BA: STD_LOGIC_VECTOR (3 downto 0);
  signal Constant_In: STD_LOGIC_VECTOR (7 downto 0);
  signal MB: STD_LOGIC;
  signal FS3, FS2, FS1, FS0: STD_LOGIC;
  signal Data_In: STD_LOGIC_VECTOR(7 downto 0);
  signal MD: STD_LOGIC;
  signal Address_Out: STD_LOGIC_VECTOR (7 downto 0);
  signal Data_Out: STD_LOGIC_VECTOR (7 downto 0);
  signal V, C, N, Z: STD_LOGIC;

begin

  uut: Datapath port map ( RESET       => RESET,
                           CLK         => CLK,
                           RW          => RW,
                           DA          => DA,
                           AA          => AA,
                           BA          => BA,
                           Constant_In => Constant_In,
                           MB          => MB,
                           FS3         => FS3,
                           FS2         => FS2,
                           FS1         => FS1,
                           FS0         => FS0,
                           Data_In     => Data_In,
                           MD          => MD,
                           Address_Out => Address_Out,
                           Data_Out    => Data_Out,
                           V           => V,
                           C           => C,
                           N           => N,
                           Z           => Z );

  stimulus: process
  begin
  
    -- Put initialisation code here


    -- Put test bench stimulus code here

    wait;
  end process;


end;