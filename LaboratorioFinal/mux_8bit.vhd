library IEEE;
use IEEE.std_logic_1164.all;

entity lab7 is
port (A: in std_logic_vector (7 downto 0);
	  B: in std_logic_vector (7 downto 0);
      Sc: in std_logic;
      S: out std_logic_vector (7 downto 0));
end entity;

architecture arq_lab7 of lab7 is

	component muxonebit_maxter is
	port	(A: in std_logic;
		 	 B: in std_logic;
         	 Sc: in std_logic;
        	 S: out std_logic);    
    end component;
    
begin
mux0: muxonebit_maxter
	port map (A => A(0),
         	  B => B(0),
         	  Sc => Sc,
         	  S => S(0));

mux1: muxonebit_maxter
	port map (A => A(1),
         	  B => B(1),
         	  Sc => Sc,
         	  S => S(1));

mux2: muxonebit_maxter
	port map (A => A(2),
         	  B => B(2),
         	  Sc => Sc,
         	  S => S(2));
         
mux3: muxonebit_maxter
	port map (A => A(3),
         	  B => B(3),
         	  Sc => Sc,
         	  S => S(3));

mux4: muxonebit_maxter
	port map (A => A(4),
         	  B => B(4),
         	  Sc => Sc,
         	  S => S(4));
         
mux5: muxonebit_maxter
	port map (A => A(5),
         	  B => B(5),
         	  Sc => Sc,
         	  S => S(5));

mux6: muxonebit_maxter
	port map (A => A(6),
         	  B => B(6),
         	  Sc => Sc,
         	  S => S(6));

mux7: muxonebit_maxter
	port map (A => A(7),
         	  B => B(7),
         	  Sc => Sc,
         	  S => S(7));
         
end architecture;