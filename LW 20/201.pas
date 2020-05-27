PROGRAM XPrint(INPUT, OUTPUT);
CONST
  StartValue = 1;                         
  LetterSize = 5;
  SymbolsInLetter = LetterSize * LetterSize;
  PrintX = 'X';
  Space = ' ';
TYPE
  MatrixType = SET OF StartValue .. SymbolsInLetter;   
VAR
  Ch: CHAR;
  I, J, Count: INTEGER;
FUNCTION GetLetterMatrix(VAR Ch: CHAR): MatrixType;
BEGIN 
  CASE Ch OF
    'A': GetLetterMatrix := [3, 7, 9, 11, 15, 16, 17, 18, 19, 20, 21, 25];
    'M': GetLetterMatrix := [1, 5, 6, 7, 9, 10, 11, 13, 15, 16, 20, 21, 25];
    'F': GetLetterMatrix := [1, 2, 3, 4, 5, 6, 11, 12, 13, 14, 16, 21];
    'I': GetLetterMatrix := [1, 2, 3, 4, 5, 8, 13, 18, 21, 22, 23, 24, 25];
    'R': GetLetterMatrix := [1, 2, 3, 6, 9, 11, 12, 13, 16, 18, 21, 24]
  ELSE 
    GetLetterMatrix := []     
  END
END;   
PROCEDURE Print (VAR FOut: TEXT; Ch: CHAR);
VAR
  Matrix: MatrixType; 
BEGIN 
  Count := 0;
  Matrix := GetLetterMatrix(Ch);
  IF Matrix = []
  THEN
    WRITELN('PLEASE, ENTER ANOTHER LETTER')
  ELSE
    BEGIN  
      FOR I := StartValue TO LetterSize
      DO
        BEGIN
          FOR J := StartValue TO LetterSize
          DO  
            BEGIN
              Count := Count + 1;
              IF Count IN Matrix
              THEN
                WRITE(FOut, PrintX)
              ELSE
                WRITE(FOut, Space);                
            END;  
          WRITELN  
        END
    END    
END;      
BEGIN
  READ(Ch);
  Print(OUTPUT, Ch)
END.
