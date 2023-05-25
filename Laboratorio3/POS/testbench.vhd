library IEEE;
use IEEE.std_logic_1164.all;

Entity testbenchPoS is
End entity;

Architecture arq_testbenchPoS of testbenchPoS is
	component PoS
    	port(
        	 A: in std_logic;
    	 	 B: in std_logic;
          	 C: in std_logic;
        	 D: in std_logic;
         
       	     Q: out std_logic;
        	 P: out std_logic
            );
	End component;
    
    signal p, q, r, s: std_logic;
    
    Begin
    	CDP: PoS
        	port map(
            		A => p,
                    B => q,
                    C => r,
                    D => s
                    );
		process
        	Begin
            	p <= '0';
                q <= '0';
                r <= '0';
                s <= '0';
                wait for 10ns;
                
                p <= '0';
                q <= '0';
                r <= '0';
                s <= '1';
                wait for 10ns;
                
                p <= '0';
                q <= '0';
                r <= '1';
                s <= '0';
                wait for 10ns;
                
                p <= '0';
                q <= '0';
                r <= '1';
                s <= '1';
                wait for 10ns;
                
                p <= '0';
                q <= '1';
                r <= '0';
                s <= '0';
                wait for 10ns;
                
                p <= '0';
                q <= '1';
                r <= '0';
                s <= '1';
                wait for 10ns;
                
                p <= '0';
                q <= '1';
                r <= '1';
                s <= '0';
                wait for 10ns;
                
                p <= '0';
                q <= '1';
                r <= '1';
                s <= '1';
                wait for 10ns;
                
                p <= '1';
                q <= '0';
                r <= '0';
                s <= '0';
                wait for 10ns;
                
                p <= '1';
                q <= '0';
                r <= '0';
                s <= '1';
                wait for 10ns;
                
                p <= '1';
                q <= '0';
                r <= '1';
                s <= '0';
                wait for 10ns;
                
                p <= '1';
                q <= '0';
                r <= '1';
                s <= '1';
                wait for 10ns;
                
                p <= '1';
                q <= '1';
                r <= '0';
                s <= '0';
                wait for 10ns;
                
                p <= '1';
                q <= '1';
                r <= '0';
                s <= '1';
                wait for 10ns;
                
                p <= '1';
                q <= '1';
                r <= '1';
                s <= '0';
                wait for 10ns;
                
                p <= '1';
                q <= '1';
                r <= '1';
                s <= '1';
                wait for 10ns;
		End process;
End architecture;