PROGRAM FileXPrint(INPUT, OUTPUT);
CONST
  StartMatrixValue = 0;
  StartValue = 1;                         
  LetterSize = 5;
  MaxCountCh = LetterSize + LetterSize;
  MaxMatrixValue = LetterSize * LetterSize;
TYPE  
  MatrixType = SET OF StartValue .. MaxMatrixValue;
  ArrayType = ARRAY ['A' .. 'J'] OF MatrixType;  
VAR
  Ch: CHAR;
  F: TEXT;
  CountCh: INTEGER; 
  LetterMatrix: ArrayType;
PROCEDURE Print (VAR FOut: TEXT; Ch: CHAR); 
VAR
  StartMatrix: MatrixType;
  Count, I, J: INTEGER;
  InvInp: CHAR; 
BEGIN
  InvInp := '1';
  CASE Ch OF
    'A': StartMatrix := LetterMatrix['A'];
    'B': StartMatrix := LetterMatrix['B']; 
    'C': StartMatrix := LetterMatrix['C'];
    'D': StartMatrix := LetterMatrix['D'];
    'E': StartMatrix := LetterMatrix['E'];
    'F': StartMatrix := LetterMatrix['F'];
    'G': StartMatrix := LetterMatrix['G'];
    'H': StartMatrix := LetterMatrix['H']; 
    'I': StartMatrix := LetterMatrix['I'];
    'J': StartMatrix := LetterMatrix['J']; 
  ELSE 
    WRITELN('PLEASE, ENTER ANOTHER LETTER');
    InvInp := '2'   
  END;
  IF InvInp = '1'
  THEN
    BEGIN
      Count := StartMatrixValue;
      FOR I := StartValue TO LetterSize
      DO
        BEGIN
          FOR J := StartValue TO LetterSize
          DO  
            BEGIN
              Count := Count + 1;
              IF Count IN StartMatrix
              THEN
                WRITE(FOut, 'X')
              ELSE
                WRITE(FOut, ' ');                
            END;  
          WRITELN  
        END
    END  
END; 
PROCEDURE ReadMatrix(VAR F: TEXT; VAR LetterMatrix: ArrayType);
VAR
  MatrixNumber: INTEGER;
  ChMatrix: CHAR;
  Matrix: SET OF StartValue .. MaxMatrixValue;
BEGIN
  WHILE NOT EOF(F)
  DO
    BEGIN
      READ(F, ChMatrix);
      Matrix := [];
      WHILE NOT EOLN(F)
      DO
        BEGIN
          READ(F, MatrixNumber);
          Matrix := Matrix + [MatrixNumber]
        END;
      LetterMatrix[ChMatrix] := Matrix;
      READLN(F)    
    END
END;   
BEGIN
  ASSIGN(F, 'matrix1.txt');
  RESET(F);
  ReadMatrix(F, LetterMatrix);
  CLOSE(F);
  IF EOLN
  THEN
    WRITELN
  ELSE 
    WHILE (NOT EOLN) AND (CountCh < MaxCountCh) 
    DO
      BEGIN
        READ(Ch);
        Print(OUTPUT, Ch);
        CountCh := CountCh + 1
      END  
END.
