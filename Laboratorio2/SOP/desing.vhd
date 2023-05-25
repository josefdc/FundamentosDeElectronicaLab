library IEEE;
use IEEE.std_logic_1164.all;

entity pepito is 
port ( 
  A : in std_logic;
  B : in std_logic;
  C : in std_logic;
  Count : out std_logic;
  S : out std_logic
);
end entity;

architecture arq_pepito of pepito is

signal X,Y,Z,T,G,H,K : std_logic;

begin

X <= (not A) and B and C ;
Y <= A and (not B) and C ;
Z <= A and B and C;
T <= A and B and (not C); 
G <= (not A) and (not B) and C;
H <= (not A) and B and (not C);
K <= A and (not B) and (not C);
Count <= X or Y or T or Z;
S <= G or H or K or Z;

end architecture;
