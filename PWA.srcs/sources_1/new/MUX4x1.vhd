----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2022 09:31:31 AM
-- Design Name: 
-- Module Name: MUX4x1 - Behavioral
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

entity MUX4x1 is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC);
end MUX4x1;

architecture Behavioral of MUX4x1 is

    component MUX2x1 is
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               S : in STD_LOGIC;
               Q : out STD_LOGIC);
    end component;

    signal mux0, mux1: STD_LOGIC;

begin

    U0: MUX2x1 port map (A => I(0), B => I(1), S => S(0), Q => mux0);
    U1: MUX2x1 port map (A => I(2), B => I(3), S => S(0), Q => mux1);
    U2: MUX2x1 port map (A => mux0, B => mux1, S => S(1), Q => Y);

end Behavioral;
