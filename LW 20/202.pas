PROGRAM FileXPrint(INPUT, OUTPUT);
  VAR
    Ch, ChMatrix, InvInp: CHAR;
    F: TEXT;
    I, J, CountCh, CountF, CountWrite, StartMatrix: INTEGER;
    Matrix: SET OF 1 .. 250; 
PROCEDURE Print (VAR FOut: TEXT; Ch: CHAR); 
BEGIN
  StartMatrix := 0;
  InvInp := '1';
  CASE Ch OF
    'A': StartMatrix := 0;
    'B': StartMatrix := 5; 
    'C': StartMatrix := 10;
    'D': StartMatrix := 15;
    'E': StartMatrix := 20;
    'F': StartMatrix := 25;
    'G': StartMatrix := 30;
    'H': StartMatrix := 35; 
    'I': StartMatrix := 40;
    'J': StartMatrix := 45;
  ELSE 
    WRITELN('PLEASE, ENTER ANOTHER LETTER');
    InvInp := '2'   
  END;
  IF InvInp = '1'
  THEN
    BEGIN
      StartMatrix := StartMatrix * 5;
      CountWrite := 0;
      FOR I := 0 TO 4
      DO
        BEGIN
          FOR J := (1 + 5 * CountWrite + StartMatrix) TO (5 + 5 * CountWrite + StartMatrix)  
          DO  
            BEGIN
              IF J IN Matrix
              THEN
                WRITE(FOut, 'X')
              ELSE
                WRITE(FOut, ' ');     
            END;
          WRITELN;
          CountWrite := CountWrite +1  
        END
    END  
END; 
PROCEDURE ReadMatrix(VAR F: TEXT; ChMatrix: CHAR);
BEGIN
  CountF := 1;
  WHILE NOT EOF(F)
  DO
    BEGIN
      FOR I := 1 TO 5
      DO
        BEGIN
          READ(F, ChMatrix);
          IF ChMatrix = 'X'
          THEN
            BEGIN
              Matrix := Matrix + [CountF]
            END;  
          CountF := CountF +1    
        END;
      READLN(F)
    END    
END;     
BEGIN
  ASSIGN(F, 'Matrix.txt');
  RESET(F);
  ReadMatrix(F, ChMatrix);
  CLOSE(F);
  CountCh := CountCh + 0;
  IF EOLN
  THEN
    WRITELN
  ELSE 
    WHILE (NOT EOLN) AND (CountCh < 10) 
    DO
      BEGIN
        READ(Ch);
        Print(OUTPUT, Ch);
        CountCh := CountCh + 1
      END  
END.
