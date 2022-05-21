
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity tb_bcd_7seg is
end entity tb_bcd_7seg;

architecture behaviour of tb_bcd_7seg is
component bcd_7segment is
    Port ( B0,B1,B2,B3: in STD_LOGIC;
    A,an1,B,C,D,E,F,G: OUT std_logic);
end component bcd_7segment;


signal BCDin : std_logic_vector(3 downto 0); -- 0000 
signal SS: std_logic_vector(6 downto 0);


begin
uut: bcd_7segment PORT MAP (B3 => BCDin(0),B2 => BCDin(1),B1 => BCDin(2),B0 => BCDin(3),
A=>SS(0), B=>SS(1), C=>SS(2), D=>SS(3), E=>SS(4), F=>SS(5), G=>SS(6));

stimulus: process
begin
    BCDin <= "0100";
    wait for 100 ns;
    
 
    wait;
end process;
end;





























