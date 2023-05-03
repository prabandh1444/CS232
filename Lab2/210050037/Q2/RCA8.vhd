    
library IEEE;
use IEEE.std_logic_1164.all;

entity RCA8 is
    port(a, b: in std_logic_vector(7 downto 0);
    sum: out std_logic_vector(7 downto 0);
    cout: out std_logic);
end entity;
    
architecture behaviour of RCA8 is
    component fulladder is
        port(a, b ,c : in std_logic;
        sum: out std_logic;
        cout: out std_logic);
    end component;
    signal cin,temp,temp1,temp2,temp3,temp4,temp5,temp6,temp7:std_logic;
begin
   cin<='0';
    dut_instance: fulladder port map(
    a=>a(0),b=>b(0),c=>cin,sum=>sum(0),cout=>temp
    );
    dut_instance1: fulladder port map(
    a=>a(1),b=>b(1),c=>temp,sum=>sum(1),cout=>temp1
    );
    dut_instance2: fulladder port map(
    a=>a(2),b=>b(2),c=>temp1,sum=>sum(2),cout=>temp2
    );
    dut_instance3: fulladder port map(
    a=>a(3),b=>b(3),c=>temp2,sum=>sum(3),cout=>temp3
    );
    dut_instance4: fulladder port map(
    a=>a(4),b=>b(4),c=>temp3,sum=>sum(4),cout=>temp4
    );
    dut_instance5: fulladder port map(
    a=>a(5),b=>b(5),c=>temp4,sum=>sum(5),cout=>temp5
    );
    dut_instance6: fulladder port map(
    a=>a(6),b=>b(6),c=>temp5,sum=>sum(6),cout=>temp6
    );
    dut_instance7: fulladder port map(
    a=>a(7),b=>b(7),c=>temp6,sum=>sum(7),cout=>temp7
    );
    cout<=temp7;
end architecture;

