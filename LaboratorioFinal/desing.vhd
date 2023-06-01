library IEEE;
use IEEE.std_logic_1164.all;

entity logic_unit is
    port (
        A_8bit, B_8bit, C_8bit: in std_logic_vector(7 downto 0);
        S1_1bit, S0_1bit: in std_logic;
        S_8bit: out std_logic_vector(7 downto 0)
    );
end logic_unit;

architecture Behavioral of logic_unit is
    signal B_or_C, negB_or_C, add_or_sub_B, Sum: std_logic_vector(7 downto 0);
    signal one, zero, carry: std_logic;

    component lab7 is
        port (
            A: in std_logic_vector (7 downto 0);
            B: in std_logic_vector (7 downto 0);
            Sc: in std_logic;
            S: out std_logic_vector (7 downto 0)
        );
    end component;

    component sumador_completo_8bits is
        Port (
            A, B: in std_logic_vector(7 downto 0);
            C_in: in std_logic;
            S: out std_logic_vector(7 downto 0);
            C_out: out std_logic
        );
    end component;

    component not_8bit is
        port (
            A: in std_logic_vector (7 downto 0);
            B: out std_logic_vector (7 downto 0)
        );
    end component;

begin
    one <= '1';
    zero <= '0';

    -- Select between B and C based on S0
    mux_B_C: lab7 port map (A => B_8bit, B => C_8bit, Sc => S0_1bit, S => B_or_C);

    -- Get complement of B_or_C
    not_B_or_C: not_8bit port map (A => B_or_C, B => negB_or_C);

    -- Select between B/C and its complement based on S1
    mux_add_sub_B: lab7 port map (A => B_or_C, B => negB_or_C, Sc => S1_1bit, S => add_or_sub_B);

    -- Add operation: If S1_1bit = 1 (Subtraction), the carry in will be 1 for 2's complement subtraction
    sum_8bit: sumador_completo_8bits port map (A => A_8bit, B => add_or_sub_B, C_in => S1_1bit, S => Sum, C_out => carry);

    -- Output
    S_8bit <= Sum;
end Behavioral;
