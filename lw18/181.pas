PROGRAM AverageScore(INPUT, OUTPUT);
CONST
  NumberOfScores = 4;
  ClassSize = 4;
TYPE
  Score = 0 .. 100;
VAR
  WhichScore: 0 .. NumberOfScores;
  Student: 0 .. ClassSize;
  NextScore: Score;
  Ave, TotalScore, ClassTotal: INTEGER;
  InputError: BOOLEAN;
BEGIN {AverageScore}
  InputError := FALSE;
  ClassTotal := 0;
  WRITELN('Student averages:');
  Student := 0;
  WHILE (Student < ClassSize) AND (NOT InputError)
  DO 
    BEGIN
      Student := Student + 1;
      TotalScore := 0;
      WhichScore := 0;
      WHILE (WhichScore < NumberOfScores) AND (NOT InputError)
      DO
        BEGIN
          IF NOT EOLN
          THEN
            BEGIN
              READ(NextScore);
              TotalScore := TotalScore + NextScore;
              WhichScore := WhichScore + 1
            END
          ELSE
            InputError := TRUE    
        END; 
      READLN;    
      TotalScore := TotalScore * 10;
      Ave := TotalScore DIV NumberOfScores;
      IF Ave MOD 10 >= 5
      THEN
        WRITELN(Ave DIV 10 + 1)
      ELSE
        WRITELN(Ave DIV 10);
      ClassTotal := ClassTotal + TotalScore
    END;
  WRITELN;
  IF NOT InputError
  THEN 
    BEGIN
      WRITELN ('Class average:');
      ClassTotal := ClassTotal DIV (ClassSize * NumberOfScores);
      WRITELN(ClassTotal DIV 10, '.', ClassTotal MOD 10:1)
    END  
  ELSE
    WRITELN('Ошибка ввода данных')    
END.  {AverageScore}
