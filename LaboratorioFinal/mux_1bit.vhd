library IEEE;
use IEEE.std_logic_1164.all;

entity muxonebit_maxter is
    port (
        A: in std_logic;
        B: in std_logic;
        Sc: in std_logic;
        S: out std_logic
    );
end entity;

architecture arq_muxonebit_maxter of muxonebit_maxter is
begin
    S <= (A and not Sc) or (B and Sc);
end architecture;
