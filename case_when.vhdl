-- Multiplexador de 4 entrada e 1 saída 
-- Tabela da verdade 
-- s0 s1 y
--------------
-- 0  0  d0
-- 0  1  d1
-- 1  0  d2
-- 1  1  d3
-- Rafael Gonçalves Diniz Sobreira 
-- Data 29/11/2024

library IEEE;
use IEEE.std_logic_1164.all;

-- declaração da entidade 
entity mux4x1 is 
port ( 
     sel : in std_logic_vector(1 downto 0); -- Entrada de seleção (2 bits)
     d0  : in std_logic;                    -- entrada d0
     d1  : in std_logic;                    -- entrada d1
     d2  : in std_logic;                    -- entrada d2 
     d3  : in std_logic;                    -- entrada d3 
     y   : out std_logic                    -- saída
);
end mux4x1; 

-- descrição da arquitetura 
architecture mult1 of mux4x1 is 
begin
process (sel, d0, d1, d2, d3)
begin 
     case sel is 
     when "00" => 
     y <= d0;       -- seleciona a entrada d0
     when "01" => 
      y <= d1;      -- seleciona a entrada d1  
     when "10"=>
      y <= d2;      -- seleciona a entrada d2
     when "11" =>
      y <= d3;       -- seleciona a entrada d3
     when others => 
      y <= '0';       -- valor padrão em caso de erro
      end case;
  end process; 
  end mult1;

