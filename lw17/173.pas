PROGRAM Stat(INPUT, OUTPUT);
CONST
  MaxInt = 32767;
VAR
  I, Min, Max, Sum, CountNum, Average: INTEGER;
  Ch: CHAR;
  Error: BOOLEAN;
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
  Min := MaxInt;
  Max := 0;
  CountNum := 0;
  Sum := 0;
  Error := FALSE;
  IF EOLN
  THEN
    WRITELN
  ELSE
    BEGIN
      WHILE (NOT EOLN) AND (NOT Error)
      DO
        BEGIN
          ReadNumber(INPUT, I);
          IF (I <= (MaxInt - Sum)) AND (I <> -1)
          THEN
            BEGIN
              CountNum := CountNum + 1;
              Sum := Sum + I;
              IF I < Min
              THEN
                Min := I;
              IF I > Max
              THEN
                Max := I   
            END     
          ELSE
            Error := TRUE            
        END;
      IF NOT Error
      THEN
        BEGIN  
          WRITELN('Min: ', Min);
          WRITELN('Max: ', Max);
          Average := (Sum * 10) DIV CountNum;
          IF Average MOD 10 >= 5
          THEN
            WRITELN('Average: ', Average DIV 10 + 1)
          ELSE
            WRITELN('Average: ', Average DIV 10)  
        END 
      ELSE
        WRITELN('OVERFLOW')   
    END     
END.         
