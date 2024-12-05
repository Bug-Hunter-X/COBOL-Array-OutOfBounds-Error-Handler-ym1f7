# COBOL Array Index Out of Bounds Bug

This repository demonstrates a common yet often overlooked error in COBOL programs: accessing an array element outside its declared bounds.  This can lead to unpredictable behavior, program crashes, or subtle data corruption.

The `bug.cob` file contains the erroneous code.  The `bugSolution.cob` file shows the corrected version with proper bounds checking.

## Bug Description
The program declares an array `WS-TABLE` but lacks any checks to ensure that array indices remain within the valid range (1-100 in this example).  The program attempts to access `WS-TABLE(101)`, leading to an out-of-bounds access.

## Solution
The corrected code includes a check to prevent accessing elements beyond the array's bounds.  This check ensures the program's integrity and prevents unexpected runtime errors.