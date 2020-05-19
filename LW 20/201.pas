PROGRAM XPrint(INPUT, OUTPUT);
CONST
  StartMatrix = 1;
  MaxCount = 5;
  FinalMatrix = 25;
  PrintX = 'X';
  Space = ' ';
TYPE
  MatrixType = SET OF StartMatrix .. FinalMatrix;   
VAR
  Ch: CHAR;
  I, J, Count: INTEGER;
FUNCTION LetterMatrix(VAR Ch: CHAR): MatrixType;
BEGIN 
  CASE Ch OF
    'A': LetterMatrix := [3, 7, 9, 11, 15, 16, 17, 18, 19, 20, 21, 25];
    'M': LetterMatrix := [1, 5, 6, 7, 9, 10, 11, 13, 15, 16, 20, 21, 25];
    'F': LetterMatrix := [1, 2, 3, 4, 5, 6, 11, 12, 13, 14, 16, 21];
    'I': LetterMatrix := [1, 2, 3, 4, 5, 8, 13, 18, 21, 22, 23, 24, 25];
    'R': LetterMatrix := [1, 2, 3, 6, 9, 11, 12, 13, 16, 18, 21, 24]
  ELSE 
    LetterMatrix := []     
  END
END;   
PROCEDURE Print (VAR FOut: TEXT; Ch: CHAR);
VAR
  Matrix: MatrixType; 
BEGIN 
  Count := StartMatrix;
  Matrix := LetterMatrix(Ch);
  IF Matrix = []
  THEN
    WRITELN('PLEASE, ENTER ANOTHER LETTER')
  ELSE
    BEGIN  
      FOR I := StartMatrix TO MaxCount
      DO
        BEGIN
          FOR J := Count TO (Count + 4)
          DO  
            BEGIN
              IF J IN Matrix
              THEN
                WRITE(FOut, PrintX)
              ELSE
                WRITE(FOut, Space)
            END;
          WRITELN  
        END
    END    
END;      
BEGIN
  READ(Ch);
  Print(OUTPUT, Ch)
END.
