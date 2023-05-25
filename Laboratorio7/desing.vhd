library IEEE;
use IEEE.std_logic_1164.all;

entity mux_2to1_8bit is
    port (
        sc: in std_logic; -- selector de entrada
        A: in std_logic_vector(7 downto 0); -- entrada de datos 0
        B: in std_logic_vector(7 downto 0); -- entrada de datos 1
        S: out std_logic_vector(7 downto 0) -- salida de datos
    );
end mux_2to1_8bit;

architecture Behavioral of mux_2to1_8bit is

    component mux_2to1_1bit is
        port (
            sc: in std_logic; -- selector de entrada
            A: in std_logic; -- entrada de datos 0
            B: in std_logic; -- entrada de datos 1
            S: out std_logic -- salida de datos
        );
    end mux_2to1_1bit;
    
    signal mux_out: std_logic_vector(7 downto 0); -- vector para almacenar la salida de cada instancia
    begin

    -- Instancias del componente mux_2to1_1bit
    mux_0: mux_2to1_1bit port map(
        sc => sc,
        A => A(0),
        B => B(0),
        S => mux_out(0)
    );
    mux_1: mux_2to1_1bit port map(
        sc => sc,
        A => A(1),
        B => B(1),
        S => mux_out(1)
    );
    mux_2: mux_2to1_1bit port map(
        sc => sc,
        A => A(2),
        B => B(2),
        S => mux_out(2)
    );
    mux_3: mux_2to1_1bit port map(
        sc => sc,
        A => A(3),
        B => B(3),
        S => mux_out(3)
    );
    mux_4: mux_2to1_1bit port map(
        sc => sc,
        A => A(4),
        B => B(4),
        S => mux_out(4)
    );
    mux_5: mux_2to1_1bit port map(
        sc => sc,
        A => A(5),
        B => B(5),
        S => mux_out(5)
    );
    mux_6: mux_2to1_1bit port map(
        sc => sc,
        A => A(6),
        B => B(6),
        S => mux_out(6)
    );
    mux_7: mux_2to1_1bit port map(
        sc => sc,
        A => A(7),
        B => B(7),
        S => mux_out(7)
    );

    -- Conexión de las salidas de cada instancia a la salida del mux 2:1 de 8 bits
    S <= mux_out;
end Behavioral;
