library IEEE;
use IEEE.std_logic_1164.all;

entity mux4x2 is
    port(D: in std_logic_vector (3 downto 0);
    S: in std_logic_vector(1 downto 0);
    Y: out std_logic);
end entity; 
    
architecture behaviour of mux4x2 is
    component OR_Gate is
        port(x1: in std_logic;
        x2: in std_logic;
        y: out std_logic);
        end component;
        component AND_Gate is
            port(x1: in std_logic;
        x2: in std_logic;
        y: out std_logic);
        end component;
        component NOT_Gate is
            port(x: in std_logic;
            y: out std_logic);
        end component;
        signal temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9,temp10,temp11: std_logic;
begin
    dut_instance1: NOT_Gate
    port map(x=>S(1) ,y=>temp1);
    dut_instance2: NOT_Gate
    port map(x=>S(0) ,y=>temp2);
    dut_instance3: AND_Gate
    port map(x1=>temp1 ,x2=>temp2 ,y=>temp3);
    dut_instance4: AND_Gate
    port map(x1=>temp3 ,x2=>D(0) ,y=>temp4);
    dut_instance5: AND_Gate
    port map(x1=>temp2 ,x2=>S(0) ,y=>temp5);
    dut_instance6: AND_Gate
    port map(x1=>temp5 ,x2=>D(1) ,y=>temp6);
    dut_instance7: AND_Gate
    port map(x1=>S(0) ,x2=>S(1) ,y=>temp7);
    dut_instance8: AND_Gate
    port map(x1=>temp7 ,x2=>D(2) ,y=>temp8);
    dut_instance9: AND_Gate
    port map(x1=>temp7 ,x2=>D(3) ,y=>temp9);
    dut_instance10: OR_Gate
    port map(x1=>temp4 ,x2=>temp6 ,y=>temp10);
    dut_instance11: OR_Gate
    port map(x1=>temp10 ,x2=>temp8 ,y=>temp11);
    dut_instance12: OR_Gate
    port map(x1=>temp11 ,x2=>temp9 ,y=>Y);
    --  Y <= ((not S(1)) and (not S(0)) and (D(0))) or ((not S(1)) and (S(0)) and (D(1))) or ((S(1)) and (S(0)) and (D(2))) or ((S(1)) and (S(0)) and (D(3)));
end architecture;
