PROGRAM AverageScore(INPUT, OUTPUT);
CONST
  NumberOfScores = 4;
  ClassSize = 4;
TYPE
  Score = 0 .. 100;
VAR
  Error, Ch: CHAR;
  WhichScore: 1 .. NumberOfScores;
  Student: 1 .. ClassSize;
  NextScore: Score;
  Ave, TotalScore, ClassTotal: INTEGER;
BEGIN {AverageScore}
  ClassTotal := 0;
  WRITELN('Student averages:');
  Student := 1;
  Error := '1';
  WHILE (Student <= ClassSize) AND (Error = '1')
  DO 
    BEGIN
      Student := Student + 1;
      TotalScore := 0;
      WhichScore := 1;
      Ch := '1';
      WHILE Ch <> ' '
      DO
        BEGIN
          IF NOT EOLN
          THEN
            BEGIN
              READ(Ch);
              WRITE(Ch)
            END
        END;
      WHILE (WhichScore <= NumberOfScores) 
      DO
        BEGIN
          IF NOT EOLN
          THEN
            BEGIN
              READ(NextScore);
              IF (NextScore >= 0) AND (NextScore <= 100)  
              THEN
                BEGIN
                  TotalScore := TotalScore + NextScore;
                  WhichScore := WhichScore + 1
                END
              ELSE
                BEGIN
                  Error := '2';
                  WhichScore := WhichScore + 1  
                END  
            END  
        END;
      IF Error = '2'
      THEN
        WRITELN('Данные введены неверно');
      IF Error = '1'
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
  IF Error = '1'
  THEN
    BEGIN   
      WRITELN;
      WRITELN ('Class average:');
      ClassTotal := ClassTotal DIV (ClassSize *NumberOfScores);
      WRITELN(ClassTotal DIV 10, '.', ClassTotal MOD 10:1)
    END
END.  {AverageScore}
