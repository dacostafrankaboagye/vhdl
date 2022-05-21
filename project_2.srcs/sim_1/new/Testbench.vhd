----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/28/2022 09:56:05 PM
-- Design Name: 
-- Module Name: Testbench - Behavioral
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

entity lab_tester_tb is
--  Port ( );
end entity lab_tester_tb;

architecture Bh of lab_tester_tb is
    component lab_tester is
        Port ( A,B : in STD_LOGIC;
            F1: out STD_LOGIC);
    end component lab_tester;
    
    signal A1,B1,C1 : STD_LOGIC;
    
    begin
    UUT: lab_tester port map(A=>A1, B=>B1, F1=>C1);
    
    process
    begin    
        A1 <= '1'; B1 <= '1';
        wait for 1 ns;
        if C1 = '1' then report "success for 11";
        else report "failed for 11";
        end if;
    
        A1 <= '0'; B1 <= '1';
        wait for 1 ns;
        if C1 = '0' then report "success for 01";
        else report "failed for 01";
        end if;
            
        report "Testing... Done!";
        wait;
    
    end process;

end architecture Bh;
