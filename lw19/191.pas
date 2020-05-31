PROGRAM Prime(INPUT, OUTPUT);
CONST
  StartValue = 2;
  FinalValue = 100; 
VAR 
  Sieve: SET OF StartValue .. FinalValue; 
  Number, Count, CountMax, I: INTEGER;
BEGIN
  Sieve := [StartValue .. FinalValue];
  Count := StartValue;
  CountMax := FinalValue; 
  WHILE (Count * Count < CountMax)
  DO 
    BEGIN
      IF (Count IN Sieve)
      THEN
        BEGIN 
          WRITE(Count, ' ');
          Number := Count;
          WHILE Number <= FinalValue
          DO
            BEGIN  
              IF (Number IN Sieve) AND (Number MOD Count = 0)
              THEN
                BEGIN
                  Sieve := Sieve - [Number]
                END;
              Number := Number + Count
            END
        END;            
      Count := Count + 1;   
    END;  
  FOR I := StartValue TO FinalValue
  DO
    BEGIN
      IF I IN Sieve
      THEN
        WRITE(I, ' ')
    END  
END.      
