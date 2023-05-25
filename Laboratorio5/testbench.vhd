library IEEE;
use IEEE.std_logic_1164.all;

Entity testbenchBloque is
End entity;

Architecture arq_testbenchBloque of testbenchBloque is
	component bloque
	port(
    	 S1: in std_logic;
    	 S2: in std_logic;
         S3: in std_logic;
         S4: in std_logic;
         S5: in std_logic;
         
         D0: out std_logic;
         D1: out std_logic;
         D2: out std_logic;
         D3: out std_logic;
         );
	End component;
    
    signal p, q, r, s, t, a, b, c, d: std_logic;
    
    Begin
    	CDP: bloque
        	port map(
            		S1 => p,
                    S2 => q,
                    S3 => r,
                    S4 => s,
                    S5 => t,
                    D0 => a,
                    D1 => b,
                    D2 => c,
                    D3 => d
                    );
		process
        	Begin
                p <= '0'; q <= '0'; r <= '0'; s <= '0'; t <= '0'; wait for 10 ns;
                p <= '0'; q <= '0'; r <= '0'; s <= '0'; t <= '1'; wait for 10 ns;
                p <= '0'; q <= '0'; r <= '0'; s <= '1'; t <= '0'; wait for 10 ns;
                p <= '0'; q <= '0'; r <= '0'; s <= '1'; t <= '1'; wait for 10 ns;
                p <= '0'; q <= '0'; r <= '1'; s <= '0'; t <= '0'; wait for 10 ns;
                p <= '0'; q <= '0'; r <= '1'; s <= '0'; t <= '1'; wait for 10 ns;
                p <= '0'; q <= '0'; r <= '1'; s <= '1'; t <= '0'; wait for 10 ns;
                p <= '0'; q <= '0'; r <= '1'; s <= '1'; t <= '1'; wait for 10 ns;
                p <= '0'; q <= '1'; r <= '0'; s <= '0'; t <= '0'; wait for 10 ns;
                p <= '0'; q <= '1'; r <= '0'; s <= '0'; t <= '1'; wait for 10 ns;
                p <= '0'; q <= '1'; r <= '0'; s <= '1'; t <= '0'; wait for 10 ns;
                p <= '0'; q <= '1'; r <= '0'; s <= '1'; t <= '1'; wait for 10 ns;
                p <= '0'; q <= '1'; r <= '1'; s <= '0'; t <= '0'; wait for 10 ns;
                p <= '0'; q <= '1'; r <= '1'; s <= '0'; t <= '1'; wait for 10 ns;
				p <= '0'; q <= '1'; r <= '1'; s <= '1'; t <= '0'; wait for 10 ns;
                p <= '0'; q <= '1'; r <= '1'; s <= '1'; t <= '1'; wait for 10 ns;
                p <= '1'; q <= '0'; r <= '0'; s <= '0'; t <= '0'; wait for 10 ns;
                p <= '1'; q <= '0'; r <= '0'; s <= '0'; t <= '1'; wait for 10 ns;
                p <= '1'; q <= '0'; r <= '0'; s <= '1'; t <= '0'; wait for 10 ns;
                p <= '1'; q <= '0'; r <= '0'; s <= '1'; t <= '1'; wait for 10 ns;
                p <= '1'; q <= '0'; r <= '1'; s <= '0'; t <= '0'; wait for 10 ns;
                p <= '1'; q <= '0'; r <= '1'; s <= '0'; t <= '1'; wait for 10 ns;
                p <= '1'; q <= '0'; r <= '1'; s <= '1'; t <= '0'; wait for 10 ns;
                p <= '1'; q <= '0'; r <= '1'; s <= '1'; t <= '1'; wait for 10 ns;
                p <= '1'; q <= '1'; r <= '0'; s <= '0'; t <= '0'; wait for 10 ns;
                p <= '1'; q <= '1'; r <= '0'; s <= '0'; t <= '1'; wait for 10 ns;
                p <= '1'; q <= '1'; r <= '0'; s <= '1'; t <= '0'; wait for 10 ns;
                p <= '1'; q <= '1'; r <= '0'; s <= '1'; t <= '1'; wait for 10 ns;
                p <= '1'; q <= '1'; r <= '1'; s <= '0'; t <= '0'; wait for 10 ns;
                p <= '1'; q <= '1'; r <= '1'; s <= '0'; t <= '1'; wait for 10 ns;
                p <= '1'; q <= '1'; r <= '1'; s <= '1'; t <= '0'; wait for 10 ns;
                p <= '1'; q <= '1'; r <= '1'; s <= '1'; t <= '1'; wait for 10 ns;


		End process;
End architecture;