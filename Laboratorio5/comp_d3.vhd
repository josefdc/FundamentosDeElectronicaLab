library IEEE;
use IEEE.std_logic_1164.all;

Entity comp_D3 is
	port(
    	 S1: in std_logic;
    	 S2: in std_logic;
         S3: in std_logic;
         S4: in std_logic;
         S5: in std_logic;
         
         D3: out std_logic;
         );
End Entity;

Architecture arq_D3 of comp_D3 is
	signal X,Y,Z,t:      	  std_logic;
    
    Begin
    X <= (S1 and (not S2)) ;
   	Y <= ((not S1) and (not S3));
    Z <= ((not S1) and  (not S5));
    t <= ((not S3) and  (not S5));
  
   	D3 <= X or Y or Z or t ;
End Architecture;