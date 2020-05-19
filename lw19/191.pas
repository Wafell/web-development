PROGRAM Prime(INPUT, OUTPUT);
CONST
  StarValue = 2;
  FinalValue = 100;
VAR
  Sieve: SET OF StarValue .. FinalValue; 
  Number, Count, CountMax, NumberMax: INTEGER;
BEGIN
  Sieve := [StarValue .. FinalValue];
  Count := StarValue;
  CountMax := FinalValue;
  NumberMax := FinalValue;
  WHILE Count < CountMax
  DO 
    BEGIN
      IF (Count IN Sieve)
      THEN
        BEGIN 
          Number := Count;
          WHILE Number < NumberMax
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
