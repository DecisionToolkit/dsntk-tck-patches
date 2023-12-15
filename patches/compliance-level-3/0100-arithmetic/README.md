**DSNTK** | Decision Toolkit

# 0100-arithmetic

This patch converts:
- expected **P0D** values to **PT0S** values,
- expected **P0Y** values to **P0M** values

in **0100-arithmetic-test-01.xml** file.

The value is the same, it is still zero for days and time duration or years and months duration.
In all test cases except this file, convention **PT0S** and **P0M** is used.
