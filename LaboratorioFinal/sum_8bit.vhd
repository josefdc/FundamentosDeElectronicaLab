library IEEE;
use IEEE.std_logic_1164.all;

entity sumador_completo_8bits is
    Port (
        A, B : in std_logic_vector(7 downto 0); 
        C_in : in std_logic; 
        S : out std_logic_vector(7 downto 0); 
        C_out : out std_logic); 
end sumador_completo_8bits;

architecture Behavioral of sumador_completo_8bits is
    signal c : std_logic_vector(7 downto 0);

    component sumador1bit_completo is
        Port ( 
            A, B, C_in : in std_logic;
            S, C_out : out std_logic
        );
    end component;

begin
sumador0: sumador1bit_completo port map (A(0), B(0), C_in, S(0), c(0));
sumador1: sumador1bit_completo port map (A(1), B(1), c(0), S(1), c(1));
sumador2: sumador1bit_completo port map (A(2), B(2), c(1), S(2), c(2));
sumador3: sumador1bit_completo port map (A(3), B(3), c(2), S(3), c(3));
sumador4: sumador1bit_completo port map (A(4), B(4), c(3), S(4), c(4));
sumador5: sumador1bit_completo port map (A(5), B(5), c(4), S(5), c(5));
sumador6: sumador1bit_completo port map (A(6), B(6), c(5), S(6), c(6));
sumador7: sumador1bit_completo port map (A(7), B(7), c(6), S(7), C_out); 
end Behavioral;