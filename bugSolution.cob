01  WS-AREA. 
    05  WS-COUNT PIC 9(5) VALUE 0. 
    05  WS-TABLE OCCURS 100 TIMES. 
       10  WS-TABLE-ENTRY PIC X(80). 

PROCEDURE DIVISION.
    PERFORM VARYING WS-COUNT FROM 1 BY 1 UNTIL WS-COUNT > 100 
       MOVE 'Record ' & WS-COUNT TO WS-TABLE(WS-COUNT) 
    END-PERFORM.

    * Correct access: Check before accessing array element
    IF WS-COUNT <= 100 THEN
       DISPLAY WS-TABLE(WS-COUNT)
    ELSE
       DISPLAY "Error: Array index out of bounds"
    END-IF
    STOP RUN.