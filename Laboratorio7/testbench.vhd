library IEEE;
use IEEE.std_logic_1164.all;

entity mux_2to1_8bit_tb is
end mux_2to1_8bit_tb;

architecture Behavioral of mux_2to1_8bit_tb is

    component mux_2to1_8bit is
        port (
            sc: in std_logic;
            A: in std_logic_vector(7 downto 0);
            B: in std_logic_vector(7 downto 0);
            S: out std_logic_vector(7 downto 0)
        );
    end component;

    signal sc: std_logic := '0';
    signal A: std_logic_vector(7 downto 0) := "00000000";
    signal B: std_logic_vector(7 downto 0) := "11111111";
    signal S: std_logic_vector(7 downto 0);

begin

    uut: mux_2to1_8bit
    port map (
        sc => sc,
        A => A,
        B => B,
        S => S
    );

    process
    begin
        -- Prueba 1
        sc <= '0';
        A <= "10101010";
        B <= "01010101";
        wait for 10 ns;
        
        -- Prueba 2
        sc <= '1';
        A <= "10101010";
        B <= "01010101";
        wait for 10 ns;
        
        -- Prueba 3
        sc <= '0';
        A <= "11001100";
        B <= "00110011";
        wait for 10 ns;

        -- Prueba 4
        sc <= '1';
        A <= "11001100";
        B <= "00110011";
        wait for 10 ns;

        -- Prueba 5
        sc <= '0';
        A <= "11110000";
        B <= "00001111";
        wait for 10 ns;

        -- Finalizar el testbench
        wait;
    end process;

end Behavioral;
