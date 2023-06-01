library IEEE;
use IEEE.std_logic_1164.all;

entity muxonebit_maxter is

port	(A: in std_logic;
		 B: in std_logic;
         Sc: in std_logic;
         S: out std_logic);

end entity;

architecture arq_muxonebit_maxter of muxonebit_maxter is

signal W, X, Y, Z: std_logic;

begin

    W <= (A or B or Sc);
    X <= (A or B or (not Sc));
    Y <= (A or (not B) or Sc);
    Z <= ((not A) or B or (not Sc));
    S <= W and X and Y and Z;

end architecture;