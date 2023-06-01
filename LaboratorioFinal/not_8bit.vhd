library IEEE;
use IEEE.std_logic_1164.all;

entity not_8bit is
    port (
        A: in std_logic_vector (7 downto 0);
        B: out std_logic_vector (7 downto 0)
    );
end not_8bit;

architecture Behavioral of not_8bit is
begin
    B <= not A;
end Behavioral;