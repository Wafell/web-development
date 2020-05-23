PROGRAM AverageScore(INPUT, OUTPUT);
CONST
  NumberOfScores = 4;
  ClassSize = 4;
  MinMark = 0;
  MaxMark = 100;
TYPE
  Score = 0 .. 100;
VAR
  Ch: CHAR;
  Error: BOOLEAN;
  WhichScore: 0 .. NumberOfScores;
  Student: 0 .. ClassSize;
  NextScore: Score;
  Ave, TotalScore, ClassTotal: INTEGER;
BEGIN {AverageScore}
  ClassTotal := 0;
  WRITELN('Student averages:');
  Student := 0;
  Error := FALSE;
  WHILE (Student < ClassSize) AND (NOT Error) 
  DO 
    BEGIN
      Student := Student + 1;
      TotalScore := 0;
      WhichScore := 0;
      Ch := '1';
      IF EOLN
      THEN
        Error := TRUE;
      WHILE (Ch <> ' ') AND (NOT Error)
      DO
        BEGIN
          IF NOT EOLN
          THEN
            BEGIN
              READ(Ch);
              WRITE(Ch)
            END 
        END;
      WHILE (WhichScore < NumberOfScores) AND (NOT Error)  
      DO
        BEGIN
          IF NOT EOLN
          THEN
            BEGIN
              READ(NextScore);
              IF (NextScore >= MinMark) AND (NextScore <= MaxMark)  
              THEN
                BEGIN
                  TotalScore := TotalScore + NextScore;
                  WhichScore := WhichScore + 1
                END
              ELSE
                BEGIN
                  Error := TRUE  
                END  
            END 
          ELSE
            Error := TRUE   
        END;
      IF NOT Error  
      THEN
        BEGIN      
          READLN;    
          TotalScore := TotalScore * 10;
          Ave := TotalScore DIV NumberOfScores;
          IF Ave MOD 10 >= 5
          THEN
            WRITELN(Ave DIV 10 + 1)
          ELSE
            WRITELN(Ave DIV 10);
          ClassTotal := ClassTotal + TotalScore
        END
    END;
  IF NOT Error 
  THEN
    BEGIN   
      WRITELN;
      WRITELN ('Class average:');
      ClassTotal := ClassTotal DIV (ClassSize * NumberOfScores);
      WRITELN(ClassTotal DIV 10, '.', ClassTotal MOD 10:1)
    END
  ELSE
    BEGIN
      WRITELN;
      WRITELN('INPUT ERROR')
    END    
END.  {AverageScore}
