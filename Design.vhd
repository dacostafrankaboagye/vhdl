
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity counter_circuit is
  port (D,Clock:in std_logic; 
  		Q0,Q1,Q2: inout std_logic);
end counter_circuit;

architecture rtl of counter_circuit is
	component DFF is
		port(D,Clock: in std_logic; 
           	Q : inout STD_LOGIC);
 	end component DFF;
    
signal theClk:std_logic;
signal S_out:std_logic_vector(2 downto 0); -- '000'
signal C_out:std_logic_vector(2 downto 0):="000";



	begin

	S_out(0)<=not C_out(0);

	DF0: DFF port map( Clock=>Clock, D=>S_out(0), Q=>C_out(0));

	S_out(1)<=not C_out(1);

	DF1: DFF port map( Clock=>C_out(0),D=>S_out(1), Q=>C_out(1));
    
    S_out(2)<=not C_out(2);
    
    DF2: DFF port map( Clock=>theClk, D =>S_out(2), Q=>C_out(2));
    
    Q0<=C_out(0);
    
    Q1<=C_out(1);
    
    Q2<=C_out(2);
    
    theClk<=not C_out(1);
    
end rtl;
