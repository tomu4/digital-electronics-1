# Lab 2: Tomas Uchytil

### 2-bit comparator

1. Karnaugh maps for other two functions:

   Greater than:

   ![SoP Karnaugh map 4x4](images/karnaugh_greater.png)

   Less than:

   ![PoS Karnaugh map 4x4](images/karnaugh_smaller.png)

2. Equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![Simplified SoP](images/SoP.png)
    ![Simplified PoS](images/PoS.png)
### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **37**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0011";
        s_a <= "0111";
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '1') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        report "Input combination s_b=0011 s_a=0111 FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```

2. Text console screenshot during your simulation, including reports.

   ![console](images/console.png)

3. Link to your public EDA Playground example:

   [https://www.edaplayground.com/x/gRJt](https://www.edaplayground.com/x/gRJt)