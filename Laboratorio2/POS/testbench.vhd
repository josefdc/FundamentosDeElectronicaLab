library IEEE;
use IEEE.std_logic_1164.all;

-- Declaramos la entidad del testbench
entity tb_pepito is
end entity;

-- Definimos la arquitectura del testbench
architecture arq_tb_pepito of tb_pepito is
	-- Instanciamos el diseño que queremos testear
	component pepito is
		port (A : in std_logic;
			  B : in std_logic;
			  C : in std_logic;
			  count : out std_logic;
			  S : out std_logic);
	end component;
	
	-- Declaramos las señales que vamos a utilizar para controlar el diseño
	signal SA, SB, SC : std_logic;
	signal S_out, count_out : std_logic;
begin
	-- Instanciamos el diseño que queremos testear
	uut: pepito port map(A => SA, B => SB, C => SC, S => S_out, count => count_out);

	-- Generamos las señales de entrada en un proceso
	process
	begin
		SA <= '0';
		SB <= '0';
		SC <= '0';
		wait for 10 ns;
		
		SA <= '0';
		SB <= '0';
		SC <= '1';
		wait for 10 ns;
		
		SA <= '0';
		SB <= '1';
		SC <= '0';
		wait for 10 ns;
		
		SA <= '0';
		SB <= '1';
		SC <= '1';
		wait for 10 ns;
		
		SA <= '1';
		SB <= '0';
		SC <= '0';
		wait for 10 ns;
		
		SA <= '1';
		SB <= '0';
		SC <= '1';
		wait for 10 ns;
		
		SA <= '1';
		SB <= '1';
		SC <= '0';
		wait for 10 ns;
		
		SA <= '1';
		SB <= '1';
		SC <= '1';
		wait for 10 ns;
		
		wait;
	end process;

end architecture;
d