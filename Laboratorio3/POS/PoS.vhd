library IEEE;
use IEEE.std_logic_1164.all;

Entity PoS is
	port(
    	 A: in std_logic;
    	 B: in std_logic;
         C: in std_logic;
         D: in std_logic;
         
         Q: out std_logic;
         P: out std_logic
         );
End Entity;

Architecture arq_PoS of PoS is
	signal T, U, V, W, X, Y, Z, E, F, G, H, I:      	  std_logic;
    
    Begin
    	T <= A or B or C or D;
    	U <= A or B or C or (not D);
    	V <= A or (not B) or C or D;
    	W <= A or (not B) or C or (not D);
        X <= A or (not B) or (not C) or D;--1
    	Y <= (not A) or B or (not C) or D; --2
    	Z <= (not A) or B or (not C) or (not D);
    	Q <=  T and U and V and W and X and Y and Z;
    
    	E <= A or B or (not C) or D;
    	F <= A or B or (not C) or (not D); --1
    	X <= A or (not B) or (not C) or D; --2
    	G <= A or (not B) or (not C) or (not D);
    	Z <= (not A) or B or (not C) or (not D);
    	H <= (not A) or (not B) or C or D;
    	I <= (not A) or (not B) or C or (not D);
        P <= E and F and X and G and Z and H and I;
End Architecture;