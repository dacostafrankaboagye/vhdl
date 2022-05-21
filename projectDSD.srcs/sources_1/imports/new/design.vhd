library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm is

	port(
    X, Y, Clk, rs: in std_logic;
    a1,b1,c1,d1,e1,f1,g1: inout std_logic;
    an0,an1,an2,an3 : out std_logic;
    qt1,qt2,qt0,qt3  : inout STD_LOGIC
    );
    
    
end entity fsm;

architecture behavioural of fsm is
SIGNAL ABCD: STD_LOGIC_VECTOR(3 downto 0);
signal sgout: STD_LOGIC_VECTOR(6 downto 0);

component jk_ff is
   port( J,K: in  std_logic;
         Reset: in std_logic;
         Clock_enable: in std_logic;
         Clk: in std_logic;
         Output: out std_logic);  
     
end component jk_ff;

signal j2, k2, j1, k1, j0, k0, u0,u1, u2, tt3 : std_logic; 

begin

j2 <= (qt1 and (not Y) ) or ( qt1 and qt0);
k2 <= '0';
j1 <= (( not qt2) and (not Y)) or ((not qt2) and qt0) ;
k1 <= (not Y) or qt0;
j0 <= ( not X) or  qt2;
k0 <= (not qt2) and (not X);



JK2: jk_ff port map(J=>j2, K=>k2,Reset=>rs,Clock_enable=>'1', Clk=>Clk, output=>qt2);



JK1: jk_ff port map(J=>j1, K=>k1,Reset=>rs,Clock_enable=>'1', Clk=>Clk,output=>qt1 );


JK0: jk_ff port map(J=>j0, K=>k0,Reset=>rs,Clock_enable=>'1', Clk=>Clk,output=>qt0 );

qt3 <= '0';

ABCD <=  qt3  & qt2  & qt1  & qt0 ;
sgout<= a1 & b1 & c1 & d1 & e1 & f1 & g1;

an0<='0';
an1<='1';
an2<='1';
an3<='1';

with (ABCD) select
    sgout <= "0000001" when "0000", --0
          "1001111" when "0001", --1
          "0010010" when "0010", --2
          "0000110" when "0011", --3 
          "1001100" when "0100", --4
          "0100100" when "0101", --5
          "0100000" when "0110", --6
          "0001111" when "0111", --7
          "0000000" when "1000", --8
          "0000100" when "1001", --9
          "1111111" when others;

end architecture behavioural;









