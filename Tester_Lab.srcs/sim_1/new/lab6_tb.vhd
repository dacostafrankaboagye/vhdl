----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2022 08:57:04 AM
-- Design Name: 
-- Module Name: lab6_tb - Behavioral
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

entity lab6_tb is
--  Port ( );
end lab6_tb;

architecture Behavioral of lab6_tb is

    component lab6 is 
        Port ( D : in STD_LOGIC;
               Clock : in STD_LOGIC;
               Q : inout STD_LOGIC;
               Qnot : inout STD_LOGIC);
    end component lab6;
        signal A1, B1, C1: std_logic;
        begin
        UUT: lab6 port map(Clock=>A1, Q=>B1, Qnot=>C1, D=>C1);
        process
        begin
         
            if B1 = '1' then report "sucess";
            else report "failed";
            end if;            
            wait for 10ns;
         
            
            wait;
         end process;  


end Behavioral;

