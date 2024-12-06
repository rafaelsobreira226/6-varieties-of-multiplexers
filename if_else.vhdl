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

-- declanrando entidade 
entity mux3 is 
 port ( sel : in std_logic_vector (1 downto 0);  -- entradas de seleção (2 bits)
         d0 : in std_logic;                      -- entrada d0
         d1 : in std_logic;                      -- entrada d1 
         d2 : in std_logic;                      -- entrada d2
         d3 : in std_logic;                      -- entrada d3 
          y : out std_logic                      -- saída 
 );
end mux3;

-- declaração da arquitetura
 
architecture mult3 of mux3 is 
begin 
 process ( sel, d0, d1, d2, d3) 
begin 
     if sel = "00" then y <= d0;   -- seleciona a entrada d0 
  elsif sel = "01" then y <= d1;   -- seleciona a entrada d1 
  elsif sel = "10" then y <= d2;   -- seleciona a entrada d2 
  else                  y <= d3;   -- seleciona a entrada d3

end if; 
 end process; 
      end mult3;

