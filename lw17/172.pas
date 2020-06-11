PROGRAM TestReadNumber(INPUT, OUTPUT);
VAR
  I: INTEGER;
  Ch: CHAR;
PROCEDURE ReadDigit(VAR F: TEXT; VAR N: INTEGER);       
BEGIN 
  N := -1;
  IF NOT EOLN(F)
  THEN
    BEGIN
      READ(F, Ch);
      IF Ch = '0' THEN N := 0; 
      IF Ch = '1' THEN N := 1; 
      IF Ch = '2' THEN N := 2; 
      IF Ch = '3' THEN N := 3; 
      IF Ch = '4' THEN N := 4; 
      IF Ch = '5' THEN N := 5; 
      IF Ch = '6' THEN N := 6; 
      IF Ch = '7' THEN N := 7; 
      IF Ch = '8' THEN N := 8; 
      IF Ch = '9' THEN N := 9 
    END 
END; 
PROCEDURE ReadNumber(VAR F: TEXT; VAR I: INTEGER);
CONST
  MaxInt = 32767;
VAR
  N: INTEGER;
BEGIN
  I := 0;
  ReadDigit(INPUT, N);
  WHILE (I <> -1) AND (N <> -1)  
  DO
    BEGIN
      IF (N <= (MaxInt -  I * 10))
      THEN
        I := I * 10 + N
      ELSE
        I := -1;
      ReadDigit(INPUT, N)  
    END         
END; 
BEGIN
  IF EOLN
  THEN
    WRITELN
  ELSE
    BEGIN
      ReadNumber(INPUT, I);
      WRITELN(I)
    END     
END.         
