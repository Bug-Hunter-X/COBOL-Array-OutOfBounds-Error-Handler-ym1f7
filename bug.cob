01  WS-AREA. 
    05  WS-COUNT PIC 9(5) VALUE 0. 
    05  WS-TABLE OCCURS 100 TIMES. 
       10  WS-TABLE-ENTRY PIC X(80). 

* In this code, WS-TABLE is declared as an array, but there is no check for array bounds.
* If the program tries to access an element outside the range 1-100, an error will occur.
* Some COBOL compilers might not detect this and lead to unpredictable behavior (like memory corruption).
PROCEDURE DIVISION.
    PERFORM VARYING WS-COUNT FROM 1 BY 1 UNTIL WS-COUNT > 100 
       MOVE 'Record ' & WS-COUNT TO WS-TABLE(WS-COUNT) 
    END-PERFORM.

    * Incorrect access: trying to access the 101st element 
    DISPLAY WS-TABLE(101) 
    STOP RUN.