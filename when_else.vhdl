-- Multiplexador de 4 entradas e 1 saída 
-- tabela da verdade 
-- s0 s1 y 
-------------
-- 0  0  d0 
-- 0  1  d1 
-- 1  0  d2
-- 1  1  d3 
-- Rafael Gonçalves Diniz Sobreira 
-- Data 29/11/2024 

 library IEEE;
 use IEEE.std_logic_1164.all;

-- declaração da entidade 
entity mux4 is 
port ( s0 : in std_logic;   -- entrada de seleção de 1 bit
       s1 : in std_logic;   -- entrada de seleção de 1 bit
       d0 : in std_logic;   -- entrada d0 
       d1 : in std_logic;   -- entrada d1 
       d2 : in std_logic;   -- entrada d2 
       d3 : in std_logic;   -- entrada d3 
        y : out std_logic   -- saída 
);
end mux4; 

-- declaração da arquitetura

architecture mult4 of mux4 is 
begin 
     y <= d0 when s1 = '0' and s0 = '0' else   -- seleciona a entrada d0 
          d1 when s1 = '0' and s0 = '1' else   -- seleciona a entrada d1 
          d2 when s1 = '1' and s0 = '0' else   -- seleciona a entrada d2
          d3 when s1 = '1' and s0 = '1' else   -- seleciona a entrada d3
          '0';
end mult4; 
   
