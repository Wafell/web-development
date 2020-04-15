PROGRAM Stat(INPUT, OUTPUT);
VAR
  D, I, N, CountNum, Sum, Average, Min, Max: INTEGER;
  Ch: CHAR;
  FInt: TEXT;
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
    I := I*10 + N 
  ELSE
    IF I = 3276
    THEN
      BEGIN
        IF N <= 7
        THEN
          I := I*10 + N
        ELSE
          I := -1   
      END 
    ELSE
      IF I > 3276
      THEN
        I := -1                                          
END;  
BEGIN
  Sum := 0;
  Min := 32767;
  Max := 0;
  IF EOLN
  THEN
    WRITELN
  ELSE
    BEGIN
      WHILE NOT EOLN
      DO 
        BEGIN
          READ(Ch);
          WHILE Ch <> ' '
          DO 
            BEGIN 
              I := 0;  
              WHILE (Ch >= '0') AND (Ch <= '9')
              DO
                BEGIN
                  ReadNumber(INPUT, N);
                  READ(Ch)
                END;
                IF I <= 32767
                THEN
                  BEGIN
                    IF Min > I
                    THEN
                      Min := I;
                    IF Max < I
                    THEN
                      Max := I
                  END
                ELSE
                  WRITELN('Переполнение');          
                Sum := Sum + I
             END;
             IF Sum > 32767
             THEN
               BEGIN 
                 Sum := 0;
                 WRITELN('Переполнение')
               END;     
          CountNum := CountNum + 1    
        END;
    END;
  IF Sum > 0
  THEN
    BEGIN
      Average := (Sum * 10) DIV CountNum;
      IF Average MOD 10 >= 5
      THEN
        WRITELN(Average DIV 10 + 1)
      ELSE
        WRITELN(Average DIV 10);
      WRITELN('Min: ', Min);
      WRITELN('Max: ', Max)
    END    
END.
