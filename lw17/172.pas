PROGRAM TestReadDigit(INPUT, OUTPUT);
VAR
  D, I, N: INTEGER;
  Ch: CHAR;
PROCEDURE ReadNumber(VAR F: TEXT; VAR N: INTEGER);       
BEGIN  
  IF Ch = '0' THEN N := 0; 
  IF Ch = '1' THEN N := 1; 
  IF Ch = '2' THEN N := 2; 
  IF Ch = '3' THEN N := 3; 
  IF Ch = '4' THEN N := 4; 
  IF Ch = '5' THEN N := 5; 
  IF Ch = '6' THEN N := 6; 
  IF Ch = '7' THEN N := 7; 
  IF Ch = '8' THEN N := 8; 
  IF Ch = '9' THEN N := 9;
  IF I < 3276
  THEN
    I := I * 10 + N 
  ELSE
    IF I = 3276
    THEN
      BEGIN
        IF N <= 7
        THEN
          I := I * 10 + N
        ELSE
          I := -1   
      END 
    ELSE
      IF I > 3276
      THEN
        I := -1      
END;  
BEGIN
  IF EOLN
  THEN
    WRITELN
  ELSE
    BEGIN
      D := 1;
      I := 0;
      READ(Ch);
      WHILE (Ch >= '0') AND (Ch <= '9')
      DO
        BEGIN
          D := D + 1;
          ReadNumber(INPUT, N);
          READ(Ch)       
        END;  
      IF D >= 7
      THEN
        I := -1;   
      WRITELN(I)
   END      
END.         
