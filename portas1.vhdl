--Multiplexador de 4 entrada e 1 saída 
-- tabela da verdade 
-- s0 s1 y 
---------------
-- 0  0  d0 
-- 0  1  d1 
-- 1  0  d2 
-- 1  1  d3 
--Rafael Gonçalves Diniz Sobreira 
-- Data 29/11/2024 

library IEEE;
 use IEEE.std_logic_1164.all;

-- declaração da entidade 
 entity mux5 is 
port ( sel : in std_logic_vector(1 downto 0);   -- entrada de seleção (2 bits)
        d0 : in std_logic;                      -- entrada d0
        d1 : in std_logic;                      -- entrada d1 
        d2 : in std_logic;                      -- entrada d2 
        d3 : in std_logic;                      -- entrada d3 
         y : out std_logic                      -- saída 
);
end mux5;

-- declaração da arquitetura 

architecture mult5 of mux5 is 
begin 
     y <= (not sel(1) and not sel(0) and d0) or  -- seleciona d0 se sel = "00"
          (not sel(1) and sel(0) and d1) or      -- seleciona d1 se sel = "01"
          (sel(1) and not sel(0) and d2) or      -- seleciona d2 se sel = "10"
          (sel(1) and sel(0) and d3);            -- seleciona d3 se sel = "11" 
end mult5; 

