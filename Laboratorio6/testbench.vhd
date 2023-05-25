-- Se incluyen las bibliotecas necesarias
library IEEE;
use IEEE.std_logic_1164.all;

-- Testbench para el sumador completo de 8 bits
entity tb_sumador_completo is
end entity;

architecture testbench of tb_sumador_completo is

-- Señales de entrada
signal A : std_logic_vector(7 downto 0) := (others => '0'); -- Entrada A de 8 bits
signal B : std_logic_vector(7 downto 0) := (others => '0'); -- Entrada B de 8 bits
signal C_in : std_logic := '0'; -- Carry de entrada

-- Señales de salida
signal S : std_logic_vector(7 downto 0); -- Salida de suma de 8 bits
signal C_out : std_logic; -- Carry de salida

-- Instancia del sumador completo de 8 bits
component sumador_completo_8bits
port (
A, B : in std_logic_vector(7 downto 0);
C_in : in std_logic;
S : out std_logic_vector(7 downto 0);
C_out : out std_logic
);
end component;

begin

-- Instancia del sumador completo de 8 bits
UUT: sumador_completo_8bits port map (
A => A,
B => B,
C_in => C_in,
S => S,
C_out => C_out
);

-- Proceso de estimulación
process
begin
-- Se aplican diferentes casos de prueba al sumador completo
-- Cada caso de prueba contiene los valores de A, B y C_in
-- La duración de cada caso de prueba es de 10 ns
A <= "10001111"; B <= "00101010"; C_in <= '0'; wait for 10ns;
A <= "11000000"; B <= "10101101"; C_in <= '1'; wait for 10ns;
A <= "00000001"; B <= "11111111"; C_in <= '0'; wait for 10ns;
A <= "01110010"; B <= "11010101"; C_in <= '1'; wait for 10ns;
A <= "01010101"; B <= "00100110"; C_in <= '0'; wait for 10ns;
A <= "11110000"; B <= "00001111"; C_in <= '1'; wait for 10ns;
A <= "10101010"; B <= "01010101"; C_in <= '0'; wait for 10ns;
A <= "10000000"; B <= "01111111"; C_in <= '1'; wait for 10ns;
A <= "00110110"; B <= "11001101"; C_in <= '0'; wait for 10ns;
A <= "11100011"; B <= "00011100"; C_in <= '1'; wait for 10ns;
end process;
end architecture;

