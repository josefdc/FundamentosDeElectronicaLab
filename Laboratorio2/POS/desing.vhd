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

T <= (not A) or B or C ;
Z <= A or (not B) or C ;
X <= A or B or C;
Y <= A or B or (not C); 
G <= (not A) or (not B) or C;
H <= (not A) or B or (not C);
K <= A or (not B) or (not C);
Count <= X and Y and Z and T ;
S <= X and K and H and G;

end architecture;
