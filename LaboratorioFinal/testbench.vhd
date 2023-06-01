library IEEE;
use IEEE.std_logic_1164.all;

entity logic_unit_tb is
end logic_unit_tb;

architecture Behavioral of logic_unit_tb is
    signal A_8bit, B_8bit, C_8bit: std_logic_vector(7 downto 0);
    signal S1_1bit, S0_1bit: std_logic;
    signal S_8bit: std_logic_vector(7 downto 0);

begin
    -- Instantiate the unit under test (UUT)
    UUT: entity work.logic_unit
    port map (
        A_8bit => A_8bit,
        B_8bit => B_8bit,
        C_8bit => C_8bit,
        S1_1bit => S1_1bit,
        S0_1bit => S0_1bit,
        S_8bit => S_8bit
    );

    -- Stimulus process
    stim_proc: process
    begin
        -- Wait for 10 ns
        wait for 10 ns;

        -- Apply input values
        A_8bit <= "00000001";
        B_8bit <= "00000010";
        C_8bit <= "00000011";
        S1_1bit <= '0';
        S0_1bit <= '0';

        wait for 20 ns;

        A_8bit <= "00000001";
        B_8bit <= "00000010";
        C_8bit <= "00000011";
        S1_1bit <= '0';
        S0_1bit <= '1';

        wait for 20 ns;

        A_8bit <= "00000001";
        B_8bit <= "00000010";
        C_8bit <= "00000011";
        S1_1bit <= '1';
        S0_1bit <= '0';

        wait for 20 ns;

        A_8bit <= "00000001";
        B_8bit <= "00000010";
        C_8bit <= "00000011";
        S1_1bit <= '1';
        S0_1bit <= '1';

        wait for 20 ns;

        -- Terminate the test
        wait;
    end process;

end Behavioral;
