----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2022 08:16:10 AM
-- Design Name: 
-- Module Name: wholeSystem - Behavioral
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

entity wholeSystem is
    Port ( Clk : in STD_LOGIC;
            Qout : inout STD_LOGIC);
end wholeSystem;

architecture Behavioral of wholeSystem is

    component lab6 is 
        Port ( D : in STD_LOGIC;
               Clock : in STD_LOGIC;
               Q : inout STD_LOGIC;
               Qnot : inout STD_LOGIC);
    end component lab6;
    
    signal s0, s1, s2, s3: std_logic;

begin

FF0: lab6 port map(Clock=>Clk, Qnot=>s0, D=>s0, Q=>s1);
FF1: lab6 port map(Clock=>s1, Qnot=>s2, D=>s2); 
FF2: lab6 port map(Clock=>s2, Qnot=>s3, D=>s3, Q=>Qout); 


end Behavioral;
