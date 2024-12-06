-- Muultiplexador de 4 entradas e 1 saída 
-- Tabela da verdade 
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
entity mux1 is port 
 ( sel : in std_logic_vector(1 downto 0); -- entrada de seleção de (2 bits)
   d   : in std_logic_vector(3 downto 0); -- entrada de (4 bits) 
   y   : out std_logic 
);
end mux1;

-- declaração da arquitetura 
architecture mult2 of mux1 is 
begin 
with sel select 
     y <= d(0) when "00",   -- seleciona a entrada d0 
          d(1) when "01",   -- seleciona a entrada d1
          d(2) when "10",   -- seleciona a entrada d2 
          d(3) when "11",   -- seleciona a entrada d3 
          '0'  when others; -- valor padrão em caso de erro 
end mult2; 
 
