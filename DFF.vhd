



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFF is
  Port (D : in STD_LOGIC;
           Clock : in STD_LOGIC;
           Q : inout STD_LOGIC );
end DFF;

architecture Behavioral of DFF is

begin
process
begin
  wait until rising_edge (Clock);
  
 if D = '1' then
 Q <= '1';
 else
 Q <= '0';
 end if;

end process;
 
end Behavioral;








