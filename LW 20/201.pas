PROGRAM XPrint(INPUT, OUTPUT);
  VAR
    Ch: CHAR;
    I, J, Count: INTEGER;
    Matrix: SET OF 1 .. 25; 
PROCEDURE Print (VAR FOut: TEXT; Ch: CHAR); 
BEGIN
  Count := 1;
  CASE Ch OF
    'A': Matrix := [3, 7, 9, 11, 15, 16, 17, 18, 19, 20, 21, 25];
    'M': Matrix := [1, 5, 6, 7, 9, 10, 11, 13, 15, 16, 20, 21, 25];
    'F': Matrix := [1, 2, 3, 4, 5, 6, 11, 12, 13, 14, 16, 21];
    'I': Matrix := [1, 2, 3, 4, 5, 8, 13, 18, 21, 22, 23, 24, 25];
    'R': Matrix := [1, 2, 3, 6, 9, 11, 12, 13, 16, 18, 21, 24]
  ELSE 
    WRITELN('PLEASE, ENTER ANOTHER LETTER')   
  END;
  FOR I := 1 TO 5
  DO
    BEGIN
      FOR J := Count TO (Count + 4)
      DO  
        BEGIN
          IF J IN Matrix
          THEN
            WRITE(FOut, 'X')
          ELSE
            WRITE(FOut, ' ');   
          Count := Count + 1
        END;
      WRITELN  
    END
END;     
BEGIN
  READ(Ch);
  Print(OUTPUT, Ch)
END.
