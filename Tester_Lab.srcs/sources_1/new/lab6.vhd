----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2022 08:09:59 AM
-- Design Name: 
-- Module Name: lab6 - Behavioral
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

entity lab6 is
    Port ( D : in STD_LOGIC;
           Clock : in STD_LOGIC;
           Q : inout STD_LOGIC;
           Qnot : inout STD_LOGIC);
end lab6;

architecture Behavioral of lab6 is

begin
process
    begin
        wait until rising_edge(Clock);
        if D = '1' then
            Q <= '1';
            if  Q = '1' then Qnot <= '0'; end if;
        else
            Q <= '0';
            if Q = '0' then Qnot <= '1'; end if;
        end if;
        
 end process;

end Behavioral;


