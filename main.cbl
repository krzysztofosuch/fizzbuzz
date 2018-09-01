       IDENTIFICATION DIVISION.
         PROGRAM-ID. FIZZBUZZ.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
         WORKING-STORAGE SECTION.
         01 StartFrom PIC 9(4) VALUE 0.
         01 EndAt PIC 9(4) VALUE 100.
         01 Counter PIC 9(4) VALUE 0.
         01 Phrase PIC X(8) VALUE SPACES.
         01 Tmp PIC 9(8) VALUE 0.
         01 Reminder PIC 9(8) VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PARA.
           MOVE Counter TO StartFrom.
           PERFORM LOOP-PARA UNTIL Counter >= EndAt
           STOP RUN.
       LOOP-PARA.
           ADD 1 TO Counter GIVING Counter.
           MOVE " " TO Phrase.
           DIVIDE Counter BY 3 GIVING Tmp REMAINDER Reminder
           IF Reminder = 0 THEN
               STRING Phrase DELIMITED BY SPACE
               "Foo" DELIMITED BY SPACE
               INTO Phrase
           END-IF.
           DIVIDE Counter BY 5 GIVING Tmp REMAINDER Reminder
           IF Reminder = 0 THEN
               STRING Phrase DELIMITED BY SPACE
               "Bar" DELIMITED BY SPACE
               INTO Phrase
           END-IF.
           IF Phrase = " " THEN
               STRING Counter DELIMITED BY SPACE
               INTO Phrase
           END-IF.
           INSPECT Phrase REPLACING LEADING '0' BY ' '.
      *    TODO get rid of leading spaces
           DISPLAY Phrase

       EXIT PROGRAM.
       END PROGRAM FIZZBUZZ.
