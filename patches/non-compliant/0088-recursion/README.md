**DMNTK** | Decision Model and Notation Toolkit

# 0088-recursion

This patch temporarily removes this test from all test cases, just to avoid loading
this non-conformant model. Currently, **DMNTK** server crashes during loading
the recursive item definition.
There is an [issue](https://github.com/dmntk/dmntk.rs/issues/7) for fixing this.
