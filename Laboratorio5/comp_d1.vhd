library IEEE;
use IEEE.std_logic_1164.all;

Entity comp_D1 is
	port(
    	 S1: in std_logic;
    	 S2: in std_logic;
         S3: in std_logic;
         S4: in std_logic;
         
         D1: out std_logic;
         );
End Entity;

Architecture arq_D1 of comp_D1 is
	signal X,Y:    	  std_logic;
    
    Begin
    X <= (S1 and (not S2)) ;
   	Y <= ((not S1) and (not S3));
    
   	D1 <=  S4 or X or Y;
End Architecture;