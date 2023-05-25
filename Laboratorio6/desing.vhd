-- Se incluyen las bibliotecas necesarias
library IEEE;
use IEEE.std_logic_1164.all;

-- Se define la entidad sumador1bit_completo con sus puertos de entrada y salida
entity sumador1bit_completo is
Port ( A, B, C_in : in std_logic; -- Entradas: dos números de 1 bit (A y B) y un carry de entrada (C_in)
S, C_out : out std_logic); -- Salidas: suma de 1 bit (S) y carry de salida (C_out)
end sumador1bit_completo;

-- Se define la arquitectura Behavioral de la entidad sumador1bit_completo
architecture Behavioral of sumador1bit_completo is
begin
-- La salida de suma (S) es el resultado de la operación XOR entre las entradas A, B y el carry de entrada (C_in)
S <= A xor B xor C_in;

-- La salida de carry (C_out) se calcula mediante la siguiente lógica:
-- Si (A y B) son verdaderos, entonces el carry de salida es verdadero
-- O si (C_in y (A xor B)) son verdaderos, entonces el carry de salida es verdadero
C_out <= (A and B) or (C_in and (A xor B));

-- Finaliza la descripción de la arquitectura
end Behavioral;