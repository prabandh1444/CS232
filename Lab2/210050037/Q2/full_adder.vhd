library IEEE;
use IEEE.std_logic_1164.all;

entity fulladder is
    port(a, b ,c : in std_logic;
    sum: out std_logic;
    cout: out std_logic);
end entity;

architecture behaviour of fulladder is
    begin
       sum <= a xor b xor c;
       cout <= (a and b) or (b and c) or (c and a);
    end architecture;