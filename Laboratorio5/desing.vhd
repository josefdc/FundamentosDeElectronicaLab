library IEEE;
use IEEE.std_logic_1164.all;

Entity bloque is
    port(
        S1: in std_logic;
        S2: in std_logic;
        S3: in std_logic;
        S4: in std_logic;
        S5: in std_logic;
         
        D0: out std_logic;
        D1: out std_logic;
        D2: out std_logic;
        D3: out std_logic;
    );
End Entity;

Architecture arq_bloque of bloque is
    component comp_DO
        port(
            S1: in std_logic;
            S2: in std_logic;
            S3: in std_logic;
            S4: in std_logic;

            D0: out std_logic;
        );
    end component;

    component comp_D1
        port(
            S1: in std_logic;
            S2: in std_logic;
            S3: in std_logic;
            S4: in std_logic;
         
            D1: out std_logic;
        );
    end component;

    component comp_D2
        port(
            S1: in std_logic;
            S2: in std_logic;
            S3: in std_logic;
            S4: in std_logic;
            S5: in std_logic;
         
            D2: out std_logic;
        );
    end component;

    component comp_D3
        port(
            S1: in std_logic;
            S2: in std_logic;
            S3: in std_logic;
            S4: in std_logic;
            S5: in std_logic;
         
            D3: out std_logic;
        );
    end component;
     
begin 

    salidaD0 : comp_DO Port Map(
        S1 => S1,
        S2 => S2,
        S3 => S3,
        S4 => S4,
        D0 => D0
    );

    salidaD1 : comp_D1 Port Map(
        S1 => S1,
        S2 => S2,
        S3 => S3,
        S4 => S4,
        D1 => D1
    );

    salidaD2 : comp_D2 Port Map(
        S1 => S1,
        S2 => S2,
        S3 => S3,
        S4 => S4,
        S5 => S5,
        D2 => D2
    );

    salidaD3 : comp_D3 Port Map(
        S1 => S1,
        S2 => S2,
        S3 => S3,
        S4 => S4,
        S5 => S5,
        D3 => D3
    );

End Architecture;
