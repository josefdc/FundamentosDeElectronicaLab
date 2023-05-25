library IEEE;
use IEEE.std_logic_1164.all;

entity mux_2to1_1bit is
    port (
        sc: in std_logic; -- selector de entrada
        A: in std_logic; -- entrada de datos 0
        B: in std_logic; -- entrada de datos 1
        S: out std_logic -- salida de datos
    );
end mux_2to1_1bit;

architecture Behavioral of mux_2to1_1bit is
begin
    S <= A when sc = '0' else
                B when sc = '1' else
                'Z'; -- estado de alta impedancia cuando el selector no es 0 o 1
end Behavioral;
