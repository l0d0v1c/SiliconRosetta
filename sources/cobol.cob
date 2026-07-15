       IDENTIFICATION DIVISION.
       PROGRAM-ID. SILICON-ROSETTA.
      * 1. COMMENT (asterisk in column 7)

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * 3. VARIABLES: declared by "pictures" (PIC)
       01 N          PIC 9 VALUE 5.
       01 WORLD      PIC X(10) VALUE "WORLD".
       01 I          PIC 9.
       01 K          PIC 9(6).
       01 F          PIC 9(6) VALUE 1.
       01 D          PIC 9 VALUE 0.
       01 NUMBERS.
          05 NB      PIC 9 OCCURS 5 TIMES.

       PROCEDURE DIVISION.
      * 4. OUTPUT
           DISPLAY "HELLO, " WORLD.

           MOVE 3 TO NB(1)  MOVE 1 TO NB(2)  MOVE 4 TO NB(3)
           MOVE 1 TO NB(4)  MOVE 5 TO NB(5).

      * 5. CONDITION
           IF N > 3
              DISPLAY "BIG"
           ELSE
              IF N = 3
                 DISPLAY "MEDIUM"
              ELSE
                 DISPLAY "SMALL"
              END-IF
           END-IF.

      * 6. FOR LOOP
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
              COMPUTE K = NB(I) * 2
              DISPLAY K
           END-PERFORM.

      * 7. WHILE
           PERFORM UNTIL N = 0
              SUBTRACT 1 FROM N
           END-PERFORM.

      * 8. RECURSION: allowed since COBOL 2002 (RECURSIVE),
      *    but the spirit of the language remains iterative:
           PERFORM VARYING K FROM 2 BY 1 UNTIL K > 5
              MULTIPLY K BY F
           END-PERFORM.
           DISPLAY F.

      * 9. ERRORS: dedicated clause on the statement
           DIVIDE 10 BY D GIVING K
              ON SIZE ERROR DISPLAY "CANNOT DIVIDE"
           END-DIVIDE.

           STOP RUN.
