----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2022 09:44:16 AM
-- Design Name: 
-- Module Name: MUX16x1 - Behavioral
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

entity MUX16x1 is
    Port ( I : in STD_LOGIC_VECTOR (15 downto 0);
           S : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC);
end MUX16x1;

architecture Behavioral of MUX16x1 is

    component MUX4x1 is
        Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
               S : in STD_LOGIC_VECTOR (1 downto 0);
               Y : out STD_LOGIC);
    end component;

    signal mux_out: STD_LOGIC_VECTOR(3 downto 0);

begin
    gen: for k in 0 to 3 generate
        U0: MUX4x1 port map (I(0) => I(4*k), I(1) => I(4*k+1), I(2) => I(4*k+2), I(3) => I(4*k+3), S(0) => S(0), S(1) => S(1), Y => mux_out(k));
    end generate;
    
    U1: MUX4x1 port map (I(0) => mux_out(0), I(1) => mux_out(1), I(2) => mux_out(2), I(3) => mux_out(3), S(0) => S(2), S(1) => S(3), Y => Y);
    
end Behavioral;
