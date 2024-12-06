 library IEEE:
use IEEE.std_logic_1164.all;
 
entity mux3 is 
end mux3;

 architecture mult3 of mux3 is 

 component mux3 
 port ( d0 : in std_logic;
        d1 : in std_logic;
        d2 : in std_logic;
        d3 : in std_logic;
        s0 : in std_logic;
        s1 : in std_logic;
         y : out std_logic
);
end component;

         signal d0 : std_logic := '0';
         signal d1 : std_logic := '0';
         signal d2 : std_logic := '0';
         signal d3 : std_logic := '0';
         signal s0 : std_logic := '0';
         signal s1 : std_logic := '0';

         signal y : std_logic; 
begin 

uut: mux3 port map ( 
         d0 => d0,
         d1 => d1,
         d2 => d2,
         d3 => d3,
         s0 => s0,
         s1 => s1,
          y => y,
); 

 stim_proc: process 
begin 
wait for 100ns;
         d0 <= '1';
         d1 <= '0';
         d2 <= '1';
         d3 <= '0';
   s0 <= '0'; s1 '0';
wait for 100 ns;
   s0 <= '1'; s1 <= '0';
wait for 100 ns;
   s0 <= '1'; s1 <= '1';
wait for 100 ns;

end process; 
end;

