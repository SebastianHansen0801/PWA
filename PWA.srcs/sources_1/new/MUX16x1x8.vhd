----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2022 10:06:19 AM
-- Design Name: 
-- Module Name: MUX16x1x8 - Behavioral
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

entity MUX16x1x8 is
    Port ( R0, R1, R2, R3, R4, R5, R6, R7 : in STD_LOGIC_VECTOR (7 downto 0);
           R8, R9, R10, R11, R12, R13, R14, R15 : in STD_LOGIC_VECTOR (7 downto 0);
           D_Select : in STD_LOGIC_VECTOR (3 downto 0);
           Y_Data : out STD_LOGIC_VECTOR (7 downto 0));
end MUX16x1x8;

architecture Behavioral of MUX16x1x8 is

    component MUX16x1 is
        Port ( I : in STD_LOGIC_VECTOR (15 downto 0);
               S : in STD_LOGIC_VECTOR (3 downto 0);
               Y : out STD_LOGIC);
    end component;

begin

    gen: for k in 0 to 7 generate
        U0: MUX16x1 port map (
            I(0) => R0(k), I(1) => R1(k), I(2) => R2(k), I(3) => R3(k), I(4) => R4(k), I(5) => R5(k), I(6) => R6(k), I(7) => R7(k),
            I(8) => R8(k), I(9) => R9(k), I(10) => R10(k), I(11) => R11(k), I(12) => R12(k), I(13) => R13(k), I(14) => R14(k), I(15) => R15(k),
            S => D_Select, Y => Y_Data(k));  
    end generate;
    

end Behavioral;
