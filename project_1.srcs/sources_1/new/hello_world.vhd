----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2022 10:44:13 AM
-- Design Name: 
-- Module Name: hello_world - Behavioral
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

entity hello_world is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           D : in STD_LOGIC;
           C : in STD_LOGIC;
           X : out STD_LOGIC);
end hello_world;

architecture Behavioral of hello_world is

begin

X <= (A AND B AND D) OR C;

end Behavioral;
