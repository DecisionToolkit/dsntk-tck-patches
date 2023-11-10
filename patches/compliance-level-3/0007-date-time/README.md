**DMNTK** | Decision Model and Notation Toolkit

# 0007-date-time

This patch converts an expected value from "P1Y0M" to "P1Y" in file **0007-date-time-test-01.xml**.
The value remains the same (still one year), but by convention zero values in durations are omitted,
so zero months is not shown in string representation.