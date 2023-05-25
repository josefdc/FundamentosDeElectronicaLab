-- Se incluyen las bibliotecas necesarias
library IEEE;
use IEEE.std_logic_1164.all;

-- Se define la entidad sumador_completo_8bits con sus puertos de entrada y salida
entity sumador_completo_8bits is
Port ( A, B : in std_logic_vector(7 downto 0); -- Entradas de los números a sumar (A y B) de 8 bits cada uno
C_in : in std_logic; -- Carry de entrada
S : out std_logic_vector(7 downto 0); -- Salida de la suma (S) de 8 bits
C_out : out std_logic); -- Carry de salida
end sumador_completo_8bits;

-- Se define la arquitectura Behavioral de la entidad sumador_completo_8bits
architecture Behavioral of sumador_completo_8bits is

-- Se declara una señal interna 'c' para almacenar los carries intermedios
signal c : std_logic_vector(7 downto 0);

-- Se declara el componente sumador1bit_completo con sus puertos de entrada y salida
component sumador1bit_completo is
Port ( A, B, C_in : in std_logic;
S, C_out : out std_logic);
end component;

-- Se inicia la descripción de la arquitectura
begin
-- Se instancia el componente sumador1bit_completo para cada bit de los números a sumar
sumador0: sumador1bit_completo port map (A(0), B(0), C_in, S(0), c(0));
sumador1: sumador1bit_completo port map (A(1), B(1), c(0), S(1), c(1));
sumador2: sumador1bit_completo port map (A(2), B(2), c(1), S(2), c(2));
sumador3: sumador1bit_completo port map (A(3), B(3), c(2), S(3), c(3));
sumador4: sumador1bit_completo port map (A(4), B(4), c(3), S(4), c(4));
sumador5: sumador1bit_completo port map (A(5), B(5), c(4), S(5), c(5));
sumador6: sumador1bit_completo port map (A(6), B(6), c(5), S(6), c(6));
sumador7: sumador1bit_completo port map (A(7), B(7), c(6), S(7), C_out); -- El carry de salida del último sumador es C_out

-- Finaliza la descripción de la arquitectura
end Behavioral;