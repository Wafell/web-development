PROGRAM TestReadDigit(INPUT, OUTPUT);
VAR
  D, I: INTEGER;
  Ch: CHAR;
PROCEDURE ReadDigit(VAR F: TEXT; VAR D: INTEGER);       
BEGIN 
  D := -1;
  IF Ch = '0' THEN D := 0; 
  IF Ch = '1' THEN D := 1; 
  IF Ch = '2' THEN D := 2; 
  IF Ch = '3' THEN D := 3; 
  IF Ch = '4' THEN D := 4; 
  IF Ch = '5' THEN D := 5; 
  IF Ch = '6' THEN D := 6; 
  IF Ch = '7' THEN D := 7; 
  IF Ch = '8' THEN D := 8; 
  IF Ch = '9' THEN D := 9  
END;  
BEGIN
  I := 0;
  IF EOLN
  THEN
    WRITELN
  ELSE
    BEGIN
      READ(Ch);
      WHILE (Ch >= '0') AND (Ch <= '9') 
      DO
        BEGIN 
          ReadDigit(INPUT, D);
          I := I + D;
          READ(Ch)
        END;    
      WRITELN(I)
   END      
END.         
