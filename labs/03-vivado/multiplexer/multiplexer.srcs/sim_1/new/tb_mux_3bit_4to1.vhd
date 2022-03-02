library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------
entity tb_comparator_2bit is
    -- Entity of testbench is always empty
end entity tb_comparator_2bit;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------
architecture testbench of tb_comparator_2bit is

    -- Local signals
    signal s_a           : std_logic_vector(3 - 1 downto 0);
    signal s_b           : std_logic_vector(3 - 1 downto 0);
    signal s_c           : std_logic_vector(3 - 1 downto 0);
    signal s_d           : std_logic_vector(3 - 1 downto 0);
    signal s_addr        : std_logic_vector(2 - 1 downto 0);
    signal s_out         : std_logic_vector(3 - 1 downto 0);

begin
    -- Connecting testbench signals with comparator_2bit
    -- entity (Unit Under Test)
    uut_comparator_2bit : entity work.mux_3bit_4to1
        port map(
            a_i           => s_a,
            b_i           => s_b,
            c_i           => s_c,
            d_i           => s_d,
            addr_i        => s_addr,
            y_o           => s_out
        );

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------   
    p_stimulus : process
    begin
        -- Set one test case and wait for 100 ns ...
        s_d <= "111"; s_c <= "110"; s_b <= "101"; s_a <= "100"; 
        s_addr <= "00"; wait for 100 ns;
        s_addr <= "01"; wait for 100 ns;
        s_addr <= "10"; wait for 100 ns;
        s_addr <= "11"; wait for 100 ns;
        -- ... and then continue with other test cases
        
        wait; -- Generation process is suspended forever
    end process p_stimulus;

end architecture testbench;