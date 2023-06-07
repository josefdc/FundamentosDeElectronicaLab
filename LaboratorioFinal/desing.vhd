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
    signal S0_inverted: std_logic;
    
    component muxonebit_maxter is
    	port (
        	A: in std_logic;
            B: in std_logic;
            Sc: in std_logic;
            S: out std_logic
        );
     end component;
    
    component controlled_inverter is
        port (
        s_1 : in std_logic;
        s_0 : in std_logic;
        s_0_out : out std_logic
    );
    end component;
    
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
	-- Controlled inverter for S0 signal based on S1
	mux_inverter: muxonebit_maxter port map (A => S0_1bit, B => not S0_1bit, Sc => S1_1bit, S => S0_inverted); 

    -- Select between B and C based on S0_inverted
    mux_B_C: lab7 port map (A => B_8bit, B => C_8bit, Sc => S0_inverted, S => B_or_C);

    -- Get complement of B_or_C
    not_B_or_C: not_8bit port map (A => B_or_C, B => negB_or_C);

    -- Select between B/C and its complement based on S1_1bit
    mux_add_sub_B: lab7 port map (A => B_or_C, B => negB_or_C, Sc => S1_1bit, S => add_or_sub_B);

    -- Add operation: If S1_1bit = 1 (Subtraction), the carry in will be 1 for 2's complement subtraction
    sum_8bit: sumador_completo_8bits port map (A => A_8bit, B => add_or_sub_B, C_in => S1_1bit, S => Sum);

    -- Output
    S_8bit <= Sum;
end Behavioral;