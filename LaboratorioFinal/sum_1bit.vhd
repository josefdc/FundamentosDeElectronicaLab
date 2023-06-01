library IEEE;
use IEEE.std_logic_1164.all;

entity sumador1bit_completo is
	Port ( 
		A, B, C_in : in std_logic;
		S, C_out : out std_logic);
end sumador1bit_completo;

architecture Behavioral of sumador1bit_completo is
begin

	S <= A xor B xor C_in;
	C_out <= (A and B) or (C_in and (A xor B));

end Behavioral;