-- Multiplexador de 4 entradas 1 saída 
-- tabela da verdade 
-- s0 s1 y 
----------------
-- 0  0  d0
-- 0  1  d1 
-- 1  0  d2 
-- 1  1  d3 
-- Rafael Gonçalves Diniz Sobreira 
-- Data 29/11/2024 

  library IEEE;
 use IEEE.std_logic_1164.all;

-- declaração da entidade 

 entity mux6 is 
port ( s0 : in std_logic;   -- entrada de seleção 
       s1 : in std_logic;   -- entrada de seleção 
       d0 : in std_logic;   -- entrada d0 
       d1 : in std_logic;   -- entrada d1 
       d2 : in std_logic;   -- entrada d2 
       d3 : in std_logic;   -- entrada d3 
        y : out std_logic   -- saída 
 );
end mux6;
 -- declaração da arquitetura 
 architecture mult6 of mux6 is 
 signal int0, int1, int2, int3 : std_logic;
begin 
    y <= int0 or int1 or int2 or int3; 
         int0 <= d0 and not s1 and not s0;    -- seleciona d0 se s1_s0 = "00"
         int1 <= d1 and not s1 and s0;        -- seleciona d1 se s1_s0 = "01"
         int2 <= d2 and s1 and not s0;        --seliciona  d2 se s1_02 = "10"
         int3 <= d3 and s1 and s0;            -- seleciona d3 se s1_s0 = "11"
end mult6; 


