PROGRAM Prime(INPUT, OUTPUT);
VAR
  Sieve: SET OF 2..100; 
  Number, Count, CountMax, NumberMax: INTEGER;
BEGIN
  Sieve := [2..100];
  Count := 2;
  CountMax := 100;
  NumberMax := 100;
  WHILE Count <= CountMax
  DO 
    BEGIN
      IF (Count IN Sieve)
      THEN
        BEGIN 
          Number := Count;
          WHILE Number <= NumberMax
          DO
            BEGIN  
              IF (Number IN Sieve) AND (Number MOD Count = 0)
              THEN
                BEGIN
                  Sieve := Sieve - [Number]
                END;
              Number := Number + 1
            END;
          WRITE(Count, ' ')  
        END;            
      Count := Count + 1;
      WHILE NOT (CountMax IN Sieve)
      DO
        CountMax := CountMax - 1    
    END
END.      
  
       
